.class public abstract Landroid/media/tv/extension/tune/IMuxTuneSession$Stub;
.super Landroid/os/Binder;
.source "IMuxTuneSession.java"

# interfaces
.implements Landroid/media/tv/extension/tune/IMuxTuneSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/tune/IMuxTuneSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/tune/IMuxTuneSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getSessionToken:I = 0x4

.field static final blacklist TRANSACTION_release:I = 0x3

.field static final blacklist TRANSACTION_start:I = 0x1

.field static final blacklist TRANSACTION_stop:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.media.tv.extension.tune.IMuxTuneSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/tune/IMuxTuneSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/tune/IMuxTuneSession;
    .registers 3

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_4
    const-string v0, "android.media.tv.extension.tune.IMuxTuneSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/tune/IMuxTuneSession;

    if-eqz v1, :cond_13

    .line 58
    check-cast v0, Landroid/media/tv/extension/tune/IMuxTuneSession;

    return-object v0

    .line 60
    :cond_13
    new-instance v0, Landroid/media/tv/extension/tune/IMuxTuneSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/tune/IMuxTuneSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 69
    packed-switch p0, :pswitch_data_14

    .line 89
    const/4 p0, 0x0

    return-object p0

    .line 85
    :pswitch_5
    const-string p0, "getSessionToken"

    return-object p0

    .line 81
    :pswitch_8
    const-string/jumbo p0, "release"

    return-object p0

    .line 77
    :pswitch_c
    const-string/jumbo p0, "stop"

    return-object p0

    .line 73
    :pswitch_10
    const-string/jumbo p0, "start"

    return-object p0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 241
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 96
    invoke-static {p1}, Landroid/media/tv/extension/tune/IMuxTuneSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    nop

    .line 101
    const-string v0, "android.media.tv.extension.tune.IMuxTuneSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 108
    :cond_17
    packed-switch p1, :pswitch_data_58

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 139
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/tv/extension/tune/IMuxTuneSession$Stub;->getSessionToken()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    goto :goto_56

    .line 133
    :pswitch_2a
    invoke-virtual {p0}, Landroid/media/tv/extension/tune/IMuxTuneSession$Stub;->release()V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    goto :goto_56

    .line 127
    :pswitch_31
    invoke-virtual {p0}, Landroid/media/tv/extension/tune/IMuxTuneSession$Stub;->stop()V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    goto :goto_56

    .line 113
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/media/tv/extension/tune/IMuxTuneSession$Stub;->start(IIILandroid/os/Bundle;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    nop

    .line 149
    :goto_56
    return v1

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_38
        :pswitch_31
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
