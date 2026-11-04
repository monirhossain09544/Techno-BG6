.class public Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;
.super Ljava/lang/Object;
.source "IBinaryTransparencyService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/IBinaryTransparencyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist digest:[B

.field public blacklist digestAlgorithm:I

.field public blacklist initiator:Ljava/lang/String;

.field public blacklist initiatorSignerDigests:[Ljava/lang/String;

.field public blacklist installer:Ljava/lang/String;

.field public blacklist longVersion:J

.field public blacklist mbaStatus:I

.field public blacklist originator:Ljava/lang/String;

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist signerDigests:[Ljava/lang/String;

.field public blacklist splitName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 374
    new-instance v0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo$1;

    invoke-direct {v0}, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->longVersion:J

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->digestAlgorithm:I

    .line 369
    iput v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->mbaStatus:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 443
    nop

    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 411
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_14a

    .line 412
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 438
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 412
    return-void

    .line 436
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 413
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->packageName:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 438
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 414
    return-void

    .line 436
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 415
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->longVersion:J

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 438
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 416
    return-void

    .line 436
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 417
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->splitName:Ljava/lang/String;

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 438
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 418
    return-void

    .line 436
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 419
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->digest:[B

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 438
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 420
    return-void

    .line 436
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 421
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->digestAlgorithm:I

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 438
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 422
    return-void

    .line 436
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 423
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->signerDigests:[Ljava/lang/String;

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 438
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 424
    return-void

    .line 436
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 425
    :cond_c7
    :try_start_c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->mbaStatus:I

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e2

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_dc

    .line 438
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 426
    return-void

    .line 436
    :cond_dc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 427
    :cond_e2
    :try_start_e2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->initiator:Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ec
    .catchall {:try_start_e2 .. :try_end_ec} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_fd

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f7

    .line 438
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 428
    return-void

    .line 436
    :cond_f7
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 429
    :cond_fd
    :try_start_fd
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->initiatorSignerDigests:[Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_107
    .catchall {:try_start_fd .. :try_end_107} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_118

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_112

    .line 438
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 430
    return-void

    .line 436
    :cond_112
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 431
    :cond_118
    :try_start_118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->installer:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_122
    .catchall {:try_start_118 .. :try_end_122} :catchall_148

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_133

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12d

    .line 438
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 432
    return-void

    .line 436
    :cond_12d
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 433
    :cond_133
    :try_start_133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->originator:Ljava/lang/String;
    :try_end_139
    .catchall {:try_start_133 .. :try_end_139} :catchall_148

    .line 435
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_142

    .line 438
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 439
    nop

    .line 440
    return-void

    .line 436
    :cond_142
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 435
    :catchall_148
    move-exception v2

    goto :goto_152

    .line 411
    :cond_14a
    :try_start_14a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_152
    .catchall {:try_start_14a .. :try_end_152} :catchall_148

    .line 435
    :goto_152
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_15b

    .line 436
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 438
    :cond_15b
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 439
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget-object v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-wide v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->longVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->splitName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->digest:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 394
    iget v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->digestAlgorithm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget-object v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->signerDigests:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 396
    iget v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->mbaStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget-object v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->initiator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->initiatorSignerDigests:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->installer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->originator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 402
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 403
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 405
    return-void
.end method
