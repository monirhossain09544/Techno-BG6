.class public Lcom/android/internal/os/BinderfsStatsReader;
.super Ljava/lang/Object;
.source "BinderfsStatsReader.java"


# instance fields
.field private final blacklist mPath:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "/dev/binderfs/binder_logs/stats"

    iput-object v0, p0, Lcom/android/internal/os/BinderfsStatsReader;->mPath:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/internal/os/BinderfsStatsReader;->mPath:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public blacklist handleFreeAsyncSpace(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 67
    :try_start_0
    new-instance v0, Lcom/android/internal/util/ProcFileReader;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/internal/os/BinderfsStatsReader;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_91
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_91

    .line 68
    :goto_c
    :try_start_c
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 70
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "proc"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 71
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 72
    goto :goto_c

    .line 76
    :cond_22
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v1

    .line 77
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 81
    goto :goto_c

    .line 85
    :cond_34
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 86
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 87
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 88
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 89
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "free"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 90
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 91
    goto :goto_c

    .line 93
    :cond_50
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "async"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 94
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 95
    goto :goto_c

    .line 97
    :cond_60
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "space"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 98
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 99
    goto :goto_c

    .line 101
    :cond_70
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v2

    .line 102
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_82
    .catchall {:try_start_c .. :try_end_82} :catchall_87

    .line 104
    goto :goto_c

    .line 105
    :cond_83
    :try_start_83
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_91
    .catch Ljava/lang/NumberFormatException; {:try_start_83 .. :try_end_86} :catch_91

    .line 107
    goto :goto_95

    .line 67
    :catchall_87
    move-exception p1

    :try_start_88
    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_90

    :catchall_8c
    move-exception p2

    :try_start_8d
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_90
    throw p1
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_91} :catch_91
    .catch Ljava/lang/NumberFormatException; {:try_start_8d .. :try_end_91} :catch_91

    .line 105
    :catch_91
    move-exception p1

    .line 106
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 108
    :goto_95
    return-void
.end method
