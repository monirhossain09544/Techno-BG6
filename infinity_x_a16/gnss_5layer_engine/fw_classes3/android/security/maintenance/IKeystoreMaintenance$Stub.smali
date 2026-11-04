.class public abstract Landroid/security/maintenance/IKeystoreMaintenance$Stub;
.super Landroid/os/Binder;
.source "IKeystoreMaintenance.java"

# interfaces
.implements Landroid/security/maintenance/IKeystoreMaintenance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/maintenance/IKeystoreMaintenance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearNamespace:I = 0x5

.field static final blacklist TRANSACTION_deleteAllKeys:I = 0x8

.field static final blacklist TRANSACTION_earlyBootEnded:I = 0x6

.field static final blacklist TRANSACTION_getAppUidsAffectedBySid:I = 0x9

.field static final blacklist TRANSACTION_initUserSuperKeys:I = 0x2

.field static final blacklist TRANSACTION_migrateKeyNamespace:I = 0x7

.field static final blacklist TRANSACTION_onUserAdded:I = 0x1

.field static final blacklist TRANSACTION_onUserLskfRemoved:I = 0x4

.field static final blacklist TRANSACTION_onUserRemoved:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 154
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 155
    const-string v0, "android.security.maintenance.IKeystoreMaintenance"

    invoke-virtual {p0, p0, v0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/maintenance/IKeystoreMaintenance;
    .registers 3

    .line 163
    if-nez p0, :cond_4

    .line 164
    const/4 p0, 0x0

    return-object p0

    .line 166
    :cond_4
    const-string v0, "android.security.maintenance.IKeystoreMaintenance"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/maintenance/IKeystoreMaintenance;

    if-eqz v1, :cond_13

    .line 168
    check-cast v0, Landroid/security/maintenance/IKeystoreMaintenance;

    return-object v0

    .line 170
    :cond_13
    new-instance v0, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 179
    packed-switch p0, :pswitch_data_24

    .line 219
    const/4 p0, 0x0

    return-object p0

    .line 215
    :pswitch_5
    const-string p0, "getAppUidsAffectedBySid"

    return-object p0

    .line 211
    :pswitch_8
    const-string p0, "deleteAllKeys"

    return-object p0

    .line 207
    :pswitch_b
    const-string p0, "migrateKeyNamespace"

    return-object p0

    .line 203
    :pswitch_e
    const-string p0, "earlyBootEnded"

    return-object p0

    .line 199
    :pswitch_11
    const-string p0, "clearNamespace"

    return-object p0

    .line 195
    :pswitch_14
    const-string/jumbo p0, "onUserLskfRemoved"

    return-object p0

    .line 191
    :pswitch_18
    const-string/jumbo p0, "onUserRemoved"

    return-object p0

    .line 187
    :pswitch_1c
    const-string p0, "initUserSuperKeys"

    return-object p0

    .line 183
    :pswitch_1f
    const-string/jumbo p0, "onUserAdded"

    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
        :pswitch_14
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

    .line 174
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 606
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 226
    invoke-static {p1}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 230
    nop

    .line 231
    const-string v0, "android.security.maintenance.IKeystoreMaintenance"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 232
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 235
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    return v1

    .line 238
    :cond_17
    packed-switch p1, :pswitch_data_b2

    .line 328
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 317
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, p1, v2, v3}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->getAppUidsAffectedBySid(IJ)[J

    move-result-object p1

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 324
    goto/16 :goto_b1

    .line 310
    :pswitch_36
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->deleteAllKeys()V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_b1

    .line 300
    :pswitch_3e
    sget-object p1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/system/keystore2/KeyDescriptor;

    .line 302
    sget-object p4, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/system/keystore2/KeyDescriptor;

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, p1, p4}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    goto :goto_b1

    .line 293
    :pswitch_58
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->earlyBootEnded()V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    goto :goto_b1

    .line 283
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, p1, v2, v3}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->clearNamespace(IJ)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    goto :goto_b1

    .line 274
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, p1}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->onUserLskfRemoved(I)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    goto :goto_b1

    .line 265
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, p1}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->onUserRemoved(I)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    goto :goto_b1

    .line 252
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, p1, p4, v0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->initUserSuperKeys(I[BZ)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    goto :goto_b1

    .line 243
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, p1}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->onUserAdded(I)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    nop

    .line 331
    :goto_b1
    return v1

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_8d
        :pswitch_7f
        :pswitch_71
        :pswitch_5f
        :pswitch_58
        :pswitch_3e
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
