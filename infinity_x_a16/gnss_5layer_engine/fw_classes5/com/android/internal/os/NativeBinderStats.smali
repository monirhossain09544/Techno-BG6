.class public Lcom/android/internal/os/NativeBinderStats;
.super Ljava/lang/Object;
.source "NativeBinderStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/NativeBinderStats$PropertiesWrapper;,
        Lcom/android/internal/os/NativeBinderStats$SettingsObserver;
    }
.end annotation


# static fields
.field static final blacklist DEFAULT_CALL_SHARDING:I = 0x14

.field static final blacklist DEFAULT_ENABLED:Z = false

.field static final blacklist DEFAULT_PROCESS_SHARDING:I = 0x32

.field static final blacklist DEFAULT_SPAM_SHARDING:I = 0xa

.field static final blacklist DEFAULT_SYSTEM_CALL_SHARDING:I = 0x64

.field static final blacklist DEFAULT_SYSTEM_PROCESS_SHARDING:I = 0xa

.field static final blacklist DEFAULT_SYSTEM_SPAM_SHARDING:I = 0x32

.field private static final blacklist TAG:Ljava/lang/String; = "NativeBinderStats"


# instance fields
.field public blacklist mCallSharding:I

.field private final blacklist mContext:Landroid/content/Context;

.field public blacklist mEnabled:Z

.field public blacklist mProcessSharding:I

.field private final blacklist mPropertiesWrapper:Lcom/android/internal/os/NativeBinderStats$PropertiesWrapper;

.field private final blacklist mSettingsObserver:Lcom/android/internal/os/NativeBinderStats$SettingsObserver;

.field public blacklist mSpamSharding:I

.field public blacklist mSystemCallSharding:I

.field public blacklist mSystemProcessSharding:I

.field public blacklist mSystemSpamSharding:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPropertiesWrapper(Lcom/android/internal/os/NativeBinderStats;)Lcom/android/internal/os/NativeBinderStats$PropertiesWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/NativeBinderStats;->mPropertiesWrapper:Lcom/android/internal/os/NativeBinderStats$PropertiesWrapper;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 83
    new-instance v0, Lcom/android/internal/os/NativeBinderStats$PropertiesWrapper;

    invoke-direct {v0}, Lcom/android/internal/os/NativeBinderStats$PropertiesWrapper;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/NativeBinderStats;-><init>(Landroid/content/Context;Lcom/android/internal/os/NativeBinderStats$PropertiesWrapper;)V

    .line 84
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/os/NativeBinderStats$PropertiesWrapper;)V
    .registers 6

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/NativeBinderStats;->mEnabled:Z

    .line 52
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/os/NativeBinderStats;->mProcessSharding:I

    .line 59
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/os/NativeBinderStats;->mSpamSharding:I

    .line 65
    const/16 v2, 0x14

    iput v2, p0, Lcom/android/internal/os/NativeBinderStats;->mCallSharding:I

    .line 68
    iput v1, p0, Lcom/android/internal/os/NativeBinderStats;->mSystemProcessSharding:I

    .line 71
    iput v0, p0, Lcom/android/internal/os/NativeBinderStats;->mSystemSpamSharding:I

    .line 74
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/os/NativeBinderStats;->mSystemCallSharding:I

    .line 88
    iput-object p1, p0, Lcom/android/internal/os/NativeBinderStats;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/android/internal/os/NativeBinderStats;->mPropertiesWrapper:Lcom/android/internal/os/NativeBinderStats$PropertiesWrapper;

    .line 90
    new-instance p2, Lcom/android/internal/os/NativeBinderStats$SettingsObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/internal/os/NativeBinderStats$SettingsObserver;-><init>(Lcom/android/internal/os/NativeBinderStats;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/internal/os/NativeBinderStats;->mSettingsObserver:Lcom/android/internal/os/NativeBinderStats$SettingsObserver;

    .line 91
    return-void
.end method


# virtual methods
.method public blacklist getSettingsObserverForTesting()Lcom/android/internal/os/NativeBinderStats$SettingsObserver;
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/android/internal/os/NativeBinderStats;->mSettingsObserver:Lcom/android/internal/os/NativeBinderStats$SettingsObserver;

    return-object v0
.end method

.method public blacklist systemReady()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/internal/os/NativeBinderStats;->mSettingsObserver:Lcom/android/internal/os/NativeBinderStats$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/os/NativeBinderStats$SettingsObserver;->register()V

    .line 96
    return-void
.end method
