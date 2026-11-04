.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppService.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createSession:I = 0x3

.field static final blacklist TRANSACTION_registerAppLinkInfo:I = 0x4

.field static final blacklist TRANSACTION_registerCallback:I = 0x1

.field static final blacklist TRANSACTION_sendAppLinkCommand:I = 0x6

.field static final blacklist TRANSACTION_unregisterAppLinkInfo:I = 0x5

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppService"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppService;
    .registers 3

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_4
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppService;

    if-eqz v1, :cond_13

    .line 63
    check-cast v0, Landroid/media/tv/interactive/ITvInteractiveAppService;

    return-object v0

    .line 65
    :cond_13
    new-instance v0, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 74
    packed-switch p0, :pswitch_data_1c

    .line 102
    const/4 p0, 0x0

    return-object p0

    .line 98
    :pswitch_5
    const-string/jumbo p0, "sendAppLinkCommand"

    return-object p0

    .line 94
    :pswitch_9
    const-string/jumbo p0, "unregisterAppLinkInfo"

    return-object p0

    .line 90
    :pswitch_d
    const-string/jumbo p0, "registerAppLinkInfo"

    return-object p0

    .line 86
    :pswitch_11
    const-string p0, "createSession"

    return-object p0

    .line 82
    :pswitch_14
    const-string/jumbo p0, "unregisterCallback"

    return-object p0

    .line 78
    :pswitch_18
    const-string/jumbo p0, "registerCallback"

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 284
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 109
    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 113
    nop

    .line 114
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v1

    .line 121
    :cond_17
    packed-switch p1, :pswitch_data_8a

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 172
    :pswitch_1f
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->sendAppLinkCommand(Landroid/os/Bundle;)V

    .line 175
    goto :goto_89

    .line 164
    :pswitch_2e
    sget-object p1, Landroid/media/tv/interactive/AppLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/interactive/AppLinkInfo;

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->unregisterAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    .line 167
    goto :goto_89

    .line 156
    :pswitch_3d
    sget-object p1, Landroid/media/tv/interactive/AppLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/interactive/AppLinkInfo;

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->registerAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    .line 159
    goto :goto_89

    .line 142
    :pswitch_4c
    sget-object p1, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputChannel;

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object p3

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->createSession(Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;Ljava/lang/String;I)V

    .line 151
    goto :goto_89

    .line 134
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;

    move-result-object p1

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V

    .line 137
    goto :goto_89

    .line 126
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;

    move-result-object p1

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V

    .line 129
    nop

    .line 182
    :goto_89
    return v1

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_6b
        :pswitch_4c
        :pswitch_3d
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
