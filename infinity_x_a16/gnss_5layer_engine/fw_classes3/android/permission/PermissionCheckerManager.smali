.class public Landroid/permission/PermissionCheckerManager;
.super Ljava/lang/Object;
.source "PermissionCheckerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionCheckerManager$PermissionResult;
    }
.end annotation


# static fields
.field public static final blacklist PERMISSION_GRANTED:I = 0x0

.field public static final blacklist PERMISSION_HARD_DENIED:I = 0x2

.field public static final blacklist PERMISSION_SOFT_DENIED:I = 0x1


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mService:Landroid/permission/IPermissionChecker;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/permission/PermissionCheckerManager;->mContext:Landroid/content/Context;

    .line 91
    const-string/jumbo v0, "permission_checker"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/IPermissionChecker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionChecker;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionCheckerManager;->mService:Landroid/permission/IPermissionChecker;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Landroid/permission/PermissionCheckerManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 94
    return-void
.end method


# virtual methods
.method public blacklist checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I
    .registers 7

    .line 177
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :try_start_3
    iget-object v0, p0, Landroid/permission/PermissionCheckerManager;->mService:Landroid/permission/IPermissionChecker;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/permission/IPermissionChecker;->checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    return p1

    .line 181
    :catch_b
    move-exception v0

    move-object p1, v0

    .line 182
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 184
    const/4 p1, 0x2

    return p1
.end method

.method public blacklist checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I
    .registers 11

    .line 117
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_42

    .line 123
    const/4 v0, 0x0

    if-eqz p6, :cond_32

    .line 124
    iget-object v1, p2, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v1, :cond_42

    iget-object v1, p2, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v1, v1

    if-lez v1, :cond_42

    .line 126
    iget-object p3, p0, Landroid/permission/PermissionCheckerManager;->mContext:Landroid/content/Context;

    iget-object p4, p2, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    aget-object p4, p4, v0

    iget p4, p4, Landroid/content/AttributionSourceState;->pid:I

    iget-object p2, p2, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    aget-object p2, p2, v0

    iget p2, p2, Landroid/content/AttributionSourceState;->uid:I

    .line 125
    invoke-virtual {p3, p1, p4, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_30

    .line 127
    move v2, v0

    goto :goto_31

    :cond_30
    nop

    .line 125
    :goto_31
    return v2

    .line 130
    :cond_32
    iget-object p3, p0, Landroid/permission/PermissionCheckerManager;->mContext:Landroid/content/Context;

    iget p4, p2, Landroid/content/AttributionSourceState;->pid:I

    iget p2, p2, Landroid/content/AttributionSourceState;->uid:I

    invoke-virtual {p3, p1, p4, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_40

    .line 132
    move v2, v0

    goto :goto_41

    :cond_40
    nop

    .line 130
    :goto_41
    return v2

    .line 136
    :cond_42
    :try_start_42
    iget-object v0, p0, Landroid/permission/PermissionCheckerManager;->mService:Landroid/permission/IPermissionChecker;

    move-object p0, v0

    invoke-interface/range {p0 .. p7}, Landroid/permission/IPermissionChecker;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I

    move-result p1
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_49} :catch_4a

    return p1

    .line 138
    :catch_4a
    move-exception v0

    move-object p1, v0

    .line 139
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 141
    return v2
.end method

.method public blacklist finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    .registers 5

    .line 154
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :try_start_3
    iget-object v0, p0, Landroid/permission/PermissionCheckerManager;->mService:Landroid/permission/IPermissionChecker;

    invoke-interface {v0, p1, p2, p3}, Landroid/permission/IPermissionChecker;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 159
    goto :goto_d

    .line 157
    :catch_9
    move-exception p1

    .line 158
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 160
    :goto_d
    return-void
.end method
