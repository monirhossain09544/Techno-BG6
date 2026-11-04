.class public Landroid/os/ExternalVibrationScale;
.super Ljava/lang/Object;
.source "ExternalVibrationScale.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ExternalVibrationScale$ScaleLevel;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/ExternalVibrationScale;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist adaptiveHapticsScale:F

.field public blacklist scaleFactor:F

.field public blacklist scaleLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Landroid/os/ExternalVibrationScale$1;

    invoke-direct {v0}, Landroid/os/ExternalVibrationScale$1;-><init>()V

    sput-object v0, Landroid/os/ExternalVibrationScale;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    .line 30
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/os/ExternalVibrationScale;->scaleFactor:F

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/os/ExternalVibrationScale;->adaptiveHapticsScale:F

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 79
    nop

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_72

    .line 64
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_70

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 72
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_70

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 72
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/os/ExternalVibrationScale;->scaleFactor:F

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_70

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 72
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/os/ExternalVibrationScale;->adaptiveHapticsScale:F
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_70

    .line 71
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6a

    .line 74
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    nop

    .line 76
    return-void

    .line 72
    :cond_6a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :catchall_70
    move-exception v2

    goto :goto_7a

    .line 63
    :cond_72
    :try_start_72
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_70

    .line 71
    :goto_7a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_83

    .line 72
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_83
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Landroid/os/ExternalVibrationScale;->scaleFactor:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 52
    iget v0, p0, Landroid/os/ExternalVibrationScale;->adaptiveHapticsScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void
.end method
