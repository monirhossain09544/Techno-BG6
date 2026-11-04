.class public abstract Landroid/os/ISystemConfig$Stub;
.super Landroid/os/Binder;
.source "ISystemConfig.java"

# interfaces
.implements Landroid/os/ISystemConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ISystemConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISystemConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getDefaultVrComponents:I = 0x6

.field static final blacklist TRANSACTION_getDisabledUntilUsedPreinstalledCarrierApps:I = 0x1

.field static final blacklist TRANSACTION_getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries:I = 0x3

.field static final blacklist TRANSACTION_getDisabledUntilUsedPreinstalledCarrierAssociatedApps:I = 0x2

.field static final blacklist TRANSACTION_getEnabledComponentOverrides:I = 0x5

.field static final blacklist TRANSACTION_getEnhancedConfirmationTrustedInstallers:I = 0x9

.field static final blacklist TRANSACTION_getEnhancedConfirmationTrustedPackages:I = 0x8

.field static final blacklist TRANSACTION_getPreventUserDisablePackages:I = 0x7

.field static final blacklist TRANSACTION_getSystemPermissionUids:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    const-string v0, "android.os.ISystemConfig"

    invoke-virtual {p0, p0, v0}, Landroid/os/ISystemConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/ISystemConfig;
    .registers 3

    .line 84
    if-nez p0, :cond_4

    .line 85
    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_4
    const-string v0, "android.os.ISystemConfig"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/ISystemConfig;

    if-eqz v1, :cond_13

    .line 89
    check-cast v0, Landroid/os/ISystemConfig;

    return-object v0

    .line 91
    :cond_13
    new-instance v0, Landroid/os/ISystemConfig$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/ISystemConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 100
    packed-switch p0, :pswitch_data_20

    .line 140
    const/4 p0, 0x0

    return-object p0

    .line 136
    :pswitch_5
    const-string p0, "getEnhancedConfirmationTrustedInstallers"

    return-object p0

    .line 132
    :pswitch_8
    const-string p0, "getEnhancedConfirmationTrustedPackages"

    return-object p0

    .line 128
    :pswitch_b
    const-string p0, "getPreventUserDisablePackages"

    return-object p0

    .line 124
    :pswitch_e
    const-string p0, "getDefaultVrComponents"

    return-object p0

    .line 120
    :pswitch_11
    const-string p0, "getEnabledComponentOverrides"

    return-object p0

    .line 116
    :pswitch_14
    const-string p0, "getSystemPermissionUids"

    return-object p0

    .line 112
    :pswitch_17
    const-string p0, "getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries"

    return-object p0

    .line 108
    :pswitch_1a
    const-string p0, "getDisabledUntilUsedPreinstalledCarrierAssociatedApps"

    return-object p0

    .line 104
    :pswitch_1d
    const-string p0, "getDisabledUntilUsedPreinstalledCarrierApps"

    return-object p0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
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

    .line 95
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 431
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 147
    invoke-static {p1}, Landroid/os/ISystemConfig$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 151
    nop

    .line 152
    const-string v0, "android.os.ISystemConfig"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 153
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 156
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    return v1

    .line 159
    :cond_17
    packed-switch p1, :pswitch_data_92

    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 225
    :pswitch_1f
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getEnhancedConfirmationTrustedInstallers()Ljava/util/List;

    move-result-object p1

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 228
    goto :goto_90

    .line 218
    :pswitch_2a
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getEnhancedConfirmationTrustedPackages()Ljava/util/List;

    move-result-object p1

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 221
    goto :goto_90

    .line 211
    :pswitch_35
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getPreventUserDisablePackages()Ljava/util/List;

    move-result-object p1

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 214
    goto :goto_90

    .line 204
    :pswitch_40
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getDefaultVrComponents()Ljava/util/List;

    move-result-object p1

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 207
    goto :goto_90

    .line 195
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, p1}, Landroid/os/ISystemConfig$Stub;->getEnabledComponentOverrides(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 200
    goto :goto_90

    .line 185
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, p1}, Landroid/os/ISystemConfig$Stub;->getSystemPermissionUids(Ljava/lang/String;)[I

    move-result-object p1

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 190
    goto :goto_90

    .line 177
    :pswitch_6f
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;

    move-result-object p1

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 180
    goto :goto_90

    .line 170
    :pswitch_7a
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Ljava/util/Map;

    move-result-object p1

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 173
    goto :goto_90

    .line 163
    :pswitch_85
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/List;

    move-result-object p1

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 166
    nop

    .line 235
    :goto_90
    return v1

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_85
        :pswitch_7a
        :pswitch_6f
        :pswitch_5d
        :pswitch_4b
        :pswitch_40
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
