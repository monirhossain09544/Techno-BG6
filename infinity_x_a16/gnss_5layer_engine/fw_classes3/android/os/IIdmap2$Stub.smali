.class public abstract Landroid/os/IIdmap2$Stub;
.super Landroid/os/Binder;
.source "IIdmap2.java"

# interfaces
.implements Landroid/os/IIdmap2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIdmap2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIdmap2$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquireFabricatedOverlayIterator:I = 0x8

.field static final blacklist TRANSACTION_createFabricatedOverlay:I = 0x6

.field static final blacklist TRANSACTION_createIdmap:I = 0x4

.field static final blacklist TRANSACTION_deleteFabricatedOverlay:I = 0x7

.field static final blacklist TRANSACTION_dumpIdmap:I = 0xb

.field static final blacklist TRANSACTION_getIdmapPath:I = 0x1

.field static final blacklist TRANSACTION_nextFabricatedOverlayInfos:I = 0xa

.field static final blacklist TRANSACTION_releaseFabricatedOverlayIterator:I = 0x9

.field static final blacklist TRANSACTION_removeIdmap:I = 0x2

.field static final blacklist TRANSACTION_verifyIdmap:I = 0x3

.field static final blacklist TRANSACTION_verifyOrCreateIdmaps:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.os.IIdmap2"

    invoke-virtual {p0, p0, v0}, Landroid/os/IIdmap2$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IIdmap2;
    .registers 3

    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_4
    const-string v0, "android.os.IIdmap2"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IIdmap2;

    if-eqz v1, :cond_13

    .line 84
    check-cast v0, Landroid/os/IIdmap2;

    return-object v0

    .line 86
    :cond_13
    new-instance v0, Landroid/os/IIdmap2$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IIdmap2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 95
    packed-switch p0, :pswitch_data_2a

    .line 143
    const/4 p0, 0x0

    return-object p0

    .line 139
    :pswitch_5
    const-string p0, "dumpIdmap"

    return-object p0

    .line 135
    :pswitch_8
    const-string p0, "nextFabricatedOverlayInfos"

    return-object p0

    .line 131
    :pswitch_b
    const-string/jumbo p0, "releaseFabricatedOverlayIterator"

    return-object p0

    .line 127
    :pswitch_f
    const-string p0, "acquireFabricatedOverlayIterator"

    return-object p0

    .line 123
    :pswitch_12
    const-string p0, "deleteFabricatedOverlay"

    return-object p0

    .line 119
    :pswitch_15
    const-string p0, "createFabricatedOverlay"

    return-object p0

    .line 115
    :pswitch_18
    const-string/jumbo p0, "verifyOrCreateIdmaps"

    return-object p0

    .line 111
    :pswitch_1c
    const-string p0, "createIdmap"

    return-object p0

    .line 107
    :pswitch_1f
    const-string/jumbo p0, "verifyIdmap"

    return-object p0

    .line 103
    :pswitch_23
    const-string/jumbo p0, "removeIdmap"

    return-object p0

    .line 99
    :pswitch_27
    const-string p0, "getIdmapPath"

    return-object p0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 90
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 543
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 150
    invoke-static {p1}, Landroid/os/IIdmap2$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    nop

    .line 155
    const-string v0, "android.os.IIdmap2"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 156
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 159
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return v1

    .line 162
    :cond_17
    packed-switch p1, :pswitch_data_132

    .line 300
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 291
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, p1}, Landroid/os/IIdmap2$Stub;->dumpIdmap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    goto/16 :goto_130

    .line 281
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, p1}, Landroid/os/IIdmap2$Stub;->nextFabricatedOverlayInfos(I)Ljava/util/List;

    move-result-object p1

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 286
    goto/16 :goto_130

    .line 272
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {p0, p1}, Landroid/os/IIdmap2$Stub;->releaseFabricatedOverlayIterator(I)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    goto/16 :goto_130

    .line 264
    :pswitch_55
    invoke-virtual {p0}, Landroid/os/IIdmap2$Stub;->acquireFabricatedOverlayIterator()I

    move-result p1

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    goto/16 :goto_130

    .line 255
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, p1}, Landroid/os/IIdmap2$Stub;->deleteFabricatedOverlay(Ljava/lang/String;)Z

    move-result p1

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 260
    goto/16 :goto_130

    .line 245
    :pswitch_74
    sget-object p1, Landroid/os/FabricatedOverlayInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/FabricatedOverlayInternal;

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, p1}, Landroid/os/IIdmap2$Stub;->createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;

    move-result-object p1

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 250
    goto/16 :goto_130

    .line 235
    :pswitch_8b
    sget-object p1, Landroid/os/IdmapParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/IdmapParams;

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, p1}, Landroid/os/IIdmap2$Stub;->verifyOrCreateIdmaps([Landroid/os/IdmapParams;)[Ljava/lang/String;

    move-result-object p1

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 240
    goto/16 :goto_130

    .line 213
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 225
    sget-object p1, Landroid/os/OverlayConstraint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, [Landroid/os/OverlayConstraint;

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/os/IIdmap2$Stub;->createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI[Landroid/os/OverlayConstraint;)Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    goto :goto_130

    .line 191
    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 203
    sget-object p1, Landroid/os/OverlayConstraint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, [Landroid/os/OverlayConstraint;

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/os/IIdmap2$Stub;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI[Landroid/os/OverlayConstraint;)Z

    move-result p1

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 208
    goto :goto_130

    .line 179
    :pswitch_102
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, p1, p4}, Landroid/os/IIdmap2$Stub;->removeIdmap(Ljava/lang/String;I)Z

    move-result p1

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 186
    goto :goto_130

    .line 167
    :pswitch_119
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, p1, p4}, Landroid/os/IIdmap2$Stub;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    nop

    .line 303
    :goto_130
    return v1

    nop

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_119
        :pswitch_102
        :pswitch_d2
        :pswitch_a2
        :pswitch_8b
        :pswitch_74
        :pswitch_61
        :pswitch_55
        :pswitch_46
        :pswitch_33
        :pswitch_20
    .end packed-switch
.end method
