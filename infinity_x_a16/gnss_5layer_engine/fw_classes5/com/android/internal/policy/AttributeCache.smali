.class public final Lcom/android/internal/policy/AttributeCache;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/AttributeCache$PackageMonitor;,
        Lcom/android/internal/policy/AttributeCache$Package;,
        Lcom/android/internal/policy/AttributeCache$Entry;
    }
.end annotation


# static fields
.field private static final blacklist CACHE_SIZE:I = 0x4

.field private static blacklist sInstance:Lcom/android/internal/policy/AttributeCache;


# instance fields
.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mPackageMonitor:Lcom/android/internal/policy/AttributeCache$PackageMonitor;

.field private final blacklist mPackages:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/android/internal/policy/AttributeCache$Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/AttributeCache;->sInstance:Lcom/android/internal/policy/AttributeCache;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/AttributeCache;->mPackages:Landroid/util/LruCache;

    .line 52
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    .line 121
    iput-object p1, p0, Lcom/android/internal/policy/AttributeCache;->mContext:Landroid/content/Context;

    .line 122
    return-void
.end method

.method public static blacklist init(Landroid/content/Context;)V
    .registers 2

    .line 83
    sget-object v0, Lcom/android/internal/policy/AttributeCache;->sInstance:Lcom/android/internal/policy/AttributeCache;

    if-nez v0, :cond_b

    .line 84
    new-instance v0, Lcom/android/internal/policy/AttributeCache;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/AttributeCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/AttributeCache;->sInstance:Lcom/android/internal/policy/AttributeCache;

    .line 86
    :cond_b
    return-void
.end method

.method public static blacklist instance()Lcom/android/internal/policy/AttributeCache;
    .registers 1

    .line 117
    sget-object v0, Lcom/android/internal/policy/AttributeCache;->sInstance:Lcom/android/internal/policy/AttributeCache;

    return-object v0
.end method


# virtual methods
.method public blacklist get(Ljava/lang/String;I[I)Lcom/android/internal/policy/AttributeCache$Entry;
    .registers 5

    .line 156
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(Ljava/lang/String;I[II)Lcom/android/internal/policy/AttributeCache$Entry;
    .registers 8

    .line 160
    monitor-enter p0

    .line 161
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/AttributeCache$Package;

    .line 162
    nop

    .line 163
    nop

    .line 164
    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 165
    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache$Package;->-$$Nest$fgetmMap(Lcom/android/internal/policy/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 166
    if-eqz p1, :cond_40

    .line 167
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/policy/AttributeCache$Entry;

    .line 168
    if-eqz p4, :cond_40

    .line 169
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_67

    return-object p4

    .line 175
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/android/internal/policy/AttributeCache;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p4}, Landroid/os/UserHandle;-><init>(I)V

    const/4 p4, 0x0

    invoke-virtual {v0, p1, p4, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p4
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_30} :catch_64
    .catchall {:try_start_24 .. :try_end_30} :catchall_67

    .line 177
    if-nez p4, :cond_34

    .line 178
    :try_start_32
    monitor-exit p0

    return-object v1

    .line 182
    :cond_34
    nop

    .line 183
    new-instance v0, Lcom/android/internal/policy/AttributeCache$Package;

    invoke-direct {v0, p4}, Lcom/android/internal/policy/AttributeCache$Package;-><init>(Landroid/content/Context;)V

    .line 184
    iget-object p4, p0, Lcom/android/internal/policy/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {p4, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    .line 187
    :cond_40
    if-nez p1, :cond_4e

    .line 188
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 189
    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache$Package;->-$$Nest$fgetmMap(Lcom/android/internal/policy/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object p4

    invoke-virtual {p4, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_32 .. :try_end_4e} :catchall_67

    .line 193
    :cond_4e
    :try_start_4e
    new-instance p4, Lcom/android/internal/policy/AttributeCache$Entry;

    iget-object v2, v0, Lcom/android/internal/policy/AttributeCache$Package;->context:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/internal/policy/AttributeCache$Package;->context:Landroid/content/Context;

    .line 194
    invoke-virtual {v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {p4, v2, p2}, Lcom/android/internal/policy/AttributeCache$Entry;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 195
    invoke-virtual {p1, p3, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4e .. :try_end_5e} :catch_61
    .catchall {:try_start_4e .. :try_end_5e} :catchall_67

    .line 198
    nop

    .line 200
    :try_start_5f
    monitor-exit p0

    return-object p4

    .line 196
    :catch_61
    move-exception p1

    .line 197
    monitor-exit p0

    return-object v1

    .line 180
    :catch_64
    move-exception p1

    .line 181
    monitor-exit p0

    return-object v1

    .line 201
    :catchall_67
    move-exception p1

    monitor-exit p0
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_67

    throw p1
.end method

.method blacklist monitorPackageRemove(Landroid/os/Handler;)V
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/android/internal/policy/AttributeCache;->mPackageMonitor:Lcom/android/internal/policy/AttributeCache$PackageMonitor;

    if-nez v0, :cond_d

    .line 93
    new-instance v0, Lcom/android/internal/policy/AttributeCache$PackageMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/AttributeCache;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/policy/AttributeCache$PackageMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/AttributeCache;->mPackageMonitor:Lcom/android/internal/policy/AttributeCache$PackageMonitor;

    .line 95
    :cond_d
    return-void
.end method

.method public blacklist removePackage(Ljava/lang/String;)V
    .registers 7

    .line 125
    monitor-enter p0

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/policy/AttributeCache$Package;

    .line 127
    if-eqz p1, :cond_40

    .line 128
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    invoke-static {p1}, Lcom/android/internal/policy/AttributeCache$Package;->-$$Nest$fgetmMap(Lcom/android/internal/policy/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 129
    invoke-static {p1}, Lcom/android/internal/policy/AttributeCache$Package;->-$$Nest$fgetmMap(Lcom/android/internal/policy/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 130
    move v3, v0

    :goto_22
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 131
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/AttributeCache$Entry;

    invoke-virtual {v4}, Lcom/android/internal/policy/AttributeCache$Entry;->recycle()V

    .line 130
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 128
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 135
    :cond_37
    iget-object p1, p1, Lcom/android/internal/policy/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 138
    :cond_40
    monitor-exit p0

    .line 139
    return-void

    .line 138
    :catchall_42
    move-exception p1

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public blacklist updateConfiguration(Landroid/content/res/Configuration;)V
    .registers 3

    .line 142
    monitor-enter p0

    .line 143
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    .line 144
    const v0, -0x400000a1    # -1.9999808f

    and-int/2addr p1, v0

    if-eqz p1, :cond_12

    .line 150
    iget-object p1, p0, Lcom/android/internal/policy/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    .line 152
    :cond_12
    monitor-exit p0

    .line 153
    return-void

    .line 152
    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw p1
.end method
