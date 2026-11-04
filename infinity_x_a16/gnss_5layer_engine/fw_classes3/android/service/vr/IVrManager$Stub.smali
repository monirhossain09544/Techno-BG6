.class public abstract Landroid/service/vr/IVrManager$Stub;
.super Landroid/os/Binder;
.source "IVrManager.java"

# interfaces
.implements Landroid/service/vr/IVrManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/vr/IVrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/vr/IVrManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.vr.IVrManager"

.field static final greylist-max-o TRANSACTION_getPersistentVrModeEnabled:I = 0x6

.field static final greylist-max-o TRANSACTION_getVr2dDisplayId:I = 0x9

.field static final greylist-max-o TRANSACTION_getVrModeState:I = 0x5

.field static final greylist-max-o TRANSACTION_registerListener:I = 0x1

.field static final greylist-max-o TRANSACTION_registerPersistentVrStateListener:I = 0x3

.field static final greylist-max-o TRANSACTION_setAndBindCompositor:I = 0xa

.field static final greylist-max-o TRANSACTION_setPersistentVrModeEnabled:I = 0x7

.field static final greylist-max-o TRANSACTION_setStandbyEnabled:I = 0xb

.field static final greylist-max-o TRANSACTION_setVr2dDisplayProperties:I = 0x8

.field static final greylist-max-o TRANSACTION_unregisterListener:I = 0x2

.field static final greylist-max-o TRANSACTION_unregisterPersistentVrStateListener:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 127
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 128
    const-string v0, "android.service.vr.IVrManager"

    invoke-virtual {p0, p0, v0}, Landroid/service/vr/IVrManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;
    .registers 3

    .line 136
    if-nez p0, :cond_4

    .line 137
    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_4
    const-string v0, "android.service.vr.IVrManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/vr/IVrManager;

    if-eqz v1, :cond_13

    .line 141
    check-cast v0, Landroid/service/vr/IVrManager;

    return-object v0

    .line 143
    :cond_13
    new-instance v0, Landroid/service/vr/IVrManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/vr/IVrManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 152
    packed-switch p0, :pswitch_data_2e

    .line 200
    const/4 p0, 0x0

    return-object p0

    .line 196
    :pswitch_5
    const-string/jumbo p0, "setStandbyEnabled"

    return-object p0

    .line 192
    :pswitch_9
    const-string/jumbo p0, "setAndBindCompositor"

    return-object p0

    .line 188
    :pswitch_d
    const-string p0, "getVr2dDisplayId"

    return-object p0

    .line 184
    :pswitch_10
    const-string/jumbo p0, "setVr2dDisplayProperties"

    return-object p0

    .line 180
    :pswitch_14
    const-string/jumbo p0, "setPersistentVrModeEnabled"

    return-object p0

    .line 176
    :pswitch_18
    const-string p0, "getPersistentVrModeEnabled"

    return-object p0

    .line 172
    :pswitch_1b
    const-string p0, "getVrModeState"

    return-object p0

    .line 168
    :pswitch_1e
    const-string/jumbo p0, "unregisterPersistentVrStateListener"

    return-object p0

    .line 164
    :pswitch_22
    const-string/jumbo p0, "registerPersistentVrStateListener"

    return-object p0

    .line 160
    :pswitch_26
    const-string/jumbo p0, "unregisterListener"

    return-object p0

    .line 156
    :pswitch_2a
    const-string/jumbo p0, "registerListener"

    return-object p0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 147
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 588
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 207
    invoke-static {p1}, Landroid/service/vr/IVrManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 211
    nop

    .line 212
    const-string v0, "android.service.vr.IVrManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 213
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 216
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    return v1

    .line 219
    :cond_17
    packed-switch p1, :pswitch_data_c8

    .line 316
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 308
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, p1}, Landroid/service/vr/IVrManager$Stub;->setStandbyEnabled(Z)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_c7

    .line 299
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, p1}, Landroid/service/vr/IVrManager$Stub;->setAndBindCompositor(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    goto/16 :goto_c7

    .line 291
    :pswitch_3d
    invoke-virtual {p0}, Landroid/service/vr/IVrManager$Stub;->getVr2dDisplayId()I

    move-result p1

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    goto/16 :goto_c7

    .line 283
    :pswitch_49
    sget-object p1, Landroid/app/Vr2dDisplayProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Vr2dDisplayProperties;

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, p1}, Landroid/service/vr/IVrManager$Stub;->setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    goto :goto_c7

    .line 274
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, p1}, Landroid/service/vr/IVrManager$Stub;->setPersistentVrModeEnabled(Z)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    goto :goto_c7

    .line 266
    :pswitch_69
    invoke-virtual {p0}, Landroid/service/vr/IVrManager$Stub;->getPersistentVrModeEnabled()Z

    move-result p1

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 269
    goto :goto_c7

    .line 259
    :pswitch_74
    invoke-virtual {p0}, Landroid/service/vr/IVrManager$Stub;->getVrModeState()Z

    move-result p1

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 262
    goto :goto_c7

    .line 251
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IPersistentVrStateCallbacks;

    move-result-object p1

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, p1}, Landroid/service/vr/IVrManager$Stub;->unregisterPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    goto :goto_c7

    .line 242
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IPersistentVrStateCallbacks;

    move-result-object p1

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, p1}, Landroid/service/vr/IVrManager$Stub;->registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    goto :goto_c7

    .line 233
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/vr/IVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrStateCallbacks;

    move-result-object p1

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, p1}, Landroid/service/vr/IVrManager$Stub;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto :goto_c7

    .line 224
    :pswitch_b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/vr/IVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrStateCallbacks;

    move-result-object p1

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, p1}, Landroid/service/vr/IVrManager$Stub;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    nop

    .line 319
    :goto_c7
    return v1

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_b5
        :pswitch_a3
        :pswitch_91
        :pswitch_7f
        :pswitch_74
        :pswitch_69
        :pswitch_5b
        :pswitch_49
        :pswitch_3d
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
