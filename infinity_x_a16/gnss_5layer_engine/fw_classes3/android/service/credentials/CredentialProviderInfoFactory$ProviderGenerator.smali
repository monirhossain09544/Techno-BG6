.class Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;
.super Ljava/lang/Object;
.source "CredentialProviderInfoFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/credentials/CredentialProviderInfoFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderGenerator"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDisableSystemAppVerificationForTests:Z

.field private final blacklist mPp:Landroid/app/admin/PackagePolicy;

.field private final blacklist mProviderFilter:I

.field private final blacklist mServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/app/admin/PackagePolicy;ZI)V
    .registers 6

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mServices:Ljava/util/Map;

    .line 559
    iput-object p1, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mContext:Landroid/content/Context;

    .line 560
    iput-object p2, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mPp:Landroid/app/admin/PackagePolicy;

    .line 561
    iput-boolean p3, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mDisableSystemAppVerificationForTests:Z

    .line 562
    iput p4, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mProviderFilter:I

    .line 563
    return-void
.end method

.method private blacklist addProvider(Landroid/credentials/CredentialProviderInfo;)V
    .registers 5

    .line 613
    nop

    .line 614
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-direct {p0, p1}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->isProviderAllowedWithFilter(Landroid/credentials/CredentialProviderInfo;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 616
    return-void

    .line 619
    :cond_14
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v1

    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->isPackageAllowed(ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 620
    return-void

    .line 623
    :cond_25
    iget-object v1, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mServices:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    return-void
.end method

.method private blacklist isPackageAllowed(ZLjava/lang/String;)Z
    .registers 5

    .line 566
    iget-object v0, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mPp:Landroid/app/admin/PackagePolicy;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 567
    return v1

    .line 570
    :cond_6
    if-eqz p1, :cond_14

    .line 571
    iget-object p1, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mPp:Landroid/app/admin/PackagePolicy;

    invoke-virtual {p1}, Landroid/app/admin/PackagePolicy;->getPolicyType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1

    .line 574
    :cond_14
    iget-object p1, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mPp:Landroid/app/admin/PackagePolicy;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroid/app/admin/PackagePolicy;->isPackageAllowed(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method private blacklist isProviderAllowedWithFilter(Landroid/credentials/CredentialProviderInfo;)Z
    .registers 5

    .line 598
    iget v0, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mProviderFilter:I

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 599
    return v1

    .line 602
    :cond_6
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    .line 603
    iget p1, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mProviderFilter:I

    if-ne p1, v1, :cond_12

    goto :goto_13

    :cond_12
    move v1, v0

    :goto_13
    return v1

    .line 605
    :cond_14
    iget p1, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mProviderFilter:I

    const/4 v2, 0x2

    if-eq p1, v2, :cond_20

    iget p1, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mProviderFilter:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v0

    :cond_20
    :goto_20
    return v1
.end method


# virtual methods
.method public blacklist addSystemProviders(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 590
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/credentials/CredentialProviderInfo;

    .line 591
    invoke-virtual {v0}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 592
    invoke-direct {p0, v0}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->addProvider(Landroid/credentials/CredentialProviderInfo;)V

    .line 594
    :cond_19
    goto :goto_4

    .line 595
    :cond_1a
    return-void
.end method

.method public blacklist addUserProviders(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 582
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/credentials/CredentialProviderInfo;

    .line 583
    invoke-virtual {v0}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v1

    if-nez v1, :cond_19

    .line 584
    invoke-direct {p0, v0}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->addProvider(Landroid/credentials/CredentialProviderInfo;)V

    .line 586
    :cond_19
    goto :goto_4

    .line 587
    :cond_1a
    return-void
.end method

.method public blacklist getProviders()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mServices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
