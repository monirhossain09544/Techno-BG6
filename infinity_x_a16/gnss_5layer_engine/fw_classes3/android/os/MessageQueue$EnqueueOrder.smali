.class final Landroid/os/MessageQueue$EnqueueOrder;
.super Ljava/lang/Object;
.source "MessageQueue.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EnqueueOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/os/Message;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/os/Message;Landroid/os/Message;)I
    .registers 3

    .line 299
    invoke-static {p1, p2}, Landroid/os/Message;->compareMessages(Landroid/os/Message;Landroid/os/Message;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 296
    check-cast p1, Landroid/os/Message;

    check-cast p2, Landroid/os/Message;

    invoke-virtual {p0, p1, p2}, Landroid/os/MessageQueue$EnqueueOrder;->compare(Landroid/os/Message;Landroid/os/Message;)I

    move-result p1

    return p1
.end method
