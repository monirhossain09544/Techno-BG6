.class public final Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;
.super Ljava/lang/Object;
.source "HeavyHitterSketch.java"

# interfaces
.implements Lcom/android/internal/util/HeavyHitterSketch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/HeavyHitterSketch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeavyHitterSketchImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/HeavyHitterSketch<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private blacklist mCapacity:I

.field private blacklist mConfigured:Z

.field private final blacklist mFrequencies:Landroid/util/SparseIntArray;

.field private blacklist mNumInputs:I

.field private final blacklist mObjects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field private blacklist mPassSize:I

.field private blacklist mTotalSize:I


# direct methods
.method public static synthetic blacklist $r8$lambda$cSRjAKo9UBAVkHgOe5EyIyRVp5Q(Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->lambda$getTopHeavyHitters$0(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    .line 119
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    return-void
.end method

.method private blacklist addToMGSummary(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_8
    move v1, v0

    .line 194
    :goto_9
    iget-object v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 196
    const/4 v3, 0x1

    if-ltz v2, :cond_1f

    .line 197
    iget-object p1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_5a

    .line 198
    :cond_1f
    iget-object v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    iget v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mCapacity:I

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_35

    .line 199
    iget-object v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    iget-object p1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5a

    .line 202
    :cond_35
    iget-object p1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_3c
    if-ltz p1, :cond_5a

    .line 203
    iget-object v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    sub-int/2addr v1, v3

    .line 204
    if-nez v1, :cond_52

    .line 205
    iget-object v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 206
    iget-object v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_57

    .line 208
    :cond_52
    iget-object v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 202
    :goto_57
    add-int/lit8 p1, p1, -0x1

    goto :goto_3c

    .line 212
    :cond_5a
    :goto_5a
    iget p1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    iget v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mPassSize:I

    if-ne p1, v1, :cond_74

    .line 214
    iget-object p1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_6a
    if-ltz p1, :cond_74

    .line 215
    iget-object v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 214
    add-int/lit8 p1, p1, -0x1

    goto :goto_6a

    .line 218
    :cond_74
    return-void
.end method

.method private synthetic blacklist lambda$getTopHeavyHitters$0(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method private blacklist validate(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 225
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 226
    :goto_8
    iget-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    .line 227
    if-ltz p1, :cond_1d

    .line 228
    iget-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 230
    :cond_1d
    iget p1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    iget v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mTotalSize:I

    if-ne p1, v0, :cond_4b

    .line 231
    iget p1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mPassSize:I

    iget v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mCapacity:I

    div-int/2addr p1, v0

    .line 233
    iget-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_34
    if-ltz v0, :cond_4b

    .line 234
    iget-object v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 235
    if-ge v1, p1, :cond_48

    .line 236
    iget-object v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 237
    iget-object v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 233
    :cond_48
    add-int/lit8 v0, v0, -0x1

    goto :goto_34

    .line 241
    :cond_4b
    return-void
.end method


# virtual methods
.method public blacklist add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 172
    iget-boolean v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mConfigured:Z

    if-eqz v0, :cond_18

    .line 175
    iget v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    iget v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mPassSize:I

    if-ge v0, v1, :cond_e

    .line 176
    invoke-direct {p0, p1}, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->addToMGSummary(Ljava/lang/Object;)V

    goto :goto_17

    .line 177
    :cond_e
    iget v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    iget v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mTotalSize:I

    if-ge v0, v1, :cond_17

    .line 179
    invoke-direct {p0, p1}, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->validate(Ljava/lang/Object;)V

    .line 181
    :cond_17
    :goto_17
    return-void

    .line 173
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public blacklist getCandidates(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 306
    iget-boolean v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mConfigured:Z

    if-eqz v0, :cond_2d

    .line 309
    iget v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    iget v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mPassSize:I

    if-ge v0, v1, :cond_c

    .line 311
    const/4 p1, 0x0

    return-object p1

    .line 314
    :cond_c
    if-eqz p1, :cond_f

    goto :goto_14

    :cond_f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 315
    :goto_14
    iget-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1c
    if-ltz v0, :cond_2c

    .line 316
    iget-object v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 317
    if-eqz v1, :cond_29

    .line 318
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 321
    :cond_2c
    return-object p1

    .line 307
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public blacklist getRequiredValidationInputRatio()F
    .registers 2

    .line 339
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public blacklist getTopHeavyHitters(ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 255
    iget-boolean v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mConfigured:Z

    if-eqz v0, :cond_91

    .line 259
    iget v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mCapacity:I

    if-ge p1, v0, :cond_8b

    .line 263
    iget v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    iget v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mTotalSize:I

    if-lt v0, v1, :cond_85

    .line 268
    nop

    .line 269
    iget-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_19
    if-ltz v0, :cond_34

    .line 270
    iget-object v3, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 271
    if-lez v3, :cond_31

    .line 272
    if-nez v2, :cond_2a

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 275
    :cond_2a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 278
    :cond_34
    if-nez v2, :cond_37

    .line 279
    return-object v1

    .line 282
    :cond_37
    new-instance v0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 284
    if-eqz p2, :cond_42

    goto :goto_47

    :cond_42
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 285
    :goto_47
    if-nez p1, :cond_4d

    iget p1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mCapacity:I

    add-int/lit8 p1, p1, -0x1

    :cond_4d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 286
    const/4 v0, 0x0

    :goto_56
    if-ge v0, p1, :cond_84

    .line 287
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 288
    iget-object v3, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 289
    if-eqz v3, :cond_81

    .line 290
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    if-eqz p3, :cond_81

    .line 292
    iget-object v3, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mPassSize:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 296
    :cond_84
    return-object p2

    .line 265
    :cond_85
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 260
    :cond_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 256
    :cond_91
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public blacklist reset()V
    .registers 2

    .line 329
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    .line 330
    iget-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 331
    iget-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 332
    return-void
.end method

.method public blacklist setConfig(II)V
    .registers 4

    .line 154
    if-lt p1, p2, :cond_12

    const/4 v0, 0x1

    if-le p1, v0, :cond_12

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->reset()V

    .line 159
    iput p1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mTotalSize:I

    .line 160
    shr-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mPassSize:I

    .line 161
    iput p2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mCapacity:I

    .line 162
    iput-boolean v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mConfigured:Z

    .line 163
    return-void

    .line 155
    :cond_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mConfigured:Z

    .line 156
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
