.class public Landroid/metrics/MetricsReader$LogReader;
.super Ljava/lang/Object;
.source "MetricsReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/metrics/MetricsReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogReader"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o readEvents([IJLjava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IJ",
            "Ljava/util/Collection<",
            "Landroid/metrics/MetricsReader$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p2, p3, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    .line 210
    invoke-static {p1, p2, p3, v0}, Landroid/util/EventLog;->readEventsOnWrapping([IJLjava/util/Collection;)V

    .line 211
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/EventLog$Event;

    .line 212
    new-instance p3, Landroid/metrics/MetricsReader$Event;

    invoke-direct {p3, p2}, Landroid/metrics/MetricsReader$Event;-><init>(Landroid/util/EventLog$Event;)V

    .line 213
    invoke-interface {p4, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 214
    goto :goto_14

    .line 215
    :cond_29
    return-void
.end method

.method public greylist-max-o writeCheckpoint(I)V
    .registers 4

    .line 218
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 219
    const/16 v1, 0x398

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 220
    return-void
.end method
