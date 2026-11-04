.class public abstract Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;
.super Landroid/os/Binder;
.source "IAdvancedProtectionService.java"

# interfaces
.implements Landroid/security/advancedprotection/IAdvancedProtectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/advancedprotection/IAdvancedProtectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/advancedprotection/IAdvancedProtectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAdvancedProtectionFeatures:I = 0x5

.field static final blacklist TRANSACTION_isAdvancedProtectionEnabled:I = 0x1

.field static final blacklist TRANSACTION_logDialogShown:I = 0x6

.field static final blacklist TRANSACTION_registerAdvancedProtectionCallback:I = 0x2

.field static final blacklist TRANSACTION_setAdvancedProtectionEnabled:I = 0x4

.field static final blacklist TRANSACTION_unregisterAdvancedProtectionCallback:I = 0x3


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    nop

    .line 62
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.security.advancedprotection.IAdvancedProtectionService"

    invoke-virtual {p0, p0, v0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    if-eqz p1, :cond_d

    .line 56
    iput-object p1, p0, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 57
    return-void

    .line 54
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/advancedprotection/IAdvancedProtectionService;
    .registers 3

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_4
    const-string v0, "android.security.advancedprotection.IAdvancedProtectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/advancedprotection/IAdvancedProtectionService;

    if-eqz v1, :cond_13

    .line 75
    check-cast v0, Landroid/security/advancedprotection/IAdvancedProtectionService;

    return-object v0

    .line 77
    :cond_13
    new-instance v0, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 86
    packed-switch p0, :pswitch_data_1a

    .line 114
    const/4 p0, 0x0

    return-object p0

    .line 110
    :pswitch_5
    const-string p0, "logDialogShown"

    return-object p0

    .line 106
    :pswitch_8
    const-string p0, "getAdvancedProtectionFeatures"

    return-object p0

    .line 102
    :pswitch_b
    const-string/jumbo p0, "setAdvancedProtectionEnabled"

    return-object p0

    .line 98
    :pswitch_f
    const-string/jumbo p0, "unregisterAdvancedProtectionCallback"

    return-object p0

    .line 94
    :pswitch_13
    const-string/jumbo p0, "registerAdvancedProtectionCallback"

    return-object p0

    .line 90
    :pswitch_17
    const-string p0, "isAdvancedProtectionEnabled"

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
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

    .line 81
    return-object p0
.end method

.method protected blacklist getAdvancedProtectionFeatures_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ADVANCED_PROTECTION_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 332
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 341
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 121
    invoke-static {p1}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist isAdvancedProtectionEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_ADVANCED_PROTECTION_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 312
    return-void
.end method

.method protected blacklist logDialogShown_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ADVANCED_PROTECTION_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 337
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    nop

    .line 126
    const-string v0, "android.security.advancedprotection.IAdvancedProtectionService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 127
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 130
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v1

    .line 133
    :cond_17
    packed-switch p1, :pswitch_data_7e

    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 179
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, p1, p4, v0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->logDialogShown(IIZ)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_7d

    .line 171
    :pswitch_35
    invoke-virtual {p0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getAdvancedProtectionFeatures()Ljava/util/List;

    move-result-object p1

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 174
    goto :goto_7d

    .line 163
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, p1}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->setAdvancedProtectionEnabled(Z)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    goto :goto_7d

    .line 154
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/security/advancedprotection/IAdvancedProtectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/advancedprotection/IAdvancedProtectionCallback;

    move-result-object p1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, p1}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->unregisterAdvancedProtectionCallback(Landroid/security/advancedprotection/IAdvancedProtectionCallback;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    goto :goto_7d

    .line 145
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/security/advancedprotection/IAdvancedProtectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/advancedprotection/IAdvancedProtectionCallback;

    move-result-object p1

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, p1}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->registerAdvancedProtectionCallback(Landroid/security/advancedprotection/IAdvancedProtectionCallback;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    goto :goto_7d

    .line 137
    :pswitch_72
    invoke-virtual {p0}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->isAdvancedProtectionEnabled()Z

    move-result p1

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 140
    nop

    .line 194
    :goto_7d
    return v1

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_72
        :pswitch_60
        :pswitch_4e
        :pswitch_40
        :pswitch_35
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist registerAdvancedProtectionCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_ADVANCED_PROTECTION_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 317
    return-void
.end method

.method protected blacklist setAdvancedProtectionEnabled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_ADVANCED_PROTECTION_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 327
    return-void
.end method

.method protected blacklist unregisterAdvancedProtectionCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/advancedprotection/IAdvancedProtectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_ADVANCED_PROTECTION_MODE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 322
    return-void
.end method
