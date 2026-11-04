.class final Landroid/os/MessageQueue$MessageNode;
.super Landroid/os/MessageQueue$StackNode;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MessageNode"
.end annotation


# static fields
.field private static final blacklist sRemovedFromStack:Ljava/lang/invoke/VarHandle;


# instance fields
.field blacklist mBottomOfStack:Landroid/os/MessageQueue$StateNode;

.field final blacklist mMessage:Landroid/os/Message;

.field volatile blacklist mNext:Landroid/os/MessageQueue$StackNode;

.field private volatile blacklist mRemovedFromStackValue:Z

.field blacklist mWokeUp:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 2584
    :try_start_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 2585
    const-class v1, Landroid/os/MessageQueue$MessageNode;

    const-string v2, "mRemovedFromStackValue"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Landroid/os/MessageQueue$MessageNode;->sRemovedFromStack:Ljava/lang/invoke/VarHandle;
    :try_end_10
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_10} :catch_12

    .line 2589
    nop

    .line 2590
    return-void

    .line 2587
    :catch_12
    move-exception v0

    .line 2588
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor blacklist <init>(Landroid/os/Message;)V
    .registers 3

    .line 2593
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/MessageQueue$StackNode;-><init>(I)V

    .line 2594
    iput-object p1, p0, Landroid/os/MessageQueue$MessageNode;->mMessage:Landroid/os/Message;

    .line 2595
    return-void
.end method


# virtual methods
.method blacklist removeFromStack()Z
    .registers 4

    .line 2598
    sget-object v0, Landroid/os/MessageQueue$MessageNode;->sRemovedFromStack:Ljava/lang/invoke/VarHandle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/MessageQueue$MessageNode;ZZ)Z

    move-result v0

    return v0
.end method
