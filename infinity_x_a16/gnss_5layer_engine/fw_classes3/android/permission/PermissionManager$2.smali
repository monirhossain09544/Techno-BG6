.class Landroid/permission/PermissionManager$2;
.super Landroid/app/PropertyInvalidatedCache;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/permission/PermissionManager$PermissionRequestStateQuery;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1870
    invoke-direct {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist recompute(Landroid/permission/PermissionManager$PermissionRequestStateQuery;)Ljava/lang/Integer;
    .registers 4

    .line 1873
    iget-object v0, p1, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mPermission:Ljava/lang/String;

    iget p1, p1, Landroid/permission/PermissionManager$PermissionRequestStateQuery;->mDeviceId:I

    invoke-static {v0, v1, p1}, Landroid/permission/PermissionManager;->-$$Nest$smgetPermissionRequestStateUncached(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1870
    check-cast p1, Landroid/permission/PermissionManager$PermissionRequestStateQuery;

    invoke-virtual {p0, p1}, Landroid/permission/PermissionManager$2;->recompute(Landroid/permission/PermissionManager$PermissionRequestStateQuery;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
