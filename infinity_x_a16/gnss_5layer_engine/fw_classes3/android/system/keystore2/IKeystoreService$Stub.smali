.class public abstract Landroid/system/keystore2/IKeystoreService$Stub;
.super Landroid/os/Binder;
.source "IKeystoreService.java"

# interfaces
.implements Landroid/system/keystore2/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/keystore2/IKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/keystore2/IKeystoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_deleteKey:I = 0x5

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getKeyEntry:I = 0x2

.field static final blacklist TRANSACTION_getNumberOfEntries:I = 0x8

.field static final blacklist TRANSACTION_getSecurityLevel:I = 0x1

.field static final blacklist TRANSACTION_getSupplementaryAttestationInfo:I = 0xa

.field static final blacklist TRANSACTION_grant:I = 0x6

.field static final blacklist TRANSACTION_listEntries:I = 0x4

.field static final blacklist TRANSACTION_listEntriesBatched:I = 0x9

.field static final blacklist TRANSACTION_ungrant:I = 0x7

.field static final blacklist TRANSACTION_updateSubcomponent:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreService$Stub;->markVintfStability()V

    .line 83
    sget-object v0, Landroid/system/keystore2/IKeystoreService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/system/keystore2/IKeystoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/system/keystore2/IKeystoreService;
    .registers 3

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_4
    sget-object v0, Landroid/system/keystore2/IKeystoreService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/system/keystore2/IKeystoreService;

    if-eqz v1, :cond_13

    .line 96
    check-cast v0, Landroid/system/keystore2/IKeystoreService;

    return-object v0

    .line 98
    :cond_13
    new-instance v0, Landroid/system/keystore2/IKeystoreService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/system/keystore2/IKeystoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 107
    sparse-switch p0, :sswitch_data_2c

    .line 159
    const/4 p0, 0x0

    return-object p0

    .line 151
    :sswitch_5
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 155
    :sswitch_8
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 147
    :sswitch_b
    const-string p0, "getSupplementaryAttestationInfo"

    return-object p0

    .line 143
    :sswitch_e
    const-string p0, "listEntriesBatched"

    return-object p0

    .line 139
    :sswitch_11
    const-string p0, "getNumberOfEntries"

    return-object p0

    .line 135
    :sswitch_14
    const-string/jumbo p0, "ungrant"

    return-object p0

    .line 131
    :sswitch_18
    const-string p0, "grant"

    return-object p0

    .line 127
    :sswitch_1b
    const-string p0, "deleteKey"

    return-object p0

    .line 123
    :sswitch_1e
    const-string p0, "listEntries"

    return-object p0

    .line 119
    :sswitch_21
    const-string/jumbo p0, "updateSubcomponent"

    return-object p0

    .line 115
    :sswitch_25
    const-string p0, "getKeyEntry"

    return-object p0

    .line 111
    :sswitch_28
    const-string p0, "getSecurityLevel"

    return-object p0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_28
        0x2 -> :sswitch_25
        0x3 -> :sswitch_21
        0x4 -> :sswitch_1e
        0x5 -> :sswitch_1b
        0x6 -> :sswitch_18
        0x7 -> :sswitch_14
        0x8 -> :sswitch_11
        0x9 -> :sswitch_e
        0xa -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 102
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 590
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 166
    invoke-static {p1}, Landroid/system/keystore2/IKeystoreService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 170
    sget-object v0, Landroid/system/keystore2/IKeystoreService$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 171
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 172
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 175
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    return v2

    .line 178
    :cond_16
    if-ne p1, v1, :cond_23

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreService$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    return v2

    .line 183
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreService$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    return v2

    .line 188
    :cond_33
    packed-switch p1, :pswitch_data_120

    .line 307
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 298
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {p0, p1}, Landroid/system/keystore2/IKeystoreService$Stub;->getSupplementaryAttestationInfo(I)[B

    move-result-object p1

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 303
    goto/16 :goto_11f

    .line 284
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, p1, v0, v1, p4}, Landroid/system/keystore2/IKeystoreService$Stub;->listEntriesBatched(IJLjava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 293
    goto/16 :goto_11f

    .line 272
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, p1, v0, v1}, Landroid/system/keystore2/IKeystoreService$Stub;->getNumberOfEntries(IJ)I

    move-result p1

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    goto/16 :goto_11f

    .line 261
    :pswitch_80
    sget-object p1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/system/keystore2/KeyDescriptor;

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, p1, p4}, Landroid/system/keystore2/IKeystoreService$Stub;->ungrant(Landroid/system/keystore2/KeyDescriptor;I)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    goto/16 :goto_11f

    .line 247
    :pswitch_97
    sget-object p1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/system/keystore2/KeyDescriptor;

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, p1, p4, v0}, Landroid/system/keystore2/IKeystoreService$Stub;->grant(Landroid/system/keystore2/KeyDescriptor;II)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 256
    goto :goto_11f

    .line 238
    :pswitch_b5
    sget-object p1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/system/keystore2/KeyDescriptor;

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, p1}, Landroid/system/keystore2/IKeystoreService$Stub;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    goto :goto_11f

    .line 226
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, p1, v0, v1}, Landroid/system/keystore2/IKeystoreService$Stub;->listEntries(IJ)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 233
    goto :goto_11f

    .line 213
    :pswitch_dd
    sget-object p1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/system/keystore2/KeyDescriptor;

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, p1, p4, v0}, Landroid/system/keystore2/IKeystoreService$Stub;->updateSubcomponent(Landroid/system/keystore2/KeyDescriptor;[B[B)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    goto :goto_11f

    .line 203
    :pswitch_f7
    sget-object p1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/system/keystore2/KeyDescriptor;

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, p1}, Landroid/system/keystore2/IKeystoreService$Stub;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p1

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 208
    goto :goto_11f

    .line 193
    :pswitch_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, p1}, Landroid/system/keystore2/IKeystoreService$Stub;->getSecurityLevel(I)Landroid/system/keystore2/IKeystoreSecurityLevel;

    move-result-object p1

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 198
    nop

    .line 310
    :goto_11f
    return v2

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_10d
        :pswitch_f7
        :pswitch_dd
        :pswitch_c7
        :pswitch_b5
        :pswitch_97
        :pswitch_80
        :pswitch_69
        :pswitch_4e
        :pswitch_3b
    .end packed-switch
.end method
