.class public abstract Landroid/media/tv/extension/rating/IDownloadableRatingTableMonitor$Stub;
.super Landroid/os/Binder;
.source "IDownloadableRatingTableMonitor.java"

# interfaces
.implements Landroid/media/tv/extension/rating/IDownloadableRatingTableMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/rating/IDownloadableRatingTableMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/rating/IDownloadableRatingTableMonitor$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getTable:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "android.media.tv.extension.rating.IDownloadableRatingTableMonitor"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/rating/IDownloadableRatingTableMonitor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/rating/IDownloadableRatingTableMonitor;
    .registers 3

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_4
    const-string v0, "android.media.tv.extension.rating.IDownloadableRatingTableMonitor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/rating/IDownloadableRatingTableMonitor;

    if-eqz v1, :cond_13

    .line 46
    check-cast v0, Landroid/media/tv/extension/rating/IDownloadableRatingTableMonitor;

    return-object v0

    .line 48
    :cond_13
    new-instance v0, Landroid/media/tv/extension/rating/IDownloadableRatingTableMonitor$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/rating/IDownloadableRatingTableMonitor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 57
    packed-switch p0, :pswitch_data_8

    .line 65
    const/4 p0, 0x0

    return-object p0

    .line 61
    :pswitch_5
    const-string p0, "getTable"

    return-object p0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 52
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 72
    invoke-static {p1}, Landroid/media/tv/extension/rating/IDownloadableRatingTableMonitor$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    nop

    .line 77
    const-string v0, "android.media.tv.extension.rating.IDownloadableRatingTableMonitor"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 78
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 81
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v1

    .line 84
    :cond_17
    packed-switch p1, :pswitch_data_2c

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 88
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/tv/extension/rating/IDownloadableRatingTableMonitor$Stub;->getTable()[Landroid/os/Bundle;

    move-result-object p1

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 91
    nop

    .line 98
    return v1

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
