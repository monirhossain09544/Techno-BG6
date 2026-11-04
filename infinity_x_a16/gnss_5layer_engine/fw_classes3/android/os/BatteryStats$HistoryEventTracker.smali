.class public final Landroid/os/BatteryStats$HistoryEventTracker;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryEventTracker"
.end annotation


# instance fields
.field private final greylist-max-o mActiveEvents:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 2222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2223
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public greylist-max-o getStateForEvent(I)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .line 2275
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public greylist-max-o removeEvents(I)V
    .registers 4

    .line 2270
    const v0, -0xc001

    and-int/2addr p1, v0

    .line 2271
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 2272
    return-void
.end method

.method public greylist-max-o updateState(ILjava/lang/String;II)Z
    .registers 8

    .line 2227
    const v0, 0x8000

    and-int/2addr v0, p1

    const v1, -0xc001

    const/4 v2, 0x0

    if-eqz v0, :cond_35

    .line 2228
    and-int/2addr p1, v1

    .line 2229
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    .line 2230
    if-nez v0, :cond_1a

    .line 2231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2232
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aput-object v0, v1, p1

    .line 2234
    :cond_1a
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseIntArray;

    .line 2235
    if-nez p1, :cond_2a

    .line 2236
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 2237
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2239
    :cond_2a
    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_31

    .line 2241
    return v2

    .line 2243
    :cond_31
    invoke-virtual {p1, p3, p4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5e

    .line 2244
    :cond_35
    and-int/lit16 p4, p1, 0x4000

    if-eqz p4, :cond_5e

    .line 2245
    and-int/2addr p1, v1

    .line 2246
    iget-object p4, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object p1, p4, p1

    .line 2247
    if-nez p1, :cond_41

    .line 2249
    return v2

    .line 2251
    :cond_41
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/SparseIntArray;

    .line 2252
    if-nez p4, :cond_4a

    .line 2254
    return v2

    .line 2256
    :cond_4a
    invoke-virtual {p4, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p3

    .line 2257
    if-gez p3, :cond_51

    .line 2259
    return v2

    .line 2261
    :cond_51
    invoke-virtual {p4, p3}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2262
    invoke-virtual {p4}, Landroid/util/SparseIntArray;->size()I

    move-result p3

    if-gtz p3, :cond_5f

    .line 2263
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    .line 2244
    :cond_5e
    :goto_5e
    nop

    .line 2266
    :cond_5f
    :goto_5f
    const/4 p1, 0x1

    return p1
.end method
