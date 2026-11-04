.class Landroid/telecom/Connection$FailureSignalingConnection;
.super Landroid/telecom/Connection;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FailureSignalingConnection"
.end annotation


# instance fields
.field private greylist-max-o mImmutable:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/telecom/DisconnectCause;)V
    .registers 3

    .line 3933
    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    .line 3932
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Connection$FailureSignalingConnection;->mImmutable:Z

    .line 3934
    invoke-virtual {p0, p1}, Landroid/telecom/Connection$FailureSignalingConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 3935
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/telecom/Connection$FailureSignalingConnection;->mImmutable:Z

    .line 3936
    return-void
.end method


# virtual methods
.method public greylist-max-o checkImmutable()V
    .registers 3

    .line 3939
    iget-boolean v0, p0, Landroid/telecom/Connection$FailureSignalingConnection;->mImmutable:Z

    if-nez v0, :cond_5

    .line 3942
    return-void

    .line 3940
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Connection is immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
