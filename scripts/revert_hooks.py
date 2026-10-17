#!/usr/bin/env python3
"""Revert the 6 manual KSU hooks (they are for the NON-KPROBES path only).
With CONFIG_KPROBES=y, KernelSU uses register_kprobe() instead."""
import os, re, sys

kdir = os.path.expanduser("~/tecno_bg6_kernel/kernel_ums9230")

# Each entry: (file, list of exact block strings to remove)
BLOCKS = {
    "fs/exec.c": [
        "#ifdef CONFIG_KSU\nextern bool ksu_execveat_hook __read_mostly;\nextern int ksu_handle_execveat(int *fd, struct filename **filename_ptr, void *argv, void *envp, int *flags);\nextern int ksu_handle_execveat_sucompat(int *fd, struct filename **filename_ptr, void *argv, void *envp, int *flags);\n#endif\n",
        "#ifdef CONFIG_KSU\n\tif (unlikely(ksu_execveat_hook))\n\t\tksu_handle_execveat(&fd, &filename, &argv, &envp, &flags);\n\telse\n\t\tksu_handle_execveat_sucompat(&fd, &filename, &argv, &envp, &flags);\n#endif\n",
    ],
    "fs/open.c": [
        "#ifdef CONFIG_KSU\nextern int ksu_handle_faccessat(int *dfd, const char __user **filename_user, int *mode, int *flags);\n#endif\n",
        "#ifdef CONFIG_KSU\n\tksu_handle_faccessat(&dfd, &filename, &mode, NULL);\n#endif\n",
    ],
    "fs/read_write.c": [
        "#ifdef CONFIG_KSU\nextern bool ksu_vfs_read_hook __read_mostly;\nextern int ksu_handle_vfs_read(struct file **file_ptr, char __user **buf_ptr, size_t *count_ptr, loff_t **pos);\n#endif\n",
        "#ifdef CONFIG_KSU\n\tif (unlikely(ksu_vfs_read_hook))\n\t\tksu_handle_vfs_read(&file, &buf, &count, &pos);\n#endif\n",
    ],
    "fs/stat.c": [
        "#ifdef CONFIG_KSU\nextern int ksu_handle_stat(int *dfd, const char __user **filename_user, int *flags);\n#endif\n",
        "#ifdef CONFIG_KSU\n\tksu_handle_stat(&dfd, &filename, &flags);\n#endif\n",
    ],
    "drivers/input/input.c": [
        "#ifdef CONFIG_KSU\nextern bool ksu_input_hook __read_mostly;\nextern int ksu_handle_input_handle_event(unsigned int *type, unsigned int *code, int *value);\n#endif\n",
        "#ifdef CONFIG_KSU\n\tif (unlikely(ksu_input_hook))\n\t\tksu_handle_input_handle_event(&type, &code, &value);\n#endif\n",
    ],
    "fs/devpts/inode.c": [
        "#ifdef CONFIG_KSU\nextern int ksu_handle_devpts(struct inode*);\n#endif\n",
        "#ifdef CONFIG_KSU\n\tksu_handle_devpts(dentry->d_inode);\n#endif\n",
    ],
}

ok = True
for rel, blocks in BLOCKS.items():
    path = os.path.join(kdir, rel)
    with open(path, "r", encoding="utf-8", errors="ignore") as f:
        content = f.read()
    for b in blocks:
        if b in content:
            content = content.replace(b, "", 1)
            print("[REMOVED] %s: %d chars" % (rel, len(b)))
        else:
            # try with CRLF-normalized
            b2 = b.replace("\n", "\r\n")
            if b2 in content:
                content = content.replace(b2, "", 1)
                print("[REMOVED-CRLF] %s: %d chars" % (rel, len(b2)))
            else:
                print("[MISS] %s: block not found (first 60): %r" % (rel, b[:60]))
                ok = False
    with open(path, "w", encoding="utf-8") as f:
        f.write(content)
    # verify no ksu_handle refs remain
    with open(path, "r", encoding="utf-8", errors="ignore") as f:
        c2 = f.read()
    rem = len(re.findall(r"ksu_handle_", c2))
    print("    remaining 'ksu_handle_' refs in %s: %d" % (rel, rem))

print("REVERT_OK" if ok else "REVERT_PARTIAL")
