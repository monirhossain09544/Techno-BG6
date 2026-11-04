.class public Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;
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
    name = "ApexInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist digest:[B

.field public blacklist digestAlgorithm:I

.field public blacklist longVersion:J

.field public blacklist moduleName:Ljava/lang/String;

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist signerDigests:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 303
    new-instance v0, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo$1;

    invoke-direct {v0}, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->longVersion:J

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->digestAlgorithm:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 357
    nop

    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 335
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_c3

    .line 336
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 349
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 352
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 336
    return-void

    .line 350
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 337
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->packageName:Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 349
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 352
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 338
    return-void

    .line 350
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 339
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->longVersion:J

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 349
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 352
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 340
    return-void

    .line 350
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 341
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->digest:[B

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 349
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 352
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 342
    return-void

    .line 350
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 343
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->digestAlgorithm:I

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 349
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 352
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 344
    return-void

    .line 350
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 345
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->signerDigests:[Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 349
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 352
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 346
    return-void

    .line 350
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 347
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->moduleName:Ljava/lang/String;
    :try_end_b2
    .catchall {:try_start_ac .. :try_end_b2} :catchall_c1

    .line 349
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_bb

    .line 352
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 353
    nop

    .line 354
    return-void

    .line 350
    :cond_bb
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 349
    :catchall_c1
    move-exception v2

    goto :goto_cb

    .line 335
    :cond_c3
    :try_start_c3
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_cb
    .catchall {:try_start_c3 .. :try_end_cb} :catchall_c1

    .line 349
    :goto_cb
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_d4

    .line 350
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_d4
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 353
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 318
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget-wide v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->longVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 321
    iget-object v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->digest:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 322
    iget v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->digestAlgorithm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-object v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->signerDigests:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 326
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 327
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 329
    return-void
.end method
