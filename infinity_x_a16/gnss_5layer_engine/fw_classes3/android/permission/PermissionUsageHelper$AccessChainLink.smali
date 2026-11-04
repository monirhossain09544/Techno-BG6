.class Landroid/permission/PermissionUsageHelper$AccessChainLink;
.super Ljava/lang/Object;
.source "PermissionUsageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionUsageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessChainLink"
.end annotation


# instance fields
.field public final blacklist flags:I

.field public final blacklist usage:Landroid/permission/PermissionUsageHelper$OpUsage;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 15

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    new-instance v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 901
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p1

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Landroid/permission/PermissionUsageHelper$OpUsage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLandroid/permission/PermissionUsageHelper$OpUsage;)V

    iput-object v0, p0, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    .line 902
    iput p5, p0, Landroid/permission/PermissionUsageHelper$AccessChainLink;->flags:I

    .line 903
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 915
    instance-of v0, p1, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 916
    return v1

    .line 918
    :cond_6
    check-cast p1, Landroid/permission/PermissionUsageHelper$AccessChainLink;

    .line 919
    iget v0, p1, Landroid/permission/PermissionUsageHelper$AccessChainLink;->flags:I

    iget v2, p0, Landroid/permission/PermissionUsageHelper$AccessChainLink;->flags:I

    if-ne v0, v2, :cond_25

    iget-object v0, p1, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v0, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    iget-object v2, p1, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v2, v2, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v3, v3, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    iget-object p1, p1, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget p1, p1, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    invoke-virtual {p0, v0, v2, v3, p1}, Landroid/permission/PermissionUsageHelper$AccessChainLink;->packageAndOpEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method public blacklist isEnd()Z
    .registers 3

    .line 906
    iget v0, p0, Landroid/permission/PermissionUsageHelper$AccessChainLink;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist isStart()Z
    .registers 2

    .line 910
    iget v0, p0, Landroid/permission/PermissionUsageHelper$AccessChainLink;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist packageAndOpEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    .line 925
    iget-object v0, p0, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v0, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object p1, p1, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object p1, p1, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    .line 926
    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Landroid/permission/PermissionUsageHelper$AccessChainLink;->usage:Landroid/permission/PermissionUsageHelper$OpUsage;

    iget p1, p1, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    if-ne p4, p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    .line 925
    :goto_27
    return p1
.end method
