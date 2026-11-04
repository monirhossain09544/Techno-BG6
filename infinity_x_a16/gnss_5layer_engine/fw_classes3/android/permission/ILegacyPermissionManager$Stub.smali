.class public abstract Landroid/permission/ILegacyPermissionManager$Stub;
.super Landroid/os/Binder;
.source "ILegacyPermissionManager.java"

# interfaces
.implements Landroid/permission/ILegacyPermissionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/ILegacyPermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/ILegacyPermissionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_checkDeviceIdentifierAccess:I = 0x1

.field static final blacklist TRANSACTION_checkPhoneNumberAccess:I = 0x2

.field static final blacklist TRANSACTION_grantDefaultPermissionsToActiveLuiApp:I = 0x7

.field static final blacklist TRANSACTION_grantDefaultPermissionsToCarrierServiceApp:I = 0x9

.field static final blacklist TRANSACTION_grantDefaultPermissionsToEnabledCarrierApps:I = 0x3

.field static final blacklist TRANSACTION_grantDefaultPermissionsToEnabledImsServices:I = 0x4

.field static final blacklist TRANSACTION_grantDefaultPermissionsToEnabledTelephonyDataServices:I = 0x5

.field static final blacklist TRANSACTION_revokeDefaultPermissionsFromDisabledTelephonyDataServices:I = 0x6

.field static final blacklist TRANSACTION_revokeDefaultPermissionsFromLuiApps:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "android.permission.ILegacyPermissionManager"

    invoke-virtual {p0, p0, v0}, Landroid/permission/ILegacyPermissionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/permission/ILegacyPermissionManager;
    .registers 3

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_4
    const-string v0, "android.permission.ILegacyPermissionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/permission/ILegacyPermissionManager;

    if-eqz v1, :cond_13

    .line 75
    check-cast v0, Landroid/permission/ILegacyPermissionManager;

    return-object v0

    .line 77
    :cond_13
    new-instance v0, Landroid/permission/ILegacyPermissionManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/permission/ILegacyPermissionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 86
    packed-switch p0, :pswitch_data_22

    .line 126
    const/4 p0, 0x0

    return-object p0

    .line 122
    :pswitch_5
    const-string p0, "grantDefaultPermissionsToCarrierServiceApp"

    return-object p0

    .line 118
    :pswitch_8
    const-string/jumbo p0, "revokeDefaultPermissionsFromLuiApps"

    return-object p0

    .line 114
    :pswitch_c
    const-string p0, "grantDefaultPermissionsToActiveLuiApp"

    return-object p0

    .line 110
    :pswitch_f
    const-string/jumbo p0, "revokeDefaultPermissionsFromDisabledTelephonyDataServices"

    return-object p0

    .line 106
    :pswitch_13
    const-string p0, "grantDefaultPermissionsToEnabledTelephonyDataServices"

    return-object p0

    .line 102
    :pswitch_16
    const-string p0, "grantDefaultPermissionsToEnabledImsServices"

    return-object p0

    .line 98
    :pswitch_19
    const-string p0, "grantDefaultPermissionsToEnabledCarrierApps"

    return-object p0

    .line 94
    :pswitch_1c
    const-string p0, "checkPhoneNumberAccess"

    return-object p0

    .line 90
    :pswitch_1f
    const-string p0, "checkDeviceIdentifierAccess"

    return-object p0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 81
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 451
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 133
    invoke-static {p1}, Landroid/permission/ILegacyPermissionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    nop

    .line 138
    const-string v0, "android.permission.ILegacyPermissionManager"

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
    packed-switch p1, :pswitch_data_e8

    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 252
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, p1, p4}, Landroid/permission/ILegacyPermissionManager$Stub;->grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    goto/16 :goto_e7

    .line 241
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, p1, p4}, Landroid/permission/ILegacyPermissionManager$Stub;->revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    goto/16 :goto_e7

    .line 230
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, p1, p4}, Landroid/permission/ILegacyPermissionManager$Stub;->grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    goto/16 :goto_e7

    .line 219
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, p1, p4}, Landroid/permission/ILegacyPermissionManager$Stub;->revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto/16 :goto_e7

    .line 208
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, p1, p4}, Landroid/permission/ILegacyPermissionManager$Stub;->grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    goto :goto_e7

    .line 197
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, p1, p4}, Landroid/permission/ILegacyPermissionManager$Stub;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto :goto_e7

    .line 186
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, p1, p4}, Landroid/permission/ILegacyPermissionManager$Stub;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_e7

    .line 168
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/permission/ILegacyPermissionManager$Stub;->checkPhoneNumberAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    goto :goto_e7

    .line 150
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/permission/ILegacyPermissionManager$Stub;->checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    nop

    .line 265
    :goto_e7
    return v1

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_c4
        :pswitch_a1
        :pswitch_8f
        :pswitch_7d
        :pswitch_6b
        :pswitch_58
        :pswitch_45
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
