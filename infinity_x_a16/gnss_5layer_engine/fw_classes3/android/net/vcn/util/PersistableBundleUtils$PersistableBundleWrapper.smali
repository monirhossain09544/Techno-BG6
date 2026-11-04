.class public Landroid/net/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;
.super Ljava/lang/Object;
.source "PersistableBundleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/util/PersistableBundleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistableBundleWrapper"
.end annotation


# instance fields
.field private final blacklist mBundle:Landroid/os/PersistableBundle;


# direct methods
.method public constructor blacklist <init>(Landroid/os/PersistableBundle;)V
    .registers 3

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    const-string v0, "Bundle was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    iput-object p1, p0, Landroid/net/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    .line 534
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 568
    instance-of v0, p1, Landroid/net/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    if-nez v0, :cond_6

    .line 569
    const/4 p1, 0x0

    return p1

    .line 572
    :cond_6
    check-cast p1, Landroid/net/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 574
    iget-object v0, p0, Landroid/net/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    iget-object p1, p1, Landroid/net/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    invoke-static {v0, p1}, Landroid/net/vcn/util/PersistableBundleUtils;->isEqual(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result p1

    return p1
.end method

.method public blacklist getInt(Ljava/lang/String;I)I
    .registers 4

    .line 544
    iget-object v0, p0, Landroid/net/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public blacklist getIntArray(Ljava/lang/String;[I)[I
    .registers 4

    .line 557
    iget-object v0, p0, Landroid/net/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 558
    if-nez p1, :cond_9

    goto :goto_a

    :cond_9
    move-object p2, p1

    :goto_a
    return-object p2
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 563
    iget-object v0, p0, Landroid/net/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    invoke-static {v0}, Landroid/net/vcn/util/PersistableBundleUtils;->getHashCode(Landroid/os/PersistableBundle;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 579
    iget-object v0, p0, Landroid/net/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
