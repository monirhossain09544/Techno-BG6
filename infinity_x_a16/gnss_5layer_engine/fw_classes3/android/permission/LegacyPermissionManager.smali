.class public final Landroid/permission/LegacyPermissionManager;
.super Ljava/lang/Object;
.source "LegacyPermissionManager.java"


# instance fields
.field private final blacklist mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 53
    const-string v0, "legacy_permission"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/ILegacyPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/ILegacyPermissionManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/LegacyPermissionManager;-><init>(Landroid/permission/ILegacyPermissionManager;)V

    .line 55
    return-void
.end method

.method public constructor blacklist <init>(Landroid/permission/ILegacyPermissionManager;)V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;

    .line 67
    return-void
.end method

.method static synthetic blacklist lambda$grantDefaultPermissionsToEnabledCarrierApps$5(Ljava/util/function/Consumer;)V
    .registers 2

    .line 243
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$grantDefaultPermissionsToEnabledImsServices$2(Ljava/util/function/Consumer;)V
    .registers 2

    .line 180
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$grantDefaultPermissionsToEnabledTelephonyDataServices$3(Ljava/util/function/Consumer;)V
    .registers 2

    .line 201
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$grantDefaultPermissionsToLuiApp$0(Ljava/util/function/Consumer;)V
    .registers 2

    .line 138
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$revokeDefaultPermissionsFromDisabledTelephonyDataServices$4(Ljava/util/function/Consumer;)V
    .registers 2

    .line 222
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$revokeDefaultPermissionsFromLuiApps$1(Ljava/util/function/Consumer;)V
    .registers 2

    .line 159
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 7

    .line 86
    :try_start_0
    iget-object v0, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/permission/ILegacyPermissionManager;->checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return p1

    .line 88
    :catch_8
    move-exception v0

    move-object p1, v0

    .line 89
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist checkPhoneNumberAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 7

    .line 116
    :try_start_0
    iget-object v0, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/permission/ILegacyPermissionManager;->checkPhoneNumberAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return p1

    .line 118
    :catch_8
    move-exception v0

    move-object p1, v0

    .line 119
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V
    .registers 4

    .line 258
    :try_start_0
    iget-object v0, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;

    invoke-interface {v0, p1, p2}, Landroid/permission/ILegacyPermissionManager;->grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 262
    nop

    .line 263
    return-void

    .line 260
    :catch_7
    move-exception p1

    .line 261
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 241
    :try_start_0
    iget-object v0, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;

    .line 242
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 241
    invoke-interface {v0, p1, p2}, Landroid/permission/ILegacyPermissionManager;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    .line 243
    new-instance p1, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p4}, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 246
    goto :goto_16

    .line 244
    :catch_12
    move-exception p1

    .line 245
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 247
    :goto_16
    return-void
.end method

.method public blacklist grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 178
    :try_start_0
    iget-object v0, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;

    .line 179
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 178
    invoke-interface {v0, p1, p2}, Landroid/permission/ILegacyPermissionManager;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V

    .line 180
    new-instance p1, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p4}, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 183
    goto :goto_16

    .line 181
    :catch_12
    move-exception p1

    .line 182
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 184
    :goto_16
    return-void
.end method

.method public blacklist grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 199
    :try_start_0
    iget-object v0, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;

    .line 200
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 199
    invoke-interface {v0, p1, p2}, Landroid/permission/ILegacyPermissionManager;->grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 201
    new-instance p1, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda2;

    invoke-direct {p1, p4}, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 204
    goto :goto_16

    .line 202
    :catch_12
    move-exception p1

    .line 203
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 205
    :goto_16
    return-void
.end method

.method public blacklist grantDefaultPermissionsToLuiApp(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 136
    :try_start_0
    iget-object v0, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;

    .line 137
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 136
    invoke-interface {v0, p1, p2}, Landroid/permission/ILegacyPermissionManager;->grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V

    .line 138
    new-instance p1, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda3;

    invoke-direct {p1, p4}, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 141
    goto :goto_16

    .line 139
    :catch_12
    move-exception p1

    .line 140
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 142
    :goto_16
    return-void
.end method

.method public blacklist revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 220
    :try_start_0
    iget-object v0, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;

    .line 221
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 220
    invoke-interface {v0, p1, p2}, Landroid/permission/ILegacyPermissionManager;->revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 222
    new-instance p1, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda4;

    invoke-direct {p1, p4}, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 225
    goto :goto_16

    .line 223
    :catch_12
    move-exception p1

    .line 224
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 226
    :goto_16
    return-void
.end method

.method public blacklist revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 157
    :try_start_0
    iget-object v0, p0, Landroid/permission/LegacyPermissionManager;->mLegacyPermissionManager:Landroid/permission/ILegacyPermissionManager;

    .line 158
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 157
    invoke-interface {v0, p1, p2}, Landroid/permission/ILegacyPermissionManager;->revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V

    .line 159
    new-instance p1, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda5;

    invoke-direct {p1, p4}, Landroid/permission/LegacyPermissionManager$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 162
    goto :goto_16

    .line 160
    :catch_12
    move-exception p1

    .line 161
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 163
    :goto_16
    return-void
.end method
