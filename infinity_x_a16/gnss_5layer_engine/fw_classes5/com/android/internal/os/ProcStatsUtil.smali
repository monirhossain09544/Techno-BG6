.class public final Lcom/android/internal/os/ProcStatsUtil;
.super Ljava/lang/Object;
.source "ProcStatsUtil.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist READ_SIZE:I = 0x400

.field private static final blacklist TAG:Ljava/lang/String; = "ProcStatsUtil"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static blacklist readNullSeparatedFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 60
    invoke-static {p0}, Lcom/android/internal/os/ProcStatsUtil;->readSingleLineProcFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    if-nez p0, :cond_8

    .line 62
    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_8
    const-string v0, "\u0000\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 68
    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 69
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 73
    :cond_16
    const-string v0, "\u0000"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist readSingleLineProcFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 85
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/android/internal/os/ProcStatsUtil;->readTerminatedProcFile(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist readTerminatedProcFile(Ljava/lang/String;B)Ljava/lang/String;
    .registers 3

    .line 99
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 101
    :try_start_4
    invoke-static {p0, p1}, Lcom/android/internal/os/ProcStatsUtil;->readTerminatedProcFileInternal(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 103
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 101
    return-object p0

    .line 103
    :catchall_c
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 104
    throw p0
.end method

.method private static blacklist readTerminatedProcFileInternal(Ljava/lang/String;B)Ljava/lang/String;
    .registers 11

    .line 108
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_60

    .line 109
    nop

    .line 110
    const/16 p0, 0x400

    :try_start_9
    new-array v2, p0, [B

    move-object v3, v0

    .line 113
    :goto_c
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 114
    if-gtz v4, :cond_13

    .line 116
    goto :goto_45

    .line 120
    :cond_13
    nop

    .line 121
    const/4 v5, 0x0

    move v6, v5

    :goto_16
    const/4 v7, -0x1

    if-ge v6, v4, :cond_22

    .line 122
    aget-byte v8, v2, v6

    if-ne v8, p1, :cond_1f

    .line 123
    nop

    .line 124
    goto :goto_23

    .line 121
    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_22
    move v6, v7

    .line 127
    :goto_23
    if-eq v6, v7, :cond_27

    const/4 v7, 0x1

    goto :goto_28

    :cond_27
    move v7, v5

    .line 131
    :goto_28
    if-eqz v7, :cond_35

    if-nez v3, :cond_35

    .line 132
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_56

    .line 154
    :try_start_31
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_60

    .line 132
    return-object p0

    .line 136
    :cond_35
    if-nez v3, :cond_3c

    .line 137
    :try_start_37
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 141
    :cond_3c
    if-eqz v7, :cond_3f

    move v4, v6

    :cond_3f
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 144
    if-eqz v7, :cond_55

    .line 145
    nop

    .line 150
    :goto_45
    if-nez v3, :cond_4d

    .line 151
    const-string p0, ""
    :try_end_49
    .catchall {:try_start_37 .. :try_end_49} :catchall_56

    .line 154
    :try_start_49
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_60

    .line 151
    return-object p0

    .line 153
    :cond_4d
    :try_start_4d
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_56

    .line 154
    :try_start_51
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_60

    .line 153
    return-object p0

    .line 147
    :cond_55
    goto :goto_c

    .line 108
    :catchall_56
    move-exception p0

    :try_start_57
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception p1

    :try_start_5c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5f
    throw p0
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_60} :catch_60

    .line 154
    :catch_60
    move-exception p0

    .line 158
    return-object v0
.end method
