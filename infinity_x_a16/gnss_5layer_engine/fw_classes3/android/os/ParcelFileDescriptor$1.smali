.class Landroid/os/ParcelFileDescriptor$1;
.super Ljava/lang/Object;
.source "ParcelFileDescriptor.java"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/ParcelFileDescriptor;->fromFd(Ljava/io/FileDescriptor;Landroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$listener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

.field final synthetic blacklist val$queue:Landroid/os/MessageQueue;


# direct methods
.method constructor blacklist <init>(Landroid/os/MessageQueue;Landroid/os/ParcelFileDescriptor$OnCloseListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 314
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor$1;->val$queue:Landroid/os/MessageQueue;

    iput-object p2, p0, Landroid/os/ParcelFileDescriptor$1;->val$listener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .registers 4

    .line 317
    nop

    .line 318
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_e

    .line 319
    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 320
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->-$$Nest$smreadCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    move-result-object p2

    .line 321
    goto :goto_1a

    :cond_e
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_19

    .line 322
    new-instance p2, Landroid/os/ParcelFileDescriptor$Status;

    const/4 v0, -0x2

    invoke-direct {p2, v0}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V

    goto :goto_1a

    .line 321
    :cond_19
    const/4 p2, 0x0

    .line 324
    :goto_1a
    if-eqz p2, :cond_2f

    .line 325
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor$1;->val$queue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 326
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->-$$Nest$smcloseInternal(Ljava/io/FileDescriptor;)V

    .line 327
    iget-object p1, p0, Landroid/os/ParcelFileDescriptor$1;->val$listener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor$Status;->asIOException()Ljava/io/IOException;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/os/ParcelFileDescriptor$OnCloseListener;->onClose(Ljava/io/IOException;)V

    .line 328
    const/4 p1, 0x0

    return p1

    .line 330
    :cond_2f
    const/4 p1, 0x1

    return p1
.end method
