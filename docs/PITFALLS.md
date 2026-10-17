# Pitfalls - every trap that cost time or bricked the phone

## 1. CLANG_TRIPLE missing -> hard brick

**Symptom:** kernel built fine, flashed fine, phone hangs forever on the Tecno logo. No adb, no fastboot, no USB device at all.

**Cause:** without `CLANG_TRIPLE=aarch64-linux-gnu-`, clang defaults to an x86_64 target. Kconfig tests `-fsanitize=shadow-call-stack -ffixed-x18` with `cc-option`, the test fails, and **`CONFIG_SHADOW_CALL_STACK` is silently deleted from `.config`** (no warning).

The stock kernel and all 195 prebuilt `.ko` modules are compiled **with** SCS (every function has a `str x30, [x18], #8` prologue). Without `scs_init()` the x18 register is never initialised, so the first module load dereferences a bogus pointer and the kernel dies before USB comes up.

**Fix:** pass `CLANG_TRIPLE=aarch64-linux-gnu-` to **both** `make defconfig` and `make olddefconfig`. Verify afterwards:

```bash
grep CONFIG_SHADOW_CALL_STACK out/.config     # must be =y
grep scs_init out/System.map                  # must be present
```

**Recovery:** BROM mode + spd_dump (see FLASH.md). Tested, fully restores.

---

## 2. CONFIG_KPROBES disabled -> KernelSU compiles but root never works

**Symptom:** KernelSU Manager shows "Working", modules install, superuser tab exists - but `su` is not in PATH and ksud reports `Kernel Version: 0`.

**Cause:** KernelSU v0.9.5 guards its userspace bridge with `#ifdef CONFIG_KPROBES`:

```c
/* KernelSU/kernel/ksu.c */
#ifdef CONFIG_KPROBES
    ksu_sucompat_init();
    ksu_ksud_init();
#else
    pr_alert("KPROBES is disabled, KernelSU may not work");
#endif
```

The original runbook said to keep KPROBES **off** "for ABI safety". **That was wrong - the stock kernel ships with `CONFIG_KPROBES=y`**, so enabling it *restores* the stock configuration instead of breaking it.

**Fix:** `CONFIG_KPROBES=y` (and `CONFIG_KPROBE_EVENTS=y`).

---

## 3. KPROBES + manual hooks -> link failure

**Symptom:**

```
ld.lld: error: undefined symbol: ksu_vfs_read_hook
ld.lld: error: undefined symbol: ksu_execveat_hook
ld.lld: error: undefined symbol: ksu_input_hook
```

**Cause:** the "non-GKI manual integration" guide adds extern declarations and hook calls into `fs/exec.c`, `fs/open.c`, `fs/read_write.c`, `fs/stat.c`, `drivers/input/input.c`, `fs/devpts/inode.c`. Those reference three bool flags which are only **defined** in the `#else` (non-KPROBES) branch:

```c
/* KernelSU/kernel/ksud.c */
#ifdef CONFIG_KPROBES
    static struct work_struct stop_vfs_read_work;   /* kprobe path */
#else
    bool ksu_vfs_read_hook __read_mostly = true;    /* <-- only here */
    bool ksu_execveat_hook __read_mostly = true;
    bool ksu_input_hook    __read_mostly = true;
#endif
```

The two integration methods are **mutually exclusive**.

**Fix:** with `CONFIG_KPROBES=y`, remove all 6 manual hooks. KernelSU then uses `register_kprobe()` for execve / faccessat / stat / devpts / vfs_read / input. That is what `scripts/revert_hooks.py` does.

---

## 4. LTO must stay on (CFI depends on it)

`CONFIG_CFI_CLANG` requires `CONFIG_LTO_CLANG`. Disabling LTO silently disables CFI, which changes the `__cfi_slowpath` / `.cfi_jt` layout and breaks the `.ko` ABI. The build gets faster and the phone stops booting.

---

## 5. BFQ makes the LTO link pathological

Adding `CONFIG_IOSCHED_BFQ=y` pushed the `vmlinux.o` LTO link from ~10 min to **55+ min**, with `ld.lld` RSS going 10.8 GB -> 18.4 GB. Keep it off; use kyber + mq-deadline (already enabled).

---

## 6. uname -r must not change

Target: `5.4.210-android12-9-gf8b17864a03c-ab602`

Any difference (a `-dirty` suffix, a different commit hash, `LOCALVERSION_AUTO`) changes vermagic and every stock module refuses to load.

Locked via `CONFIG_LOCALVERSION=""` plus a patched `scripts/setlocalversion`.

---

## 7. drivers/kernelsu was a symlink -> fresh clones could not build

KernelSU's `setup.sh` creates:

```
drivers/kernelsu -> ../KernelSU/kernel
```

`KernelSU/` was an untracked nested git checkout, so a fresh `git clone` produced a **broken symlink** and the KernelSU source simply was not there. The v5 hook-removal fix was also uncommitted.

**Fix:** replaced the symlink with real files and committed the whole `KernelSU/kernel` tree as `drivers/kernelsu/`.

---

## 8. Phone stuck at RUNNING_LOCKED looks like a kernel bug

After flashing, `su` may be missing and no app launches. Check:

```bash
adb shell dumpsys user | grep "State:"
```

If it says `RUNNING_LOCKED`, the device is simply **at the lock screen**. Credential-encrypted storage is not mounted, so `/data/adb/ksu` and every `/data/data/<pkg>` are unavailable. **Enter the PIN** - the kernel is fine.
