.class public final Landroid/os/VibrationEffect$Composition;
.super Ljava/lang/Object;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Composition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException;,
        Landroid/os/VibrationEffect$Composition$DelayType;,
        Landroid/os/VibrationEffect$Composition$PrimitiveType;
    }
.end annotation


# static fields
.field public static final whitelist DELAY_TYPE_PAUSE:I = 0x0

.field public static final whitelist DELAY_TYPE_RELATIVE_START_OFFSET:I = 0x1

.field public static final whitelist PRIMITIVE_CLICK:I = 0x1

.field public static final whitelist PRIMITIVE_LOW_TICK:I = 0x8

.field public static final blacklist PRIMITIVE_NOOP:I = 0x0

.field public static final whitelist PRIMITIVE_QUICK_FALL:I = 0x6

.field public static final whitelist PRIMITIVE_QUICK_RISE:I = 0x4

.field public static final whitelist PRIMITIVE_SLOW_RISE:I = 0x5

.field public static final whitelist PRIMITIVE_SPIN:I = 0x3

.field public static final whitelist PRIMITIVE_THUD:I = 0x2

.field public static final whitelist PRIMITIVE_TICK:I = 0x7


# instance fields
.field private blacklist mRepeatIndex:I

.field private final blacklist mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 1635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    .line 1633
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/VibrationEffect$Composition;->mRepeatIndex:I

    .line 1635
    return-void
.end method

.method private blacklist addSegment(Landroid/os/vibrator/VibrationEffectSegment;)Landroid/os/VibrationEffect$Composition;
    .registers 3

    .line 1783
    iget v0, p0, Landroid/os/VibrationEffect$Composition;->mRepeatIndex:I

    if-gez v0, :cond_a

    .line 1786
    iget-object v0, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1787
    return-object p0

    .line 1784
    :cond_a
    new-instance p1, Landroid/os/VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException;

    invoke-direct {p1}, Landroid/os/VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException;-><init>()V

    throw p1
.end method

.method private blacklist addSegments(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;
    .registers 4

    .line 1791
    iget v0, p0, Landroid/os/VibrationEffect$Composition;->mRepeatIndex:I

    if-gez v0, :cond_2f

    .line 1794
    instance-of v0, p1, Landroid/os/VibrationEffect$Composed;

    if-eqz v0, :cond_27

    check-cast p1, Landroid/os/VibrationEffect$Composed;

    .line 1797
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v0

    if-ltz v0, :cond_1d

    .line 1799
    iget-object v0, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/VibrationEffect$Composition;->mRepeatIndex:I

    .line 1801
    :cond_1d
    iget-object v0, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1802
    return-object p0

    .line 1795
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t add vendor effects to composition."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1792
    :cond_2f
    new-instance p1, Landroid/os/VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException;

    invoke-direct {p1}, Landroid/os/VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException;-><init>()V

    throw p1
.end method

.method public static blacklist delayTypeToString(I)Ljava/lang/String;
    .registers 1

    .line 1853
    packed-switch p0, :pswitch_data_e

    .line 1856
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    .line 1855
    :pswitch_8
    const-string p0, "START_OFFSET"

    goto :goto_d

    .line 1854
    :pswitch_b
    const-string p0, "PAUSE"

    .line 1853
    :goto_d
    return-object p0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist primitiveToString(I)Ljava/lang/String;
    .registers 1

    .line 1832
    packed-switch p0, :pswitch_data_24

    .line 1842
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_22

    .line 1841
    :pswitch_8
    const-string p0, "LOW_TICK"

    goto :goto_22

    .line 1840
    :pswitch_b
    const-string p0, "TICK"

    goto :goto_22

    .line 1839
    :pswitch_e
    const-string p0, "QUICK_FALL"

    goto :goto_22

    .line 1838
    :pswitch_11
    const-string p0, "SLOW_RISE"

    goto :goto_22

    .line 1837
    :pswitch_14
    const-string p0, "QUICK_RISE"

    goto :goto_22

    .line 1836
    :pswitch_17
    const-string p0, "SPIN"

    goto :goto_22

    .line 1835
    :pswitch_1a
    const-string p0, "THUD"

    goto :goto_22

    .line 1834
    :pswitch_1d
    const-string p0, "CLICK"

    goto :goto_22

    .line 1833
    :pswitch_20
    const-string p0, "NOOP"

    .line 1832
    :goto_22
    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public blacklist addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;
    .registers 2

    .line 1681
    invoke-direct {p0, p1}, Landroid/os/VibrationEffect$Composition;->addSegments(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;
    .registers 5

    .line 1652
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1653
    const-string v1, "Off period must be non-negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 1654
    if-lez v0, :cond_1a

    .line 1656
    new-instance v0, Landroid/os/vibrator/StepSegment;

    .line 1657
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    long-to-int p1, v1

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    .line 1656
    invoke-direct {p0, v0}, Landroid/os/VibrationEffect$Composition;->addSegment(Landroid/os/vibrator/VibrationEffectSegment;)Landroid/os/VibrationEffect$Composition;

    .line 1659
    :cond_1a
    return-object p0
.end method

.method public whitelist addPrimitive(I)Landroid/os/VibrationEffect$Composition;
    .registers 3

    .line 1725
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object p1

    return-object p1
.end method

.method public whitelist addPrimitive(IF)Landroid/os/VibrationEffect$Composition;
    .registers 4

    .line 1740
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object p1

    return-object p1
.end method

.method public whitelist addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;
    .registers 5

    .line 1758
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFII)Landroid/os/VibrationEffect$Composition;

    move-result-object p1

    return-object p1
.end method

.method public whitelist addPrimitive(IFII)Landroid/os/VibrationEffect$Composition;
    .registers 6

    .line 1777
    new-instance v0, Landroid/os/vibrator/PrimitiveSegment;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/os/vibrator/PrimitiveSegment;-><init>(IFII)V

    .line 1778
    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->validate()V

    .line 1779
    invoke-direct {p0, v0}, Landroid/os/VibrationEffect$Composition;->addSegment(Landroid/os/vibrator/VibrationEffectSegment;)Landroid/os/VibrationEffect$Composition;

    move-result-object p1

    return-object p1
.end method

.method public whitelist compose()Landroid/os/VibrationEffect;
    .registers 4

    .line 1816
    iget-object v0, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1820
    new-instance v0, Landroid/os/VibrationEffect$Composed;

    iget-object v1, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    iget v2, p0, Landroid/os/VibrationEffect$Composition;->mRepeatIndex:I

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 1821
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 1822
    return-object v0

    .line 1817
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Composition must have at least one element to compose."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist repeatEffectIndefinitely(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;
    .registers 6

    .line 1705
    invoke-virtual {p1}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "Can\'t repeat an indefinitely repeating effect. Consider addEffect instead."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1707
    iget-object v0, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1708
    invoke-direct {p0, p1}, Landroid/os/VibrationEffect$Composition;->addSegments(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 1710
    iput v0, p0, Landroid/os/VibrationEffect$Composition;->mRepeatIndex:I

    .line 1711
    return-object p0
.end method
