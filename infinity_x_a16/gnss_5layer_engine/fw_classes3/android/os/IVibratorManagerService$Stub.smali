.class public abstract Landroid/os/IVibratorManagerService$Stub;
.super Landroid/os/Binder;
.source "IVibratorManagerService.java"

# interfaces
.implements Landroid/os/IVibratorManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVibratorManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist PERMISSIONS_startVendorVibrationSession:[Ljava/lang/String;

.field static final blacklist TRANSACTION_cancelVibrate:I = 0x9

.field static final blacklist TRANSACTION_getCapabilities:I = 0x2

.field static final blacklist TRANSACTION_getVibratorIds:I = 0x1

.field static final blacklist TRANSACTION_getVibratorInfo:I = 0x3

.field static final blacklist TRANSACTION_isVibrating:I = 0x4

.field static final blacklist TRANSACTION_performHapticFeedback:I = 0xa

.field static final blacklist TRANSACTION_performHapticFeedbackForInputDevice:I = 0xb

.field static final blacklist TRANSACTION_registerVibratorStateListener:I = 0x5

.field static final blacklist TRANSACTION_setAlwaysOnEffect:I = 0x7

.field static final blacklist TRANSACTION_startVendorVibrationSession:I = 0xc

.field static final blacklist TRANSACTION_unregisterVibratorStateListener:I = 0x6

.field static final blacklist TRANSACTION_vibrate:I = 0x8


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 646
    const-string v0, "android.permission.VIBRATE_VENDOR_EFFECTS"

    const-string v1, "android.permission.START_VIBRATION_SESSIONS"

    const-string v2, "android.permission.VIBRATE"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/IVibratorManagerService$Stub;->PERMISSIONS_startVendorVibrationSession:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    nop

    .line 89
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/IVibratorManagerService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 90
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 78
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 79
    const-string v0, "android.os.IVibratorManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVibratorManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 80
    if-eqz p1, :cond_d

    .line 83
    iput-object p1, p0, Landroid/os/IVibratorManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 84
    return-void

    .line 81
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorManagerService;
    .registers 3

    .line 97
    if-nez p0, :cond_4

    .line 98
    const/4 p0, 0x0

    return-object p0

    .line 100
    :cond_4
    const-string v0, "android.os.IVibratorManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IVibratorManagerService;

    if-eqz v1, :cond_13

    .line 102
    check-cast v0, Landroid/os/IVibratorManagerService;

    return-object v0

    .line 104
    :cond_13
    new-instance v0, Landroid/os/IVibratorManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IVibratorManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 113
    packed-switch p0, :pswitch_data_30

    .line 165
    const/4 p0, 0x0

    return-object p0

    .line 161
    :pswitch_5
    const-string/jumbo p0, "startVendorVibrationSession"

    return-object p0

    .line 157
    :pswitch_9
    const-string/jumbo p0, "performHapticFeedbackForInputDevice"

    return-object p0

    .line 153
    :pswitch_d
    const-string/jumbo p0, "performHapticFeedback"

    return-object p0

    .line 149
    :pswitch_11
    const-string p0, "cancelVibrate"

    return-object p0

    .line 145
    :pswitch_14
    const-string/jumbo p0, "vibrate"

    return-object p0

    .line 141
    :pswitch_18
    const-string/jumbo p0, "setAlwaysOnEffect"

    return-object p0

    .line 137
    :pswitch_1c
    const-string/jumbo p0, "unregisterVibratorStateListener"

    return-object p0

    .line 133
    :pswitch_20
    const-string/jumbo p0, "registerVibratorStateListener"

    return-object p0

    .line 129
    :pswitch_24
    const-string p0, "isVibrating"

    return-object p0

    .line 125
    :pswitch_27
    const-string p0, "getVibratorInfo"

    return-object p0

    .line 121
    :pswitch_2a
    const-string p0, "getCapabilities"

    return-object p0

    .line 117
    :pswitch_2d
    const-string p0, "getVibratorIds"

    return-object p0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 108
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 654
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 172
    invoke-static {p1}, Landroid/os/IVibratorManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist isVibrating_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 628
    iget-object v0, p0, Landroid/os/IVibratorManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/IVibratorManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/IVibratorManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VIBRATOR_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 629
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    nop

    .line 177
    const-string v2, "android.os.IVibratorManagerService"

    const/4 v10, 0x1

    if-lt p1, v10, :cond_e

    const v3, 0xffffff

    if-gt p1, v3, :cond_e

    .line 178
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    :cond_e
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_17

    .line 181
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    return v10

    .line 184
    :cond_17
    packed-switch p1, :pswitch_data_18a

    .line 364
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 343
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 351
    sget-object v5, Landroid/os/VibrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/VibrationAttributes;

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/vibrator/IVibrationSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/vibrator/IVibrationSessionCallback;

    move-result-object v7

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    move v1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/IVibratorManagerService$Stub;->startVendorVibrationSession(IILjava/lang/String;[ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/vibrator/IVibrationSessionCallback;)Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 360
    goto/16 :goto_188

    .line 319
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/os/IVibratorManagerService$Stub;->performHapticFeedbackForInputDevice(IILjava/lang/String;IIILjava/lang/String;II)V

    .line 338
    goto/16 :goto_188

    .line 297
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/os/IVibratorManagerService$Stub;->performHapticFeedback(IILjava/lang/String;IILjava/lang/String;II)V

    .line 314
    goto/16 :goto_188

    .line 286
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, v1, v2}, Landroid/os/IVibratorManagerService$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    goto/16 :goto_188

    .line 265
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 271
    sget-object v4, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/CombinedVibration;

    .line 273
    sget-object v5, Landroid/os/VibrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/VibrationAttributes;

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/IVibratorManagerService$Stub;->vibrate(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    goto/16 :goto_188

    .line 247
    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 253
    sget-object v0, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/CombinedVibration;

    .line 255
    sget-object v0, Landroid/os/VibrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/VibrationAttributes;

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IVibratorManagerService$Stub;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z

    move-result v0

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 260
    goto :goto_188

    .line 235
    :pswitch_11a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object v2

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v0, v2}, Landroid/os/IVibratorManagerService$Stub;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v0

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 242
    goto :goto_188

    .line 223
    :pswitch_134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object v2

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v0, v2}, Landroid/os/IVibratorManagerService$Stub;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v0

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 230
    goto :goto_188

    .line 213
    :pswitch_14e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v0}, Landroid/os/IVibratorManagerService$Stub;->isVibrating(I)Z

    move-result v0

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 218
    goto :goto_188

    .line 203
    :pswitch_160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v0}, Landroid/os/IVibratorManagerService$Stub;->getVibratorInfo(I)Landroid/os/VibratorInfo;

    move-result-object v0

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 208
    goto :goto_188

    .line 195
    :pswitch_172
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->getCapabilities()I

    move-result v0

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    goto :goto_188

    .line 188
    :pswitch_17d
    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->getVibratorIds()[I

    move-result-object v0

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 191
    nop

    .line 367
    :goto_188
    return v10

    nop

    :pswitch_data_18a
    .packed-switch 0x1
        :pswitch_17d
        :pswitch_172
        :pswitch_160
        :pswitch_14e
        :pswitch_134
        :pswitch_11a
        :pswitch_ed
        :pswitch_bd
        :pswitch_aa
        :pswitch_81
        :pswitch_54
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist registerVibratorStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 633
    iget-object v0, p0, Landroid/os/IVibratorManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/IVibratorManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/IVibratorManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VIBRATOR_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 634
    return-void
.end method

.method protected blacklist startVendorVibrationSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 649
    iget-object v0, p0, Landroid/os/IVibratorManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/os/IVibratorManagerService$Stub;->PERMISSIONS_startVendorVibrationSession:[Ljava/lang/String;

    invoke-static {}, Landroid/os/IVibratorManagerService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/IVibratorManagerService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 650
    return-void
.end method

.method protected blacklist unregisterVibratorStateListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 638
    iget-object v0, p0, Landroid/os/IVibratorManagerService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/IVibratorManagerService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/IVibratorManagerService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_VIBRATOR_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 639
    return-void
.end method
