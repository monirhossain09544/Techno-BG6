.class public Lcom/android/internal/os/WrapperInit;
.super Ljava/lang/Object;
.source "WrapperInit.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AndroidRuntime"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static blacklist execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 7

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-static {p3}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 114
    const-string p0, "/system/bin/app_process64"

    goto :goto_10

    .line 116
    :cond_e
    const-string p0, "/system/bin/app_process32"

    .line 118
    :goto_10
    const/16 p3, 0x20

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string p0, " -Xcompiler-option --generate-mini-debug-info"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string p0, " /system/bin --application"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    if-eqz p1, :cond_33

    .line 131
    const-string p0, " \'--nice-name="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_33
    const-string p0, " com.android.internal.os.WrapperInit "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    if-eqz p4, :cond_3f

    invoke-virtual {p4}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p0

    goto :goto_40

    :cond_3f
    const/4 p0, 0x0

    :goto_40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {v0, p5}, Lcom/android/internal/os/Zygote;->appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/android/internal/os/WrapperInit;->preserveCapabilities()V

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/os/Zygote;->execShell(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static blacklist main([Ljava/lang/String;)V
    .registers 7

    .line 66
    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 67
    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 71
    if-eqz v1, :cond_41

    .line 72
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    .line 74
    :try_start_17
    invoke-virtual {v3, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 75
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 76
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 77
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2e} :catch_31
    .catchall {:try_start_17 .. :try_end_2e} :catchall_2f

    goto :goto_39

    .line 81
    :catchall_2f
    move-exception p0

    goto :goto_3d

    .line 78
    :catch_31
    move-exception v1

    .line 79
    :try_start_32
    const-string v4, "AndroidRuntime"

    const-string v5, "Could not write pid of wrapped process to Zygote pipe."

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_2f

    .line 81
    :goto_39
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 82
    goto :goto_41

    .line 81
    :goto_3d
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 82
    throw p0

    .line 86
    :cond_41
    :goto_41
    new-instance v1, Landroid/util/TimingsTraceLog;

    const-string v3, "WrapperInitTiming"

    const-wide/16 v4, 0x4000

    invoke-direct {v1, v3, v4, v5}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 90
    array-length v1, p0

    const/4 v3, 0x2

    sub-int/2addr v1, v3

    new-array v4, v1, [Ljava/lang/String;

    .line 91
    invoke-static {p0, v3, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    invoke-static {v2, v4}, Lcom/android/internal/os/WrapperInit;->wrapperInit(I[Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    .line 94
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 95
    return-void
.end method

.method private static blacklist preserveCapabilities()V
    .registers 13

    .line 190
    const-string v1, "AndroidRuntime"

    new-instance v0, Landroid/system/StructCapUserHeader;

    sget v2, Landroid/system/OsConstants;->_LINUX_CAPABILITY_VERSION_3:I

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/system/StructCapUserHeader;-><init>(II)V

    .line 194
    :try_start_a
    invoke-static {v0}, Landroid/system/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;

    move-result-object v2
    :try_end_e
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_e} :catch_92

    .line 198
    nop

    .line 200
    aget-object v4, v2, v3

    iget v4, v4, Landroid/system/StructCapUserData;->permitted:I

    aget-object v5, v2, v3

    iget v5, v5, Landroid/system/StructCapUserData;->inheritable:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_24

    aget-object v4, v2, v6

    iget v4, v4, Landroid/system/StructCapUserData;->permitted:I

    aget-object v5, v2, v6

    iget v5, v5, Landroid/system/StructCapUserData;->inheritable:I

    if-eq v4, v5, :cond_4e

    .line 202
    :cond_24
    new-instance v4, Landroid/system/StructCapUserData;

    aget-object v5, v2, v3

    iget v5, v5, Landroid/system/StructCapUserData;->effective:I

    aget-object v7, v2, v3

    iget v7, v7, Landroid/system/StructCapUserData;->permitted:I

    aget-object v8, v2, v3

    iget v8, v8, Landroid/system/StructCapUserData;->permitted:I

    invoke-direct {v4, v5, v7, v8}, Landroid/system/StructCapUserData;-><init>(III)V

    aput-object v4, v2, v3

    .line 204
    new-instance v4, Landroid/system/StructCapUserData;

    aget-object v5, v2, v6

    iget v5, v5, Landroid/system/StructCapUserData;->effective:I

    aget-object v7, v2, v6

    iget v7, v7, Landroid/system/StructCapUserData;->permitted:I

    aget-object v8, v2, v6

    iget v8, v8, Landroid/system/StructCapUserData;->permitted:I

    invoke-direct {v4, v5, v7, v8}, Landroid/system/StructCapUserData;-><init>(III)V

    aput-object v4, v2, v6

    .line 207
    :try_start_4a
    invoke-static {v0, v2}, Landroid/system/Os;->capset(Landroid/system/StructCapUserHeader;[Landroid/system/StructCapUserData;)V
    :try_end_4d
    .catch Landroid/system/ErrnoException; {:try_start_4a .. :try_end_4d} :catch_8b

    .line 211
    nop

    .line 214
    :cond_4e
    nop

    :goto_4f
    const/16 v0, 0x40

    if-ge v3, v0, :cond_8a

    .line 215
    invoke-static {v3}, Landroid/system/OsConstants;->CAP_TO_INDEX(I)I

    move-result v0

    .line 216
    invoke-static {v3}, Landroid/system/OsConstants;->CAP_TO_MASK(I)I

    move-result v4

    .line 217
    aget-object v0, v2, v0

    iget v0, v0, Landroid/system/StructCapUserData;->inheritable:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_87

    .line 219
    :try_start_62
    sget v4, Landroid/system/OsConstants;->PR_CAP_AMBIENT:I

    sget v0, Landroid/system/OsConstants;->PR_CAP_AMBIENT_RAISE:I

    int-to-long v5, v0

    int-to-long v7, v3

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v4 .. v12}, Landroid/system/Os;->prctl(IJJJJ)I
    :try_end_6f
    .catch Landroid/system/ErrnoException; {:try_start_62 .. :try_end_6f} :catch_70

    .line 226
    goto :goto_87

    .line 221
    :catch_70
    move-exception v0

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RuntimeInit: Failed to raise ambient capability "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    :cond_87
    :goto_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 229
    :cond_8a
    return-void

    .line 208
    :catch_8b
    move-exception v0

    .line 209
    const-string v2, "RuntimeInit: Failed capset"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    return-void

    .line 195
    :catch_92
    move-exception v0

    .line 196
    const-string v2, "RuntimeInit: Failed capget"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    return-void
.end method

.method private static blacklist wrapperInit(I[Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 8

    .line 160
    nop

    .line 161
    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    array-length v1, p1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2c

    const/4 v1, 0x0

    aget-object v3, p1, v1

    const-string v4, "-cp"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 162
    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-static {v3, p0}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    move-result-object v3

    .line 165
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 168
    array-length v4, p1

    sub-int/2addr v4, v2

    new-array v4, v4, [Ljava/lang/String;

    .line 169
    array-length v5, p1

    sub-int/2addr v5, v2

    invoke-static {p1, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    move-object p1, v4

    goto :goto_2d

    .line 173
    :cond_2c
    move-object v3, v0

    :goto_2d
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativePreApplicationInit()V

    .line 174
    invoke-static {p0, v0, p1, v3}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method
