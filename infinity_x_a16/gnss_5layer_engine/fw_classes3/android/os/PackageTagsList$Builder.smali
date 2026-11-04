.class public final Landroid/os/PackageTagsList$Builder;
.super Ljava/lang/Object;
.source "PackageTagsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PackageTagsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mPackageTags:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    .line 286
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    .line 293
    return-void
.end method

.method private static blacklist copy(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 481
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 482
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_29

    .line 483
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 484
    new-instance v4, Landroid/util/ArraySet;

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 485
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 487
    :cond_29
    return-object v1
.end method

.method static synthetic blacklist lambda$add$0(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 1

    .line 300
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method


# virtual methods
.method public blacklist add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;
    .registers 4

    .line 300
    iget-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    new-instance v1, Landroid/os/PackageTagsList$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/os/PackageTagsList$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 301
    return-object p0
.end method

.method public blacklist add(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;
    .registers 5

    .line 309
    iget-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 310
    if-nez v0, :cond_19

    .line 311
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 312
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object p2, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 314
    :cond_19
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_22

    .line 315
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_22
    :goto_22
    return-object p0
.end method

.method public blacklist add(Ljava/lang/String;Ljava/util/Collection;)Landroid/os/PackageTagsList$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/PackageTagsList$Builder;"
        }
    .end annotation

    .line 329
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 331
    return-object p0

    .line 334
    :cond_7
    iget-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 335
    if-nez v0, :cond_1c

    .line 336
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 337
    iget-object p2, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 338
    :cond_1c
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_25

    .line 340
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 343
    :cond_25
    :goto_25
    return-object p0
.end method

.method public greylist addAll(Landroid/os/PackageTagsList;)Landroid/os/PackageTagsList$Builder;
    .registers 2

    .line 350
    invoke-static {p1}, Landroid/os/PackageTagsList;->-$$Nest$fgetmPackageTags(Landroid/os/PackageTagsList;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/PackageTagsList$Builder;->addAll(Ljava/util/Map;)Landroid/os/PackageTagsList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public greylist addAll(Ljava/util/Map;)Landroid/os/PackageTagsList$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/os/PackageTagsList$Builder;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 361
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 362
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 363
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 364
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    goto :goto_3c

    .line 366
    :cond_33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/util/Collection;)Landroid/os/PackageTagsList$Builder;

    .line 368
    :goto_3c
    goto :goto_11

    .line 370
    :cond_3d
    return-object p0
.end method

.method public blacklist build()Landroid/os/PackageTagsList;
    .registers 4

    .line 475
    new-instance v0, Landroid/os/PackageTagsList;

    iget-object v1, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-static {v1}, Landroid/os/PackageTagsList$Builder;->copy(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/PackageTagsList;-><init>(Landroid/util/ArrayMap;Landroid/os/PackageTagsList-IA;)V

    return-object v0
.end method

.method public blacklist clear()Landroid/os/PackageTagsList$Builder;
    .registers 2

    .line 467
    iget-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 468
    return-object p0
.end method

.method public blacklist remove(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;
    .registers 3

    .line 380
    iget-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    return-object p0
.end method

.method public blacklist remove(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;
    .registers 4

    .line 394
    iget-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 395
    if-eqz v0, :cond_1b

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 396
    iget-object p2, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_1b
    return-object p0
.end method

.method public blacklist remove(Ljava/lang/String;Ljava/util/Collection;)Landroid/os/PackageTagsList$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/PackageTagsList$Builder;"
        }
    .end annotation

    .line 411
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 413
    return-object p0

    .line 416
    :cond_7
    iget-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 417
    if-eqz v0, :cond_22

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_22

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_22

    .line 418
    iget-object p2, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_22
    return-object p0
.end method

.method public greylist removeAll(Landroid/os/PackageTagsList;)Landroid/os/PackageTagsList$Builder;
    .registers 2

    .line 433
    invoke-static {p1}, Landroid/os/PackageTagsList;->-$$Nest$fgetmPackageTags(Landroid/os/PackageTagsList;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/PackageTagsList$Builder;->removeAll(Ljava/util/Map;)Landroid/os/PackageTagsList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public greylist removeAll(Ljava/util/Map;)Landroid/os/PackageTagsList$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/os/PackageTagsList$Builder;"
        }
    .end annotation

    .line 448
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 449
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 450
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 452
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/PackageTagsList$Builder;->remove(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    goto :goto_33

    .line 454
    :cond_2a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/PackageTagsList$Builder;->remove(Ljava/lang/String;Ljava/util/Collection;)Landroid/os/PackageTagsList$Builder;

    .line 456
    :goto_33
    goto :goto_8

    .line 458
    :cond_34
    return-object p0
.end method
