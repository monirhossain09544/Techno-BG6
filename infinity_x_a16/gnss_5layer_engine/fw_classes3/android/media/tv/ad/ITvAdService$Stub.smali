.class public abstract Landroid/media/tv/ad/ITvAdService$Stub;
.super Landroid/os/Binder;
.source "ITvAdService.java"

# interfaces
.implements Landroid/media/tv/ad/ITvAdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/ITvAdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/ITvAdService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createSession:I = 0x3

.field static final blacklist TRANSACTION_registerCallback:I = 0x1

.field static final blacklist TRANSACTION_sendAppLinkCommand:I = 0x4

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.media.tv.ad.ITvAdService"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ad/ITvAdService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdService;
    .registers 3

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_4
    const-string v0, "android.media.tv.ad.ITvAdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/ad/ITvAdService;

    if-eqz v1, :cond_13

    .line 57
    check-cast v0, Landroid/media/tv/ad/ITvAdService;

    return-object v0

    .line 59
    :cond_13
    new-instance v0, Landroid/media/tv/ad/ITvAdService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/ad/ITvAdService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 68
    packed-switch p0, :pswitch_data_14

    .line 88
    const/4 p0, 0x0

    return-object p0

    .line 84
    :pswitch_5
    const-string/jumbo p0, "sendAppLinkCommand"

    return-object p0

    .line 80
    :pswitch_9
    const-string p0, "createSession"

    return-object p0

    .line 76
    :pswitch_c
    const-string/jumbo p0, "unregisterCallback"

    return-object p0

    .line 72
    :pswitch_10
    const-string/jumbo p0, "registerCallback"

    return-object p0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 228
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 95
    invoke-static {p1}, Landroid/media/tv/ad/ITvAdService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    nop

    .line 100
    const-string v0, "android.media.tv.ad.ITvAdService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_17
    packed-switch p1, :pswitch_data_6c

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 142
    :pswitch_1f
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, p1}, Landroid/media/tv/ad/ITvAdService$Stub;->sendAppLinkCommand(Landroid/os/Bundle;)V

    .line 145
    goto :goto_6b

    .line 128
    :pswitch_2e
    sget-object p1, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputChannel;

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdSessionCallback;

    move-result-object p3

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/media/tv/ad/ITvAdService$Stub;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ad/ITvAdSessionCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    goto :goto_6b

    .line 120
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/ad/ITvAdServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdServiceCallback;

    move-result-object p1

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, p1}, Landroid/media/tv/ad/ITvAdService$Stub;->unregisterCallback(Landroid/media/tv/ad/ITvAdServiceCallback;)V

    .line 123
    goto :goto_6b

    .line 112
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/ad/ITvAdServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdServiceCallback;

    move-result-object p1

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, p1}, Landroid/media/tv/ad/ITvAdService$Stub;->registerCallback(Landroid/media/tv/ad/ITvAdServiceCallback;)V

    .line 115
    nop

    .line 152
    :goto_6b
    return v1

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_4d
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
