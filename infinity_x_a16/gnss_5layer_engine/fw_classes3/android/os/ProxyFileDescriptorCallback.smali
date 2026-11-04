.class public abstract Landroid/os/ProxyFileDescriptorCallback;
.super Ljava/lang/Object;
.source "ProxyFileDescriptorCallback.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFsync()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 89
    new-instance v0, Landroid/system/ErrnoException;

    const-string/jumbo v1, "onFsync"

    sget v2, Landroid/system/OsConstants;->EINVAL:I

    invoke-direct {v0, v1, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public whitelist onGetSize()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 50
    new-instance v0, Landroid/system/ErrnoException;

    const-string/jumbo v1, "onGetSize"

    sget v2, Landroid/system/OsConstants;->EBADF:I

    invoke-direct {v0, v1, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public whitelist onRead(JI[B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 65
    new-instance p1, Landroid/system/ErrnoException;

    const-string/jumbo p2, "onRead"

    sget p3, Landroid/system/OsConstants;->EBADF:I

    invoke-direct {p1, p2, p3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public abstract whitelist onRelease()V
.end method

.method public whitelist onWrite(JI[B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 79
    new-instance p1, Landroid/system/ErrnoException;

    const-string/jumbo p2, "onWrite"

    sget p3, Landroid/system/OsConstants;->EBADF:I

    invoke-direct {p1, p2, p3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method
