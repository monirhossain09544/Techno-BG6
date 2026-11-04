.class public Lcom/android/internal/util/ViewCacheData;
.super Ljava/lang/Object;
.source "ViewCacheData.java"


# static fields
.field private static final blacklist FILE_NAME:Ljava/lang/String; = "view-cache-data"

.field private static final blacklist KEY_DEPEND_UI:Ljava/lang/String; = "depend_ui"


# instance fields
.field private final blacklist mCachedData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDependUiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDirty:Z

.field private blacklist mPendingActivity:Ljava/lang/String;

.field private blacklist mPendingBuilder:Ljava/lang/StringBuilder;

.field private final blacklist mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ViewCacheData;->mCachedData:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ViewCacheData;->mPendingBuilder:Ljava/lang/StringBuilder;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ViewCacheData;->mDependUiList:Ljava/util/List;

    .line 40
    const-string v0, "view-cache-data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/ViewCacheData;->mPrefs:Landroid/content/SharedPreferences;

    .line 41
    invoke-direct {p0}, Lcom/android/internal/util/ViewCacheData;->load()V

    .line 42
    return-void
.end method

.method private static blacklist joinIds(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    const/4 v1, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 129
    if-lez v1, :cond_13

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 132
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist load()V
    .registers 5

    .line 45
    iget-object v0, p0, Lcom/android/internal/util/ViewCacheData;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    if-eqz v2, :cond_39

    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    const-string v3, "depend_ui"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 51
    invoke-direct {p0, v2}, Lcom/android/internal/util/ViewCacheData;->parseDependUi(Ljava/lang/String;)V

    goto :goto_39

    .line 53
    :cond_34
    iget-object v3, p0, Lcom/android/internal/util/ViewCacheData;->mCachedData:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_39
    :goto_39
    goto :goto_e

    .line 57
    :cond_3a
    return-void
.end method

.method private blacklist parseDependUi(Ljava/lang/String;)V
    .registers 6

    .line 60
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1e

    aget-object v2, p1, v1

    .line 62
    :try_start_c
    iget-object v3, p0, Lcom/android/internal/util/ViewCacheData;->mDependUiList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_19} :catch_1a

    .line 64
    goto :goto_1b

    .line 63
    :catch_1a
    move-exception v2

    .line 60
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 66
    :cond_1e
    return-void
.end method

.method private static blacklist resolveProcessName()Ljava/lang/String;
    .registers 2

    .line 119
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    :cond_b
    return-object v0

    .line 121
    :catch_c
    move-exception v1

    .line 122
    return-object v0
.end method


# virtual methods
.method public declared-synchronized blacklist getLayoutsForActivity(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/ViewCacheData;->mCachedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_31

    .line 70
    if-nez p1, :cond_e

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_e
    :try_start_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_2f

    aget-object v3, p1, v2
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_31

    .line 74
    :try_start_1f
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_2a} :catch_2b
    .catchall {:try_start_1f .. :try_end_2a} :catchall_31

    .line 76
    goto :goto_2c

    .line 75
    :catch_2b
    move-exception v3

    .line 72
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 78
    :cond_2f
    monitor-exit p0

    return-object v0

    .line 68
    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public declared-synchronized blacklist isValid(I)Z
    .registers 3

    monitor-enter p0

    .line 82
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/ViewCacheData;->mDependUiList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    xor-int/lit8 p1, p1, 0x1

    monitor-exit p0

    return p1

    .line 82
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized blacklist record(I)V
    .registers 4

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/ViewCacheData;->mPendingActivity:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 95
    invoke-static {}, Lcom/android/internal/util/ViewCacheData;->resolveProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/ViewCacheData;->mPendingActivity:Ljava/lang/String;

    .line 97
    :cond_b
    iget-object v0, p0, Lcom/android/internal/util/ViewCacheData;->mPendingBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1a

    .line 98
    iget-object v0, p0, Lcom/android/internal/util/ViewCacheData;->mPendingBuilder:Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/util/ViewCacheData;->mPendingBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/util/ViewCacheData;->mDirty:Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 102
    monitor-exit p0

    return-void

    .line 93
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public declared-synchronized blacklist recordDependUi(I)V
    .registers 4

    monitor-enter p0

    .line 86
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/ViewCacheData;->mDependUiList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 87
    iget-object v0, p0, Lcom/android/internal/util/ViewCacheData;->mDependUiList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p1, p0, Lcom/android/internal/util/ViewCacheData;->mDependUiList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_21

    const-string p1, ""

    goto :goto_27

    :cond_21
    iget-object p1, p0, Lcom/android/internal/util/ViewCacheData;->mDependUiList:Ljava/util/List;

    invoke-static {p1}, Lcom/android/internal/util/ViewCacheData;->joinIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 89
    :goto_27
    iget-object v0, p0, Lcom/android/internal/util/ViewCacheData;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "depend_ui"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 91
    :cond_36
    monitor-exit p0

    return-void

    .line 85
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public declared-synchronized blacklist sync()V
    .registers 4

    monitor-enter p0

    .line 105
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/util/ViewCacheData;->mDirty:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/internal/util/ViewCacheData;->mPendingActivity:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_43

    .line 106
    :cond_a
    iget-object v0, p0, Lcom/android/internal/util/ViewCacheData;->mPendingBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/android/internal/util/ViewCacheData;->mCachedData:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/util/ViewCacheData;->mPendingActivity:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 109
    iget-object v1, p0, Lcom/android/internal/util/ViewCacheData;->mCachedData:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/util/ViewCacheData;->mPendingActivity:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lcom/android/internal/util/ViewCacheData;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/ViewCacheData;->mPendingActivity:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    :cond_36
    iget-object v0, p0, Lcom/android/internal/util/ViewCacheData;->mPendingBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/ViewCacheData;->mPendingActivity:Ljava/lang/String;

    .line 114
    iput-boolean v1, p0, Lcom/android/internal/util/ViewCacheData;->mDirty:Z
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_45

    .line 115
    monitor-exit p0

    return-void

    .line 105
    :cond_43
    :goto_43
    monitor-exit p0

    return-void

    .line 104
    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v0
.end method
