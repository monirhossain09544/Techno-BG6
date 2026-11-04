.class public Lcom/android/internal/os/ChildZygoteInit;
.super Ljava/lang/Object;
.source "ChildZygoteInit.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ChildZygoteInit"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist parseAbiListFromArgs([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 44
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1a

    aget-object v2, p0, v1

    .line 45
    const-string v3, "--abi-list="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 46
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 44
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 50
    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method static blacklist parseIntFromArg([Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 54
    nop

    .line 55
    array-length v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_3c

    aget-object v3, p0, v2

    .line 56
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 57
    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    :try_start_1a
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1e} :catch_1f

    .line 63
    goto :goto_39

    .line 60
    :catch_1f
    move-exception p0

    .line 61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid int argument: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 55
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 66
    :cond_3c
    return v1
.end method

.method static blacklist parseSocketNameFromArgs([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 34
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1a

    aget-object v2, p0, v1

    .line 35
    const-string v3, "--zygote-socket="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 34
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 40
    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method static blacklist runZygoteServer(Lcom/android/internal/os/ZygoteServer;[Ljava/lang/String;)V
    .registers 13

    .line 76
    invoke-static {p1}, Lcom/android/internal/os/ChildZygoteInit;->parseSocketNameFromArgs([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_97

    .line 81
    invoke-static {p1}, Lcom/android/internal/os/ChildZygoteInit;->parseAbiListFromArgs([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_8f

    .line 87
    :try_start_c
    sget v2, Landroid/system/OsConstants;->PR_SET_NO_NEW_PRIVS:I

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    invoke-static/range {v2 .. v10}, Landroid/system/Os;->prctl(IJJJJ)I
    :try_end_19
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_19} :catch_85

    .line 90
    nop

    .line 92
    const-string v2, "--uid-range-start="

    invoke-static {p1, v2}, Lcom/android/internal/os/ChildZygoteInit;->parseIntFromArg([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 93
    const-string v3, "--uid-range-end="

    invoke-static {p1, v3}, Lcom/android/internal/os/ChildZygoteInit;->parseIntFromArg([Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 94
    const/4 v3, -0x1

    if-eq v2, v3, :cond_7d

    if-eq p1, v3, :cond_7d

    .line 97
    if-gt v2, p1, :cond_75

    .line 105
    const v3, 0x15f90

    if-lt v2, v3, :cond_6d

    .line 113
    invoke-static {v2, p1}, Lcom/android/internal/os/Zygote;->nativeInstallSeccompUidGidFilter(II)V

    .line 117
    :try_start_35
    invoke-virtual {p0, v0}, Lcom/android/internal/os/ZygoteServer;->registerServerSocketAtAbstractName(Ljava/lang/String;)V

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ABSTRACT/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/os/Zygote;->nativeAllowFileAcrossFork(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/internal/os/ZygoteServer;->runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1
    :try_end_52
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_52} :catch_5f
    .catchall {:try_start_35 .. :try_end_52} :catchall_5c

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 131
    nop

    .line 135
    if-eqz p1, :cond_5b

    .line 136
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 138
    :cond_5b
    return-void

    .line 130
    :catchall_5c
    move-exception v0

    move-object p1, v0

    goto :goto_69

    .line 126
    :catch_5f
    move-exception v0

    move-object p1, v0

    .line 127
    :try_start_61
    const-string v0, "ChildZygoteInit"

    const-string v1, "Fatal exception:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    throw p1
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_5c

    .line 130
    :goto_69
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 131
    throw p1

    .line 106
    :cond_6d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Passed in UID range does not map to isolated processes."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_75
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Passed in UID range is invalid, min > max."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_7d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Couldn\'t parse UID range start/end"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :catch_85
    move-exception v0

    move-object p0, v0

    .line 89
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to set PR_SET_NO_NEW_PRIVS"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 83
    :cond_8f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "No abiList specified"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_97
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "No socketName specified"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
