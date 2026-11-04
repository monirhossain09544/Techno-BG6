.class public abstract Landroid/media/tv/extension/time/IBroadcastTime$Stub;
.super Landroid/os/Binder;
.source "IBroadcastTime.java"

# interfaces
.implements Landroid/media/tv/extension/time/IBroadcastTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/time/IBroadcastTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/time/IBroadcastTime$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getLocalTime:I = 0x2

.field static final blacklist TRANSACTION_getLocalTimePerStream:I = 0x5

.field static final blacklist TRANSACTION_getTimeZoneInfo:I = 0x3

.field static final blacklist TRANSACTION_getUtcTime:I = 0x1

.field static final blacklist TRANSACTION_getUtcTimePerStream:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.media.tv.extension.time.IBroadcastTime"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/time/IBroadcastTime$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/time/IBroadcastTime;
    .registers 3

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_4
    const-string v0, "android.media.tv.extension.time.IBroadcastTime"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/time/IBroadcastTime;

    if-eqz v1, :cond_13

    .line 61
    check-cast v0, Landroid/media/tv/extension/time/IBroadcastTime;

    return-object v0

    .line 63
    :cond_13
    new-instance v0, Landroid/media/tv/extension/time/IBroadcastTime$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/time/IBroadcastTime$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 72
    packed-switch p0, :pswitch_data_14

    .line 96
    const/4 p0, 0x0

    return-object p0

    .line 92
    :pswitch_5
    const-string p0, "getLocalTimePerStream"

    return-object p0

    .line 88
    :pswitch_8
    const-string p0, "getUtcTimePerStream"

    return-object p0

    .line 84
    :pswitch_b
    const-string p0, "getTimeZoneInfo"

    return-object p0

    .line 80
    :pswitch_e
    const-string p0, "getLocalTime"

    return-object p0

    .line 76
    :pswitch_11
    const-string p0, "getUtcTime"

    return-object p0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 276
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 103
    invoke-static {p1}, Landroid/media/tv/extension/time/IBroadcastTime$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 107
    nop

    .line 108
    const-string v0, "android.media.tv.extension.time.IBroadcastTime"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 112
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return v1

    .line 115
    :cond_17
    packed-switch p1, :pswitch_data_66

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 151
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/time/IBroadcastTime$Stub;->getLocalTimePerStream(Ljava/lang/String;)J

    move-result-wide p1

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 156
    goto :goto_64

    .line 141
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/time/IBroadcastTime$Stub;->getUtcTimePerStream(Ljava/lang/String;)J

    move-result-wide p1

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    goto :goto_64

    .line 133
    :pswitch_43
    invoke-virtual {p0}, Landroid/media/tv/extension/time/IBroadcastTime$Stub;->getTimeZoneInfo()Landroid/os/Bundle;

    move-result-object p1

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 136
    goto :goto_64

    .line 126
    :pswitch_4e
    invoke-virtual {p0}, Landroid/media/tv/extension/time/IBroadcastTime$Stub;->getLocalTime()J

    move-result-wide p1

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 129
    goto :goto_64

    .line 119
    :pswitch_59
    invoke-virtual {p0}, Landroid/media/tv/extension/time/IBroadcastTime$Stub;->getUtcTime()J

    move-result-wide p1

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    nop

    .line 163
    :goto_64
    return v1

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_59
        :pswitch_4e
        :pswitch_43
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method
