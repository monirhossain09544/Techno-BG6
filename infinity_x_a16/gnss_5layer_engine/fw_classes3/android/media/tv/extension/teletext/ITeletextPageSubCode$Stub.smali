.class public abstract Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;
.super Landroid/os/Binder;
.source "ITeletextPageSubCode.java"

# interfaces
.implements Landroid/media/tv/extension/teletext/ITeletextPageSubCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/teletext/ITeletextPageSubCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getTeletextHasTopInfo:I = 0x5

.field static final blacklist TRANSACTION_getTeletextPageNumber:I = 0x1

.field static final blacklist TRANSACTION_getTeletextPageSubCode:I = 0x3

.field static final blacklist TRANSACTION_getTeletextTopBlockList:I = 0x6

.field static final blacklist TRANSACTION_getTeletextTopGroupList:I = 0x7

.field static final blacklist TRANSACTION_getTeletextTopPageList:I = 0x8

.field static final blacklist TRANSACTION_setTeleltextPageNumber:I = 0x2

.field static final blacklist TRANSACTION_setTeletextPageSubCode:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.media.tv.extension.teletext.ITeletextPageSubCode"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/teletext/ITeletextPageSubCode;
    .registers 3

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_4
    const-string v0, "android.media.tv.extension.teletext.ITeletextPageSubCode"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/teletext/ITeletextPageSubCode;

    if-eqz v1, :cond_13

    .line 79
    check-cast v0, Landroid/media/tv/extension/teletext/ITeletextPageSubCode;

    return-object v0

    .line 81
    :cond_13
    new-instance v0, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 90
    packed-switch p0, :pswitch_data_20

    .line 126
    const/4 p0, 0x0

    return-object p0

    .line 122
    :pswitch_5
    const-string p0, "getTeletextTopPageList"

    return-object p0

    .line 118
    :pswitch_8
    const-string p0, "getTeletextTopGroupList"

    return-object p0

    .line 114
    :pswitch_b
    const-string p0, "getTeletextTopBlockList"

    return-object p0

    .line 110
    :pswitch_e
    const-string p0, "getTeletextHasTopInfo"

    return-object p0

    .line 106
    :pswitch_11
    const-string/jumbo p0, "setTeletextPageSubCode"

    return-object p0

    .line 102
    :pswitch_15
    const-string p0, "getTeletextPageSubCode"

    return-object p0

    .line 98
    :pswitch_18
    const-string/jumbo p0, "setTeleltextPageNumber"

    return-object p0

    .line 94
    :pswitch_1c
    const-string p0, "getTeletextPageNumber"

    return-object p0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_18
        :pswitch_15
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

    .line 85
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 417
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 133
    invoke-static {p1}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 137
    nop

    .line 138
    const-string v0, "android.media.tv.extension.teletext.ITeletextPageSubCode"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 139
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 142
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v1

    .line 145
    :cond_17
    packed-switch p1, :pswitch_data_ba

    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 224
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->getTeletextTopPageList(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 231
    goto/16 :goto_b8

    .line 212
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->getTeletextTopGroupList(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 219
    goto :goto_b8

    .line 202
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->getTeletextTopBlockList(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 207
    goto :goto_b8

    .line 192
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->getTeletextHasTopInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 197
    goto :goto_b8

    .line 181
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->setTeletextPageSubCode(Ljava/lang/String;I)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_b8

    .line 171
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->getTeletextPageSubCode(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 176
    goto :goto_b8

    .line 160
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->setTeleltextPageNumber(Ljava/lang/String;I)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    goto :goto_b8

    .line 150
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/teletext/ITeletextPageSubCode$Stub;->getTeletextPageNumber(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 155
    nop

    .line 238
    :goto_b8
    return v1

    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_94
        :pswitch_82
        :pswitch_70
        :pswitch_5e
        :pswitch_4c
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
