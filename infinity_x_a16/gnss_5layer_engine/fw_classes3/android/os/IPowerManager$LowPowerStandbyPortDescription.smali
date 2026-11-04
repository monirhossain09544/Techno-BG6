.class public Landroid/os/IPowerManager$LowPowerStandbyPortDescription;
.super Ljava/lang/Object;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LowPowerStandbyPortDescription"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/IPowerManager$LowPowerStandbyPortDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist localAddress:[B

.field public blacklist portMatcher:I

.field public blacklist portNumber:I

.field public blacklist protocol:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2986
    new-instance v0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription$1;

    invoke-direct {v0}, Landroid/os/IPowerManager$LowPowerStandbyPortDescription$1;-><init>()V

    sput-object v0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 2980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2982
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->protocol:I

    .line 2983
    iput v0, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portMatcher:I

    .line 2984
    iput v0, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portNumber:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 3034
    nop

    .line 3035
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 3013
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 3014
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3016
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_8d

    .line 3017
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_8b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 3026
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 3029
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3017
    return-void

    .line 3027
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3018
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->protocol:I

    .line 3019
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_8b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 3026
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 3029
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3019
    return-void

    .line 3027
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3020
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portMatcher:I

    .line 3021
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_8b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 3026
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 3029
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3021
    return-void

    .line 3027
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3022
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portNumber:I

    .line 3023
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_8b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 3026
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 3029
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3023
    return-void

    .line 3027
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3024
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->localAddress:[B
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_8b

    .line 3026
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_85

    .line 3029
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3030
    nop

    .line 3031
    return-void

    .line 3027
    :cond_85
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3026
    :catchall_8b
    move-exception v2

    goto :goto_95

    .line 3016
    :cond_8d
    :try_start_8d
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_8b

    .line 3026
    :goto_95
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_9e

    .line 3027
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3029
    :cond_9e
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3030
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 3000
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 3001
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3002
    iget v0, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->protocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3003
    iget v0, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portMatcher:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3004
    iget v0, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3005
    iget-object v0, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->localAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3006
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 3007
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3008
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3009
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3010
    return-void
.end method
