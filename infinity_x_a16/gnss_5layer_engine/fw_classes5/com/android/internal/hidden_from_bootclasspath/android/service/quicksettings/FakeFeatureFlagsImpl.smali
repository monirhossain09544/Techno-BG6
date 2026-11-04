.class public Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FakeFeatureFlagsImpl;
.super Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/CustomFeatureFlags;
.source "FakeFeatureFlagsImpl.java"


# instance fields
.field private final blacklist IS_EXPORTED:Z

.field private final blacklist mDefaults:Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlags;

.field private final blacklist mFlagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FakeFeatureFlagsImpl;-><init>(Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlags;)V

    .line 14
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlags;)V
    .registers 5

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/CustomFeatureFlags;-><init>(Ljava/util/function/BiPredicate;)V

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    .line 10
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FakeFeatureFlagsImpl;->IS_EXPORTED:Z

    .line 18
    iput-object p1, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FakeFeatureFlagsImpl;->mDefaults:Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlags;

    .line 20
    invoke-virtual {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FakeFeatureFlagsImpl;->getFlagNames()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 21
    iget-object v2, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    goto :goto_18

    .line 23
    :cond_2a
    return-void
.end method


# virtual methods
.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 28
    if-eqz v0, :cond_f

    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 31
    :cond_f
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FakeFeatureFlagsImpl;->mDefaults:Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlags;

    if-eqz v0, :cond_1a

    .line 32
    iget-object p1, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FakeFeatureFlagsImpl;->mDefaults:Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlags;

    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 34
    :cond_1a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not set"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public blacklist resetAll()V
    .registers 4

    .line 45
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 46
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    goto :goto_a

    .line 48
    :cond_1b
    return-void
.end method

.method public blacklist setFlag(Ljava/lang/String;Z)V
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FakeFeatureFlagsImpl;->mFlagMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method
