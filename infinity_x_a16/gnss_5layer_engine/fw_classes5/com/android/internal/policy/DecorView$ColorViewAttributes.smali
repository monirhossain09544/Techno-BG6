.class public Lcom/android/internal/policy/DecorView$ColorViewAttributes;
.super Ljava/lang/Object;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorViewAttributes"
.end annotation


# instance fields
.field final blacklist horizontalGravity:I

.field final blacklist id:I

.field final blacklist insetsType:I

.field final blacklist seascapeGravity:I

.field final blacklist transitionName:Ljava/lang/String;

.field final blacklist translucentFlag:I

.field final blacklist verticalGravity:I


# direct methods
.method private constructor blacklist <init>(IIIILjava/lang/String;II)V
    .registers 8

    .line 2395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2396
    iput p6, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->id:I

    .line 2397
    iput p1, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    .line 2398
    iput p2, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->verticalGravity:I

    .line 2399
    iput p3, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->horizontalGravity:I

    .line 2400
    iput p4, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->seascapeGravity:I

    .line 2401
    iput-object p5, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    .line 2402
    iput p7, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->insetsType:I

    .line 2403
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIILjava/lang/String;IILcom/android/internal/policy/DecorView-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public blacklist isPresent(ZIZ)Z
    .registers 4

    .line 2406
    if-eqz p1, :cond_b

    const/high16 p1, -0x80000000

    and-int/2addr p1, p2

    if-nez p1, :cond_9

    if-eqz p3, :cond_b

    :cond_9
    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public blacklist isVisible(IIIZ)Z
    .registers 6

    .line 2418
    iget v0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->insetsType:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 2419
    :goto_8
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(ZIZ)Z

    move-result p1

    .line 2420
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    move-result p1

    return p1
.end method

.method public blacklist isVisible(ZIIZ)Z
    .registers 5

    .line 2411
    if-eqz p1, :cond_11

    .line 2412
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    if-eqz p1, :cond_11

    iget p1, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    and-int/2addr p1, p3

    if-eqz p1, :cond_f

    if-eqz p4, :cond_11

    :cond_f
    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 2411
    :goto_12
    return p1
.end method
