#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <dirent.h>
#include <errno.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <sys/xattr.h>
#include <linux/fs.h>

#ifndef FS_COMPR_FL
#define FS_COMPR_FL 0x00000004
#endif
#ifndef FS_IMMUTABLE_FL
#define FS_IMMUTABLE_FL 0x00000010
#endif

#define F2FS_IOCTL_MAGIC 0xf5
#define F2FS_IOC_RELEASE_COMPRESS_BLOCKS _IOR(F2FS_IOCTL_MAGIC, 17, uint64_t)
#define F2FS_IOC_RESERVE_COMPRESS_BLOCKS _IOR(F2FS_IOCTL_MAGIC, 19, uint64_t)

static uint64_t total_files_compressed = 0;
static uint64_t total_blocks_released = 0;

static int has_compressible_ext(const char *name) {
    const char *dot = strrchr(name, '.');
    if (!dot) return 0;
    return (
        strcmp(dot, ".odex") == 0 ||
        strcmp(dot, ".vdex") == 0 ||
        strcmp(dot, ".oat") == 0 ||
        strcmp(dot, ".art") == 0 ||
        strcmp(dot, ".dex") == 0 ||
        strcmp(dot, ".so") == 0 ||
        strcmp(dot, ".apk") == 0 ||
        strcmp(dot, ".ttf") == 0 ||
        strcmp(dot, ".pak") == 0 ||
        strcmp(dot, ".bin") == 0 ||
        strcmp(dot, ".dat") == 0
    );
}

static void set_dir_compr_flag(const char *dir_path) {
    int fd = open(dir_path, O_RDONLY | O_DIRECTORY | O_CLOEXEC);
    if (fd < 0) return;
    long flags = 0;
    if (ioctl(fd, FS_IOC_GETFLAGS, &flags) == 0) {
        if (!(flags & (FS_COMPR_FL | FS_IMMUTABLE_FL))) {
            flags |= FS_COMPR_FL;
            ioctl(fd, FS_IOC_SETFLAGS, &flags);
        }
    }
    close(fd);
}

static void compress_one_file(const char *path) {
    struct stat st;
    if (lstat(path, &st) != 0) return;
    if (!S_ISREG(st.st_mode) || st.st_size < 16384 || st.st_nlink > 1) return;

    int fd = open(path, O_RDONLY | O_CLOEXEC);
    if (fd < 0) return;

    long flags = 0;
    if (ioctl(fd, FS_IOC_GETFLAGS, &flags) != 0) {
        close(fd);
        return;
    }
    if (flags & FS_IMMUTABLE_FL) {
        close(fd);
        return;
    }

    /* If file already has FS_COMPR_FL, release any unreleased compressed blocks and return immediately */
    if (flags & FS_COMPR_FL) {
        uint64_t rel = 0;
        if (ioctl(fd, F2FS_IOC_RELEASE_COMPRESS_BLOCKS, &rel) == 0 && rel > 0) {
            total_files_compressed++;
            total_blocks_released += rel;
        }
        close(fd);
        return;
    }

    /* File does not yet have FS_COMPR_FL: rewrite once in compress_mode=fs inside chattr +c dir */
    char selinux_ctx[256];
    memset(selinux_ctx, 0, sizeof(selinux_ctx));
    ssize_t ctx_len = fgetxattr(fd, "security.selinux", selinux_ctx, sizeof(selinux_ctx) - 1);

    char tmp_path[4096];
    snprintf(tmp_path, sizeof(tmp_path), "%s.f2fsc", path);
    unlink(tmp_path);

    int wfd = open(tmp_path, O_WRONLY | O_CREAT | O_EXCL | O_TRUNC | O_CLOEXEC, st.st_mode & 07777);
    if (wfd < 0) {
        close(fd);
        return;
    }

    long wflags = 0;
    if (ioctl(wfd, FS_IOC_GETFLAGS, &wflags) == 0 && !(wflags & FS_COMPR_FL)) {
        wflags |= FS_COMPR_FL;
        ioctl(wfd, FS_IOC_SETFLAGS, &wflags);
    }

    static char buf[131072];
    ssize_t r;
    int copy_ok = 1;
    while ((r = read(fd, buf, sizeof(buf))) > 0) {
        ssize_t off = 0;
        while (off < r) {
            ssize_t w = write(wfd, buf + off, r - off);
            if (w <= 0) {
                copy_ok = 0;
                break;
            }
            off += w;
        }
        if (!copy_ok) break;
    }
    close(fd);

    if (!copy_ok || r < 0) {
        close(wfd);
        unlink(tmp_path);
        return;
    }

    if (fchown(wfd, st.st_uid, st.st_gid) != 0) { /* ignore */ }
    fchmod(wfd, st.st_mode & 07777);
    if (ctx_len > 0) {
        fsetxattr(wfd, "security.selinux", selinux_ctx, ctx_len, 0);
    }
    fsync(wfd);
    close(wfd);

    if (rename(tmp_path, path) != 0) {
        unlink(tmp_path);
        return;
    }

    int rfd = open(path, O_RDONLY | O_CLOEXEC);
    if (rfd >= 0) {
        uint64_t rel = 0;
        if (ioctl(rfd, F2FS_IOC_RELEASE_COMPRESS_BLOCKS, &rel) == 0 && rel > 0) {
            total_files_compressed++;
            total_blocks_released += rel;
        }
        close(rfd);
    }
}

static void walk_dir(const char *dir_path) {
    set_dir_compr_flag(dir_path);
    DIR *d = opendir(dir_path);
    if (!d) return;
    struct dirent *de;
    char path[4096];
    while ((de = readdir(d)) != NULL) {
        if (strcmp(de->d_name, ".") == 0 || strcmp(de->d_name, "..") == 0) continue;
        if (strstr(de->d_name, ".f2fsc") != NULL) continue;
        snprintf(path, sizeof(path), "%s/%s", dir_path, de->d_name);
        struct stat st;
        if (lstat(path, &st) != 0) continue;
        if (S_ISDIR(st.st_mode)) {
            walk_dir(path);
        } else if (S_ISREG(st.st_mode) && has_compressible_ext(de->d_name)) {
            compress_one_file(path);
        }
    }
    closedir(d);
}

int main(int argc, char **argv) {
    for (int i = 1; i < argc; i++) {
        struct stat st;
        if (lstat(argv[i], &st) == 0) {
            if (S_ISDIR(st.st_mode)) walk_dir(argv[i]);
            else if (S_ISREG(st.st_mode)) compress_one_file(argv[i]);
        }
    }
    printf("Compressed files: %llu, Released 4KB blocks: %llu (%.2f MB freed)\n",
           (unsigned long long)total_files_compressed,
           (unsigned long long)total_blocks_released,
           (double)(total_blocks_released * 4) / 1024.0);
    return 0;
}
