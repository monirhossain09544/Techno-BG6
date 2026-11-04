.class public final Landroid/os/VibrationEffect$BasicEnvelopeBuilder;
.super Ljava/lang/Object;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BasicEnvelopeBuilder"
.end annotation


# instance fields
.field private blacklist mLastIntensity:F

.field private blacklist mLastSharpness:F

.field private blacklist mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/vibrator/BasicPwleSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 2076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2072
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mSegments:Ljava/util/ArrayList;

    .line 2073
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mLastIntensity:F

    .line 2074
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mLastSharpness:F

    .line 2076
    return-void
.end method


# virtual methods
.method public whitelist addControlPoint(FFJ)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;
    .registers 13

    .line 2139
    iget v0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mLastSharpness:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2140
    iput p2, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mLastSharpness:F

    .line 2143
    :cond_a
    iget-object v0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mSegments:Ljava/util/ArrayList;

    new-instance v1, Landroid/os/vibrator/BasicPwleSegment;

    iget v2, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mLastIntensity:F

    iget v4, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mLastSharpness:F

    move v3, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Landroid/os/vibrator/BasicPwleSegment;-><init>(FFFFJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2146
    iput v3, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mLastIntensity:F

    .line 2147
    iput v5, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mLastSharpness:F

    .line 2149
    return-object p0
.end method

.method public whitelist build()Landroid/os/VibrationEffect;
    .registers 4

    .line 2165
    iget-object v0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2169
    iget-object v0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/BasicPwleSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/BasicPwleSegment;->getEndIntensity()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_25

    .line 2173
    new-instance v0, Landroid/os/VibrationEffect$Composed;

    iget-object v1, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mSegments:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 2174
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 2175
    return-object v0

    .line 2170
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Basic envelope effects must end at a zero intensity control point."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2166
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BasicEnvelopeBuilder must have at least one control point to build."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setInitialSharpness(F)Landroid/os/VibrationEffect$BasicEnvelopeBuilder;
    .registers 11

    .line 2096
    iget-object v0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2097
    iput p1, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mLastSharpness:F

    goto :goto_2f

    .line 2099
    :cond_b
    iget-object v0, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/BasicPwleSegment;

    .line 2100
    iget-object v1, p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->mSegments:Ljava/util/ArrayList;

    new-instance v2, Landroid/os/vibrator/BasicPwleSegment;

    .line 2101
    invoke-virtual {v0}, Landroid/os/vibrator/BasicPwleSegment;->getStartIntensity()F

    move-result v3

    .line 2102
    invoke-virtual {v0}, Landroid/os/vibrator/BasicPwleSegment;->getEndIntensity()F

    move-result v4

    .line 2104
    invoke-virtual {v0}, Landroid/os/vibrator/BasicPwleSegment;->getEndSharpness()F

    move-result v6

    .line 2105
    invoke-virtual {v0}, Landroid/os/vibrator/BasicPwleSegment;->getDuration()J

    move-result-wide v7

    move v5, p1

    invoke-direct/range {v2 .. v8}, Landroid/os/vibrator/BasicPwleSegment;-><init>(FFFFJ)V

    .line 2100
    const/4 p1, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2108
    :goto_2f
    return-object p0
.end method
