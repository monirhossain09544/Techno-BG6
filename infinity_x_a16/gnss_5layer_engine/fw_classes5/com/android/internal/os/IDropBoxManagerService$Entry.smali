.class public Lcom/android/internal/os/IDropBoxManagerService$Entry;
.super Ljava/lang/Object;
.source "IDropBoxManagerService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/IDropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/os/IDropBoxManagerService$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist data:[B

.field public blacklist fd:Landroid/os/ParcelFileDescriptor;

.field public blacklist flags:I

.field public blacklist tag:Ljava/lang/String;

.field public blacklist timestampMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 298
    new-instance v0, Lcom/android/internal/os/IDropBoxManagerService$Entry$1;

    invoke-direct {v0}, Lcom/android/internal/os/IDropBoxManagerService$Entry$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->timestampMillis:J

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->flags:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 354
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 355
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 356
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 358
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 349
    nop

    .line 350
    iget-object v0, p0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v0}, Lcom/android/internal/os/IDropBoxManagerService$Entry;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 351
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 329
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_ac

    .line 330
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 344
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 330
    return-void

    .line 342
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 331
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->tag:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 344
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 332
    return-void

    .line 342
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 333
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->timestampMillis:J

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 344
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 334
    return-void

    .line 342
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 335
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->flags:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 344
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 336
    return-void

    .line 342
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 337
    :cond_76
    :try_start_76
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->fd:Landroid/os/ParcelFileDescriptor;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_76 .. :try_end_84} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_95

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8f

    .line 344
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 338
    return-void

    .line 342
    :cond_8f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 339
    :cond_95
    :try_start_95
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->data:[B
    :try_end_9b
    .catchall {:try_start_95 .. :try_end_9b} :catchall_aa

    .line 341
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a4

    .line 344
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 345
    nop

    .line 346
    return-void

    .line 342
    :cond_a4
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 341
    :catchall_aa
    move-exception v2

    goto :goto_b4

    .line 329
    :cond_ac
    :try_start_ac
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b4
    .catchall {:try_start_ac .. :try_end_b4} :catchall_aa

    .line 341
    :goto_b4
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_bd

    .line 342
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 344
    :cond_bd
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 345
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 313
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-object v1, p0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->tag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget-wide v1, p0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->timestampMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 316
    iget v1, p0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-object v1, p0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 318
    iget-object p2, p0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->data:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 320
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 321
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 323
    return-void
.end method
