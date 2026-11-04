.class public Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;
.super Landroid/database/ContentObserver;
.source "KernelCpuThreadReaderSettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;
    }
.end annotation


# static fields
.field private static final blacklist COLLECTED_UIDS_DEFAULT:Ljava/lang/String; = "0-0;1000-1000"

.field private static final blacklist COLLECTED_UIDS_SETTINGS_KEY:Ljava/lang/String; = "collected_uids"

.field private static final blacklist MINIMUM_TOTAL_CPU_USAGE_MILLIS_DEFAULT:I = 0x2710

.field private static final blacklist MINIMUM_TOTAL_CPU_USAGE_MILLIS_SETTINGS_KEY:Ljava/lang/String; = "minimum_total_cpu_usage_millis"

.field private static final blacklist NUM_BUCKETS_DEFAULT:I = 0x8

.field private static final blacklist NUM_BUCKETS_SETTINGS_KEY:Ljava/lang/String; = "num_buckets"

.field private static final blacklist TAG:Ljava/lang/String; = "KernelCpuThreadReaderSettingsObserver"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReader;

.field private final blacklist mKernelCpuThreadReaderDiff:Lcom/android/internal/os/KernelCpuThreadReaderDiff;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 92
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 93
    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mContext:Landroid/content/Context;

    .line 94
    nop

    .line 96
    const-string p1, "0-0;1000-1000"

    invoke-static {p1}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;->fromString(Ljava/lang/String;)Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;

    move-result-object p1

    .line 95
    const/16 v0, 0x8

    invoke-static {v0, p1}, Lcom/android/internal/os/KernelCpuThreadReader;->create(ILjava/util/function/Predicate;)Lcom/android/internal/os/KernelCpuThreadReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReader;

    .line 97
    nop

    .line 98
    iget-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReader;

    if-nez p1, :cond_1f

    .line 99
    const/4 p1, 0x0

    goto :goto_28

    .line 100
    :cond_1f
    new-instance p1, Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReader;

    const/16 v1, 0x2710

    invoke-direct {p1, v0, v1}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;-><init>(Lcom/android/internal/os/KernelCpuThreadReader;I)V

    :goto_28
    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mKernelCpuThreadReaderDiff:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    .line 102
    return-void
.end method

.method public static blacklist getSettingsModifiedReader(Landroid/content/Context;)Lcom/android/internal/os/KernelCpuThreadReaderDiff;
    .registers 4

    .line 80
    new-instance v0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;-><init>(Landroid/content/Context;)V

    .line 83
    const-string v1, "kernel_cpu_thread_reader"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 85
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 88
    iget-object p0, v0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mKernelCpuThreadReaderDiff:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    return-object p0
.end method

.method private blacklist updateReader()V
    .registers 6

    .line 111
    const-string v0, "KernelCpuThreadReaderSettingsObserver"

    iget-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReader;

    if-nez v1, :cond_7

    .line 112
    return-void

    .line 115
    :cond_7
    new-instance v1, Landroid/util/KeyValueListParser;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 117
    :try_start_e
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kernel_cpu_thread_reader"

    .line 118
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_1d} :catch_52

    .line 124
    nop

    .line 128
    :try_start_1e
    const-string v2, "collected_uids"

    const-string v3, "0-0;1000-1000"

    .line 130
    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v2}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;->fromString(Ljava/lang/String;)Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;

    move-result-object v0
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_2a} :catch_4b

    .line 134
    nop

    .line 136
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReader;

    .line 137
    const-string v3, "num_buckets"

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 136
    invoke-virtual {v2, v3}, Lcom/android/internal/os/KernelCpuThreadReader;->setNumBuckets(I)V

    .line 138
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReader;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/KernelCpuThreadReader;->setUidPredicate(Ljava/util/function/Predicate;)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->mKernelCpuThreadReaderDiff:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    .line 140
    const-string v2, "minimum_total_cpu_usage_millis"

    const/16 v3, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 139
    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->setMinimumTotalCpuUsageMillis(I)V

    .line 143
    return-void

    .line 131
    :catch_4b
    move-exception v1

    .line 132
    const-string v2, "Failed to get UID predicate"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    return-void

    .line 121
    :catch_52
    move-exception v1

    .line 122
    const-string v2, "Bad settings"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    return-void
.end method


# virtual methods
.method public blacklist onChange(ZLjava/util/Collection;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->updateReader()V

    .line 107
    return-void
.end method
