.class public abstract Landroid/media/tv/extension/servicedb/IServiceList$Stub;
.super Landroid/os/Binder;
.source "IServiceList.java"

# interfaces
.implements Landroid/media/tv/extension/servicedb/IServiceList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/servicedb/IServiceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/servicedb/IServiceList$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getServiceListIds:I = 0x1

.field static final blacklist TRANSACTION_getServiceListInfo:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.media.tv.extension.servicedb.IServiceList"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/servicedb/IServiceList$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/servicedb/IServiceList;
    .registers 3

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_4
    const-string v0, "android.media.tv.extension.servicedb.IServiceList"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/servicedb/IServiceList;

    if-eqz v1, :cond_13

    .line 52
    check-cast v0, Landroid/media/tv/extension/servicedb/IServiceList;

    return-object v0

    .line 54
    :cond_13
    new-instance v0, Landroid/media/tv/extension/servicedb/IServiceList$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/servicedb/IServiceList$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 63
    packed-switch p0, :pswitch_data_c

    .line 75
    const/4 p0, 0x0

    return-object p0

    .line 71
    :pswitch_5
    const-string p0, "getServiceListInfo"

    return-object p0

    .line 67
    :pswitch_8
    const-string p0, "getServiceListIds"

    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 58
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 82
    invoke-static {p1}, Landroid/media/tv/extension/servicedb/IServiceList$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 86
    nop

    .line 87
    const-string v0, "android.media.tv.extension.servicedb.IServiceList"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 91
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return v1

    .line 94
    :cond_17
    packed-switch p1, :pswitch_data_42

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 106
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/servicedb/IServiceList$Stub;->getServiceListInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 113
    goto :goto_40

    .line 98
    :pswitch_35
    invoke-virtual {p0}, Landroid/media/tv/extension/servicedb/IServiceList$Stub;->getServiceListIds()[Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 101
    nop

    .line 120
    :goto_40
    return v1

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_35
        :pswitch_1f
    .end packed-switch
.end method
