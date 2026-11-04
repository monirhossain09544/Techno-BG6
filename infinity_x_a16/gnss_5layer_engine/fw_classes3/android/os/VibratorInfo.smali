.class public Landroid/os/VibratorInfo;
.super Ljava/lang/Object;
.source "VibratorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibratorInfo$FrequencyProfileLegacy;,
        Landroid/os/VibratorInfo$FrequencyProfile;,
        Landroid/os/VibratorInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibratorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

.field private static final blacklist TAG:Ljava/lang/String; = "VibratorInfo"


# instance fields
.field private final blacklist mCapabilities:J

.field private final blacklist mCompositionSizeMax:I

.field private final blacklist mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

.field private final blacklist mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

.field private final blacklist mId:I

.field private final blacklist mMaxEnvelopeEffectControlPointDurationMillis:I

.field private final blacklist mMaxEnvelopeEffectSize:I

.field private final blacklist mMinEnvelopeEffectControlPointDurationMillis:I

.field private final blacklist mPrimitiveDelayMax:I

.field private final blacklist mPwlePrimitiveDurationMax:I

.field private final blacklist mPwleSizeMax:I

.field private final blacklist mQFactor:F

.field private final blacklist mSupportedBraking:Landroid/util/SparseBooleanArray;

.field private final blacklist mSupportedEffects:Landroid/util/SparseBooleanArray;

.field private final blacklist mSupportedPrimitives:Landroid/util/SparseIntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Landroid/os/VibratorInfo$Builder;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object v0

    sput-object v0, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    .line 1295
    new-instance v0, Landroid/os/VibratorInfo$1;

    invoke-direct {v0}, Landroid/os/VibratorInfo$1;-><init>()V

    sput-object v0, Landroid/os/VibratorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJLandroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseIntArray;IIIIFLandroid/os/VibratorInfo$FrequencyProfileLegacy;Landroid/os/VibratorInfo$FrequencyProfile;III)V
    .registers 17

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {p12}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {p13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iput p1, p0, Landroid/os/VibratorInfo;->mId:I

    .line 148
    iput-wide p2, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    .line 149
    const/4 p1, 0x0

    if-nez p4, :cond_15

    move-object p2, p1

    goto :goto_19

    :cond_15
    invoke-virtual {p4}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p2

    :goto_19
    iput-object p2, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    .line 150
    if-nez p5, :cond_1e

    goto :goto_22

    :cond_1e
    invoke-virtual {p5}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    :goto_22
    iput-object p1, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    .line 151
    invoke-virtual {p6}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    iput-object p1, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    .line 152
    iput p7, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    .line 153
    iput p8, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    .line 154
    iput p9, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    .line 155
    iput p10, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    .line 156
    iput p11, p0, Landroid/os/VibratorInfo;->mQFactor:F

    .line 157
    iput-object p12, p0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    .line 158
    iput-object p13, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    .line 159
    iput p14, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    .line 160
    iput p15, p0, Landroid/os/VibratorInfo;->mMinEnvelopeEffectControlPointDurationMillis:I

    .line 162
    move/from16 p1, p16

    iput p1, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    .line 164
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/os/VibratorInfo;)V
    .registers 20

    .line 91
    move-object/from16 v0, p2

    iget-wide v2, v0, Landroid/os/VibratorInfo;->mCapabilities:J

    iget-object v4, v0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    iget-object v5, v0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    iget-object v6, v0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    iget v7, v0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    iget v8, v0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    iget v9, v0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    iget v10, v0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    iget v11, v0, Landroid/os/VibratorInfo;->mQFactor:F

    iget-object v12, v0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    iget-object v13, v0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    iget v14, v0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    iget v15, v0, Landroid/os/VibratorInfo;->mMinEnvelopeEffectControlPointDurationMillis:I

    iget v0, v0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    move/from16 v1, p1

    move/from16 v16, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v16}, Landroid/os/VibratorInfo;-><init>(IJLandroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseIntArray;IIIIFLandroid/os/VibratorInfo$FrequencyProfileLegacy;Landroid/os/VibratorInfo$FrequencyProfile;III)V

    .line 99
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mId:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mQFactor:F

    .line 83
    sget-object v0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    iput-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    .line 84
    sget-object v0, Landroid/os/VibratorInfo$FrequencyProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorInfo$FrequencyProfile;

    iput-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mMinEnvelopeEffectControlPointDurationMillis:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    .line 88
    return-void
.end method

.method private blacklist getCapabilitiesNames()[Ljava/lang/String;
    .registers 4

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 587
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 588
    const-string v1, "ON_CALLBACK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_12
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 591
    const-string v1, "PERFORM_CALLBACK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_1f
    const-wide/16 v1, 0x20

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 594
    const-string v1, "COMPOSE_EFFECTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_2c
    const-wide/16 v1, 0x400

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 597
    const-string v1, "COMPOSE_PWLE_EFFECTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_39
    const-wide/16 v1, 0x40

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 600
    const-string v1, "ALWAYS_ON_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    :cond_46
    const-wide/16 v1, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 603
    const-string v1, "AMPLITUDE_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_53
    const-wide/16 v1, 0x200

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 606
    const-string v1, "FREQUENCY_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    :cond_60
    const-wide/16 v1, 0x8

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 609
    const-string v1, "EXTERNAL_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_6d
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 612
    const-string v1, "EXTERNAL_AMPLITUDE_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_7a
    const-wide/16 v1, 0x1000

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 615
    const-string v1, "CAP_COMPOSE_PWLE_EFFECTS_V2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_87
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private blacklist getSupportedBrakingNames()[Ljava/lang/String;
    .registers 4

    .line 632
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 633
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 635
    :cond_8
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 636
    nop

    :goto_11
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 637
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_3e

    .line 645
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_39

    .line 642
    :pswitch_2f
    const-string v2, "CLAB"

    aput-object v2, v0, v1

    .line 643
    goto :goto_39

    .line 639
    :pswitch_34
    const-string v2, "NONE"

    aput-object v2, v0, v1

    .line 640
    nop

    .line 636
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 648
    :cond_3c
    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_34
        :pswitch_2f
    .end packed-switch
.end method

.method private blacklist getSupportedEffectsNames()[Ljava/lang/String;
    .registers 4

    .line 621
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 622
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 624
    :cond_8
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 625
    nop

    :goto_11
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 626
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/VibrationEffect;->effectIdToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 628
    :cond_28
    return-object v0
.end method

.method private blacklist getSupportedPrimitivesNames()[Ljava/lang/String;
    .registers 6

    .line 652
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 653
    new-array v1, v0, [Ljava/lang/String;

    .line 654
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_3d

    .line 655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/VibrationEffect$Composition;->primitiveToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    .line 656
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 654
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 658
    :cond_3d
    return-object v1
.end method


# virtual methods
.method public blacklist areEnvelopeEffectsSupported()Z
    .registers 3

    .line 480
    const-wide/16 v0, 0x1200

    invoke-virtual {p0, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibrationEffect;)Z
    .registers 2

    .line 416
    invoke-virtual {p1, p0}, Landroid/os/VibrationEffect;->areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 275
    const-string v0, "VibratorInfo:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capabilities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/VibratorInfo;->getCapabilitiesNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capabilitiesFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "supportedEffects = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/VibratorInfo;->getSupportedEffectsNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "supportedPrimitives = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/VibratorInfo;->getSupportedPrimitivesNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "supportedBraking = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/VibratorInfo;->getSupportedBrakingNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "primitiveDelayMax = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compositionSizeMax = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pwlePrimitiveDurationMax = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pwleSizeMax = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "q-factor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mQFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frequencyProfileLegacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frequencyProfile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMaxEnvelopeEffectSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinEnvelopeEffectControlPointDurationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mMinEnvelopeEffectControlPointDurationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMaxEnvelopeEffectControlPointDurationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 296
    return-void
.end method

.method public blacklist equalContent(Landroid/os/VibratorInfo;)Z
    .registers 7

    .line 209
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 210
    iget-object v1, p1, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    .line 211
    return v2

    .line 213
    :cond_10
    move v1, v2

    :goto_11
    if-ge v1, v0, :cond_34

    .line 214
    iget-object v3, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget-object v4, p1, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    if-eq v3, v4, :cond_22

    .line 215
    return v2

    .line 217
    :cond_22
    iget-object v3, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    iget-object v4, p1, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-eq v3, v4, :cond_31

    .line 218
    return v2

    .line 213
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 221
    :cond_34
    iget-wide v0, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    iget-wide v3, p1, Landroid/os/VibratorInfo;->mCapabilities:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_a2

    iget v0, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    iget v1, p1, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    if-ne v0, v1, :cond_a2

    iget v0, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    iget v1, p1, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    if-ne v0, v1, :cond_a2

    iget v0, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    iget v1, p1, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    if-ne v0, v1, :cond_a2

    iget v0, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    iget v1, p1, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    if-ne v0, v1, :cond_a2

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    iget-object v1, p1, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    .line 226
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    iget-object v1, p1, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    .line 227
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    iget v0, p0, Landroid/os/VibratorInfo;->mQFactor:F

    .line 228
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p1, Landroid/os/VibratorInfo;->mQFactor:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    iget-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    iget-object v1, p1, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    .line 229
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    iget-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    iget-object v1, p1, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    .line 230
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    iget v0, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    iget v1, p1, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    if-ne v0, v1, :cond_a2

    iget v0, p0, Landroid/os/VibratorInfo;->mMinEnvelopeEffectControlPointDurationMillis:I

    iget v1, p1, Landroid/os/VibratorInfo;->mMinEnvelopeEffectControlPointDurationMillis:I

    if-ne v0, v1, :cond_a2

    iget v0, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    iget p1, p1, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    if-ne v0, p1, :cond_a2

    const/4 v2, 0x1

    goto :goto_a3

    :cond_a2
    nop

    .line 221
    :goto_a3
    return v2
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 192
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 193
    return v0

    .line 195
    :cond_4
    instance-of v1, p1, Landroid/os/VibratorInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 196
    return v2

    .line 198
    :cond_a
    check-cast p1, Landroid/os/VibratorInfo;

    .line 199
    iget v1, p0, Landroid/os/VibratorInfo;->mId:I

    iget v3, p1, Landroid/os/VibratorInfo;->mId:I

    if-ne v1, v3, :cond_19

    invoke-virtual {p0, p1}, Landroid/os/VibratorInfo;->equalContent(Landroid/os/VibratorInfo;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    return v0
.end method

.method public blacklist getCapabilities()J
    .registers 3

    .line 582
    iget-wide v0, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    return-wide v0
.end method

.method public blacklist getCompositionSizeMax()I
    .registers 2

    .line 450
    iget v0, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    return v0
.end method

.method public blacklist getDefaultBraking()I
    .registers 5

    .line 328
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 329
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 330
    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_20

    .line 331
    iget-object v3, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-eqz v3, :cond_1d

    .line 332
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    .line 330
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 336
    :cond_20
    return v1
.end method

.method public blacklist getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;
    .registers 2

    .line 577
    iget-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    return-object v0
.end method

.method public blacklist getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;
    .registers 2

    .line 566
    iget-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    return-object v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 300
    iget v0, p0, Landroid/os/VibratorInfo;->mId:I

    return v0
.end method

.method public blacklist getMaxEnvelopeEffectControlPointDurationMillis()I
    .registers 2

    .line 521
    iget v0, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    return v0
.end method

.method public blacklist getMaxEnvelopeEffectDurationMillis()I
    .registers 3

    .line 490
    iget v0, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    iget v1, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public blacklist getMaxEnvelopeEffectSize()I
    .registers 2

    .line 499
    iget v0, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    return v0
.end method

.method public blacklist getMinEnvelopeEffectControlPointDurationMillis()I
    .registers 2

    .line 510
    iget v0, p0, Landroid/os/VibratorInfo;->mMinEnvelopeEffectControlPointDurationMillis:I

    return v0
.end method

.method public blacklist getPrimitiveDelayMax()I
    .registers 2

    .line 441
    iget v0, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    return v0
.end method

.method public blacklist getPrimitiveDuration(I)I
    .registers 3

    .line 427
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method

.method public blacklist getPwlePrimitiveDurationMax()I
    .registers 2

    .line 459
    iget v0, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    return v0
.end method

.method public blacklist getPwleSizeMax()I
    .registers 2

    .line 468
    iget v0, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    return v0
.end method

.method public blacklist getQFactor()F
    .registers 2

    .line 555
    iget v0, p0, Landroid/os/VibratorInfo;->mQFactor:F

    return v0
.end method

.method public blacklist getResonantFrequencyHz()F
    .registers 2

    .line 542
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 543
    iget-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-static {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->-$$Nest$fgetmResonantFrequencyHz(Landroid/os/VibratorInfo$FrequencyProfile;)F

    move-result v0

    return v0

    .line 545
    :cond_d
    iget-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-static {v0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->-$$Nest$fgetmResonantFrequencyHz(Landroid/os/VibratorInfo$FrequencyProfileLegacy;)F

    move-result v0

    return v0
.end method

.method public blacklist getSupportedBraking()Landroid/util/SparseBooleanArray;
    .registers 2

    .line 342
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_6

    .line 343
    const/4 v0, 0x0

    return-object v0

    .line 345
    :cond_6
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedEffects()Landroid/util/SparseBooleanArray;
    .registers 2

    .line 384
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_6

    .line 385
    const/4 v0, 0x0

    return-object v0

    .line 387
    :cond_6
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedPrimitives()Landroid/util/SparseIntArray;
    .registers 2

    .line 432
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasAmplitudeControl()Z
    .registers 3

    .line 309
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public blacklist hasBrakingSupport(I)Z
    .registers 3

    .line 355
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public blacklist hasCapability(J)Z
    .registers 5

    .line 532
    iget-wide v0, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    and-long/2addr v0, p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public blacklist hasFrequencyControl()Z
    .registers 3

    .line 318
    const-wide/16 v0, 0x200

    invoke-virtual {p0, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 240
    iget v0, p0, Landroid/os/VibratorInfo;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    iget v0, p0, Landroid/os/VibratorInfo;->mQFactor:F

    .line 241
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v6, p0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    iget-object v7, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 240
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 242
    const/4 v1, 0x0

    :goto_23
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 243
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 244
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 246
    :cond_40
    return v0
.end method

.method public blacklist isBrakingSupportKnown()Z
    .registers 2

    .line 350
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isEffectSupportKnown()Z
    .registers 2

    .line 360
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isEffectSupported(I)I
    .registers 3

    .line 374
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_6

    .line 375
    const/4 p1, 0x0

    return p1

    .line 377
    :cond_6
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    .line 378
    :cond_10
    const/4 p1, 0x2

    .line 377
    :goto_11
    return p1
.end method

.method public blacklist isPrimitiveSupported(I)Z
    .registers 4

    .line 398
    const-wide/16 v0, 0x20

    invoke-virtual {p0, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    .line 399
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 398
    :goto_13
    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibratorInfo{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    invoke-direct {p0}, Landroid/os/VibratorInfo;->getCapabilitiesNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCapabilities flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    .line 254
    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportedEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    invoke-direct {p0}, Landroid/os/VibratorInfo;->getSupportedEffectsNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportedBraking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    invoke-direct {p0}, Landroid/os/VibratorInfo;->getSupportedBrakingNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportedPrimitives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 257
    invoke-direct {p0}, Landroid/os/VibratorInfo;->getSupportedPrimitivesNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPrimitiveDelayMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCompositionSizeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPwlePrimitiveDurationMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPwleSizeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mQFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mQFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrequencyProfileLegacy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrequencyProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxEnvelopeEffectSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinEnvelopeEffectControlPointDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mMinEnvelopeEffectControlPointDurationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxEnvelopeEffectControlPointDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 168
    iget v0, p0, Landroid/os/VibratorInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-wide v0, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 170
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 171
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 172
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    .line 173
    iget v0, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Landroid/os/VibratorInfo;->mQFactor:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 178
    iget-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    invoke-virtual {v0, p1, p2}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 179
    iget-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v0, p1, p2}, Landroid/os/VibratorInfo$FrequencyProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 180
    iget p2, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget p2, p0, Landroid/os/VibratorInfo;->mMinEnvelopeEffectControlPointDurationMillis:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget p2, p0, Landroid/os/VibratorInfo;->mMaxEnvelopeEffectControlPointDurationMillis:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    return-void
.end method
