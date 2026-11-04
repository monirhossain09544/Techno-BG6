.class public Lcom/android/internal/graphics/palette/Target$Builder;
.super Ljava/lang/Object;
.source "Target.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mTarget:Lcom/android/internal/graphics/palette/Target;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Lcom/android/internal/graphics/palette/Target;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/Target;-><init>()V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    .line 164
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/graphics/palette/Target;)V
    .registers 3

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lcom/android/internal/graphics/palette/Target;

    invoke-direct {v0, p1}, Lcom/android/internal/graphics/palette/Target;-><init>(Lcom/android/internal/graphics/palette/Target;)V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    .line 169
    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/graphics/palette/Target;
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    return-object v0
.end method

.method public blacklist setChromaWeight(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmChromaWeight(Lcom/android/internal/graphics/palette/Target;F)V

    .line 247
    return-object p0
.end method

.method public blacklist setContrastRatio(FF)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 5

    .line 221
    nop

    .line 222
    invoke-static {p2}, Lcom/android/internal/graphics/palette/Contrast;->yToLstar(F)F

    move-result v0

    .line 225
    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_10

    .line 226
    invoke-static {p2, p1}, Lcom/android/internal/graphics/palette/Contrast;->lighterY(FF)F

    move-result p1

    goto :goto_14

    .line 228
    :cond_10
    invoke-static {p2, p1}, Lcom/android/internal/graphics/palette/Contrast;->darkerY(FF)F

    move-result p1

    .line 230
    :goto_14
    iget-object p2, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {p2, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmTargetRelativeLuminance(Lcom/android/internal/graphics/palette/Target;F)V

    .line 231
    return-object p0
.end method

.method public blacklist setLightnessWeight(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmRelativeLuminanceWeight(Lcom/android/internal/graphics/palette/Target;F)V

    .line 263
    return-object p0
.end method

.method public blacklist setMaximumChroma(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmChromaMax(Lcom/android/internal/graphics/palette/Target;F)V

    .line 189
    return-object p0
.end method

.method public blacklist setMinimumChroma(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmChromaMin(Lcom/android/internal/graphics/palette/Target;F)V

    .line 175
    return-object p0
.end method

.method public blacklist setPopulationWeight(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3

    .line 279
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmPopulationWeight(Lcom/android/internal/graphics/palette/Target;F)V

    .line 280
    return-object p0
.end method

.method public blacklist setTargetChroma(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmChromaTarget(Lcom/android/internal/graphics/palette/Target;F)V

    .line 182
    return-object p0
.end method

.method public blacklist setTargetHue(I)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmTargetHue(Lcom/android/internal/graphics/palette/Target;F)V

    .line 213
    return-object p0
.end method

.method public blacklist setTargetPerceptualLuminance(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {p1}, Lcom/android/internal/graphics/palette/Contrast;->lstarToY(F)F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmTargetRelativeLuminance(Lcom/android/internal/graphics/palette/Target;F)V

    .line 203
    return-object p0
.end method

.method public blacklist setTargetRelativeLuminance(F)Lcom/android/internal/graphics/palette/Target$Builder;
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Target$Builder;->mTarget:Lcom/android/internal/graphics/palette/Target;

    invoke-static {v0, p1}, Lcom/android/internal/graphics/palette/Target;->-$$Nest$fputmTargetRelativeLuminance(Lcom/android/internal/graphics/palette/Target;F)V

    .line 196
    return-object p0
.end method
