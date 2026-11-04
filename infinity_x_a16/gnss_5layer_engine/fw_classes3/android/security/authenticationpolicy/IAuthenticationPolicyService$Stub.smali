.class public abstract Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;
.super Landroid/os/Binder;
.source "IAuthenticationPolicyService.java"

# interfaces
.implements Landroid/security/authenticationpolicy/IAuthenticationPolicyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/authenticationpolicy/IAuthenticationPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelWatchRangingForRequestId:I = 0x9

.field static final blacklist TRANSACTION_disableSecureLockDevice:I = 0x2

.field static final blacklist TRANSACTION_enableSecureLockDevice:I = 0x1

.field static final blacklist TRANSACTION_getSecureLockDeviceAvailability:I = 0x3

.field static final blacklist TRANSACTION_isSecureLockDeviceEnabled:I = 0x4

.field static final blacklist TRANSACTION_isWatchRangingAvailable:I = 0xa

.field static final blacklist TRANSACTION_registerSecureLockDeviceStatusListener:I = 0x5

.field static final blacklist TRANSACTION_setSecureLockDeviceTestStatus:I = 0x7

.field static final blacklist TRANSACTION_startWatchRangingForIdentityCheck:I = 0x8

.field static final blacklist TRANSACTION_unregisterSecureLockDeviceStatusListener:I = 0x6


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    nop

    .line 75
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 76
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "android.security.authenticationpolicy.IAuthenticationPolicyService"

    invoke-virtual {p0, p0, v0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    if-eqz p1, :cond_d

    .line 69
    iput-object p1, p0, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 70
    return-void

    .line 67
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/authenticationpolicy/IAuthenticationPolicyService;
    .registers 3

    .line 83
    if-nez p0, :cond_4

    .line 84
    const/4 p0, 0x0

    return-object p0

    .line 86
    :cond_4
    const-string v0, "android.security.authenticationpolicy.IAuthenticationPolicyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    if-eqz v1, :cond_13

    .line 88
    check-cast v0, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    return-object v0

    .line 90
    :cond_13
    new-instance v0, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 99
    packed-switch p0, :pswitch_data_28

    .line 143
    const/4 p0, 0x0

    return-object p0

    .line 139
    :pswitch_5
    const-string p0, "isWatchRangingAvailable"

    return-object p0

    .line 135
    :pswitch_8
    const-string p0, "cancelWatchRangingForRequestId"

    return-object p0

    .line 131
    :pswitch_b
    const-string/jumbo p0, "startWatchRangingForIdentityCheck"

    return-object p0

    .line 127
    :pswitch_f
    const-string/jumbo p0, "setSecureLockDeviceTestStatus"

    return-object p0

    .line 123
    :pswitch_13
    const-string/jumbo p0, "unregisterSecureLockDeviceStatusListener"

    return-object p0

    .line 119
    :pswitch_17
    const-string/jumbo p0, "registerSecureLockDeviceStatusListener"

    return-object p0

    .line 115
    :pswitch_1b
    const-string p0, "isSecureLockDeviceEnabled"

    return-object p0

    .line 111
    :pswitch_1e
    const-string p0, "getSecureLockDeviceAvailability"

    return-object p0

    .line 107
    :pswitch_21
    const-string p0, "disableSecureLockDevice"

    return-object p0

    .line 103
    :pswitch_24
    const-string p0, "enableSecureLockDevice"

    return-object p0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 94
    return-object p0
.end method

.method protected blacklist cancelWatchRangingForRequestId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 495
    return-void
.end method

.method protected blacklist disableSecureLockDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_SECURE_LOCK_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 460
    return-void
.end method

.method protected blacklist enableSecureLockDevice_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_SECURE_LOCK_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 455
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 504
    const/16 v0, 0x9

    return v0
.end method

.method protected blacklist getSecureLockDeviceAvailability_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 464
    iget-object v0, p0, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_SECURE_LOCK_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 465
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 150
    invoke-static {p1}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist isSecureLockDeviceEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 469
    iget-object v0, p0, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_SECURE_LOCK_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 470
    return-void
.end method

.method protected blacklist isWatchRangingAvailable_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 499
    iget-object v0, p0, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 500
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    nop

    .line 155
    const-string v0, "android.security.authenticationpolicy.IAuthenticationPolicyService"

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
    packed-switch p1, :pswitch_data_f2

    .line 265
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 257
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/proximity/IProximityResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/proximity/IProximityResultCallback;

    move-result-object p1

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, p1}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->isWatchRangingAvailable(Landroid/proximity/IProximityResultCallback;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto/16 :goto_f1

    .line 248
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2, v3}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->cancelWatchRangingForRequestId(J)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto/16 :goto_f1

    .line 237
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/proximity/IProximityResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/proximity/IProximityResultCallback;

    move-result-object p1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2, v3, p1}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->startWatchRangingForIdentityCheck(JLandroid/proximity/IProximityResultCallback;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    goto/16 :goto_f1

    .line 228
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, p1}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->setSecureLockDeviceTestStatus(Z)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    goto/16 :goto_f1

    .line 219
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;

    move-result-object p1

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, p1}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->unregisterSecureLockDeviceStatusListener(Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    goto/16 :goto_f1

    .line 208
    :pswitch_7a
    sget-object p1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;

    move-result-object p4

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, p1, p4}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->registerSecureLockDeviceStatusListener(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    goto :goto_f1

    .line 200
    :pswitch_94
    invoke-virtual {p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->isSecureLockDeviceEnabled()Z

    move-result p1

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 203
    goto :goto_f1

    .line 191
    :pswitch_9f
    sget-object p1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, p1}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getSecureLockDeviceAvailability(Landroid/os/UserHandle;)I

    move-result p1

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    goto :goto_f1

    .line 179
    :pswitch_b5
    sget-object p1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 181
    sget-object p4, Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, p1, p4}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->disableSecureLockDevice(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;)I

    move-result p1

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    goto :goto_f1

    .line 167
    :pswitch_d3
    sget-object p1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 169
    sget-object p4, Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, p1, p4}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->enableSecureLockDevice(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;)I

    move-result p1

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    nop

    .line 268
    :goto_f1
    return v1

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_d3
        :pswitch_b5
        :pswitch_9f
        :pswitch_94
        :pswitch_7a
        :pswitch_67
        :pswitch_58
        :pswitch_41
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist registerSecureLockDeviceStatusListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 474
    iget-object v0, p0, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_SECURE_LOCK_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 475
    return-void
.end method

.method protected blacklist setSecureLockDeviceTestStatus_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 484
    iget-object v0, p0, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 485
    return-void
.end method

.method protected blacklist startWatchRangingForIdentityCheck_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 490
    return-void
.end method

.method protected blacklist unregisterSecureLockDeviceStatusListener_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_SECURE_LOCK_DEVICE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 480
    return-void
.end method
