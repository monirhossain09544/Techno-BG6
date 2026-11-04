.class public abstract Landroid/media/tv/extension/event/IEventMonitor$Stub;
.super Landroid/os/Binder;
.source "IEventMonitor.java"

# interfaces
.implements Landroid/media/tv/extension/event/IEventMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/event/IEventMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/event/IEventMonitor$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addFollowingEventInfoListener:I = 0x5

.field static final blacklist TRANSACTION_addPresentEventInfoListener:I = 0x2

.field static final blacklist TRANSACTION_getFollowingEventInfo:I = 0x4

.field static final blacklist TRANSACTION_getPresentEventInfo:I = 0x1

.field static final blacklist TRANSACTION_getSdtGuidanceInfo:I = 0x7

.field static final blacklist TRANSACTION_removeFollowingEventInfoListener:I = 0x6

.field static final blacklist TRANSACTION_removePresentEventInfoListener:I = 0x3

.field static final blacklist TRANSACTION_setBgmTuneChannelInfo:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "android.media.tv.extension.event.IEventMonitor"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/event/IEventMonitor;
    .registers 3

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_4
    const-string v0, "android.media.tv.extension.event.IEventMonitor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/event/IEventMonitor;

    if-eqz v1, :cond_13

    .line 76
    check-cast v0, Landroid/media/tv/extension/event/IEventMonitor;

    return-object v0

    .line 78
    :cond_13
    new-instance v0, Landroid/media/tv/extension/event/IEventMonitor$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/event/IEventMonitor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 87
    packed-switch p0, :pswitch_data_20

    .line 123
    const/4 p0, 0x0

    return-object p0

    .line 119
    :pswitch_5
    const-string/jumbo p0, "setBgmTuneChannelInfo"

    return-object p0

    .line 115
    :pswitch_9
    const-string p0, "getSdtGuidanceInfo"

    return-object p0

    .line 111
    :pswitch_c
    const-string/jumbo p0, "removeFollowingEventInfoListener"

    return-object p0

    .line 107
    :pswitch_10
    const-string p0, "addFollowingEventInfoListener"

    return-object p0

    .line 103
    :pswitch_13
    const-string p0, "getFollowingEventInfo"

    return-object p0

    .line 99
    :pswitch_16
    const-string/jumbo p0, "removePresentEventInfoListener"

    return-object p0

    .line 95
    :pswitch_1a
    const-string p0, "addPresentEventInfoListener"

    return-object p0

    .line 91
    :pswitch_1d
    const-string p0, "getPresentEventInfo"

    return-object p0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 390
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 130
    invoke-static {p1}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    nop

    .line 135
    const-string v0, "android.media.tv.extension.event.IEventMonitor"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 136
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 139
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v1

    .line 142
    :cond_17
    packed-switch p1, :pswitch_data_b2

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 213
    :pswitch_1f
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/Uri;

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->setBgmTuneChannelInfo([Landroid/net/Uri;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    goto/16 :goto_b0

    .line 203
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->getSdtGuidanceInfo(J)Landroid/os/Bundle;

    move-result-object p1

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 208
    goto :goto_b0

    .line 194
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/extension/event/IEventMonitorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/event/IEventMonitorListener;

    move-result-object p1

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->removeFollowingEventInfoListener(Landroid/media/tv/extension/event/IEventMonitorListener;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_b0

    .line 185
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/extension/event/IEventMonitorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/event/IEventMonitorListener;

    move-result-object p1

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->addFollowingEventInfoListener(Landroid/media/tv/extension/event/IEventMonitorListener;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto :goto_b0

    .line 175
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->getFollowingEventInfo(J)Landroid/os/Bundle;

    move-result-object p1

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 180
    goto :goto_b0

    .line 166
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/extension/event/IEventMonitorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/event/IEventMonitorListener;

    move-result-object p1

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->removePresentEventInfoListener(Landroid/media/tv/extension/event/IEventMonitorListener;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    goto :goto_b0

    .line 157
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/extension/event/IEventMonitorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/event/IEventMonitorListener;

    move-result-object p1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->addPresentEventInfoListener(Landroid/media/tv/extension/event/IEventMonitorListener;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    goto :goto_b0

    .line 147
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->getPresentEventInfo(J)Landroid/os/Bundle;

    move-result-object p1

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 152
    nop

    .line 224
    :goto_b0
    return v1

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_9e
        :pswitch_8c
        :pswitch_7a
        :pswitch_68
        :pswitch_56
        :pswitch_44
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
