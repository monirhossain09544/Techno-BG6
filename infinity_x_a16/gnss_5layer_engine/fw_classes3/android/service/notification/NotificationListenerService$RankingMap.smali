.class public Landroid/service/notification/NotificationListenerService$RankingMap;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RankingMap"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotificationListenerService$RankingMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mOrderedKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRankings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/NotificationListenerService$Ranking;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2480
    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$RankingMap$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationListenerService$RankingMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 2442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    .line 2427
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    .line 2443
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2444
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 2445
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 2446
    const/4 v1, 0x0

    :goto_20
    if-ge v1, v0, :cond_38

    .line 2447
    new-instance v2, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v2, p1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>(Landroid/os/Parcel;)V

    .line 2448
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 2449
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2450
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2446
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 2452
    :cond_38
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/notification/NotificationListenerService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>([Landroid/service/notification/NotificationListenerService$Ranking;)V
    .registers 6

    .line 2432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    .line 2427
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    .line 2433
    const/4 v0, 0x0

    :goto_12
    array-length v1, p1

    if-ge v0, v1, :cond_2a

    .line 2434
    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 2435
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2436
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    aget-object v3, p1, v0

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2433
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 2438
    :cond_2a
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2468
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 2456
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2457
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 2459
    :cond_12
    check-cast p1, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 2461
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    .line 2462
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    .line 2461
    :goto_2a
    return v0

    .line 2457
    :cond_2b
    :goto_2b
    return v1
.end method

.method public whitelist getOrderedKeys()[Ljava/lang/String;
    .registers 3

    .line 2499
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z
    .registers 4

    .line 2510
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2511
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p2, p1}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 2512
    const/4 p1, 0x1

    return p1

    .line 2514
    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getRawRankingObject(Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;
    .registers 3

    .line 2523
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/NotificationListenerService$Ranking;

    return-object p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 2473
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2474
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2475
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_20

    .line 2476
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankings:Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOrderedKeys:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2, p1, p2}, Landroid/service/notification/NotificationListenerService$Ranking;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2475
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2478
    :cond_20
    return-void
.end method
