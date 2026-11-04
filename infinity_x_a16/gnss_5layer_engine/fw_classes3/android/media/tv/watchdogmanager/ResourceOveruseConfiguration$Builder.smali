.class public final Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;
.super Ljava/lang/Object;
.source "ResourceOveruseConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mComponentType:I

.field private blacklist mIoOveruseConfiguration:Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;

.field private blacklist mPackagesToAppCategoryTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSafeToKillPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVendorPackagePrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(ILjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    .line 366
    iput p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mComponentType:I

    .line 368
    iget p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mComponentType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_58

    iget p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mComponentType:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_58

    iget p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mComponentType:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_19

    goto :goto_58

    .line 371
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "componentType was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mComponentType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " but must be one of: COMPONENT_TYPE_SYSTEM("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "), COMPONENT_TYPE_VENDOR("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "), COMPONENT_TYPE_THIRD_PARTY("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 386
    :cond_58
    :goto_58
    iput-object p2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mSafeToKillPackages:Ljava/util/List;

    .line 387
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mSafeToKillPackages:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 388
    iput-object p3, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mVendorPackagePrefixes:Ljava/util/List;

    .line 389
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mVendorPackagePrefixes:Ljava/util/List;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 390
    iput-object p4, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mPackagesToAppCategoryTypes:Ljava/util/Map;

    .line 391
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mPackagesToAppCategoryTypes:Ljava/util/Map;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 392
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 516
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 520
    return-void

    .line 517
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist addPackagesToAppCategoryTypes(Ljava/lang/String;Ljava/lang/String;)Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;
    .registers 4

    .line 479
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mPackagesToAppCategoryTypes:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 480
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, v0}, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->setPackagesToAppCategoryTypes(Ljava/util/Map;)Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;

    .line 482
    :cond_c
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mPackagesToAppCategoryTypes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    return-object p0
.end method

.method public blacklist addSafeToKillPackages(Ljava/lang/String;)Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;
    .registers 3

    .line 423
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mSafeToKillPackages:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->setSafeToKillPackages(Ljava/util/List;)Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;

    .line 424
    :cond_c
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mSafeToKillPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    return-object p0
.end method

.method public blacklist addVendorPackagePrefixes(Ljava/lang/String;)Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;
    .registers 3

    .line 449
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mVendorPackagePrefixes:Ljava/util/List;

    if-nez v0, :cond_c

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->setVendorPackagePrefixes(Ljava/util/List;)Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;

    .line 452
    :cond_c
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mVendorPackagePrefixes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    return-object p0
.end method

.method public blacklist build()Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;
    .registers 8

    .line 499
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->checkNotUsed()V

    .line 500
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    .line 502
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mIoOveruseConfiguration:Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;

    .line 505
    :cond_18
    new-instance v1, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;

    iget v2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mComponentType:I

    iget-object v3, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mSafeToKillPackages:Ljava/util/List;

    iget-object v4, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mVendorPackagePrefixes:Ljava/util/List;

    iget-object v5, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mPackagesToAppCategoryTypes:Ljava/util/Map;

    iget-object v6, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mIoOveruseConfiguration:Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;

    invoke-direct/range {v1 .. v6}, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/Map;Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;)V

    .line 512
    return-object v1
.end method

.method public blacklist setComponentType(I)Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;
    .registers 6

    .line 396
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->checkNotUsed()V

    .line 397
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    .line 398
    iput p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mComponentType:I

    .line 399
    return-object p0
.end method

.method public blacklist setIoOveruseConfiguration(Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;)Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;
    .registers 6

    .line 491
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->checkNotUsed()V

    .line 492
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    .line 493
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mIoOveruseConfiguration:Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;

    .line 494
    return-object p0
.end method

.method public blacklist setPackagesToAppCategoryTypes(Ljava/util/Map;)Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;"
        }
    .end annotation

    .line 468
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->checkNotUsed()V

    .line 469
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    .line 470
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mPackagesToAppCategoryTypes:Ljava/util/Map;

    .line 471
    return-object p0
.end method

.method public blacklist setSafeToKillPackages(Ljava/util/List;)Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;"
        }
    .end annotation

    .line 413
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->checkNotUsed()V

    .line 414
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    .line 415
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mSafeToKillPackages:Ljava/util/List;

    .line 416
    return-object p0
.end method

.method public blacklist setVendorPackagePrefixes(Ljava/util/List;)Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;"
        }
    .end annotation

    .line 439
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->checkNotUsed()V

    .line 440
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    .line 441
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration$Builder;->mVendorPackagePrefixes:Ljava/util/List;

    .line 442
    return-object p0
.end method
