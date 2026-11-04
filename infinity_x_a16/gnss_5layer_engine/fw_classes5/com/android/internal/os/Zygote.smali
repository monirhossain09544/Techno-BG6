.class public final Lcom/android/internal/os/Zygote;
.super Ljava/lang/Object;
.source "Zygote.java"


# static fields
.field public static final blacklist ALLOWLISTED_DATA_INFO_MAP:Ljava/lang/String; = "--allowlisted-data-info-map"

.field private static final blacklist ANDROID_SOCKET_PREFIX:Ljava/lang/String; = "ANDROID_SOCKET_"

.field public static final blacklist API_ENFORCEMENT_POLICY_MASK:I = 0x3000

.field public static final blacklist API_ENFORCEMENT_POLICY_SHIFT:I

.field public static final blacklist BIND_MOUNT_APP_DATA_DIRS:Ljava/lang/String; = "--bind-mount-data-dirs"

.field public static final blacklist BIND_MOUNT_APP_STORAGE_DIRS:Ljava/lang/String; = "--bind-mount-storage-dirs"

.field public static final blacklist BIND_MOUNT_SYSPROP_OVERRIDES:Ljava/lang/String; = "--bind-mount-sysprop-overrides"

.field public static final blacklist CHILD_ZYGOTE_ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field public static final blacklist CHILD_ZYGOTE_SOCKET_NAME_ARG:Ljava/lang/String; = "--zygote-socket="

.field public static final blacklist CHILD_ZYGOTE_UID_RANGE_END:Ljava/lang/String; = "--uid-range-end="

.field public static final blacklist CHILD_ZYGOTE_UID_RANGE_START:Ljava/lang/String; = "--uid-range-start="

.field public static final blacklist DEBUG_ALWAYS_JIT:I = 0x40

.field public static final blacklist DEBUG_ENABLE_ASSERT:I = 0x4

.field public static final blacklist DEBUG_ENABLE_CHECKJNI:I = 0x2

.field public static final blacklist DEBUG_ENABLE_JDWP:I = 0x1

.field public static final blacklist DEBUG_ENABLE_JNI_LOGGING:I = 0x10

.field public static final blacklist DEBUG_ENABLE_PTRACE:I = 0x2000000

.field public static final blacklist DEBUG_ENABLE_SAFEMODE:I = 0x8

.field public static final blacklist DEBUG_GENERATE_DEBUG_INFO:I = 0x20

.field public static final blacklist DEBUG_GENERATE_MINI_DEBUG_INFO:I = 0x800

.field public static final blacklist DEBUG_IGNORE_APP_SIGNAL_HANDLER:I = 0x20000

.field public static final blacklist DEBUG_JAVA_DEBUGGABLE:I = 0x100

.field public static final blacklist DEBUG_NATIVE_DEBUGGABLE:I = 0x80

.field public static final blacklist DISABLE_TEST_API_ENFORCEMENT_POLICY:I = 0x40000

.field public static final blacklist DISABLE_VERIFIER:I = 0x200

.field private static final blacklist ENABLE_JDWP:Z

.field public static final blacklist ENABLE_PAGE_SIZE_APP_COMPAT:I = 0x4000000

.field private static final blacklist ENABLE_PTRACE:Z

.field private static final blacklist GWP_ASAN:J = 0x8159f9eL

.field public static final blacklist GWP_ASAN_LEVEL_ALWAYS:I = 0x400000

.field public static final blacklist GWP_ASAN_LEVEL_DEFAULT:I = 0x600000

.field public static final blacklist GWP_ASAN_LEVEL_LOTTERY:I = 0x200000

.field public static final blacklist GWP_ASAN_LEVEL_MASK:I = 0x600000

.field public static final blacklist GWP_ASAN_LEVEL_NEVER:I = 0x0

.field static final blacklist INT_ARRAY_2D:[[I

.field public static final blacklist MEMORY_TAG_LEVEL_ASYNC:I = 0x100000

.field public static final blacklist MEMORY_TAG_LEVEL_MASK:I = 0x180000

.field public static final blacklist MEMORY_TAG_LEVEL_NONE:I = 0x0

.field public static final blacklist MEMORY_TAG_LEVEL_SYNC:I = 0x180000

.field public static final blacklist MEMORY_TAG_LEVEL_TBI:I = 0x80000

.field public static final blacklist MOUNT_EXTERNAL_ANDROID_WRITABLE:I = 0x4

.field public static final blacklist MOUNT_EXTERNAL_DEFAULT:I = 0x1

.field public static final blacklist MOUNT_EXTERNAL_INSTALLER:I = 0x2

.field public static final blacklist MOUNT_EXTERNAL_NONE:I = 0x0

.field public static final blacklist MOUNT_EXTERNAL_PASS_THROUGH:I = 0x3

.field private static final blacklist NATIVE_HEAP_POINTER_TAGGING:J = 0x81774caL

.field private static final blacklist NATIVE_HEAP_POINTER_TAGGING_SECONDARY_ZYGOTE:J = 0xc5f142dL

.field private static final blacklist NATIVE_HEAP_ZERO_INIT:J = 0xa9ca600L

.field public static final blacklist NATIVE_HEAP_ZERO_INIT_ENABLED:I = 0x800000

.field private static final blacklist NATIVE_MEMTAG_ASYNC:J = 0x817bb2cL

.field private static final blacklist NATIVE_MEMTAG_SYNC:J = 0xa937ebaL

.field public static final blacklist ONLY_USE_SYSTEM_OAT_FILES:I = 0x400

.field public static final blacklist PKG_DATA_INFO_MAP:Ljava/lang/String; = "--pkg-data-info-map"

.field public static final blacklist PRIMARY_SOCKET_NAME:Ljava/lang/String; = "zygote"

.field private static final blacklist PRIORITY_MAX:I = -0x14

.field public static final blacklist PROFILEABLE:I = 0x1000000

.field public static final blacklist PROFILE_FROM_SHELL:I = 0x8000

.field public static final blacklist PROFILE_SYSTEM_SERVER:I = 0x4000

.field public static final blacklist PROPERTY_CHECK_INTERVAL:J = 0xea60L

.field public static final blacklist SECONDARY_SOCKET_NAME:Ljava/lang/String; = "zygote_secondary"

.field public static final blacklist SOCKET_BUFFER_SIZE:I = 0x100

.field public static final blacklist START_AS_TOP_APP_ARG:Ljava/lang/String; = "--is-top-app"

.field private static final blacklist TAG:Ljava/lang/String; = "Zygote"

.field private static final blacklist USAP_ERROR_PREFIX:Ljava/lang/String; = "Invalid command to USAP: "

.field static final blacklist USAP_MANAGEMENT_MESSAGE_BYTES:I = 0x8

.field public static final blacklist USAP_POOL_PRIMARY_SOCKET_NAME:Ljava/lang/String; = "usap_pool_primary"

.field public static final blacklist USAP_POOL_SECONDARY_SOCKET_NAME:Ljava/lang/String; = "usap_pool_secondary"

.field public static final blacklist USE_APP_IMAGE_STARTUP_CACHE:I = 0x10000


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 102
    nop

    .line 103
    const/16 v0, 0x3000

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    sput v0, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    .line 295
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aput v2, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/internal/os/Zygote;->INT_ARRAY_2D:[[I

    .line 1042
    const-string v0, "persist.debug.dalvik.vm.jdwp.enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1043
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/Zygote;->ENABLE_JDWP:Z

    .line 1049
    const-string v0, "persist.debug.ptrace.enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1050
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/Zygote;->ENABLE_PTRACE:Z

    .line 1049
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist allowAppFilesAcrossFork(Landroid/content/pm/ApplicationInfo;)V
    .registers 4

    .line 533
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getAllApkPaths()[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    .line 534
    invoke-static {v2}, Lcom/android/internal/os/Zygote;->nativeAllowFileAcrossFork(Ljava/lang/String;)V

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 536
    :cond_10
    return-void
.end method

.method static blacklist allowFilesOpenedByPreload()V
    .registers 0

    .line 563
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeAllowFilesOpenedByPreload()V

    .line 564
    return-void
.end method

.method static blacklist appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 8

    .line 1205
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1e

    aget-object v2, p1, v1

    .line 1206
    const-string v3, " \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'\\\'\'"

    const-string v5, "\'"

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1208
    :cond_1e
    return-void
.end method

.method static blacklist applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V
    .registers 3

    .line 1068
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const/high16 v1, 0x2000000

    if-nez v0, :cond_e

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_19

    sget-boolean v0, Lcom/android/internal/os/Zygote;->ENABLE_JDWP:Z

    if-eqz v0, :cond_19

    .line 1069
    :cond_e
    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 1072
    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 1074
    :cond_19
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_25

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_2a

    sget-boolean v0, Lcom/android/internal/os/Zygote;->ENABLE_PTRACE:Z

    if-eqz v0, :cond_2a

    .line 1075
    :cond_25
    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 1077
    :cond_2a
    return-void
.end method

.method static blacklist applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .line 1095
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result p1

    .line 1097
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-eqz v0, :cond_1b

    if-eqz p1, :cond_1b

    iget p0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const p1, 0x2000001

    and-int/2addr p0, p1

    if-eqz p0, :cond_13

    goto :goto_1b

    .line 1100
    :cond_13
    new-instance p0, Lcom/android/internal/os/ZygoteSecurityException;

    const-string p1, "Peer is permitted to specify an explicit invoke-with wrapper command only for debuggable applications."

    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1104
    :cond_1b
    :goto_1b
    return-void
.end method

.method static blacklist applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V
    .registers 2

    .line 1131
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1132
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    .line 1134
    :cond_c
    return-void
.end method

.method static blacklist applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .line 1021
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    invoke-static {p1}, Lcom/android/internal/os/Zygote;->minChildUid(Landroid/net/Credentials;)I

    move-result v1

    if-lt v0, v1, :cond_d

    goto :goto_15

    .line 1022
    :cond_d
    new-instance p0, Lcom/android/internal/os/ZygoteSecurityException;

    const-string p1, "System UID may not launch process with UID < 1000"

    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1028
    :cond_15
    :goto_15
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    const/4 v1, 0x1

    if-nez v0, :cond_22

    .line 1029
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    .line 1030
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    .line 1032
    :cond_22
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    if-nez v0, :cond_2e

    .line 1033
    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    move-result p1

    iput p1, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    .line 1034
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    .line 1036
    :cond_2e
    return-void
.end method

.method private static blacklist blockSigTerm()V
    .registers 0

    .line 908
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeBlockSigTerm()V

    .line 909
    return-void
.end method

.method private static blacklist boostUsapPriority()V
    .registers 0

    .line 920
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeBoostUsapPriority()V

    .line 921
    return-void
.end method

.method private static blacklist callPostForkChildHooks(IZZLjava/lang/String;)V
    .registers 4

    .line 1176
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/ZygoteHooks;->postForkChild(IZZLjava/lang/String;)V

    .line 1177
    return-void
.end method

.method private static blacklist callPostForkSystemServerHooks(I)V
    .registers 1

    .line 1169
    invoke-static {p0}, Ldalvik/system/ZygoteHooks;->postForkSystemServer(I)V

    .line 1170
    return-void
.end method

.method private static blacklist childMain(Lcom/android/internal/os/ZygoteCommandBuffer;Landroid/net/LocalServerSocket;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;
    .registers 30

    .line 760
    move-object/from16 v1, p2

    const-string v2, "Failed to close USAP pool socket"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 762
    nop

    .line 763
    nop

    .line 765
    nop

    .line 766
    const-string v4, "USAP"

    if-nez p0, :cond_5b

    .line 769
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "usap64"

    goto :goto_1a

    :cond_18
    const-string v0, "usap32"

    :goto_1a
    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 774
    invoke-static {}, Lcom/android/internal/os/Zygote;->boostUsapPriority()V

    const/4 v6, 0x0

    .line 777
    :goto_21
    nop

    .line 779
    :try_start_22
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v6

    .line 783
    invoke-static {}, Lcom/android/internal/os/Zygote;->blockSigTerm()V

    .line 785
    new-instance v0, Ljava/io/DataOutputStream;

    .line 786
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 787
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v7

    .line 788
    new-instance v8, Lcom/android/internal/os/ZygoteCommandBuffer;

    invoke-direct {v8, v6}, Lcom/android/internal/os/ZygoteCommandBuffer;-><init>(Landroid/net/LocalSocket;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3b} :catch_48

    .line 789
    :try_start_3b
    invoke-static {v8}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v9

    .line 790
    invoke-static {v9, v7}, Lcom/android/internal/os/Zygote;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V

    .line 792
    invoke-static {v9}, Lcom/android/internal/os/Zygote;->validateUsapCommand(Lcom/android/internal/os/ZygoteArguments;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_45} :catch_46

    .line 793
    goto :goto_64

    .line 794
    :catch_46
    move-exception v0

    goto :goto_4a

    :catch_48
    move-exception v0

    const/4 v8, 0x0

    .line 795
    :goto_4a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-static {}, Lcom/android/internal/os/Zygote;->unblockSigTerm()V

    .line 799
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 800
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 801
    goto :goto_21

    .line 804
    :cond_5b
    invoke-static {}, Lcom/android/internal/os/Zygote;->blockSigTerm()V

    .line 806
    :try_start_5e
    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v9
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_62} :catch_180

    .line 810
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 813
    :goto_64
    if-eqz v9, :cond_178

    .line 820
    :try_start_66
    invoke-static {v9}, Lcom/android/internal/os/Zygote;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    .line 822
    nop

    .line 824
    iget-object v7, v9, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    if-eqz v7, :cond_7a

    .line 825
    iget-object v7, v9, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    sget-object v8, Lcom/android/internal/os/Zygote;->INT_ARRAY_2D:[[I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I
    :try_end_78
    .catchall {:try_start_66 .. :try_end_78} :catchall_173

    move-object v14, v7

    goto :goto_7b

    .line 824
    :cond_7a
    const/4 v14, 0x0

    .line 828
    :goto_7b
    if-nez p0, :cond_d2

    .line 834
    :try_start_7d
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_9b
    .catchall {:try_start_7d .. :try_end_80} :catchall_99

    .line 847
    :try_start_80
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 848
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->close()V

    .line 849
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_8a
    .catch Landroid/system/ErrnoException; {:try_start_80 .. :try_end_8a} :catch_8f
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_8a} :catch_8f
    .catchall {:try_start_80 .. :try_end_8a} :catchall_173

    .line 853
    nop

    .line 855
    :try_start_8b
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_d2

    .line 850
    :catch_8f
    move-exception v0

    .line 851
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    :try_end_98
    .catchall {:try_start_8b .. :try_end_98} :catchall_173

    goto :goto_d1

    .line 840
    :catchall_99
    move-exception v0

    goto :goto_bc

    .line 835
    :catch_9b
    move-exception v0

    .line 836
    :try_start_9c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write response to session socket: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 837
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 836
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_bc
    .catchall {:try_start_9c .. :try_end_bc} :catchall_99

    .line 847
    :goto_bc
    :try_start_bc
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 848
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->close()V

    .line 849
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_c6
    .catch Landroid/system/ErrnoException; {:try_start_bc .. :try_end_c6} :catch_c8
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_c6} :catch_c8
    .catchall {:try_start_bc .. :try_end_c6} :catchall_173

    .line 853
    nop

    .line 854
    :try_start_c7
    throw v0

    .line 850
    :catch_c8
    move-exception v0

    .line 851
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    :goto_d1
    throw v1
    :try_end_d2
    .catchall {:try_start_c7 .. :try_end_d2} :catchall_173

    .line 858
    :cond_d2
    :goto_d2
    if-eqz v1, :cond_121

    .line 860
    :try_start_d4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 862
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 869
    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 870
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 871
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/4 v6, 0x0

    invoke-static {v1, v2, v6, v0}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_f3} :catch_f9
    .catchall {:try_start_d4 .. :try_end_f3} :catchall_f7

    .line 878
    :try_start_f3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_173

    .line 879
    goto :goto_121

    .line 878
    :catchall_f7
    move-exception v0

    goto :goto_11d

    .line 872
    :catch_f9
    move-exception v0

    .line 873
    :try_start_fa
    const-string v2, "Failed to write PID (%d) to pipe (%d): %s"

    .line 875
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 874
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 873
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_11d
    .catchall {:try_start_fa .. :try_end_11d} :catchall_f7

    .line 878
    :goto_11d
    :try_start_11d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 879
    throw v0

    .line 882
    :cond_121
    :goto_121
    iget v10, v9, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    iget v11, v9, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    iget-object v12, v9, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    iget v13, v9, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    iget v15, v9, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    iget-object v0, v9, Lcom/android/internal/os/ZygoteArguments;->mSeInfo:Ljava/lang/String;

    iget-object v1, v9, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    iget-boolean v2, v9, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    iget-object v3, v9, Lcom/android/internal/os/ZygoteArguments;->mInstructionSet:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/internal/os/ZygoteArguments;->mAppDataDir:Ljava/lang/String;

    iget-boolean v6, v9, Lcom/android/internal/os/ZygoteArguments;->mIsTopApp:Z

    iget-object v7, v9, Lcom/android/internal/os/ZygoteArguments;->mPkgDataInfoList:[Ljava/lang/String;

    iget-object v8, v9, Lcom/android/internal/os/ZygoteArguments;->mAllowlistedDataInfoList:[Ljava/lang/String;

    iget-boolean v5, v9, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppDataDirs:Z

    move-object/from16 v16, v0

    iget-boolean v0, v9, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppStorageDirs:Z

    move/from16 v25, v0

    iget-boolean v0, v9, Lcom/android/internal/os/ZygoteArguments;->mBindMountSyspropOverrides:Z

    move/from16 v26, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v24, v5

    move/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    invoke-static/range {v10 .. v26}, Lcom/android/internal/os/Zygote;->specializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZZ)V

    .line 893
    const-string v0, "Zygote"

    invoke-static {v9, v0}, Lcom/android/internal/os/Zygote;->setAppProcessName(Lcom/android/internal/os/ZygoteArguments;Ljava/lang/String;)V

    .line 895
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 897
    iget v0, v9, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    iget-object v1, v9, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    iget-object v2, v9, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_16f
    .catchall {:try_start_11d .. :try_end_16f} :catchall_173

    .line 903
    invoke-static {}, Lcom/android/internal/os/Zygote;->unblockSigTerm()V

    .line 897
    return-object v0

    .line 903
    :catchall_173
    move-exception v0

    invoke-static {}, Lcom/android/internal/os/Zygote;->unblockSigTerm()V

    .line 904
    throw v0

    .line 814
    :cond_178
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Empty command line"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 807
    :catch_180
    move-exception v0

    .line 808
    const-string v1, "AppStartup"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Failed to parse application start command"

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist containsInetGid([I)Z
    .registers 5

    .line 320
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_10

    .line 321
    aget v2, p0, v1

    const/16 v3, 0xbbb

    if-ne v2, v3, :cond_d

    const/4 p0, 0x1

    return p0

    .line 320
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 323
    :cond_10
    return v0
.end method

.method static blacklist createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;
    .registers 5

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_SOCKET_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1149
    :try_start_13
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1150
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1b} :catch_44

    .line 1153
    nop

    .line 1156
    :try_start_1c
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 1157
    invoke-virtual {v0, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 1158
    new-instance v1, Landroid/net/LocalServerSocket;

    invoke-direct {v1, v0}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_29} :catch_2a

    return-object v1

    .line 1159
    :catch_2a
    move-exception v0

    .line 1160
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error building socket from file descriptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1151
    :catch_44
    move-exception v0

    .line 1152
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket unset or invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist decideGwpAsanLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I
    .registers 9

    .line 1411
    const/4 v0, -0x1

    const/high16 v1, 0x400000

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_12

    iget v4, p1, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-eq v4, v0, :cond_12

    .line 1412
    iget p0, p1, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-ne p0, v2, :cond_10

    .line 1413
    goto :goto_11

    .line 1414
    :cond_10
    move v1, v3

    .line 1412
    :goto_11
    return v1

    .line 1417
    :cond_12
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getGwpAsanMode()I

    move-result p1

    if-eq p1, v0, :cond_21

    .line 1418
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getGwpAsanMode()I

    move-result p0

    if-ne p0, v2, :cond_1f

    .line 1419
    goto :goto_20

    .line 1420
    :cond_1f
    move v1, v3

    .line 1418
    :goto_20
    return v1

    .line 1422
    :cond_21
    const-wide/32 v4, 0x8159f9e

    invoke-static {v4, v5, p0, p2, v3}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 1423
    return v1

    .line 1425
    :cond_2b
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_33

    .line 1426
    const/high16 p0, 0x200000

    return p0

    .line 1428
    :cond_33
    const/high16 p0, 0x600000

    return p0
.end method

.method private static blacklist decideTaggingLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I
    .registers 6

    .line 1373
    invoke-static {p0, p1, p2}, Lcom/android/internal/os/Zygote;->getRequestedMemtagLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result p0

    .line 1376
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsMemoryTagging()Z

    move-result p1

    const/high16 p2, 0x180000

    const/high16 v0, 0x100000

    const/4 v1, 0x0

    const/high16 v2, 0x80000

    if-eqz p1, :cond_15

    .line 1379
    if-ne p0, v2, :cond_22

    .line 1380
    move p0, v1

    goto :goto_22

    .line 1382
    :cond_15
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsTaggedPointers()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1386
    if-eq p0, v0, :cond_1f

    if-ne p0, p2, :cond_22

    .line 1387
    :cond_1f
    move p0, v2

    goto :goto_22

    .line 1391
    :cond_21
    move p0, v1

    .line 1397
    :cond_22
    :goto_22
    if-ne p0, v0, :cond_3b

    sget-boolean p1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez p1, :cond_2c

    sget-boolean p1, Landroid/os/Build;->IS_ENG:Z

    if-eqz p1, :cond_3b

    .line 1399
    :cond_2c
    const-string p1, "persist.arm64.memtag.default"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sync"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 1400
    goto :goto_3c

    .line 1403
    :cond_3b
    move p2, p0

    :goto_3c
    return p2
.end method

.method static blacklist emptyUsapPool()V
    .registers 0

    .line 609
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeEmptyUsapPool()V

    .line 610
    return-void
.end method

.method private static blacklist enableNativeHeapZeroInit(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)Z
    .registers 8

    .line 1436
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_f

    iget v3, p1, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    if-eq v3, v0, :cond_f

    .line 1438
    iget p0, p1, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    if-ne p0, v2, :cond_e

    move v1, v2

    :cond_e
    return v1

    .line 1441
    :cond_f
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getNativeHeapZeroInitialized()I

    move-result p1

    if-eq p1, v0, :cond_1d

    .line 1442
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getNativeHeapZeroInitialized()I

    move-result p0

    if-ne p0, v2, :cond_1c

    move v1, v2

    :cond_1c
    return v1

    .line 1445
    :cond_1d
    const-wide/32 v3, 0xa9ca600

    invoke-static {v3, v4, p0, p2, v1}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 1446
    return v2

    .line 1448
    :cond_27
    return v1
.end method

.method static blacklist execShell(Ljava/lang/String;)V
    .registers 3

    .line 1187
    const-string v0, "/system/bin/sh"

    const-string v1, "-c"

    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 1189
    const/4 v0, 0x0

    :try_start_9
    aget-object v0, p0, v0

    invoke-static {v0, p0}, Landroid/system/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_e} :catch_10

    .line 1192
    nop

    .line 1193
    return-void

    .line 1190
    :catch_10
    move-exception p0

    .line 1191
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static blacklist forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZZ)I
    .registers 40

    .line 374
    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 376
    const-string v0, "sys.use_fifo_ui"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    goto :goto_f

    :cond_e
    move v2, v1

    .line 377
    :goto_f
    nop

    .line 380
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/Flags;->zygoteEarlyFifoBoost()Z

    move-result v0

    if-eqz v0, :cond_18

    move v15, v2

    goto :goto_19

    :cond_18
    move v15, v1

    .line 377
    :goto_19
    move/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move/from16 v20, p18

    invoke-static/range {v1 .. v20}, Lcom/android/internal/os/Zygote;->nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;[Ljava/lang/String;ZZZ)I

    move-result v0

    .line 383
    if-nez v0, :cond_58

    .line 385
    const-wide/16 v1, 0x40

    const-string v4, "PostFork"

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 388
    if-eqz v3, :cond_58

    array-length v1, v3

    if-lez v1, :cond_58

    .line 389
    invoke-static {v3}, Lcom/android/internal/os/Zygote;->containsInetGid([I)Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/net/NetworkUtilsInternal;->setAllowNetworkingForProcess(Z)V

    .line 394
    :cond_58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 396
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 397
    return v0
.end method

.method static blacklist forkSimpleApps(Lcom/android/internal/os/ZygoteCommandBuffer;Ljava/io/FileDescriptor;IILjava/lang/String;Z)Ljava/lang/Runnable;
    .registers 6

    .line 737
    nop

    .line 738
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/os/ZygoteCommandBuffer;->forkRepeatedly(Ljava/io/FileDescriptor;IILjava/lang/String;Z)Z

    move-result p1

    .line 740
    const/4 p2, 0x0

    if-eqz p1, :cond_d

    .line 741
    invoke-static {p0, p2, p2}, Lcom/android/internal/os/Zygote;->childMain(Lcom/android/internal/os/ZygoteCommandBuffer;Landroid/net/LocalServerSocket;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0

    .line 743
    :cond_d
    return-object p2
.end method

.method static blacklist forkSystemServer(II[II[[IJJ)I
    .registers 9

    .line 505
    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 507
    invoke-static/range {p0 .. p8}, Lcom/android/internal/os/Zygote;->nativeForkSystemServer(II[II[[IJJ)I

    move-result p0

    .line 512
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setPriority(I)V

    .line 514
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 515
    return p0
.end method

.method static blacklist forkUsap(Landroid/net/LocalServerSocket;[IZ)Ljava/lang/Runnable;
    .registers 8

    .line 677
    :try_start_0
    sget v0, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v0}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v0

    .line 678
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 679
    const/4 v3, 0x1

    aget-object v0, v0, v3
    :try_end_c
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_c} :catch_33

    .line 682
    nop

    .line 684
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-static {v3, v4, p1, v1, p2}, Lcom/android/internal/os/Zygote;->nativeForkApp(II[IZZ)I

    move-result p1

    .line 686
    const/4 p2, 0x0

    if-nez p1, :cond_24

    .line 687
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 688
    invoke-static {p2, p0, v0}, Lcom/android/internal/os/Zygote;->childMain(Lcom/android/internal/os/ZygoteCommandBuffer;Landroid/net/LocalServerSocket;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0

    .line 689
    :cond_24
    const/4 p0, -0x1

    if-ne p1, p0, :cond_28

    .line 691
    return-object p2

    .line 694
    :cond_28
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 695
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/internal/os/Zygote;->nativeAddUsapTableEntry(II)V

    .line 696
    return-object p2

    .line 680
    :catch_33
    move-exception p0

    .line 681
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to create USAP pipe."

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static blacklist getConfigurationProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 600
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "persist.device_config"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "runtime_native"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 601
    const-string p0, "."

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 600
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getConfigurationPropertyBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .registers 5

    .line 628
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "persist.device_config"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "runtime_native"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 629
    const-string p0, "."

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 633
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 628
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static blacklist getMemorySafetyRuntimeFlags(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Ljava/lang/String;Lcom/android/internal/compat/IPlatformCompat;)I
    .registers 6

    .line 1460
    invoke-static {p0, p1, p3}, Lcom/android/internal/os/Zygote;->decideGwpAsanLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v0

    .line 1471
    if-eqz p2, :cond_e

    const-string v1, "arm64"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 1472
    :cond_e
    invoke-static {p0, p1, p3}, Lcom/android/internal/os/Zygote;->decideTaggingLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result p2

    or-int/2addr v0, p2

    .line 1474
    :cond_13
    invoke-static {p0, p1, p3}, Lcom/android/internal/os/Zygote;->enableNativeHeapZeroInit(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 1475
    const/high16 p0, 0x800000

    or-int/2addr v0, p0

    .line 1477
    :cond_1c
    return v0
.end method

.method public static blacklist getMemorySafetyRuntimeFlagsForSecondaryZygote(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;)I
    .registers 6

    .line 1486
    nop

    .line 1488
    const-string v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1487
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    .line 1489
    nop

    .line 1490
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/android/internal/os/Zygote;->getMemorySafetyRuntimeFlags(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Ljava/lang/String;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result p1

    .line 1494
    const/high16 v1, 0x180000

    and-int/2addr v1, p1

    const/high16 v2, 0x80000

    if-ne v1, v2, :cond_29

    .line 1495
    const-wide/32 v1, 0xc5f142d

    const/16 v3, 0x1f

    invoke-static {v1, v2, p0, v0, v3}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 1501
    const p0, -0x180001

    and-int/2addr p0, p1

    .line 1502
    or-int/lit8 p1, p0, 0x0

    .line 1504
    :cond_29
    return p1
.end method

.method private static blacklist getRequestedMemtagLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I
    .registers 11

    .line 1320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.arm64.memtag.app."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1321
    const-string v1, "sync"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v3, 0x180000

    if-eqz v2, :cond_24

    .line 1322
    return v3

    .line 1323
    :cond_24
    const-string v2, "async"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v5, 0x100000

    if-eqz v4, :cond_2f

    .line 1324
    return v5

    .line 1325
    :cond_2f
    const-string v4, "off"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_39

    .line 1326
    return v4

    .line 1330
    :cond_39
    const/4 v0, -0x1

    if-eqz p1, :cond_47

    iget v6, p1, Landroid/content/pm/ProcessInfo;->memtagMode:I

    if-eq v6, v0, :cond_47

    .line 1331
    iget p0, p1, Landroid/content/pm/ProcessInfo;->memtagMode:I

    invoke-static {p0}, Lcom/android/internal/os/Zygote;->memtagModeToZygoteMemtagLevel(I)I

    move-result p0

    return p0

    .line 1335
    :cond_47
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getMemtagMode()I

    move-result p1

    if-eq p1, v0, :cond_56

    .line 1336
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getMemtagMode()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/os/Zygote;->memtagModeToZygoteMemtagLevel(I)I

    move-result p0

    return p0

    .line 1339
    :cond_56
    const-wide/32 v6, 0xa937eba

    invoke-static {v6, v7, p0, p2, v4}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 1340
    return v3

    .line 1343
    :cond_60
    const-wide/32 v6, 0x817bb2c

    invoke-static {v6, v7, p0, p2, v4}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 1344
    return v5

    .line 1348
    :cond_6a
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->allowsNativeHeapPointerTagging()Z

    move-result p1

    if-nez p1, :cond_71

    .line 1349
    return v4

    .line 1352
    :cond_71
    const-string p1, "persist.arm64.memtag.app_default"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1353
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1354
    return v3

    .line 1355
    :cond_7e
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 1356
    return v5

    .line 1360
    :cond_85
    const-wide/32 v0, 0x81774ca

    const/16 p1, 0x1d

    invoke-static {v0, v1, p0, p2, p1}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result p0

    if-eqz p0, :cond_93

    .line 1362
    const/high16 p0, 0x80000

    return p0

    .line 1365
    :cond_93
    return v4
.end method

.method static blacklist getUsapPipeFDs()[I
    .registers 1

    .line 975
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeGetUsapPipeFDs()[I

    move-result-object v0

    return-object v0
.end method

.method static blacklist getUsapPoolCount()I
    .registers 1

    .line 640
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeGetUsapPoolCount()I

    move-result v0

    return v0
.end method

.method static blacklist getUsapPoolEventFD()Ljava/io/FileDescriptor;
    .registers 2

    .line 650
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 651
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeGetUsapPoolEventFD()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 653
    return-object v0
.end method

.method public static blacklist getWrapProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1114
    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2b

    .line 1118
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrap."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1119
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1120
    return-object p0

    .line 1122
    :cond_2a
    return-object v0

    .line 1115
    :cond_2b
    :goto_2b
    return-object v0
.end method

.method static blacklist initNativeState(Z)V
    .registers 1

    .line 585
    invoke-static {p0}, Lcom/android/internal/os/Zygote;->nativeInitNativeState(Z)V

    .line 586
    return-void
.end method

.method private static blacklist isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z
    .registers 5

    .line 1309
    if-eqz p3, :cond_9

    :try_start_2
    invoke-interface {p3, p0, p1, p2}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_6} :catch_7

    return p0

    .line 1310
    :catch_7
    move-exception p0

    goto :goto_a

    .line 1311
    :cond_9
    nop

    .line 1312
    :goto_a
    if-lez p4, :cond_12

    iget p0, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-le p0, p4, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method static blacklist markOpenedFilesBeforePreload()V
    .registers 0

    .line 549
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeMarkOpenedFilesBeforePreload()V

    .line 550
    return-void
.end method

.method private static blacklist memtagModeToZygoteMemtagLevel(I)I
    .registers 1

    .line 1293
    packed-switch p0, :pswitch_data_c

    .line 1299
    const/4 p0, 0x0

    return p0

    .line 1297
    :pswitch_5
    const/high16 p0, 0x180000

    return p0

    .line 1295
    :pswitch_8
    const/high16 p0, 0x100000

    return p0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method static blacklist minChildUid(Landroid/net/Credentials;)I
    .registers 2

    .line 1000
    invoke-virtual {p0}, Landroid/net/Credentials;->getUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_f

    .line 1001
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result p0

    if-nez p0, :cond_f

    .line 1005
    return v0

    .line 1007
    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private static native blacklist nativeAddUsapTableEntry(II)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method protected static native blacklist nativeAllowFileAcrossFork(Ljava/lang/String;)V
.end method

.method private static native blacklist nativeAllowFilesOpenedByPreload()V
.end method

.method private static native blacklist nativeBlockSigTerm()V
.end method

.method private static native blacklist nativeBoostUsapPriority()V
.end method

.method public static native blacklist nativeCurrentTaggingLevel()I
.end method

.method private static native blacklist nativeEmptyUsapPool()V
.end method

.method private static native blacklist nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;[Ljava/lang/String;ZZZ)I
.end method

.method private static native blacklist nativeForkApp(II[IZZ)I
.end method

.method private static native blacklist nativeForkSystemServer(II[II[[IJJ)I
.end method

.method private static native blacklist nativeGetUsapPipeFDs()[I
.end method

.method private static native blacklist nativeGetUsapPoolCount()I
.end method

.method private static native blacklist nativeGetUsapPoolEventFD()I
.end method

.method protected static native blacklist nativeInitNativeState(Z)V
.end method

.method protected static native blacklist nativeInstallSeccompUidGidFilter(II)V
.end method

.method private static native blacklist nativeMarkOpenedFilesBeforePreload()V
.end method

.method public static native blacklist nativeParseSigChld([BI[I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static native blacklist nativePreApplicationInit()V
.end method

.method private static native blacklist nativeRemoveUsapTableEntry(I)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSpecializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZZ)V
.end method

.method public static native blacklist nativeSupportsMemoryTagging()Z
.end method

.method public static native blacklist nativeSupportsTaggedPointers()Z
.end method

.method private static native blacklist nativeUnblockSigTerm()V
.end method

.method static blacklist removeUsapTableEntry(I)Z
    .registers 1

    .line 987
    invoke-static {p0}, Lcom/android/internal/os/Zygote;->nativeRemoveUsapTableEntry(I)Z

    move-result p0

    return p0
.end method

.method static blacklist setAppProcessName(Lcom/android/internal/os/ZygoteArguments;Ljava/lang/String;)V
    .registers 3

    .line 926
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 927
    iget-object p0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    goto :goto_19

    .line 928
    :cond_a
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 929
    iget-object p0, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    goto :goto_19

    .line 931
    :cond_14
    const-string p0, "Unable to set package name."

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :goto_19
    return-void
.end method

.method private static blacklist specializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZZ)V
    .registers 17

    .line 444
    invoke-static/range {p0 .. p16}, Lcom/android/internal/os/Zygote;->nativeSpecializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZZ)V

    .line 450
    const-wide/16 p0, 0x40

    const-string p3, "PostFork"

    invoke-static {p0, p1, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 452
    if-eqz p2, :cond_16

    array-length p0, p2

    if-lez p0, :cond_16

    .line 453
    invoke-static {p2}, Lcom/android/internal/os/Zygote;->containsInetGid([I)Z

    move-result p0

    invoke-static {p0}, Lcom/android/internal/net/NetworkUtilsInternal;->setAllowNetworkingForProcess(Z)V

    .line 457
    :cond_16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 465
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 466
    return-void
.end method

.method private static blacklist unblockSigTerm()V
    .registers 0

    .line 914
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeUnblockSigTerm()V

    .line 915
    return-void
.end method

.method private static blacklist validateUsapCommand(Lcom/android/internal/os/ZygoteArguments;)V
    .registers 5

    .line 943
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    if-nez v0, :cond_a3

    .line 945
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    if-nez v0, :cond_9b

    .line 947
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadDefault:Z

    if-nez v0, :cond_93

    .line 949
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    if-nez v0, :cond_8b

    .line 951
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    if-nez v0, :cond_83

    .line 953
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    if-nez v0, :cond_7b

    .line 956
    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_73

    .line 959
    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    if-ne v0, v1, :cond_6b

    .line 962
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v0, :cond_63

    .line 964
    iget-wide v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    iget-wide v0, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    .line 969
    return-void

    .line 965
    :cond_34
    new-instance v0, Lcom/android/internal/os/ZygoteSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client may not specify capabilities: permitted=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    .line 966
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", effective=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    .line 967
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    :cond_63
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid command to USAP: --invoke-with"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 960
    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid command to USAP: --hidden-api-statslog-sampling-rate="

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 957
    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid command to USAP: --hidden-api-log-sampling-rate="

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 954
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid command to USAP: --set-api-denylist-exemptions"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 952
    :cond_83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid command to USAP: --start-child-zygote"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 950
    :cond_8b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid command to USAP: --preload-app"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 948
    :cond_93
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid command to USAP: --preload-default"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 946
    :cond_9b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid command to USAP: --get-pid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 944
    :cond_a3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid command to USAP: --query-abi-list"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
