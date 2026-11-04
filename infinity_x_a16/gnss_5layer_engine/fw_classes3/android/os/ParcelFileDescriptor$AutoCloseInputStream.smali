.class public Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
.super Ljava/io/FileInputStream;
.source "ParcelFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCloseInputStream"
.end annotation


# instance fields
.field private final greylist-max-o mPfd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor whitelist <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    .line 1016
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1017
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 1018
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1023
    :try_start_0
    invoke-super {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_a

    .line 1025
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1026
    nop

    .line 1027
    return-void

    .line 1025
    :catchall_a
    move-exception v0

    iget-object v1, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1026
    throw v0
.end method

.method public whitelist test-api read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1031
    invoke-super {p0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .line 1032
    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    iget-object v1, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1034
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->checkError()V

    .line 1036
    :cond_14
    return v0
.end method

.method public whitelist test-api read([B)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1041
    invoke-super {p0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    .line 1042
    const/4 v0, -0x1

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1043
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->checkError()V

    .line 1045
    :cond_14
    return p1
.end method

.method public whitelist test-api read([BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1050
    invoke-super {p0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1

    .line 1051
    const/4 p2, -0x1

    if-ne p1, p2, :cond_14

    iget-object p2, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 1052
    iget-object p2, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->checkError()V

    .line 1054
    :cond_14
    return p1
.end method
