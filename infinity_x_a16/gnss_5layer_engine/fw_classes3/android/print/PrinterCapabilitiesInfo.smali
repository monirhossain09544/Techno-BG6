.class public final Landroid/print/PrinterCapabilitiesInfo;
.super Ljava/lang/Object;
.source "PrinterCapabilitiesInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrinterCapabilitiesInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/print/PrinterCapabilitiesInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

.field public static final greylist-max-o DEFAULT_UNDEFINED:I = -0x1

.field private static final greylist-max-o PROPERTY_COLOR_MODE:I = 0x2

.field private static final greylist-max-o PROPERTY_COUNT:I = 0x4

.field private static final greylist-max-o PROPERTY_DUPLEX_MODE:I = 0x3

.field private static final greylist-max-o PROPERTY_MEDIA_SIZE:I = 0x0

.field private static final greylist-max-o PROPERTY_RESOLUTION:I = 0x1


# instance fields
.field private greylist-max-o mColorModes:I

.field private final greylist-max-o mDefaults:[I

.field private greylist-max-o mDuplexModes:I

.field private greylist-max-o mMediaSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/print/PrintAttributes$MediaSize;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mMinMargins:Landroid/print/PrintAttributes$Margins;

.field private greylist-max-o mResolutions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/print/PrintAttributes$Resolution;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmColorModes(Landroid/print/PrinterCapabilitiesInfo;)I
    .registers 1

    iget p0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaults(Landroid/print/PrinterCapabilitiesInfo;)[I
    .registers 1

    iget-object p0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDuplexModes(Landroid/print/PrinterCapabilitiesInfo;)I
    .registers 1

    iget p0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaSizes(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinMargins(Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrintAttributes$Margins;
    .registers 1

    iget-object p0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResolutions(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmColorModes(Landroid/print/PrinterCapabilitiesInfo;I)V
    .registers 2

    iput p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDuplexModes(Landroid/print/PrinterCapabilitiesInfo;I)V
    .registers 2

    iput p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMediaSizes(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMinMargins(Landroid/print/PrinterCapabilitiesInfo;Landroid/print/PrintAttributes$Margins;)V
    .registers 2

    iput-object p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResolutions(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smenforceValidMask(ILjava/util/function/IntConsumer;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->enforceValidMask(ILjava/util/function/IntConsumer;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 60
    new-instance v0, Landroid/print/PrintAttributes$Margins;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    sput-object v0, Landroid/print/PrinterCapabilitiesInfo;->DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

    .line 651
    new-instance v0, Landroid/print/PrinterCapabilitiesInfo$1;

    invoke-direct {v0}, Landroid/print/PrinterCapabilitiesInfo$1;-><init>()V

    sput-object v0, Landroid/print/PrinterCapabilitiesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Landroid/print/PrinterCapabilitiesInfo;->DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    .line 75
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 76
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Landroid/print/PrinterCapabilitiesInfo;->DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    .line 228
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->readMargins(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 229
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->readMediaSizes(Landroid/os/Parcel;)V

    .line 230
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->readResolutions(Landroid/os/Parcel;)V

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    .line 233
    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    new-instance v1, Landroid/print/PrinterCapabilitiesInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/print/PrinterCapabilitiesInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroid/print/PrinterCapabilitiesInfo;->enforceValidMask(ILjava/util/function/IntConsumer;)V

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    .line 237
    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    new-instance v1, Landroid/print/PrinterCapabilitiesInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/print/PrinterCapabilitiesInfo$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Landroid/print/PrinterCapabilitiesInfo;->enforceValidMask(ILjava/util/function/IntConsumer;)V

    .line 240
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->readDefaults(Landroid/os/Parcel;)V

    .line 241
    iget-object p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-le p1, v0, :cond_51

    move p1, v2

    goto :goto_52

    :cond_51
    move p1, v1

    :goto_52
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 242
    iget-object p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    aget v0, v0, v2

    if-le p1, v0, :cond_62

    move v1, v2

    :cond_62
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 243
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/print/PrinterCapabilitiesInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/print/PrinterCapabilitiesInfo;)V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Landroid/print/PrinterCapabilitiesInfo;->DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    .line 82
    invoke-virtual {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->copyFrom(Landroid/print/PrinterCapabilitiesInfo;)V

    .line 83
    return-void
.end method

.method private greylist-max-o colorModesToString()Ljava/lang/String;
    .registers 6

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    iget v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    .line 337
    :goto_c
    if-eqz v1, :cond_2a

    .line 338
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    .line 339
    not-int v4, v2

    and-int/2addr v1, v4

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v3, :cond_22

    .line 341
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_22
    invoke-static {v2}, Landroid/print/PrintAttributes;->colorModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    goto :goto_c

    .line 345
    :cond_2a
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o duplexModesToString()Ljava/lang/String;
    .registers 6

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    iget v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    .line 353
    :goto_c
    if-eqz v1, :cond_2a

    .line 354
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    .line 355
    not-int v4, v2

    and-int/2addr v1, v4

    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v3, :cond_22

    .line 357
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_22
    invoke-static {v2}, Landroid/print/PrintAttributes;->duplexModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    goto :goto_c

    .line 361
    :cond_2a
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o enforceValidMask(ILjava/util/function/IntConsumer;)V
    .registers 4

    .line 219
    nop

    .line 220
    :goto_1
    if-lez p0, :cond_f

    .line 221
    const/4 v0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shl-int/2addr v0, v1

    .line 222
    not-int v1, v0

    and-int/2addr p0, v1

    .line 223
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 224
    goto :goto_1

    .line 225
    :cond_f
    return-void
.end method

.method static synthetic blacklist lambda$new$0(I)V
    .registers 1

    .line 234
    invoke-static {p0}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    return-void
.end method

.method static synthetic blacklist lambda$new$1(I)V
    .registers 1

    .line 238
    invoke-static {p0}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    return-void
.end method

.method private greylist-max-o readDefaults(Landroid/os/Parcel;)V
    .registers 6

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 424
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12

    .line 425
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 427
    :cond_12
    return-void
.end method

.method private greylist-max-o readMargins(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;
    .registers 4

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    invoke-static {p1}, Landroid/print/PrintAttributes$Margins;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;

    move-result-object p1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return-object p1
.end method

.method private greylist-max-o readMediaSizes(Landroid/os/Parcel;)V
    .registers 6

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 379
    if-lez v0, :cond_11

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-nez v1, :cond_11

    .line 380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    .line 382
    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_20

    .line 383
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-static {p1}, Landroid/print/PrintAttributes$MediaSize;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$MediaSize;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 385
    :cond_20
    return-void
.end method

.method private greylist-max-o readResolutions(Landroid/os/Parcel;)V
    .registers 6

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 401
    if-lez v0, :cond_11

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-nez v1, :cond_11

    .line 402
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    .line 404
    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_20

    .line 405
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-static {p1}, Landroid/print/PrintAttributes$Resolution;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Resolution;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 407
    :cond_20
    return-void
.end method

.method private greylist-max-o writeDefaults(Landroid/os/Parcel;)V
    .registers 5

    .line 430
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    array-length v0, v0

    .line 431
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_13

    .line 433
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 435
    :cond_13
    return-void
.end method

.method private greylist-max-o writeMargins(Landroid/print/PrintAttributes$Margins;Landroid/os/Parcel;)V
    .registers 4

    .line 410
    if-nez p1, :cond_7

    .line 411
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 413
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    invoke-virtual {p1, p2}, Landroid/print/PrintAttributes$Margins;->writeToParcel(Landroid/os/Parcel;)V

    .line 416
    :goto_e
    return-void
.end method

.method private greylist-max-o writeMediaSizes(Landroid/os/Parcel;)V
    .registers 5

    .line 366
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 367
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    return-void

    .line 370
    :cond_9
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 371
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    nop

    :goto_13
    if-ge v1, v0, :cond_23

    .line 373
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2, p1}, Landroid/print/PrintAttributes$MediaSize;->writeToParcel(Landroid/os/Parcel;)V

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 375
    :cond_23
    return-void
.end method

.method private greylist-max-o writeResolutions(Landroid/os/Parcel;)V
    .registers 5

    .line 388
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 389
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    return-void

    .line 392
    :cond_9
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 393
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    nop

    :goto_13
    if-ge v1, v0, :cond_23

    .line 395
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v2, p1}, Landroid/print/PrintAttributes$Resolution;->writeToParcel(Landroid/os/Parcel;)V

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 397
    :cond_23
    return-void
.end method


# virtual methods
.method public greylist-max-o copyFrom(Landroid/print/PrinterCapabilitiesInfo;)V
    .registers 6

    .line 89
    if-ne p0, p1, :cond_3

    .line 90
    return-void

    .line 93
    :cond_3
    iget-object v0, p1, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 95
    iget-object v0, p1, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 96
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 97
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    iget-object v2, p1, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_29

    .line 100
    :cond_1d
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    goto :goto_29

    .line 103
    :cond_27
    iput-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    .line 106
    :goto_29
    iget-object v0, p1, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-eqz v0, :cond_48

    .line 107
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-eqz v0, :cond_3e

    .line 108
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    iget-object v1, p1, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4a

    .line 111
    :cond_3e
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    goto :goto_4a

    .line 114
    :cond_48
    iput-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    .line 117
    :goto_4a
    iget v0, p1, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    iput v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    .line 118
    iget v0, p1, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    iput v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    .line 120
    iget-object v0, p1, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    array-length v0, v0

    .line 121
    const/4 v1, 0x0

    :goto_56
    if-ge v1, v0, :cond_63

    .line 122
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    iget-object v3, p1, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    aget v3, v3, v1

    aput v3, v2, v1

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 124
    :cond_63
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 277
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 278
    return v0

    .line 280
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 281
    return v1

    .line 283
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 284
    return v1

    .line 286
    :cond_13
    check-cast p1, Landroid/print/PrinterCapabilitiesInfo;

    .line 287
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-nez v2, :cond_1e

    .line 288
    iget-object v2, p1, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-eqz v2, :cond_29

    .line 289
    return v1

    .line 291
    :cond_1e
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iget-object v3, p1, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Margins;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 292
    return v1

    .line 294
    :cond_29
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-nez v2, :cond_32

    .line 295
    iget-object v2, p1, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-eqz v2, :cond_3d

    .line 296
    return v1

    .line 298
    :cond_32
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    iget-object v3, p1, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 299
    return v1

    .line 301
    :cond_3d
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-nez v2, :cond_46

    .line 302
    iget-object v2, p1, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-eqz v2, :cond_51

    .line 303
    return v1

    .line 305
    :cond_46
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    iget-object v3, p1, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 306
    return v1

    .line 308
    :cond_51
    iget v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    iget v3, p1, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    if-eq v2, v3, :cond_58

    .line 309
    return v1

    .line 311
    :cond_58
    iget v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    iget v3, p1, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    if-eq v2, v3, :cond_5f

    .line 312
    return v1

    .line 314
    :cond_5f
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    iget-object p1, p1, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_6a

    .line 315
    return v1

    .line 317
    :cond_6a
    return v0
.end method

.method public whitelist getColorModes()I
    .registers 2

    .line 163
    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    return v0
.end method

.method public whitelist getDefaults()Landroid/print/PrintAttributes;
    .registers 4

    .line 185
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 187
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    .line 189
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 190
    if-ltz v1, :cond_1c

    .line 191
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 194
    :cond_1c
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 195
    if-ltz v1, :cond_2e

    .line 196
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    .line 199
    :cond_2e
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    .line 200
    if-lez v1, :cond_38

    .line 201
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 204
    :cond_38
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    .line 205
    if-lez v1, :cond_42

    .line 206
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setDuplexMode(I)Landroid/print/PrintAttributes$Builder;

    .line 209
    :cond_42
    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDuplexModes()I
    .registers 2

    .line 176
    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    return v0
.end method

.method public whitelist getMediaSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/print/PrintAttributes$MediaSize;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMinMargins()Landroid/print/PrintAttributes$Margins;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    return-object v0
.end method

.method public whitelist getResolutions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/print/PrintAttributes$Resolution;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 265
    nop

    .line 266
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_e

    :cond_8
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Margins;->hashCode()I

    move-result v0

    :goto_e
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    .line 267
    mul-int/2addr v0, v2

    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-nez v3, :cond_18

    move v3, v1

    goto :goto_1e

    :cond_18
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_1e
    add-int/2addr v0, v3

    .line 268
    mul-int/2addr v0, v2

    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-nez v3, :cond_25

    goto :goto_2b

    :cond_25
    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_2b
    add-int/2addr v0, v1

    .line 269
    mul-int/2addr v0, v2

    iget v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    add-int/2addr v0, v1

    .line 270
    mul-int/2addr v0, v2

    iget v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    add-int/2addr v0, v1

    .line 271
    mul-int/2addr v0, v2

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    const-string v1, "PrinterInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, "minMargins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    const-string v1, ", mediaSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    const-string v1, ", resolutions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    const-string v1, ", colorModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/print/PrinterCapabilitiesInfo;->colorModesToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v1, ", duplexModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/print/PrinterCapabilitiesInfo;->duplexModesToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 252
    iget-object p2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-direct {p0, p2, p1}, Landroid/print/PrinterCapabilitiesInfo;->writeMargins(Landroid/print/PrintAttributes$Margins;Landroid/os/Parcel;)V

    .line 253
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->writeMediaSizes(Landroid/os/Parcel;)V

    .line 254
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->writeResolutions(Landroid/os/Parcel;)V

    .line 256
    iget p2, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget p2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->writeDefaults(Landroid/os/Parcel;)V

    .line 260
    return-void
.end method
