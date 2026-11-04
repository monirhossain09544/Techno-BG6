.class public abstract Landroid/media/tv/extension/rating/IRatingInterface$Stub;
.super Landroid/os/Binder;
.source "IRatingInterface.java"

# interfaces
.implements Landroid/media/tv/extension/rating/IRatingInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/rating/IRatingInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/rating/IRatingInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getRRTRatingInfo:I = 0x1

.field static final blacklist TRANSACTION_setRRTRatingInfo:I = 0x2

.field static final blacklist TRANSACTION_setResetRrt5:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.media.tv.extension.rating.IRatingInterface"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/rating/IRatingInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/rating/IRatingInterface;
    .registers 3

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_4
    const-string v0, "android.media.tv.extension.rating.IRatingInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/rating/IRatingInterface;

    if-eqz v1, :cond_13

    .line 56
    check-cast v0, Landroid/media/tv/extension/rating/IRatingInterface;

    return-object v0

    .line 58
    :cond_13
    new-instance v0, Landroid/media/tv/extension/rating/IRatingInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/rating/IRatingInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 67
    packed-switch p0, :pswitch_data_10

    .line 83
    const/4 p0, 0x0

    return-object p0

    .line 79
    :pswitch_5
    const-string/jumbo p0, "setResetRrt5"

    return-object p0

    .line 75
    :pswitch_9
    const-string/jumbo p0, "setRRTRatingInfo"

    return-object p0

    .line 71
    :pswitch_d
    const-string p0, "getRRTRatingInfo"

    return-object p0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 62
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 212
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 90
    invoke-static {p1}, Landroid/media/tv/extension/rating/IRatingInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 94
    nop

    .line 95
    const-string v0, "android.media.tv.extension.rating.IRatingInterface"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 99
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return v1

    .line 102
    :cond_17
    packed-switch p1, :pswitch_data_4c

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 123
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/tv/extension/rating/IRatingInterface$Stub;->setResetRrt5()Z

    move-result p1

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 126
    goto :goto_4b

    .line 114
    :pswitch_2a
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/rating/IRatingInterface$Stub;->setRRTRatingInfo(Landroid/os/Bundle;)Z

    move-result p1

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 119
    goto :goto_4b

    .line 106
    :pswitch_40
    invoke-virtual {p0}, Landroid/media/tv/extension/rating/IRatingInterface$Stub;->getRRTRatingInfo()Landroid/os/Bundle;

    move-result-object p1

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 109
    nop

    .line 133
    :goto_4b
    return v1

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_40
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
