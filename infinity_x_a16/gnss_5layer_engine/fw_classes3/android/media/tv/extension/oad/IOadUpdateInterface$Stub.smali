.class public abstract Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;
.super Landroid/os/Binder;
.source "IOadUpdateInterface.java"

# interfaces
.implements Landroid/media/tv/extension/oad/IOadUpdateInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/oad/IOadUpdateInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getOadStatus:I = 0x2

.field static final blacklist TRANSACTION_getSoftwareVersion:I = 0x9

.field static final blacklist TRANSACTION_setOadStatus:I = 0x1

.field static final blacklist TRANSACTION_startDetect:I = 0x5

.field static final blacklist TRANSACTION_startDownload:I = 0x7

.field static final blacklist TRANSACTION_startScan:I = 0x3

.field static final blacklist TRANSACTION_stopDetect:I = 0x6

.field static final blacklist TRANSACTION_stopDownload:I = 0x8

.field static final blacklist TRANSACTION_stopScan:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.media.tv.extension.oad.IOadUpdateInterface"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/oad/IOadUpdateInterface;
    .registers 3

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_4
    const-string v0, "android.media.tv.extension.oad.IOadUpdateInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/oad/IOadUpdateInterface;

    if-eqz v1, :cond_13

    .line 79
    check-cast v0, Landroid/media/tv/extension/oad/IOadUpdateInterface;

    return-object v0

    .line 81
    :cond_13
    new-instance v0, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 90
    packed-switch p0, :pswitch_data_28

    .line 130
    const/4 p0, 0x0

    return-object p0

    .line 126
    :pswitch_5
    const-string p0, "getSoftwareVersion"

    return-object p0

    .line 122
    :pswitch_8
    const-string/jumbo p0, "stopDownload"

    return-object p0

    .line 118
    :pswitch_c
    const-string/jumbo p0, "startDownload"

    return-object p0

    .line 114
    :pswitch_10
    const-string/jumbo p0, "stopDetect"

    return-object p0

    .line 110
    :pswitch_14
    const-string/jumbo p0, "startDetect"

    return-object p0

    .line 106
    :pswitch_18
    const-string/jumbo p0, "stopScan"

    return-object p0

    .line 102
    :pswitch_1c
    const-string/jumbo p0, "startScan"

    return-object p0

    .line 98
    :pswitch_20
    const-string p0, "getOadStatus"

    return-object p0

    .line 94
    :pswitch_23
    const-string/jumbo p0, "setOadStatus"

    return-object p0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 85
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 387
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 137
    invoke-static {p1}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 141
    nop

    .line 142
    const-string v0, "android.media.tv.extension.oad.IOadUpdateInterface"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 143
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 146
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    return v1

    .line 149
    :cond_17
    packed-switch p1, :pswitch_data_6e

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 205
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->getSoftwareVersion()I

    move-result p1

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    goto :goto_6d

    .line 199
    :pswitch_2a
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->stopDownload()V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto :goto_6d

    .line 193
    :pswitch_31
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->startDownload()V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto :goto_6d

    .line 187
    :pswitch_38
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->stopDetect()V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto :goto_6d

    .line 181
    :pswitch_3f
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->startDetect()V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    goto :goto_6d

    .line 175
    :pswitch_46
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->stopScan()V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_6d

    .line 169
    :pswitch_4d
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->startScan()V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    goto :goto_6d

    .line 162
    :pswitch_54
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->getOadStatus()Z

    move-result p1

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 165
    goto :goto_6d

    .line 154
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->setOadStatus(Z)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    nop

    .line 215
    :goto_6d
    return v1

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_54
        :pswitch_4d
        :pswitch_46
        :pswitch_3f
        :pswitch_38
        :pswitch_31
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
