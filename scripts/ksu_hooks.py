import os, re, sys

kdir = os.path.expanduser("~/tecno_bg6_kernel/kernel_ums9230")

def patch_file(rel_path, pattern, replacement, marker):
    path = os.path.join(kdir, rel_path)
    with open(path, "r", encoding="utf-8", errors="ignore") as f:
        content = f.read()
    if marker in content:
        print("[SKIP] %s already patched" % rel_path)
        return
    m = re.search(pattern, content, flags=re.S)
    if not m:
        print("ERROR: Could not find hook point in %s" % rel_path, file=sys.stderr)
        sys.exit(1)
    content = content[:m.start()] + replacement(m) + content[m.end():]
    with open(path, "w", encoding="utf-8") as f:
        f.write(content)
    print("[OK] Patched manual KSU hook in %s" % rel_path)

# 1. fs/exec.c -> do_execveat_common
patch_file(
    "fs/exec.c",
    r"(static\s+int\s+do_execveat_common\s*\([^)]+\)\s*\{)",
    lambda m: (
        "#ifdef CONFIG_KSU\n"
        "extern bool ksu_execveat_hook __read_mostly;\n"
        "extern int ksu_handle_execveat(int *fd, struct filename **filename_ptr, void *argv, void *envp, int *flags);\n"
        "extern int ksu_handle_execveat_sucompat(int *fd, struct filename **filename_ptr, void *argv, void *envp, int *flags);\n"
        "#endif\n"
        + m.group(1) + "\n"
        "#ifdef CONFIG_KSU\n"
        "\tif (unlikely(ksu_execveat_hook))\n"
        "\t\tksu_handle_execveat(&fd, &filename, &argv, &envp, &flags);\n"
        "\telse\n"
        "\t\tksu_handle_execveat_sucompat(&fd, &filename, &argv, &envp, &flags);\n"
        "#endif\n"
    ),
    "ksu_handle_execveat",
)

# 2. fs/open.c -> do_faccessat
patch_file(
    "fs/open.c",
    r"(long\s+do_faccessat\s*\(\s*int\s+dfd,\s*const\s+char\s+__user\s*\*filename,\s*int\s+mode\s*\)\s*\{)",
    lambda m: (
        "#ifdef CONFIG_KSU\n"
        "extern int ksu_handle_faccessat(int *dfd, const char __user **filename_user, int *mode, int *flags);\n"
        "#endif\n"
        + m.group(1) + "\n"
        "#ifdef CONFIG_KSU\n"
        "\tksu_handle_faccessat(&dfd, &filename, &mode, NULL);\n"
        "#endif\n"
    ),
    "ksu_handle_faccessat",
)

# 3. fs/read_write.c -> vfs_read
patch_file(
    "fs/read_write.c",
    r"(ssize_t\s+vfs_read\s*\(\s*struct\s+file\s*\*file,\s*char\s+__user\s*\*buf,\s*size_t\s+count,\s*loff_t\s*\*pos\s*\)\s*\{\s*\n\s*ssize_t\s+ret\s*;)",
    lambda m: (
        "#ifdef CONFIG_KSU\n"
        "extern bool ksu_vfs_read_hook __read_mostly;\n"
        "extern int ksu_handle_vfs_read(struct file **file_ptr, char __user **buf_ptr, size_t *count_ptr, loff_t **pos);\n"
        "#endif\n"
        + m.group(1) + "\n"
        "#ifdef CONFIG_KSU\n"
        "\tif (unlikely(ksu_vfs_read_hook))\n"
        "\t\tksu_handle_vfs_read(&file, &buf, &count, &pos);\n"
        "#endif\n"
    ),
    "ksu_handle_vfs_read",
)

# 4. fs/stat.c -> vfs_statx
patch_file(
    "fs/stat.c",
    r"(int\s+vfs_statx\s*\(\s*int\s+dfd,\s*const\s+char\s+__user\s*\*filename,\s*int\s+flags,\s*struct\s+kstat\s*\*stat,\s*u32\s+request_mask\s*\)\s*\{)",
    lambda m: (
        "#ifdef CONFIG_KSU\n"
        "extern int ksu_handle_stat(int *dfd, const char __user **filename_user, int *flags);\n"
        "#endif\n"
        + m.group(1) + "\n"
        "#ifdef CONFIG_KSU\n"
        "\tksu_handle_stat(&dfd, &filename, &flags);\n"
        "#endif\n"
    ),
    "ksu_handle_stat",
)

# 5. drivers/input/input.c -> input_handle_event
patch_file(
    "drivers/input/input.c",
    r"(static\s+void\s+input_handle_event\s*\(\s*struct\s+input_dev\s*\*dev,\s*unsigned\s+int\s+type,\s*unsigned\s+int\s+code,\s*int\s+value\s*\)\s*\{\s*\n\s*int\s+disposition\s*=\s*input_get_disposition\([^;]+;)",
    lambda m: (
        "#ifdef CONFIG_KSU\n"
        "extern bool ksu_input_hook __read_mostly;\n"
        "extern int ksu_handle_input_handle_event(unsigned int *type, unsigned int *code, int *value);\n"
        "#endif\n"
        + m.group(1) + "\n"
        "#ifdef CONFIG_KSU\n"
        "\tif (unlikely(ksu_input_hook))\n"
        "\t\tksu_handle_input_handle_event(&type, &code, &value);\n"
        "#endif\n"
    ),
    "ksu_handle_input_handle_event",
)

# 6. fs/devpts/inode.c -> devpts_get_priv
patch_file(
    "fs/devpts/inode.c",
    r"(void\s*\*devpts_get_priv\s*\(\s*struct\s+dentry\s*\*dentry\s*\)\s*\{)",
    lambda m: (
        "#ifdef CONFIG_KSU\n"
        "extern int ksu_handle_devpts(struct inode*);\n"
        "#endif\n"
        + m.group(1) + "\n"
        "#ifdef CONFIG_KSU\n"
        "\tksu_handle_devpts(dentry->d_inode);\n"
        "#endif\n"
    ),
    "ksu_handle_devpts",
)

print("All manual KSU hooks applied.")
