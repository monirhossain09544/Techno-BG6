.class public Lcom/android/internal/app/ProcessMap;
.super Ljava/lang/Object;
.source "ProcessMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final blacklist mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 69
    return-void
.end method

.method public blacklist get(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 34
    return-object p1
.end method

.method public blacklist get(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TE;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 28
    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 29
    :cond_c
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getMap()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TE;>;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ITE;)TE;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 39
    if-nez v0, :cond_15

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 41
    iget-object v1, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_15
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    return-object p3
.end method

.method public blacklist putAll(Lcom/android/internal/app/ProcessMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/ProcessMap<",
            "TE;>;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public blacklist remove(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TE;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 49
    if-eqz v0, :cond_1a

    .line 50
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p2

    .line 51
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_19

    .line 52
    iget-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_19
    return-object p2

    .line 56
    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist size()I
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method
