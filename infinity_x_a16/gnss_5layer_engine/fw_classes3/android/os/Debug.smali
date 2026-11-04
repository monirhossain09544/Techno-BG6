.class public final Landroid/os/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Debug$DebugProperty;,
        Landroid/os/Debug$InstructionCount;,
        Landroid/os/Debug$MemoryInfo;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_TRACE_BODY:Ljava/lang/String; = "dmtrace"

.field private static final greylist-max-o DEFAULT_TRACE_EXTENSION:Ljava/lang/String; = ".trace"

.field private static final blacklist EMPTY_COUNT_CLASS_INSTANCES:[J

.field private static final blacklist FRAMEWORK_FEATURES:[Ljava/lang/String;

.field public static final blacklist MEMINFO_ACTIVE:I = 0x10

.field public static final blacklist MEMINFO_ACTIVE_ANON:I = 0x14

.field public static final blacklist MEMINFO_ACTIVE_FILE:I = 0x16

.field public static final blacklist MEMINFO_AVAILABLE:I = 0x13

.field public static final greylist-max-o MEMINFO_BUFFERS:I = 0x2

.field public static final greylist-max-o MEMINFO_CACHED:I = 0x3

.field public static final blacklist MEMINFO_CMA_FREE:I = 0x19

.field public static final blacklist MEMINFO_CMA_TOTAL:I = 0x18

.field public static final greylist-max-o MEMINFO_COUNT:I = 0x1b

.field public static final greylist-max-o MEMINFO_FREE:I = 0x1

.field public static final blacklist MEMINFO_INACTIVE:I = 0x11

.field public static final blacklist MEMINFO_INACTIVE_ANON:I = 0x15

.field public static final blacklist MEMINFO_INACTIVE_FILE:I = 0x17

.field public static final greylist-max-o MEMINFO_KERNEL_STACK:I = 0xe

.field public static final blacklist MEMINFO_KRECLAIMABLE:I = 0xf

.field public static final greylist-max-o MEMINFO_MAPPED:I = 0xb

.field public static final greylist-max-o MEMINFO_PAGE_TABLES:I = 0xd

.field public static final greylist-max-o MEMINFO_SHMEM:I = 0x4

.field public static final greylist-max-o MEMINFO_SLAB:I = 0x5

.field public static final greylist-max-o MEMINFO_SLAB_RECLAIMABLE:I = 0x6

.field public static final greylist-max-o MEMINFO_SLAB_UNRECLAIMABLE:I = 0x7

.field public static final blacklist MEMINFO_SWAP_CACHED:I = 0x1a

.field public static final greylist-max-o MEMINFO_SWAP_FREE:I = 0x9

.field public static final greylist-max-o MEMINFO_SWAP_TOTAL:I = 0x8

.field public static final greylist-max-o MEMINFO_TOTAL:I = 0x0

.field public static final blacklist MEMINFO_UNEVICTABLE:I = 0x12

.field public static final greylist-max-o MEMINFO_VM_ALLOC_USED:I = 0xc

.field public static final greylist-max-o MEMINFO_ZRAM_TOTAL:I = 0xa

.field private static final greylist-max-o MIN_DEBUGGER_IDLE:I = 0x514

.field public static final whitelist SHOW_CLASSLOADER:I = 0x2

.field public static final whitelist SHOW_FULL_DETAIL:I = 0x1

.field public static final whitelist SHOW_INITIALIZED:I = 0x4

.field private static final greylist-max-o SPIN_DELAY:I = 0xc8

.field private static final greylist-max-o SYSFS_QEMU_TRACE_STATE:Ljava/lang/String; = "/sys/qemu_trace/state"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Debug"

.field public static final whitelist TRACE_COUNT_ALLOCS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o debugProperties:Lcom/android/internal/util/TypedProperties;

.field private static volatile greylist-max-o mWaiting:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Debug;->mWaiting:Z

    .line 116
    const-string/jumbo v1, "support_boot_stages"

    const-string v2, "app_info"

    const-string/jumbo v3, "opengl-tracing"

    const-string/jumbo v4, "view-hierarchy"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Debug;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    .line 126
    new-array v0, v0, [J

    sput-object v0, Landroid/os/Debug;->EMPTY_COUNT_CLASS_INSTANCES:[J

    .line 2480
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Debug;->debugProperties:Lcom/android/internal/util/TypedProperties;

    .line 2482
    return-void
.end method

.method private constructor greylist-max-r <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2813
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2814
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2816
    if-nez p1, :cond_14

    .line 2817
    invoke-static {p0, p2}, Ldalvik/system/VMDebug;->attachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_2c

    .line 2819
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Ldalvik/system/VMDebug;->attachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2821
    :goto_2c
    return-void
.end method

.method public static whitelist changeDebugPort(I)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1150
    return-void
.end method

.method public static whitelist dumpHprofData(Ljava/lang/String;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2145
    invoke-static {p0}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;)V

    .line 2146
    return-void
.end method

.method public static greylist-max-o dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2159
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 2160
    return-void
.end method

.method public static blacklist dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2192
    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 2193
    :try_start_3
    invoke-static {p2}, Landroid/graphics/Bitmap;->dumpAll(Ljava/lang/String;)V

    .line 2195
    :cond_6
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 2197
    if-eqz p2, :cond_e

    .line 2198
    invoke-static {v0}, Landroid/graphics/Bitmap;->dumpAll(Ljava/lang/String;)V

    .line 2201
    :cond_e
    return-void

    .line 2197
    :catchall_f
    move-exception p0

    if-eqz p2, :cond_15

    .line 2198
    invoke-static {v0}, Landroid/graphics/Bitmap;->dumpAll(Ljava/lang/String;)V

    .line 2200
    :cond_15
    throw p0
.end method

.method public static blacklist dumpHprofData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2171
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 2172
    :try_start_3
    invoke-static {p1}, Landroid/graphics/Bitmap;->dumpAll(Ljava/lang/String;)V

    .line 2174
    :cond_6
    invoke-static {p0}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 2176
    if-eqz p1, :cond_e

    .line 2177
    invoke-static {v0}, Landroid/graphics/Bitmap;->dumpAll(Ljava/lang/String;)V

    .line 2180
    :cond_e
    return-void

    .line 2176
    :catchall_f
    move-exception p0

    if-eqz p1, :cond_15

    .line 2177
    invoke-static {v0}, Landroid/graphics/Bitmap;->dumpAll(Ljava/lang/String;)V

    .line 2179
    :cond_15
    throw p0
.end method

.method public static greylist-max-o dumpHprofDataDdms()V
    .registers 0

    .line 2211
    invoke-static {}, Ldalvik/system/VMDebug;->dumpHprofDataDdms()V

    .line 2212
    return-void
.end method

.method public static native greylist-max-o dumpJavaBacktraceToFileTimeout(ILjava/lang/String;I)Z
.end method

.method public static native greylist-max-o dumpNativeBacktraceToFileTimeout(ILjava/lang/String;I)Z
.end method

.method public static native greylist-max-r dumpNativeHeap(Ljava/io/FileDescriptor;)V
.end method

.method public static native greylist-max-o dumpNativeMallocInfo(Ljava/io/FileDescriptor;)V
.end method

.method public static final greylist dumpReferenceTables()V
    .registers 0

    .line 2380
    invoke-static {}, Ldalvik/system/VMDebug;->dumpReferenceTables()V

    .line 2381
    return-void
.end method

.method public static whitelist dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    .registers 6

    .line 2679
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2680
    const/4 v1, 0x0

    const-string v2, "Debug"

    if-nez v0, :cond_20

    .line 2681
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t find service to dump: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    return v1

    .line 2686
    :cond_20
    :try_start_20
    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_25

    .line 2687
    const/4 p0, 0x1

    return p0

    .line 2688
    :catch_25
    move-exception p1

    .line 2689
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t dump service: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2690
    return v1
.end method

.method public static whitelist enableEmulatorTraceOutput()V
    .registers 2

    .line 1241
    const-string v0, "Debug"

    const-string v1, "Unimplemented"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    return-void
.end method

.method private static greylist-max-o fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 2492
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    .line 2493
    const/4 v0, 0x1

    if-ne p0, p1, :cond_8

    .line 2494
    return v0

    .line 2502
    :cond_8
    const/4 v1, 0x0

    :try_start_9
    const-string v2, "TYPE"

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_f} :catch_1e

    .line 2505
    nop

    .line 2507
    const/4 v2, 0x0

    :try_start_11
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_17} :catch_1c

    if-ne p0, p1, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    return v0

    .line 2508
    :catch_1c
    move-exception p0

    .line 2509
    return v1

    .line 2503
    :catch_1e
    move-exception p0

    .line 2504
    return v1
.end method

.method private static greylist-max-o fixTracePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1399
    if-eqz p0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_32

    .line 1400
    :cond_b
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 1402
    if-eqz v0, :cond_17

    .line 1403
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_1b

    .line 1405
    :cond_17
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1408
    :goto_1b
    if-nez p0, :cond_29

    .line 1409
    new-instance p0, Ljava/io/File;

    const-string v1, "dmtrace"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    .line 1411
    :cond_29
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 1414
    :cond_32
    :goto_32
    const-string v0, ".trace"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1417
    :cond_4b
    return-object p0
.end method

.method public static final native whitelist getBinderDeathObjectCount()I
.end method

.method public static final native whitelist getBinderLocalObjectCount()I
.end method

.method public static final native whitelist getBinderProxyObjectCount()I
.end method

.method public static native whitelist getBinderReceivedTransactions()I
.end method

.method public static native whitelist getBinderSentTransactions()I
.end method

.method public static greylist getCaller()Ljava/lang/String;
    .registers 2

    .line 2794
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .registers 3

    .line 2732
    add-int/lit8 p1, p1, 0x4

    array-length v0, p0

    if-lt p1, v0, :cond_8

    .line 2733
    const-string p0, "<bottom of call stack>"

    return-object p0

    .line 2735
    :cond_8
    aget-object p0, p0, p1

    .line 2736
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist getCallers(I)Ljava/lang/String;
    .registers 6

    .line 2747
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2749
    const/4 v2, 0x0

    :goto_e
    if-ge v2, p0, :cond_20

    .line 2750
    invoke-static {v0, v2}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2749
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2752
    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getCallers(II)Ljava/lang/String;
    .registers 6

    .line 2762
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2764
    add-int/2addr p1, p0

    .line 2765
    nop

    :goto_f
    if-ge p0, p1, :cond_21

    .line 2766
    invoke-static {v0, p0}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2765
    add-int/lit8 p0, p0, 0x1

    goto :goto_f

    .line 2768
    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getCallers(ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 2780
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2782
    const/4 v2, 0x0

    :goto_e
    if-ge v2, p0, :cond_24

    .line 2783
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v2}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2782
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2785
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static native blacklist getDmabufHeapPoolsSizeKb()J
.end method

.method public static native blacklist getDmabufHeapTotalExportedKb()J
.end method

.method public static native blacklist getDmabufMappedSizeKb()J
.end method

.method public static native blacklist getDmabufTotalExportedKb()J
.end method

.method public static blacklist getFeatureList()[Ljava/lang/String;
    .registers 1

    .line 1141
    sget-object v0, Landroid/os/Debug;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist getGlobalAllocCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1516
    const/4 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getGlobalAllocSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1538
    const/4 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getGlobalClassInitCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1627
    const/16 v0, 0x20

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getGlobalClassInitTime()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1650
    const/16 v0, 0x40

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getGlobalExternalAllocCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1670
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getGlobalExternalAllocSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1693
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getGlobalExternalFreedCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1702
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getGlobalExternalFreedSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1718
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getGlobalFreedCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1560
    const/4 v0, 0x4

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getGlobalFreedSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1582
    const/16 v0, 0x8

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getGlobalGcInvocationCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1604
    const/16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static native blacklist getGpuPrivateMemoryKb()J
.end method

.method public static native blacklist getGpuTotalUsageKb()J
.end method

.method public static whitelist getInstanceCount(Ljava/lang/Class;)J
    .registers 3

    .line 2249
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/Debug;->getInstanceCount(Ljava/lang/Class;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getInstanceCount(Ljava/lang/Class;Z)J
    .registers 2

    .line 2302
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static whitelist getInstanceCounts(Ljava/util/List;)[J
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;)[J"
        }
    .end annotation

    .line 2275
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/Debug;->getInstanceCounts(Ljava/util/List;Z)[J

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getInstanceCounts(Ljava/util/List;Z)[J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;Z)[J"
        }
    .end annotation

    .line 2334
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    .line 2335
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object p0

    .line 2336
    if-eqz p0, :cond_10

    .line 2337
    return-object p0

    .line 2339
    :cond_10
    sget-object p0, Landroid/os/Debug;->EMPTY_COUNT_CLASS_INSTANCES:[J

    return-object p0
.end method

.method public static native blacklist getIonHeapsSizeKb()J
.end method

.method public static native blacklist getIonPoolsSizeKb()J
.end method

.method public static native blacklist getKernelCmaUsageKb()J
.end method

.method public static whitelist getLoadedClassCount()I
    .registers 1

    .line 2133
    invoke-static {}, Ldalvik/system/VMDebug;->getLoadedClassCount()I

    move-result v0

    return v0
.end method

.method public static native greylist getMemInfo([J)V
.end method

.method public static native whitelist getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V
.end method

.method public static native greylist getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z
.end method

.method public static greylist-max-o getMethodTracingMode()I
    .registers 1

    .line 1453
    invoke-static {}, Ldalvik/system/VMDebug;->getMethodTracingMode()I

    move-result v0

    return v0
.end method

.method public static native whitelist getNativeHeapAllocatedSize()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist getNativeHeapFreeSize()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist getNativeHeapSize()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist getPss()J
.end method

.method public static native greylist-max-o getPss(I[J[J)J
.end method

.method public static native whitelist getRss()J
.end method

.method public static native blacklist getRss(I[J)J
.end method

.method public static whitelist getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1931
    invoke-static {p0}, Ldalvik/system/VMDebug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getRuntimeStats()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1941
    invoke-static {}, Ldalvik/system/VMDebug;->getRuntimeStats()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getThreadAllocCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1736
    const/high16 v0, 0x10000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getThreadAllocSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1759
    const/high16 v0, 0x20000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getThreadExternalAllocCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1779
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getThreadExternalAllocSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1795
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getThreadGcInvocationCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1813
    const/high16 v0, 0x100000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static native greylist-max-o getUnreachableMemory(IZ)Ljava/lang/String;
.end method

.method public static greylist-max-o getVmFeatureList()[Ljava/lang/String;
    .registers 1

    .line 1120
    invoke-static {}, Ldalvik/system/VMDebug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native blacklist getZramFreeKb()J
.end method

.method public static whitelist isDebuggerConnected()Z
    .registers 1

    .line 1109
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggerConnected()Z

    move-result v0

    return v0
.end method

.method public static native blacklist isVmapStack()Z
.end method

.method public static native blacklist logAllocatorStats()Z
.end method

.method private static greylist-max-o modifyFieldIfSet(Ljava/lang/reflect/Field;Lcom/android/internal/util/TypedProperties;Ljava/lang/String;)V
    .registers 9

    .line 2520
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const-string v2, "Cannot set field for "

    const-string v3, ")"

    const-string v4, "Type of "

    const/4 v5, 0x0

    if-ne v0, v1, :cond_81

    .line 2521
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->getStringInfo(Ljava/lang/String;)I

    move-result v0

    .line 2522
    packed-switch v0, :pswitch_data_e6

    .line 2541
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected getStringInfo("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") return value "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2525
    :pswitch_39
    goto :goto_81

    .line 2528
    :pswitch_3a
    :try_start_3a
    invoke-virtual {p0, v5, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_3d} :catch_3f

    .line 2532
    nop

    .line 2533
    return-void

    .line 2529
    :catch_3f
    move-exception p0

    .line 2530
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 2535
    :pswitch_57
    return-void

    .line 2537
    :pswitch_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "  does not match field type ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2539
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2546
    :cond_81
    :goto_81
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2547
    if-eqz p1, :cond_e4

    .line 2548
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/Debug;->fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 2554
    :try_start_91
    invoke-virtual {p0, v5, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_94
    .catch Ljava/lang/IllegalAccessException; {:try_start_91 .. :try_end_94} :catch_95

    .line 2558
    goto :goto_e4

    .line 2555
    :catch_95
    move-exception p0

    .line 2556
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 2549
    :cond_ad
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2550
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")  does not match field type ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2551
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2560
    :cond_e4
    :goto_e4
    return-void

    nop

    :pswitch_data_e6
    .packed-switch -0x2
        :pswitch_58
        :pswitch_57
        :pswitch_3a
        :pswitch_39
    .end packed-switch
.end method

.method public static whitelist printLoadedClasses(I)V
    .registers 1

    .line 2125
    invoke-static {p0}, Ldalvik/system/VMDebug;->printLoadedClasses(I)V

    .line 2126
    return-void
.end method

.method public static whitelist resetAllCounts()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1835
    const/4 v0, -0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1836
    return-void
.end method

.method public static whitelist resetGlobalAllocCount()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1527
    const/4 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1528
    return-void
.end method

.method public static whitelist resetGlobalAllocSize()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1549
    const/4 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1550
    return-void
.end method

.method public static whitelist resetGlobalClassInitCount()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1638
    const/16 v0, 0x20

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1639
    return-void
.end method

.method public static whitelist resetGlobalClassInitTime()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1661
    const/16 v0, 0x40

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1662
    return-void
.end method

.method public static whitelist resetGlobalExternalAllocCount()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1685
    return-void
.end method

.method public static whitelist resetGlobalExternalAllocSize()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1678
    return-void
.end method

.method public static whitelist resetGlobalExternalFreedCount()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1710
    return-void
.end method

.method public static whitelist resetGlobalExternalFreedSize()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1726
    return-void
.end method

.method public static whitelist resetGlobalFreedCount()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1571
    const/4 v0, 0x4

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1572
    return-void
.end method

.method public static whitelist resetGlobalFreedSize()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1593
    const/16 v0, 0x8

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1594
    return-void
.end method

.method public static whitelist resetGlobalGcInvocationCount()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1615
    const/16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1616
    return-void
.end method

.method public static whitelist resetThreadAllocCount()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1747
    const/high16 v0, 0x10000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1748
    return-void
.end method

.method public static whitelist resetThreadAllocSize()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1770
    const/high16 v0, 0x20000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1771
    return-void
.end method

.method public static whitelist resetThreadExternalAllocCount()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1787
    return-void
.end method

.method public static whitelist resetThreadExternalAllocSize()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1803
    return-void
.end method

.method public static whitelist resetThreadGcInvocationCount()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1824
    const/high16 v0, 0x100000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1825
    return-void
.end method

.method public static whitelist setAllocationLimit(I)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2103
    const/4 p0, -0x1

    return p0
.end method

.method public static greylist-max-o setFieldsOn(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2571
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/Debug;->setFieldsOn(Ljava/lang/Class;Z)V

    .line 2572
    return-void
.end method

.method public static greylist-max-o setFieldsOn(Ljava/lang/Class;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 2650
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setFieldsOn("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2651
    if-nez p0, :cond_12

    const-string/jumbo p0, "null"

    goto :goto_16

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_16
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") called in non-DEBUG build"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2650
    const-string p1, "Debug"

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    return-void
.end method

.method public static whitelist setGlobalAllocationLimit(I)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2116
    const/4 p0, -0x1

    return p0
.end method

.method private static blacklist setWaitingForDebugger(Z)V
    .registers 1

    .line 1129
    sput-boolean p0, Landroid/os/Debug;->mWaiting:Z

    .line 1130
    invoke-static {p0}, Ldalvik/system/VMDebug;->setWaitingForDebugger(Z)V

    .line 1131
    return-void
.end method

.method public static whitelist startAllocCounting()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1495
    invoke-static {}, Ldalvik/system/VMDebug;->startAllocCounting()V

    .line 1496
    return-void
.end method

.method public static whitelist startMethodTracing()V
    .registers 2

    .line 1265
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Debug;->fixTracePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1, v1}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    .line 1266
    return-void
.end method

.method public static whitelist startMethodTracing(Ljava/lang/String;)V
    .registers 2

    .line 1294
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    .line 1295
    return-void
.end method

.method public static whitelist startMethodTracing(Ljava/lang/String;I)V
    .registers 3

    .line 1326
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    .line 1327
    return-void
.end method

.method public static whitelist startMethodTracing(Ljava/lang/String;II)V
    .registers 4

    .line 1368
    invoke-static {p0}, Landroid/os/Debug;->fixTracePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    .line 1369
    return-void
.end method

.method public static greylist-max-o startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)V
    .registers 12

    .line 1431
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZIZ)V

    .line 1432
    return-void
.end method

.method public static greylist-max-o startMethodTracingDdms(IIZI)V
    .registers 4

    .line 1443
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/VMDebug;->startMethodTracingDdms(IIZI)V

    .line 1444
    return-void
.end method

.method public static whitelist startMethodTracingSampling(Ljava/lang/String;II)V
    .registers 5

    .line 1392
    invoke-static {p0}, Landroid/os/Debug;->fixTracePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, p2}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    .line 1393
    return-void
.end method

.method public static whitelist startNativeTracing()V
    .registers 3

    .line 1188
    nop

    .line 1190
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/qemu_trace/state"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1191
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_26
    .catchall {:try_start_2 .. :try_end_e} :catchall_1d

    .line 1192
    :try_start_e
    const-string v0, "1"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1a
    .catchall {:try_start_e .. :try_end_13} :catchall_18

    .line 1195
    nop

    .line 1196
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_2c

    .line 1195
    :catchall_18
    move-exception v0

    goto :goto_20

    .line 1193
    :catch_1a
    move-exception v0

    move-object v0, v2

    goto :goto_27

    .line 1195
    :catchall_1d
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_20
    if-eqz v2, :cond_25

    .line 1196
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 1197
    :cond_25
    throw v0

    .line 1193
    :catch_26
    move-exception v1

    .line 1195
    :goto_27
    if-eqz v0, :cond_2c

    .line 1196
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 1198
    :cond_2c
    :goto_2c
    return-void
.end method

.method public static whitelist stopAllocCounting()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1505
    invoke-static {}, Ldalvik/system/VMDebug;->stopAllocCounting()V

    .line 1506
    return-void
.end method

.method public static whitelist stopMethodTracing()V
    .registers 0

    .line 1460
    invoke-static {}, Ldalvik/system/VMDebug;->stopMethodTracing()V

    .line 1461
    return-void
.end method

.method public static whitelist stopNativeTracing()V
    .registers 3

    .line 1212
    nop

    .line 1214
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/qemu_trace/state"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1215
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_26
    .catchall {:try_start_2 .. :try_end_e} :catchall_1d

    .line 1216
    :try_start_e
    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1a
    .catchall {:try_start_e .. :try_end_13} :catchall_18

    .line 1221
    nop

    .line 1222
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_2c

    .line 1221
    :catchall_18
    move-exception v0

    goto :goto_20

    .line 1217
    :catch_1a
    move-exception v0

    move-object v0, v2

    goto :goto_27

    .line 1221
    :catchall_1d
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_20
    if-eqz v2, :cond_25

    .line 1222
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 1223
    :cond_25
    throw v0

    .line 1217
    :catch_26
    move-exception v1

    .line 1221
    :goto_27
    if-eqz v0, :cond_2c

    .line 1222
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 1224
    :cond_2c
    :goto_2c
    return-void
.end method

.method public static blacklist suspendAllAndSendVmStart()V
    .registers 5

    .line 1010
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1011
    return-void

    .line 1015
    :cond_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Sending WAIT chunk"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1016
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 1017
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    const-string v4, "WAIT"

    invoke-static {v4}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4, v1, v2, v0}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 1018
    invoke-static {v3}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    .line 1026
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Waiting for debugger first packet"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1028
    invoke-static {v0}, Landroid/os/Debug;->setWaitingForDebugger(Z)V

    .line 1029
    :goto_2c
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1031
    const-wide/16 v0, 0x64

    :try_start_34
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_37} :catch_38

    .line 1033
    :goto_37
    goto :goto_2c

    .line 1032
    :catch_38
    move-exception v0

    goto :goto_37

    .line 1035
    :cond_3a
    invoke-static {v2}, Landroid/os/Debug;->setWaitingForDebugger(Z)V

    .line 1037
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Debug.suspendAllAndSentVmStart"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1038
    invoke-static {}, Ldalvik/system/VMDebug;->suspendAllAndSendVmStart()V

    .line 1039
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Debug.suspendAllAndSendVmStart, resumed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1040
    return-void
.end method

.method public static whitelist threadCpuTimeNanos()J
    .registers 2

    .line 1475
    invoke-static {}, Ldalvik/system/VMDebug;->threadCpuTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist waitForDebugger()V
    .registers 7

    .line 1048
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1050
    return-void

    .line 1052
    :cond_7
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1053
    return-void

    .line 1056
    :cond_e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Sending WAIT chunk"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1057
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 1058
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    const-string v4, "WAIT"

    invoke-static {v4}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4, v1, v2, v0}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 1059
    invoke-static {v3}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    .line 1061
    invoke-static {v0}, Landroid/os/Debug;->setWaitingForDebugger(Z)V

    .line 1062
    :goto_2c
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    const-wide/16 v3, 0xc8

    if-nez v0, :cond_3a

    .line 1063
    :try_start_34
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_37} :catch_38

    .line 1064
    :goto_37
    goto :goto_2c

    :catch_38
    move-exception v0

    goto :goto_37

    .line 1066
    :cond_3a
    invoke-static {v2}, Landroid/os/Debug;->setWaitingForDebugger(Z)V

    .line 1068
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Debugger has connected"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1080
    :goto_44
    invoke-static {}, Ldalvik/system/VMDebug;->lastDebuggerActivity()J

    move-result-wide v0

    .line 1081
    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-gez v2, :cond_56

    .line 1082
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "debugger detached?"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1083
    goto :goto_8a

    .line 1086
    :cond_56
    const-wide/16 v5, 0x514

    cmp-long v2, v0, v5

    if-gez v2, :cond_6b

    .line 1087
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "waiting for debugger to settle..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1088
    :try_start_64
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_67} :catch_68

    .line 1089
    :goto_67
    goto :goto_6a

    :catch_68
    move-exception v0

    goto :goto_67

    .line 1094
    :goto_6a
    goto :goto_44

    .line 1091
    :cond_6b
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debugger has settled ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1092
    nop

    .line 1095
    :goto_8a
    return-void
.end method

.method public static whitelist waitingForDebugger()Z
    .registers 1

    .line 1102
    sget-boolean v0, Landroid/os/Debug;->mWaiting:Z

    return v0
.end method
