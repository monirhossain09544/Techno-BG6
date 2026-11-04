.class public final Landroid/print/PrintAttributes;
.super Ljava/lang/Object;
.source "PrintAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintAttributes$MediaSize;,
        Landroid/print/PrintAttributes$Resolution;,
        Landroid/print/PrintAttributes$Margins;,
        Landroid/print/PrintAttributes$Builder;,
        Landroid/print/PrintAttributes$DuplexMode;,
        Landroid/print/PrintAttributes$ColorMode;
    }
.end annotation


# static fields
.field public static final whitelist COLOR_MODE_COLOR:I = 0x2

.field public static final whitelist COLOR_MODE_MONOCHROME:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/print/PrintAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DUPLEX_MODE_LONG_EDGE:I = 0x2

.field public static final whitelist DUPLEX_MODE_NONE:I = 0x1

.field public static final whitelist DUPLEX_MODE_SHORT_EDGE:I = 0x4

.field private static final greylist-max-o VALID_COLOR_MODES:I = 0x3

.field private static final greylist-max-o VALID_DUPLEX_MODES:I = 0x7


# instance fields
.field private greylist-max-o mColorMode:I

.field private greylist-max-o mDuplexMode:I

.field private greylist-max-o mMediaSize:Landroid/print/PrintAttributes$MediaSize;

.field private greylist-max-o mMinMargins:Landroid/print/PrintAttributes$Margins;

.field private greylist-max-o mResolution:Landroid/print/PrintAttributes$Resolution;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1525
    new-instance v0, Landroid/print/PrintAttributes$1;

    invoke-direct {v0}, Landroid/print/PrintAttributes$1;-><init>()V

    sput-object v0, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    invoke-static {p1}, Landroid/print/PrintAttributes$MediaSize;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$MediaSize;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1e

    invoke-static {p1}, Landroid/print/PrintAttributes$Resolution;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Resolution;

    move-result-object v0

    goto :goto_1f

    :cond_1e
    move-object v0, v1

    :goto_1f
    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2b

    invoke-static {p1}, Landroid/print/PrintAttributes$Margins;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;

    move-result-object v1

    :cond_2b
    iput-object v1, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    .line 107
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    if-eqz v0, :cond_3c

    .line 108
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    invoke-static {v0}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    .line 110
    :cond_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    .line 111
    iget p1, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    if-eqz p1, :cond_4b

    .line 112
    iget p1, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    invoke-static {p1}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    .line 114
    :cond_4b
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/print/PrintAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/print/PrintAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static greylist-max-o colorModeToString(I)Ljava/lang/String;
    .registers 1

    .line 1404
    packed-switch p0, :pswitch_data_c

    .line 1412
    const-string p0, "COLOR_MODE_UNKNOWN"

    return-object p0

    .line 1409
    :pswitch_6
    const-string p0, "COLOR_MODE_COLOR"

    return-object p0

    .line 1406
    :pswitch_9
    const-string p0, "COLOR_MODE_MONOCHROME"

    return-object p0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method static greylist-max-o duplexModeToString(I)Ljava/lang/String;
    .registers 1

    .line 1418
    packed-switch p0, :pswitch_data_10

    .line 1429
    :pswitch_3
    const-string p0, "DUPLEX_MODE_UNKNOWN"

    return-object p0

    .line 1426
    :pswitch_6
    const-string p0, "DUPLEX_MODE_SHORT_EDGE"

    return-object p0

    .line 1423
    :pswitch_9
    const-string p0, "DUPLEX_MODE_LONG_EDGE"

    return-object p0

    .line 1420
    :pswitch_c
    const-string p0, "DUPLEX_MODE_NONE"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method static greylist-max-o enforceValidColorMode(I)V
    .registers 4

    .line 1435
    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_c

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1438
    return-void

    .line 1436
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid color mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o enforceValidDuplexMode(I)V
    .registers 4

    .line 1441
    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_c

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1444
    return-void

    .line 1442
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid duplex mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o asLandscape()Landroid/print/PrintAttributes;
    .registers 7

    .line 310
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_7

    .line 311
    return-object p0

    .line 314
    :cond_7
    new-instance v0, Landroid/print/PrintAttributes;

    invoke-direct {v0}, Landroid/print/PrintAttributes;-><init>()V

    .line 317
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintAttributes$MediaSize;->asLandscape()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V

    .line 320
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v1

    .line 321
    new-instance v2, Landroid/print/PrintAttributes$Resolution;

    .line 322
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Resolution;->getId()Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Resolution;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 324
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Resolution;->getVerticalDpi()I

    move-result v5

    .line 325
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Resolution;->getHorizontalDpi()I

    move-result v1

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 326
    invoke-virtual {v0, v2}, Landroid/print/PrintAttributes;->setResolution(Landroid/print/PrintAttributes$Resolution;)V

    .line 329
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->setMinMargins(Landroid/print/PrintAttributes$Margins;)V

    .line 331
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->setColorMode(I)V

    .line 332
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->setDuplexMode(I)V

    .line 334
    return-object v0
.end method

.method public greylist-max-o asPortrait()Landroid/print/PrintAttributes;
    .registers 7

    .line 272
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 273
    return-object p0

    .line 276
    :cond_7
    new-instance v0, Landroid/print/PrintAttributes;

    invoke-direct {v0}, Landroid/print/PrintAttributes;-><init>()V

    .line 279
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintAttributes$MediaSize;->asPortrait()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V

    .line 282
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v1

    .line 283
    new-instance v2, Landroid/print/PrintAttributes$Resolution;

    .line 284
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Resolution;->getId()Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Resolution;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Resolution;->getVerticalDpi()I

    move-result v5

    .line 287
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Resolution;->getHorizontalDpi()I

    move-result v1

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/print/PrintAttributes$Resolution;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 288
    invoke-virtual {v0, v2}, Landroid/print/PrintAttributes;->setResolution(Landroid/print/PrintAttributes$Resolution;)V

    .line 291
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->setMinMargins(Landroid/print/PrintAttributes$Margins;)V

    .line 293
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->setColorMode(I)V

    .line 294
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes;->setDuplexMode(I)V

    .line 296
    return-object v0
.end method

.method public greylist-max-o clear()V
    .registers 2

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    .line 442
    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    .line 443
    iput-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 444
    const/4 v0, 0x0

    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    .line 445
    iput v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    .line 446
    return-void
.end method

.method public greylist-max-o copyFrom(Landroid/print/PrintAttributes;)V
    .registers 3

    .line 452
    iget-object v0, p1, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    iput-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    .line 453
    iget-object v0, p1, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    iput-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    .line 454
    iget-object v0, p1, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 455
    iget v0, p1, Landroid/print/PrintAttributes;->mColorMode:I

    iput v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    .line 456
    iget p1, p1, Landroid/print/PrintAttributes;->mDuplexMode:I

    iput p1, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    .line 457
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 380
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 381
    return v0

    .line 383
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 384
    return v1

    .line 386
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 387
    return v1

    .line 389
    :cond_13
    check-cast p1, Landroid/print/PrintAttributes;

    .line 390
    iget v2, p0, Landroid/print/PrintAttributes;->mColorMode:I

    iget v3, p1, Landroid/print/PrintAttributes;->mColorMode:I

    if-eq v2, v3, :cond_1c

    .line 391
    return v1

    .line 393
    :cond_1c
    iget v2, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    iget v3, p1, Landroid/print/PrintAttributes;->mDuplexMode:I

    if-eq v2, v3, :cond_23

    .line 394
    return v1

    .line 396
    :cond_23
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-nez v2, :cond_2c

    .line 397
    iget-object v2, p1, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-eqz v2, :cond_37

    .line 398
    return v1

    .line 400
    :cond_2c
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iget-object v3, p1, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Margins;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 401
    return v1

    .line 403
    :cond_37
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-nez v2, :cond_40

    .line 404
    iget-object v2, p1, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-eqz v2, :cond_4b

    .line 405
    return v1

    .line 407
    :cond_40
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    iget-object v3, p1, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$MediaSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 408
    return v1

    .line 410
    :cond_4b
    iget-object v2, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-nez v2, :cond_54

    .line 411
    iget-object p1, p1, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-eqz p1, :cond_5f

    .line 412
    return v1

    .line 414
    :cond_54
    iget-object v2, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    iget-object p1, p1, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v2, p1}, Landroid/print/PrintAttributes$Resolution;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    .line 415
    return v1

    .line 417
    :cond_5f
    return v0
.end method

.method public whitelist getColorMode()I
    .registers 2

    .line 201
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    return v0
.end method

.method public whitelist getDuplexMode()I
    .registers 2

    .line 242
    iget v0, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    return v0
.end method

.method public whitelist getMediaSize()Landroid/print/PrintAttributes$MediaSize;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    return-object v0
.end method

.method public whitelist getMinMargins()Landroid/print/PrintAttributes$Margins;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    return-object v0
.end method

.method public whitelist getResolution()Landroid/print/PrintAttributes$Resolution;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 369
    nop

    .line 370
    iget v0, p0, Landroid/print/PrintAttributes;->mColorMode:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 371
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    add-int/2addr v0, v2

    .line 372
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    const/4 v3, 0x0

    if-nez v2, :cond_12

    move v2, v3

    goto :goto_18

    :cond_12
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Margins;->hashCode()I

    move-result v2

    :goto_18
    add-int/2addr v0, v2

    .line 373
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    if-nez v2, :cond_20

    move v2, v3

    goto :goto_26

    :cond_20
    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2}, Landroid/print/PrintAttributes$MediaSize;->hashCode()I

    move-result v2

    :goto_26
    add-int/2addr v0, v2

    .line 374
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-nez v1, :cond_2d

    goto :goto_33

    :cond_2d
    iget-object v1, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v1}, Landroid/print/PrintAttributes$Resolution;->hashCode()I

    move-result v3

    :goto_33
    add-int/2addr v0, v3

    .line 375
    return v0
.end method

.method public greylist-max-o isPortrait()Z
    .registers 2

    .line 229
    iget-object v0, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o setColorMode(I)V
    .registers 2

    .line 215
    invoke-static {p1}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    .line 216
    iput p1, p0, Landroid/print/PrintAttributes;->mColorMode:I

    .line 217
    return-void
.end method

.method public greylist-max-o setDuplexMode(I)V
    .registers 2

    .line 257
    invoke-static {p1}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    .line 258
    iput p1, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    .line 259
    return-void
.end method

.method public greylist-max-o setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V
    .registers 2

    .line 133
    iput-object p1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    .line 134
    return-void
.end method

.method public greylist-max-o setMinMargins(Landroid/print/PrintAttributes$Margins;)V
    .registers 2

    .line 189
    iput-object p1, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    .line 190
    return-void
.end method

.method public greylist-max-o setResolution(Landroid/print/PrintAttributes$Resolution;)V
    .registers 2

    .line 153
    iput-object p1, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    .line 154
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    const-string v1, "PrintAttributes{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const-string v1, "mediaSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 425
    iget-object v1, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    const-string v2, ", orientation: "

    if-eqz v1, :cond_31

    .line 426
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 427
    const-string/jumbo v2, "portrait"

    goto :goto_2d

    :cond_2b
    const-string v2, "landscape"

    .line 426
    :goto_2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 429
    :cond_31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :goto_3b
    const-string v1, ", resolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 432
    const-string v1, ", minMargins: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 433
    const-string v1, ", colorMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes;->mColorMode:I

    invoke-static {v2}, Landroid/print/PrintAttributes;->colorModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v1, ", duplexMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    invoke-static {v2}, Landroid/print/PrintAttributes;->duplexModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 339
    iget-object p2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_f

    .line 340
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget-object p2, p0, Landroid/print/PrintAttributes;->mMediaSize:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes$MediaSize;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_12

    .line 343
    :cond_f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    :goto_12
    iget-object p2, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    if-eqz p2, :cond_1f

    .line 346
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-object p2, p0, Landroid/print/PrintAttributes;->mResolution:Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes$Resolution;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_22

    .line 349
    :cond_1f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    :goto_22
    iget-object p2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-eqz p2, :cond_2f

    .line 352
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget-object p2, p0, Landroid/print/PrintAttributes;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes$Margins;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_32

    .line 355
    :cond_2f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    :goto_32
    iget p2, p0, Landroid/print/PrintAttributes;->mColorMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget p2, p0, Landroid/print/PrintAttributes;->mDuplexMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    return-void
.end method
