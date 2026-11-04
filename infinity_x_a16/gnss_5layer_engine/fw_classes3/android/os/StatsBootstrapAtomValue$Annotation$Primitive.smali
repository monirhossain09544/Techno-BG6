.class public final Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;
.super Ljava/lang/Object;
.source "StatsBootstrapAtomValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StatsBootstrapAtomValue$Annotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Primitive"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist boolValue:I = 0x0

.field public static final blacklist intValue:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 461
    new-instance v0, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive$1;

    invoke-direct {v0}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive$1;-><init>()V

    sput-object v0, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    nop

    .line 414
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_tag:I

    .line 415
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_value:Ljava/lang/Object;

    .line 416
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput p1, p0, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_tag:I

    .line 424
    iput-object p2, p0, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_value:Ljava/lang/Object;

    .line 425
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    invoke-virtual {p0, p1}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->readFromParcel(Landroid/os/Parcel;)V

    .line 420
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/StatsBootstrapAtomValue-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5

    .line 512
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 515
    return-void

    .line 513
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_tagString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is available."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .registers 3

    .line 526
    iput p1, p0, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_tag:I

    .line 527
    iput-object p2, p0, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_value:Ljava/lang/Object;

    .line 528
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5

    .line 518
    packed-switch p1, :pswitch_data_24

    .line 522
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :pswitch_1d
    const-string p1, "intValue"

    return-object p1

    .line 519
    :pswitch_20
    const-string p1, "boolValue"

    return-object p1

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist boolValue(Z)Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;
    .registers 3

    .line 434
    new-instance v0, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist intValue(I)Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;
    .registers 3

    .line 449
    new-instance v0, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 505
    nop

    .line 506
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->getTag()I

    .line 508
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBoolValue()Z
    .registers 2

    .line 438
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_assertTag(I)V

    .line 439
    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getIntValue()I
    .registers 2

    .line 453
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_assertTag(I)V

    .line 454
    iget-object v0, p0, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 428
    iget v0, p0, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 488
    packed-switch v0, :pswitch_data_3a

    .line 500
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "union: unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 496
    :pswitch_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 497
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_set(ILjava/lang/Object;)V

    .line 498
    return-void

    .line 491
    :pswitch_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 492
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_set(ILjava/lang/Object;)V

    .line 493
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist setBoolValue(Z)V
    .registers 3

    .line 443
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_set(ILjava/lang/Object;)V

    .line 444
    return-void
.end method

.method public blacklist setIntValue(I)V
    .registers 3

    .line 458
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_set(ILjava/lang/Object;)V

    .line 459
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 474
    iget p2, p0, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_tag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget p2, p0, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->_tag:I

    packed-switch p2, :pswitch_data_1c

    goto :goto_1b

    .line 480
    :pswitch_b
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->getIntValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 477
    :pswitch_13
    invoke-virtual {p0}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->getBoolValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 478
    nop

    .line 483
    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
