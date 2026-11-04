.class public final Landroid/permission/PermissionManager$SplitPermissionInfo;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SplitPermissionInfo"
.end annotation


# instance fields
.field private final blacklist mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;


# direct methods
.method private constructor blacklist <init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;)V
    .registers 2

    .line 1526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1527
    iput-object p1, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    .line 1528
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;Landroid/permission/PermissionManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1523
    new-instance v0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-direct {v0, p1, p2, p3}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    invoke-direct {p0, v0}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;)V

    .line 1524
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1480
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1481
    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 1482
    :cond_11
    check-cast p1, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 1483
    iget-object v0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    iget-object p1, p1, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {v0, p1}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1481
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getNewPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1502
    iget-object v0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {v0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getNewPermissions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSplitPermission()Ljava/lang/String;
    .registers 2

    .line 1495
    iget-object v0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {v0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getSplitPermission()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTargetSdk()I
    .registers 2

    .line 1509
    iget-object v0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {v0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->getTargetSdk()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1488
    iget-object v0, p0, Landroid/permission/PermissionManager$SplitPermissionInfo;->mSplitPermissionInfoParcelable:Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {v0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->hashCode()I

    move-result v0

    return v0
.end method
