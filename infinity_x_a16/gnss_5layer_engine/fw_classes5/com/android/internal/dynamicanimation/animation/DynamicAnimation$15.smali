.class Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;
.super Landroid/util/FloatProperty;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$floatValueHolder:Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;Ljava/lang/String;Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 345
    iput-object p3, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Ljava/lang/Object;)Ljava/lang/Float;
    .registers 2

    .line 348
    iget-object p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {p1}, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;->get(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 353
    iget-object p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {p1, p2}, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 354
    return-void
.end method
