.class public Lcom/android/internal/app/NoOpResolverComparator;
.super Lcom/android/internal/app/AbstractResolverComparator;
.source "NoOpResolverComparator.java"


# instance fields
.field private blacklist mOriginalTargetOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$eoxt2xcpejfl-MnYdiDWClu0264(Lcom/android/internal/app/NoOpResolverComparator;Landroid/content/pm/ResolveInfo;)D
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/NoOpResolverComparator;->lambda$compare$0(Landroid/content/pm/ResolveInfo;)D

    move-result-wide p0

    return-wide p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AbstractResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    .line 42
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/app/NoOpResolverComparator;->mOriginalTargetOrder:Ljava/util/List;

    .line 50
    return-void
.end method

.method private synthetic blacklist lambda$compare$0(Landroid/content/pm/ResolveInfo;)D
    .registers 4

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/app/NoOpResolverComparator;->getScore(Landroid/content/pm/ResolveInfo;)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method


# virtual methods
.method public blacklist compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 4

    .line 63
    new-instance v0, Lcom/android/internal/app/NoOpResolverComparator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/app/NoOpResolverComparator$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/NoOpResolverComparator;)V

    invoke-static {v0}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    .line 65
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public blacklist doCompute(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/NoOpResolverComparator;->mOriginalTargetOrder:Ljava/util/List;

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 56
    iget-object v1, p0, Lcom/android/internal/app/NoOpResolverComparator;->mOriginalTargetOrder:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    goto :goto_b

    .line 58
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/app/NoOpResolverComparator;->afterCompute()V

    .line 59
    return-void
.end method

.method public blacklist getScore(Landroid/content/pm/ResolveInfo;)F
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/android/internal/app/NoOpResolverComparator;->mOriginalTargetOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 79
    const/4 p1, 0x0

    return p1

    .line 85
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/NoOpResolverComparator;->mOriginalTargetOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    int-to-float p1, p1

    .line 86
    iget-object v0, p0, Lcom/android/internal/app/NoOpResolverComparator;->mOriginalTargetOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    return v0
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/TargetInfo;)F
    .registers 2

    .line 70
    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/NoOpResolverComparator;->getScore(Landroid/content/pm/ResolveInfo;)F

    move-result p1

    return p1
.end method

.method public blacklist handleResultMessage(Landroid/os/Message;)V
    .registers 2

    .line 74
    return-void
.end method
