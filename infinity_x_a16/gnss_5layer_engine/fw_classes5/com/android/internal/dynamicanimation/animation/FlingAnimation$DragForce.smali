.class final Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;
.super Ljava/lang/Object;
.source "FlingAnimation.java"

# interfaces
.implements Lcom/android/internal/dynamicanimation/animation/Force;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/dynamicanimation/animation/FlingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DragForce"
.end annotation


# static fields
.field private static final blacklist DEFAULT_FRICTION:F = -4.2f

.field private static final blacklist VELOCITY_THRESHOLD_MULTIPLIER:F = 62.5f


# instance fields
.field private blacklist mFriction:F

.field private final blacklist mMassState:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

.field private blacklist mVelocityThreshold:F


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const v0, -0x3f79999a    # -4.2f

    iput v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 174
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/dynamicanimation/animation/FlingAnimation-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAcceleration(FF)F
    .registers 3

    .line 192
    iget p1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    mul-float/2addr p2, p1

    return p2
.end method

.method blacklist getFrictionScalar()F
    .registers 3

    .line 179
    iget v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    const v1, -0x3f79999a    # -4.2f

    div-float/2addr v0, v1

    return v0
.end method

.method public blacklist isAtEquilibrium(FF)Z
    .registers 3

    .line 196
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method blacklist setFrictionScalar(F)V
    .registers 3

    .line 176
    const v0, -0x3f79999a    # -4.2f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    .line 177
    return-void
.end method

.method blacklist setValueThreshold(F)V
    .registers 3

    .line 199
    const/high16 v0, 0x427a0000    # 62.5f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mVelocityThreshold:F

    .line 200
    return-void
.end method

.method blacklist updateValueAndVelocity(FFJ)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;
    .registers 10

    .line 182
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    float-to-double v1, p2

    long-to-float p3, p3

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float v3, p3, p4

    iget v4, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 183
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    iget v1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    div-float v1, p2, v1

    sub-float/2addr p1, v1

    float-to-double v1, p1

    iget p1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    div-float/2addr p2, p1

    float-to-double p1, p2

    iget v3, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mFriction:F

    mul-float/2addr v3, p3

    div-float/2addr v3, p4

    float-to-double p3, v3

    .line 184
    invoke-static {p3, p4}, Ljava/lang/Math;->exp(D)D

    move-result-wide p3

    mul-double/2addr p1, p3

    add-double/2addr v1, p1

    double-to-float p1, v1

    iput p1, v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 185
    iget-object p1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    iget p1, p1, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    iget-object p2, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    iget p2, p2, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->isAtEquilibrium(FF)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 186
    iget-object p1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    const/4 p2, 0x0

    iput p2, p1, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 188
    :cond_41
    iget-object p1, p0, Lcom/android/internal/dynamicanimation/animation/FlingAnimation$DragForce;->mMassState:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;

    return-object p1
.end method
