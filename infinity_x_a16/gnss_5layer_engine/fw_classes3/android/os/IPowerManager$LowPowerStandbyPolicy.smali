.class public Landroid/os/IPowerManager$LowPowerStandbyPolicy;
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
    name = "LowPowerStandbyPolicy"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/IPowerManager$LowPowerStandbyPolicy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist allowedFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist allowedReasons:I

.field public blacklist exemptPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist identifier:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2928
    new-instance v0, Landroid/os/IPowerManager$LowPowerStandbyPolicy$1;

    invoke-direct {v0}, Landroid/os/IPowerManager$LowPowerStandbyPolicy$1;-><init>()V

    sput-object v0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 2922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2926
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->allowedReasons:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2976
    nop

    .line 2977
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 2955
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2956
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2958
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_8d

    .line 2959
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_8b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 2968
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 2971
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2959
    return-void

    .line 2969
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2960
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->identifier:Ljava/lang/String;

    .line 2961
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_8b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 2968
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 2971
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2961
    return-void

    .line 2969
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2962
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->exemptPackages:Ljava/util/List;

    .line 2963
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_8b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 2968
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 2971
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2963
    return-void

    .line 2969
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2964
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->allowedReasons:I

    .line 2965
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_8b

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 2968
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 2971
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2965
    return-void

    .line 2969
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2966
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->allowedFeatures:Ljava/util/List;
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_8b

    .line 2968
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_85

    .line 2971
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2972
    nop

    .line 2973
    return-void

    .line 2969
    :cond_85
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2968
    :catchall_8b
    move-exception v2

    goto :goto_95

    .line 2958
    :cond_8d
    :try_start_8d
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_8b

    .line 2968
    :goto_95
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_9e

    .line 2969
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2971
    :cond_9e
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2972
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 2942
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 2943
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2944
    iget-object v0, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2945
    iget-object v0, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->exemptPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2946
    iget v0, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->allowedReasons:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2947
    iget-object v0, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->allowedFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2948
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2949
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2950
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2951
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2952
    return-void
.end method
