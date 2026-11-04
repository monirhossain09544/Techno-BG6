.class public final Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;
.super Ljava/lang/Object;
.source "IoOveruseConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppCategorySpecificThresholds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/tv/watchdogmanager/PerStateBytes;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mComponentLevelThresholds:Landroid/media/tv/watchdogmanager/PerStateBytes;

.field private blacklist mPackageSpecificThresholds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/tv/watchdogmanager/PerStateBytes;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSystemWideThresholds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/media/tv/watchdogmanager/PerStateBytes;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/tv/watchdogmanager/PerStateBytes;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/tv/watchdogmanager/PerStateBytes;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/tv/watchdogmanager/PerStateBytes;",
            ">;",
            "Ljava/util/List<",
            "Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;",
            ">;)V"
        }
    .end annotation

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    .line 252
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mComponentLevelThresholds:Landroid/media/tv/watchdogmanager/PerStateBytes;

    .line 253
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mComponentLevelThresholds:Landroid/media/tv/watchdogmanager/PerStateBytes;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 254
    iput-object p2, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mPackageSpecificThresholds:Ljava/util/Map;

    .line 255
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mPackageSpecificThresholds:Ljava/util/Map;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 256
    iput-object p3, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mAppCategorySpecificThresholds:Ljava/util/Map;

    .line 257
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mAppCategorySpecificThresholds:Ljava/util/Map;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 258
    iput-object p4, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mSystemWideThresholds:Ljava/util/List;

    .line 259
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mSystemWideThresholds:Ljava/util/List;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 375
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 379
    return-void

    .line 376
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist addAppCategorySpecificThresholds(Ljava/lang/String;Landroid/media/tv/watchdogmanager/PerStateBytes;)Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;
    .registers 4

    .line 331
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mAppCategorySpecificThresholds:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 332
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, v0}, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->setAppCategorySpecificThresholds(Ljava/util/Map;)Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;

    .line 334
    :cond_c
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mAppCategorySpecificThresholds:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    return-object p0
.end method

.method public blacklist addPackageSpecificThresholds(Ljava/lang/String;Landroid/media/tv/watchdogmanager/PerStateBytes;)Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;
    .registers 4

    .line 300
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mPackageSpecificThresholds:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 301
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, v0}, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->setPackageSpecificThresholds(Ljava/util/Map;)Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;

    .line 303
    :cond_c
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mPackageSpecificThresholds:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    return-object p0
.end method

.method public blacklist addSystemWideThresholds(Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;)Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;
    .registers 3

    .line 355
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mSystemWideThresholds:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->setSystemWideThresholds(Ljava/util/List;)Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;

    .line 356
    :cond_c
    iget-object v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mSystemWideThresholds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    return-object p0
.end method

.method public blacklist build()Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;
    .registers 6

    .line 362
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->checkNotUsed()V

    .line 363
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    .line 365
    new-instance v0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mComponentLevelThresholds:Landroid/media/tv/watchdogmanager/PerStateBytes;

    iget-object v2, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mPackageSpecificThresholds:Ljava/util/Map;

    iget-object v3, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mAppCategorySpecificThresholds:Ljava/util/Map;

    iget-object v4, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mSystemWideThresholds:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration;-><init>(Landroid/media/tv/watchdogmanager/PerStateBytes;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    .line 371
    return-object v0
.end method

.method public blacklist setAppCategorySpecificThresholds(Ljava/util/Map;)Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/tv/watchdogmanager/PerStateBytes;",
            ">;)",
            "Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;"
        }
    .end annotation

    .line 320
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->checkNotUsed()V

    .line 321
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    .line 322
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mAppCategorySpecificThresholds:Ljava/util/Map;

    .line 323
    return-object p0
.end method

.method public blacklist setComponentLevelThresholds(Landroid/media/tv/watchdogmanager/PerStateBytes;)Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;
    .registers 6

    .line 270
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->checkNotUsed()V

    .line 271
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    .line 272
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mComponentLevelThresholds:Landroid/media/tv/watchdogmanager/PerStateBytes;

    .line 273
    return-object p0
.end method

.method public blacklist setPackageSpecificThresholds(Ljava/util/Map;)Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/tv/watchdogmanager/PerStateBytes;",
            ">;)",
            "Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;"
        }
    .end annotation

    .line 289
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->checkNotUsed()V

    .line 290
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    .line 291
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mPackageSpecificThresholds:Ljava/util/Map;

    .line 292
    return-object p0
.end method

.method public blacklist setSystemWideThresholds(Ljava/util/List;)Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/watchdogmanager/IoOveruseAlertThreshold;",
            ">;)",
            "Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;"
        }
    .end annotation

    .line 345
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->checkNotUsed()V

    .line 346
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mBuilderFieldsSet:J

    .line 347
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/IoOveruseConfiguration$Builder;->mSystemWideThresholds:Ljava/util/List;

    .line 348
    return-object p0
.end method
