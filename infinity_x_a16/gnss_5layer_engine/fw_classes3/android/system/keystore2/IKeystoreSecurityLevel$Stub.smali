.class public abstract Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;
.super Landroid/os/Binder;
.source "IKeystoreSecurityLevel.java"

# interfaces
.implements Landroid/system/keystore2/IKeystoreSecurityLevel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/keystore2/IKeystoreSecurityLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_convertStorageKeyToEphemeral:I = 0x5

.field static final blacklist TRANSACTION_createOperation:I = 0x1

.field static final blacklist TRANSACTION_deleteKey:I = 0x6

.field static final blacklist TRANSACTION_generateKey:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_importKey:I = 0x3

.field static final blacklist TRANSACTION_importWrappedKey:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->markVintfStability()V

    .line 68
    sget-object v0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/system/keystore2/IKeystoreSecurityLevel;
    .registers 3

    .line 76
    if-nez p0, :cond_4

    .line 77
    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_4
    sget-object v0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/system/keystore2/IKeystoreSecurityLevel;

    if-eqz v1, :cond_13

    .line 81
    check-cast v0, Landroid/system/keystore2/IKeystoreSecurityLevel;

    return-object v0

    .line 83
    :cond_13
    new-instance v0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 92
    sparse-switch p0, :sswitch_data_1e

    .line 128
    const/4 p0, 0x0

    return-object p0

    .line 120
    :sswitch_5
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 124
    :sswitch_8
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 116
    :sswitch_b
    const-string p0, "deleteKey"

    return-object p0

    .line 112
    :sswitch_e
    const-string p0, "convertStorageKeyToEphemeral"

    return-object p0

    .line 108
    :sswitch_11
    const-string p0, "importWrappedKey"

    return-object p0

    .line 104
    :sswitch_14
    const-string p0, "importKey"

    return-object p0

    .line 100
    :sswitch_17
    const-string p0, "generateKey"

    return-object p0

    .line 96
    :sswitch_1a
    const-string p0, "createOperation"

    return-object p0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_1a
        0x2 -> :sswitch_17
        0x3 -> :sswitch_14
        0x4 -> :sswitch_11
        0x5 -> :sswitch_e
        0x6 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 87
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 459
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 135
    invoke-static {p1}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    sget-object v0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 140
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 141
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 144
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    return v2

    .line 147
    :cond_16
    if-ne p1, v1, :cond_23

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return v2

    .line 152
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return v2

    .line 157
    :cond_33
    packed-switch p1, :pswitch_data_126

    .line 248
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 240
    :pswitch_3c
    sget-object p1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/system/keystore2/KeyDescriptor;

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, p1}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto/16 :goto_125

    .line 230
    :pswitch_4f
    sget-object p1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/system/keystore2/KeyDescriptor;

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, p1}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->convertStorageKeyToEphemeral(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/EphemeralStorageKeyResponse;

    move-result-object p1

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 235
    goto/16 :goto_125

    .line 212
    :pswitch_66
    sget-object p1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/system/keystore2/KeyDescriptor;

    .line 214
    sget-object p1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/system/keystore2/KeyDescriptor;

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 218
    sget-object p1, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, [Landroid/hardware/security/keymint/KeyParameter;

    .line 220
    sget-object p1, Landroid/system/keystore2/AuthenticatorSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, [Landroid/system/keystore2/AuthenticatorSpec;

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[Landroid/hardware/security/keymint/KeyParameter;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;

    move-result-object p1

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 225
    goto/16 :goto_125

    .line 194
    :pswitch_9e
    sget-object p1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/system/keystore2/KeyDescriptor;

    .line 196
    sget-object p1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/system/keystore2/KeyDescriptor;

    .line 198
    sget-object p1, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, [Landroid/hardware/security/keymint/KeyParameter;

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object p1

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 207
    goto :goto_125

    .line 176
    :pswitch_d0
    sget-object p1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/system/keystore2/KeyDescriptor;

    .line 178
    sget-object p1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/system/keystore2/KeyDescriptor;

    .line 180
    sget-object p1, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, [Landroid/hardware/security/keymint/KeyParameter;

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object p1

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 189
    goto :goto_125

    .line 162
    :pswitch_102
    move-object v3, p0

    sget-object p1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/system/keystore2/KeyDescriptor;

    .line 164
    sget-object p4, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/hardware/security/keymint/KeyParameter;

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, p1, p4, v0}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->createOperation(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;Z)Landroid/system/keystore2/CreateOperationResponse;

    move-result-object p1

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 171
    nop

    .line 251
    :goto_125
    return v2

    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_102
        :pswitch_d0
        :pswitch_9e
        :pswitch_66
        :pswitch_4f
        :pswitch_3c
    .end packed-switch
.end method
