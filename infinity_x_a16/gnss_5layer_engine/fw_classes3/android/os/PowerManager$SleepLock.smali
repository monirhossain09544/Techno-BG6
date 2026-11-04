.class public final Landroid/os/PowerManager$SleepLock;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SleepLock"
.end annotation


# static fields
.field private static final blacklist SLEEP_LOCK:I = 0x200


# instance fields
.field private final blacklist mDefaultTimeoutMillis:I

.field private final blacklist mDisplayId:I

.field private final blacklist mTag:Ljava/lang/String;

.field private final blacklist mWakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor blacklist <init>(Landroid/os/PowerManager;ILjava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2232
    iput p2, p0, Landroid/os/PowerManager$SleepLock;->mDisplayId:I

    .line 2233
    iput-object p3, p0, Landroid/os/PowerManager$SleepLock;->mTag:Ljava/lang/String;

    .line 2234
    iget-object p2, p1, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e00e4

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Landroid/os/PowerManager$SleepLock;->mDefaultTimeoutMillis:I

    .line 2236
    new-instance v0, Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Landroid/os/PowerManager$SleepLock;->mTag:Ljava/lang/String;

    iget-object p2, p1, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Landroid/os/PowerManager$SleepLock;->mDisplayId:I

    const/16 v2, 0x200

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/os/PowerManager$SleepLock;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 2237
    return-void
.end method


# virtual methods
.method public blacklist acquire(J)V
    .registers 6

    .line 2252
    iget-object v0, p0, Landroid/os/PowerManager$SleepLock;->mWakelock:Landroid/os/PowerManager$WakeLock;

    iget v1, p0, Landroid/os/PowerManager$SleepLock;->mDefaultTimeoutMillis:I

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2253
    return-void
.end method

.method public blacklist isHeld()Z
    .registers 2

    .line 2274
    iget-object v0, p0, Landroid/os/PowerManager$SleepLock;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public blacklist release()V
    .registers 2

    .line 2262
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager$SleepLock;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2265
    goto :goto_7

    .line 2263
    :catch_6
    move-exception v0

    .line 2266
    :goto_7
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PowerManager$SleepLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisplayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/PowerManager$SleepLock;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultTimeoutMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/PowerManager$SleepLock;->mDefaultTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWakelock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PowerManager$SleepLock;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
