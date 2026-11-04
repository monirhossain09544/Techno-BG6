.class public final synthetic Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/util/LatencyTracker;

.field public final synthetic blacklist f$1:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/util/LatencyTracker;Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/util/LatencyTracker;

    iput-object p2, p0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/util/LatencyTracker;

    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/LatencyTracker;->$r8$lambda$CoS167Roc-277yNER0JYfF9Y4Ho(Lcom/android/internal/util/LatencyTracker;Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    return-void
.end method
