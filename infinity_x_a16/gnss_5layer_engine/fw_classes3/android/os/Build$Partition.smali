.class public Landroid/os/Build$Partition;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Partition"
.end annotation


# static fields
.field public static final blacklist PARTITION_NAME_BOOTIMAGE:Ljava/lang/String; = "bootimage"

.field public static final blacklist PARTITION_NAME_ODM:Ljava/lang/String; = "odm"

.field public static final blacklist PARTITION_NAME_OEM:Ljava/lang/String; = "oem"

.field public static final blacklist PARTITION_NAME_PRODUCT:Ljava/lang/String; = "product"

.field public static final whitelist PARTITION_NAME_SYSTEM:Ljava/lang/String; = "system"

.field public static final blacklist PARTITION_NAME_SYSTEM_EXT:Ljava/lang/String; = "system_ext"

.field public static final blacklist PARTITION_NAME_VENDOR:Ljava/lang/String; = "vendor"


# instance fields
.field private final blacklist mFingerprint:Ljava/lang/String;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mTimeMs:J


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    .line 1806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1807
    iput-object p1, p0, Landroid/os/Build$Partition;->mName:Ljava/lang/String;

    .line 1808
    iput-object p2, p0, Landroid/os/Build$Partition;->mFingerprint:Ljava/lang/String;

    .line 1809
    iput-wide p3, p0, Landroid/os/Build$Partition;->mTimeMs:J

    .line 1810
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Build-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/Build$Partition;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1831
    instance-of v0, p1, Landroid/os/Build$Partition;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1832
    return v1

    .line 1834
    :cond_6
    check-cast p1, Landroid/os/Build$Partition;

    .line 1835
    iget-object v0, p0, Landroid/os/Build$Partition;->mName:Ljava/lang/String;

    iget-object v2, p1, Landroid/os/Build$Partition;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/os/Build$Partition;->mFingerprint:Ljava/lang/String;

    iget-object v2, p1, Landroid/os/Build$Partition;->mFingerprint:Ljava/lang/String;

    .line 1836
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-wide v2, p0, Landroid/os/Build$Partition;->mTimeMs:J

    iget-wide v4, p1, Landroid/os/Build$Partition;->mTimeMs:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    nop

    .line 1835
    :goto_27
    return v1
.end method

.method public whitelist getBuildTimeMillis()J
    .registers 3

    .line 1826
    iget-wide v0, p0, Landroid/os/Build$Partition;->mTimeMs:J

    return-wide v0
.end method

.method public whitelist getFingerprint()Ljava/lang/String;
    .registers 2

    .line 1821
    iget-object v0, p0, Landroid/os/Build$Partition;->mFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 1815
    iget-object v0, p0, Landroid/os/Build$Partition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1842
    iget-object v0, p0, Landroid/os/Build$Partition;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/os/Build$Partition;->mFingerprint:Ljava/lang/String;

    iget-wide v2, p0, Landroid/os/Build$Partition;->mTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
