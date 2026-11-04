.class final Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;
.super Ljava/lang/Object;
.source "TvWatchdogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/watchdogmanager/TvWatchdogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceOveruseListenerInfo"
.end annotation


# instance fields
.field public final blacklist executor:Ljava/util/concurrent/Executor;

.field public final blacklist listener:Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListener;

.field public final blacklist resourceOveruseFlag:I


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListener;Ljava/util/concurrent/Executor;I)V
    .registers 4

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;->listener:Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListener;

    .line 731
    iput-object p2, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;->executor:Ljava/util/concurrent/Executor;

    .line 732
    iput p3, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;->resourceOveruseFlag:I

    .line 733
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 737
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 738
    return v0

    .line 740
    :cond_4
    instance-of v1, p1, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 741
    return v2

    .line 743
    :cond_a
    check-cast p1, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;

    .line 747
    iget-object p1, p1, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;->listener:Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListener;

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;->listener:Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListener;

    if-ne p1, v1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 753
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListenerInfo;->listener:Landroid/media/tv/watchdogmanager/TvWatchdogManager$ResourceOveruseListener;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
