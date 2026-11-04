.class public Landroid/security/metrics/KeyCreationWithGeneralInfo;
.super Ljava/lang/Object;
.source "KeyCreationWithGeneralInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/metrics/KeyCreationWithGeneralInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist algorithm:I

.field public blacklist attestation_requested:Z

.field public blacklist ec_curve:I

.field public blacklist error_code:I

.field public blacklist key_origin:I

.field public blacklist key_size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Landroid/security/metrics/KeyCreationWithGeneralInfo$1;

    invoke-direct {v0}, Landroid/security/metrics/KeyCreationWithGeneralInfo$1;-><init>()V

    sput-object v0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_size:I

    .line 20
    iput v0, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->error_code:I

    .line 21
    iput-boolean v0, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->attestation_requested:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 76
    nop

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_c3

    .line 55
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 68
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 71
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 69
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->algorithm:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 68
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 71
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 69
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_size:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 68
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 71
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 69
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->ec_curve:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 68
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 71
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 69
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_origin:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 68
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 71
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 69
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->error_code:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_c1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 68
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 71
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 69
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->attestation_requested:Z
    :try_end_b2
    .catchall {:try_start_ac .. :try_end_b2} :catchall_c1

    .line 68
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_bb

    .line 71
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    nop

    .line 73
    return-void

    .line 69
    :cond_bb
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :catchall_c1
    move-exception v2

    goto :goto_cb

    .line 54
    :cond_c3
    :try_start_c3
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_cb
    .catchall {:try_start_c3 .. :try_end_cb} :catchall_c1

    .line 68
    :goto_cb
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_d4

    .line 69
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_d4
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v0, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->algorithm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->ec_curve:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_origin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->error_code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-boolean v0, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->attestation_requested:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void
.end method
