.class public final Landroid/os/VibrationAttributes$Builder;
.super Ljava/lang/Object;
.source "VibrationAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFlags:I

.field private blacklist mOriginalAudioUsage:I

.field private blacklist mUsage:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 430
    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    .line 431
    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 437
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioAttributes;)V
    .registers 3

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 430
    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    .line 431
    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 454
    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes$Builder;->setUsage(Landroid/media/AudioAttributes;)V

    .line 455
    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes$Builder;->setFlags(Landroid/media/AudioAttributes;)V

    .line 456
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/VibrationAttributes;)V
    .registers 3

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 430
    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    .line 431
    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 443
    if-eqz p1, :cond_1e

    .line 444
    invoke-static {p1}, Landroid/os/VibrationAttributes;->-$$Nest$fgetmUsage(Landroid/os/VibrationAttributes;)I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 445
    invoke-static {p1}, Landroid/os/VibrationAttributes;->-$$Nest$fgetmOriginalAudioUsage(Landroid/os/VibrationAttributes;)I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    .line 446
    invoke-static {p1}, Landroid/os/VibrationAttributes;->-$$Nest$fgetmFlags(Landroid/os/VibrationAttributes;)I

    move-result p1

    iput p1, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 448
    :cond_1e
    return-void
.end method

.method private blacklist setFlags(Landroid/media/AudioAttributes;)V
    .registers 3

    .line 496
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_e

    .line 497
    iget v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 499
    :cond_e
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_1c

    .line 502
    iget p1, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 504
    :cond_1c
    return-void
.end method

.method private blacklist setUsage(Landroid/media/AudioAttributes;)V
    .registers 3

    .line 459
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    .line 460
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    packed-switch p1, :pswitch_data_36

    .line 491
    :pswitch_d
    const/4 p1, 0x0

    iput p1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    goto :goto_34

    .line 481
    :pswitch_11
    const/16 p1, 0x12

    iput p1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 482
    goto :goto_34

    .line 478
    :pswitch_16
    const/16 p1, 0x42

    iput p1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 479
    goto :goto_34

    .line 475
    :pswitch_1b
    const/16 p1, 0x21

    iput p1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 476
    goto :goto_34

    .line 466
    :pswitch_20
    const/16 p1, 0x31

    iput p1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 467
    goto :goto_34

    .line 484
    :pswitch_25
    const/16 p1, 0x11

    iput p1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 485
    goto :goto_34

    .line 472
    :pswitch_2a
    const/16 p1, 0x41

    iput p1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 473
    goto :goto_34

    .line 488
    :pswitch_2f
    const/16 p1, 0x13

    iput p1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 489
    nop

    .line 493
    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2a
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_16
        :pswitch_2a
        :pswitch_11
        :pswitch_2f
        :pswitch_d
        :pswitch_2a
    .end packed-switch
.end method


# virtual methods
.method public whitelist build()Landroid/os/VibrationAttributes;
    .registers 6

    .line 512
    new-instance v0, Landroid/os/VibrationAttributes;

    iget v1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    iget v2, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    iget v3, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/VibrationAttributes;-><init>(IIILandroid/os/VibrationAttributes-IA;)V

    .line 514
    return-object v0
.end method

.method public blacklist setFlags(I)Landroid/os/VibrationAttributes$Builder;
    .registers 3

    .line 552
    const/16 v0, 0xf

    invoke-virtual {p0, p1, v0}, Landroid/os/VibrationAttributes$Builder;->setFlags(II)Landroid/os/VibrationAttributes$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setFlags(II)Landroid/os/VibrationAttributes$Builder;
    .registers 5

    .line 537
    and-int/lit8 p2, p2, 0xf

    .line 538
    iget v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 539
    return-object p0
.end method

.method public whitelist setUsage(I)Landroid/os/VibrationAttributes$Builder;
    .registers 3

    .line 523
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    .line 524
    iput p1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 525
    return-object p0
.end method
