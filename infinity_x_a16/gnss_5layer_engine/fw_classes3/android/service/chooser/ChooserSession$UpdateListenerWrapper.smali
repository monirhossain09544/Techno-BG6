.class Landroid/service/chooser/ChooserSession$UpdateListenerWrapper;
.super Ljava/lang/Object;
.source "ChooserSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/chooser/ChooserSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateListenerWrapper"
.end annotation


# instance fields
.field public final blacklist executor:Ljava/util/concurrent/Executor;

.field public final blacklist isSubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final blacklist listener:Landroid/service/chooser/ChooserSession$StateListener;


# direct methods
.method constructor blacklist <init>(Landroid/service/chooser/ChooserSession$StateListener;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/service/chooser/ChooserSession$UpdateListenerWrapper;->isSubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 488
    iput-object p1, p0, Landroid/service/chooser/ChooserSession$UpdateListenerWrapper;->listener:Landroid/service/chooser/ChooserSession$StateListener;

    .line 489
    iput-object p2, p0, Landroid/service/chooser/ChooserSession$UpdateListenerWrapper;->executor:Ljava/util/concurrent/Executor;

    .line 490
    return-void
.end method
