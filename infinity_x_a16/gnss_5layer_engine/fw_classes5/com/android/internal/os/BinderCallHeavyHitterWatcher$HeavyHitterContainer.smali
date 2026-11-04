.class public final Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;
.super Ljava/lang/Object;
.source "BinderCallHeavyHitterWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeavyHitterContainer"
.end annotation


# instance fields
.field public blacklist mClass:Ljava/lang/Class;

.field public blacklist mCode:I

.field public blacklist mFrequency:F

.field public blacklist mUid:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;)V
    .registers 3

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iget v0, p1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mUid:I

    iput v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mUid:I

    .line 185
    iget-object v0, p1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mClass:Ljava/lang/Class;

    .line 186
    iget v0, p1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mCode:I

    iput v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mCode:I

    .line 187
    iget p1, p1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mFrequency:F

    iput p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mFrequency:F

    .line 188
    return-void
.end method

.method static blacklist hashCode(ILjava/lang/Class;I)I
    .registers 3

    .line 209
    nop

    .line 210
    mul-int/lit8 p0, p0, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    .line 211
    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p2

    .line 212
    return p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 192
    const/4 v0, 0x0

    if-eqz p1, :cond_30

    instance-of v1, p1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    if-nez v1, :cond_8

    goto :goto_30

    .line 195
    :cond_8
    check-cast p1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    .line 196
    iget v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mUid:I

    iget v2, p1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mUid:I

    if-ne v1, v2, :cond_2e

    iget-object v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mClass:Ljava/lang/Class;

    iget-object v2, p1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_2e

    iget v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mCode:I

    iget v2, p1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mCode:I

    if-ne v1, v2, :cond_2e

    iget v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mFrequency:F

    iget p1, p1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mFrequency:F

    sub-float/2addr v1, p1

    .line 197
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    nop

    .line 196
    :goto_2f
    return v0

    .line 193
    :cond_30
    :goto_30
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 202
    iget v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mUid:I

    iget-object v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mClass:Ljava/lang/Class;

    iget v2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->hashCode(ILjava/lang/Class;I)I

    move-result v0

    return v0
.end method
