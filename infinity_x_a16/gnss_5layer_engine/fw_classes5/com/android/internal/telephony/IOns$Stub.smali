.class public abstract Lcom/android/internal/telephony/IOns$Stub;
.super Landroid/os/Binder;
.source "IOns.java"

# interfaces
.implements Lcom/android/internal/telephony/IOns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IOns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IOns$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getPreferredDataSubscriptionId:I = 0x4

.field static final blacklist TRANSACTION_isEnabled:I = 0x2

.field static final blacklist TRANSACTION_setEnable:I = 0x1

.field static final blacklist TRANSACTION_setPreferredDataSubscriptionId:I = 0x3

.field static final blacklist TRANSACTION_updateAvailableNetworks:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 111
    const-string v0, "com.android.internal.telephony.IOns"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IOns$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOns;
    .registers 3

    .line 119
    if-nez p0, :cond_4

    .line 120
    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_4
    const-string v0, "com.android.internal.telephony.IOns"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/IOns;

    if-eqz v1, :cond_13

    .line 124
    check-cast v0, Lcom/android/internal/telephony/IOns;

    return-object v0

    .line 126
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/IOns$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IOns$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 135
    packed-switch p0, :pswitch_data_14

    .line 159
    const/4 p0, 0x0

    return-object p0

    .line 155
    :pswitch_5
    const-string p0, "updateAvailableNetworks"

    return-object p0

    .line 151
    :pswitch_8
    const-string p0, "getPreferredDataSubscriptionId"

    return-object p0

    .line 147
    :pswitch_b
    const-string p0, "setPreferredDataSubscriptionId"

    return-object p0

    .line 143
    :pswitch_e
    const-string p0, "isEnabled"

    return-object p0

    .line 139
    :pswitch_11
    const-string p0, "setEnable"

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

    .line 130
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 430
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 166
    invoke-static {p1}, Lcom/android/internal/telephony/IOns$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 170
    nop

    .line 171
    const-string v0, "com.android.internal.telephony.IOns"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 172
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 175
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    return v1

    .line 178
    :cond_17
    packed-switch p1, :pswitch_data_98

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 232
    :pswitch_1f
    sget-object p1, Landroid/telephony/AvailableNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;

    move-result-object p4

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/IOns$Stub;->updateAvailableNetworks(Ljava/util/List;Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    goto :goto_97

    .line 220
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/IOns$Stub;->getPreferredDataSubscriptionId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    goto :goto_97

    .line 205
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISetOpportunisticDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    move-result-object v0

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, p1, p4, v0, v2}, Lcom/android/internal/telephony/IOns$Stub;->setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    goto :goto_97

    .line 195
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IOns$Stub;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 200
    goto :goto_97

    .line 183
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/IOns$Stub;->setEnable(ZLjava/lang/String;)Z

    move-result p1

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 190
    nop

    .line 247
    :goto_97
    return v1

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_81
        :pswitch_6f
        :pswitch_51
        :pswitch_3b
        :pswitch_1f
    .end packed-switch
.end method
