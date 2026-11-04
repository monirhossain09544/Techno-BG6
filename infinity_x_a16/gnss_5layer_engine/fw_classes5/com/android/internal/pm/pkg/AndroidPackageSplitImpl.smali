.class public Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;
.super Ljava/lang/Object;
.source "AndroidPackageSplitImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/AndroidPackageSplit;


# instance fields
.field private final blacklist mClassLoaderName:Ljava/lang/String;

.field private blacklist mDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackageSplit;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFlags:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPath:Ljava/lang/String;

.field private final blacklist mRevisionCode:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 7

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    nop

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    .line 46
    iput-object p1, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    .line 48
    iput p3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    .line 49
    iput p4, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    .line 50
    iput-object p5, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 96
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 97
    :cond_4
    instance-of v1, p1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 98
    :cond_a
    check-cast p1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;

    .line 99
    iget v1, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    iget v3, p1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    if-ne v1, v3, :cond_38

    iget v1, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    iget v3, p1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    if-ne v1, v3, :cond_38

    iget-object v1, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    .line 100
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    .line 101
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    move v1, v0

    goto :goto_39

    :cond_38
    move v1, v2

    .line 103
    :goto_39
    if-nez v1, :cond_3c

    return v2

    .line 104
    :cond_3c
    iget-object v1, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_4b

    return v2

    .line 108
    :cond_4b
    move v1, v2

    :goto_4c
    iget-object v3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_76

    .line 109
    iget-object v3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    .line 110
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getName()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 111
    return v2

    .line 108
    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 115
    :cond_76
    return v0
.end method

.method public blacklist fillDependencies(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackageSplit;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 57
    iput-object p1, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    .line 58
    return-void

    .line 55
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot fill split dependencies more than once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getClassLoaderName()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDependencies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackageSplit;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRevisionCode()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 122
    iget-object v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 123
    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    iget-object v3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3e

    .line 124
    iget-object v3, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getName()Ljava/lang/String;

    move-result-object v3

    .line 125
    mul-int/lit8 v0, v0, 0x1f

    if-nez v3, :cond_36

    move v3, v1

    goto :goto_3a

    :cond_36
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3a
    add-int/2addr v0, v3

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 127
    :cond_3e
    return v0
.end method

.method public blacklist isHasCode()Z
    .registers 2

    .line 79
    iget v0, p0, Lcom/android/internal/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
