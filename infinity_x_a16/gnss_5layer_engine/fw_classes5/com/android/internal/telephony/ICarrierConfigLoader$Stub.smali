.class public abstract Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;
.super Landroid/os/Binder;
.source "ICarrierConfigLoader.java"

# interfaces
.implements Lcom/android/internal/telephony/ICarrierConfigLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ICarrierConfigLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ICarrierConfigLoader$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ICarrierConfigLoader"

.field static final greylist-max-o TRANSACTION_getConfigForSubId:I = 0x1

.field static final blacklist TRANSACTION_getConfigForSubIdWithFeature:I = 0x2

.field static final blacklist TRANSACTION_getConfigSubsetForSubIdWithFeature:I = 0x7

.field static final greylist-max-o TRANSACTION_getDefaultCarrierServicePackageName:I = 0x6

.field static final greylist-max-o TRANSACTION_notifyConfigChangedForSubId:I = 0x4

.field static final blacklist TRANSACTION_overrideConfig:I = 0x3

.field static final greylist-max-o TRANSACTION_updateConfigForPhoneId:I = 0x5


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    nop

    .line 64
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "com.android.internal.telephony.ICarrierConfigLoader"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    if-eqz p1, :cond_d

    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 59
    return-void

    .line 56
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierConfigLoader;
    .registers 3

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_4
    const-string v0, "com.android.internal.telephony.ICarrierConfigLoader"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/ICarrierConfigLoader;

    if-eqz v1, :cond_13

    .line 77
    check-cast v0, Lcom/android/internal/telephony/ICarrierConfigLoader;

    return-object v0

    .line 79
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 88
    packed-switch p0, :pswitch_data_1a

    .line 120
    const/4 p0, 0x0

    return-object p0

    .line 116
    :pswitch_5
    const-string p0, "getConfigSubsetForSubIdWithFeature"

    return-object p0

    .line 112
    :pswitch_8
    const-string p0, "getDefaultCarrierServicePackageName"

    return-object p0

    .line 108
    :pswitch_b
    const-string p0, "updateConfigForPhoneId"

    return-object p0

    .line 104
    :pswitch_e
    const-string p0, "notifyConfigChangedForSubId"

    return-object p0

    .line 100
    :pswitch_11
    const-string p0, "overrideConfig"

    return-object p0

    .line 96
    :pswitch_14
    const-string p0, "getConfigForSubIdWithFeature"

    return-object p0

    .line 92
    :pswitch_17
    const-string p0, "getConfigForSubId"

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
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

    .line 83
    return-object p0
.end method

.method protected blacklist getDefaultCarrierServicePackageName_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 391
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 396
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 127
    invoke-static {p1}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 131
    nop

    .line 132
    const-string v0, "com.android.internal.telephony.ICarrierConfigLoader"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 133
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 136
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    return v1

    .line 139
    :cond_17
    packed-switch p1, :pswitch_data_b4

    .line 225
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 210
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, p1, p4, v0, v2}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getConfigSubsetForSubIdWithFeature(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 221
    goto/16 :goto_b3

    .line 202
    :pswitch_3e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getDefaultCarrierServicePackageName()Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    goto :goto_b3

    .line 192
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->updateConfigForPhoneId(ILjava/lang/String;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_b3

    .line 183
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->notifyConfigChangedForSubId(I)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_b3

    .line 170
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 172
    sget-object p4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/PersistableBundle;

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->overrideConfig(ILandroid/os/PersistableBundle;Z)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_b3

    .line 156
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getConfigForSubIdWithFeature(ILjava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 165
    goto :goto_b3

    .line 144
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getConfigForSubId(ILjava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 151
    nop

    .line 228
    :goto_b3
    return v1

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_83
        :pswitch_69
        :pswitch_5b
        :pswitch_49
        :pswitch_3e
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist overrideConfig_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 380
    return-void
.end method

.method protected blacklist updateConfigForPhoneId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 386
    return-void
.end method
