.class Landroid/permission/PermissionUsageHelper$OpUsage;
.super Ljava/lang/Object;
.source "PermissionUsageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionUsageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpUsage"
.end annotation


# instance fields
.field public final blacklist attributionTag:Ljava/lang/String;

.field public final blacklist isRunning:Z

.field public final blacklist lastAccessTime:J

.field public final blacklist op:Ljava/lang/String;

.field public final blacklist packageName:Ljava/lang/String;

.field public final blacklist proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

.field public final blacklist uid:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLandroid/permission/PermissionUsageHelper$OpUsage;)V
    .registers 9

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 860
    iput-object p1, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    .line 861
    iput-object p2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    .line 862
    iput-object p3, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    .line 863
    iput p4, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    .line 864
    iput-wide p5, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    .line 865
    iput-boolean p7, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    .line 866
    iput-object p8, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 867
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 884
    instance-of v0, p1, Landroid/permission/PermissionUsageHelper$OpUsage;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 885
    return v1

    .line 887
    :cond_6
    check-cast p1, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 888
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    iget-object v2, p1, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    iget-object v2, p1, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    .line 889
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget v0, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    iget v2, p1, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    if-ne v0, v2, :cond_3c

    iget-wide v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    iget-wide v4, p1, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    iget-boolean p1, p1, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    if-ne v0, p1, :cond_3c

    const/4 v1, 0x1

    goto :goto_3d

    :cond_3c
    nop

    .line 888
    :goto_3d
    return v1
.end method

.method public blacklist getPackageIdHash()I
    .registers 3

    .line 874
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist getUser()Landroid/os/UserHandle;
    .registers 2

    .line 870
    iget v0, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 879
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    iget-object v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    iget v3, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-boolean v5, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
