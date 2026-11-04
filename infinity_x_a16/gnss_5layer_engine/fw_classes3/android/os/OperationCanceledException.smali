.class public Landroid/os/OperationCanceledException;
.super Ljava/lang/RuntimeException;
.source "OperationCanceledException.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2

    .line 31
    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    const-string p1, "The operation has been canceled."

    :goto_5
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method
