.class final Landroid/permission/PermissionManager$PermissionQuery;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionQuery"
.end annotation


# instance fields
.field final blacklist deviceId:I

.field final blacklist permission:Ljava/lang/String;

.field final blacklist pid:I

.field final blacklist uid:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;III)V
    .registers 5

    .line 1771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1772
    iput-object p1, p0, Landroid/permission/PermissionManager$PermissionQuery;->permission:Ljava/lang/String;

    .line 1773
    iput p2, p0, Landroid/permission/PermissionManager$PermissionQuery;->pid:I

    .line 1774
    iput p3, p0, Landroid/permission/PermissionManager$PermissionQuery;->uid:I

    .line 1775
    iput p4, p0, Landroid/permission/PermissionManager$PermissionQuery;->deviceId:I

    .line 1776
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1794
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1795
    return v0

    .line 1799
    :cond_4
    :try_start_4
    check-cast p1, Landroid/permission/PermissionManager$PermissionQuery;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_6} :catch_21

    .line 1802
    nop

    .line 1803
    iget v1, p0, Landroid/permission/PermissionManager$PermissionQuery;->uid:I

    iget v2, p1, Landroid/permission/PermissionManager$PermissionQuery;->uid:I

    if-ne v1, v2, :cond_1f

    iget v1, p0, Landroid/permission/PermissionManager$PermissionQuery;->deviceId:I

    iget v2, p1, Landroid/permission/PermissionManager$PermissionQuery;->deviceId:I

    if-ne v1, v2, :cond_1f

    iget-object v1, p0, Landroid/permission/PermissionManager$PermissionQuery;->permission:Ljava/lang/String;

    iget-object p1, p1, Landroid/permission/PermissionManager$PermissionQuery;->permission:Ljava/lang/String;

    .line 1804
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 1803
    :goto_20
    return v0

    .line 1800
    :catch_21
    move-exception p1

    .line 1801
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1788
    iget-object v0, p0, Landroid/permission/PermissionManager$PermissionQuery;->permission:Ljava/lang/String;

    iget v1, p0, Landroid/permission/PermissionManager$PermissionQuery;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/permission/PermissionManager$PermissionQuery;->deviceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1780
    iget-object v0, p0, Landroid/permission/PermissionManager$PermissionQuery;->permission:Ljava/lang/String;

    iget v1, p0, Landroid/permission/PermissionManager$PermissionQuery;->pid:I

    .line 1781
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/permission/PermissionManager$PermissionQuery;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/permission/PermissionManager$PermissionQuery;->deviceId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 1780
    const-string v1, "PermissionQuery(permission=\"%s\", pid=%d, uid=%d, deviceId=%d)"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
