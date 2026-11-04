.class public final Landroid/os/vibrator/HapticFeedbackRequest;
.super Ljava/lang/Object;
.source "HapticFeedbackRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/vibrator/HapticFeedbackRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mFeedbackConstant:I

.field private final blacklist mFlags:I

.field private final blacklist mUsage:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFeedbackConstant(Landroid/os/vibrator/HapticFeedbackRequest;)I
    .registers 1

    iget p0, p0, Landroid/os/vibrator/HapticFeedbackRequest;->mFeedbackConstant:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/os/vibrator/HapticFeedbackRequest;)I
    .registers 1

    iget p0, p0, Landroid/os/vibrator/HapticFeedbackRequest;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsage(Landroid/os/vibrator/HapticFeedbackRequest;)I
    .registers 1

    iget p0, p0, Landroid/os/vibrator/HapticFeedbackRequest;->mUsage:I

    return p0
.end method

.method private constructor blacklist <init>(III)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Landroid/os/vibrator/HapticFeedbackRequest;->mFeedbackConstant:I

    .line 45
    iput p2, p0, Landroid/os/vibrator/HapticFeedbackRequest;->mUsage:I

    .line 46
    iput p3, p0, Landroid/os/vibrator/HapticFeedbackRequest;->mFlags:I

    .line 47
    return-void
.end method

.method synthetic constructor blacklist <init>(IIILandroid/os/vibrator/HapticFeedbackRequest-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/os/vibrator/HapticFeedbackRequest;-><init>(III)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 78
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 79
    return v0

    .line 81
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    .line 84
    :cond_12
    check-cast p1, Landroid/os/vibrator/HapticFeedbackRequest;

    .line 85
    iget v2, p0, Landroid/os/vibrator/HapticFeedbackRequest;->mFeedbackConstant:I

    iget v3, p1, Landroid/os/vibrator/HapticFeedbackRequest;->mFeedbackConstant:I

    if-ne v2, v3, :cond_27

    iget v2, p0, Landroid/os/vibrator/HapticFeedbackRequest;->mUsage:I

    iget v3, p1, Landroid/os/vibrator/HapticFeedbackRequest;->mUsage:I

    if-ne v2, v3, :cond_27

    iget v2, p0, Landroid/os/vibrator/HapticFeedbackRequest;->mFlags:I

    iget p1, p1, Landroid/os/vibrator/HapticFeedbackRequest;->mFlags:I

    if-ne v2, p1, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    return v0

    .line 82
    :cond_29
    :goto_29
    return v1
.end method

.method public whitelist getFeedbackConstant()I
    .registers 2

    .line 57
    iget v0, p0, Landroid/os/vibrator/HapticFeedbackRequest;->mFeedbackConstant:I

    return v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 73
    iget v0, p0, Landroid/os/vibrator/HapticFeedbackRequest;->mFlags:I

    return v0
.end method

.method public whitelist getUsage()I
    .registers 2

    .line 67
    iget v0, p0, Landroid/os/vibrator/HapticFeedbackRequest;->mUsage:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 92
    iget v0, p0, Landroid/os/vibrator/HapticFeedbackRequest;->mFeedbackConstant:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/HapticFeedbackRequest;->mUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/os/vibrator/HapticFeedbackRequest;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
