.class public Landroid/os/IServiceManager$CallerContext;
.super Ljava/lang/Object;
.source "IServiceManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallerContext"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/IServiceManager$CallerContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist debugPid:I

.field public blacklist sidName:Ljava/lang/String;

.field public blacklist uid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1015
    new-instance v0, Landroid/os/IServiceManager$CallerContext$1;

    invoke-direct {v0}, Landroid/os/IServiceManager$CallerContext$1;-><init>()V

    sput-object v0, Landroid/os/IServiceManager$CallerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/IServiceManager$CallerContext;->debugPid:I

    .line 1014
    iput v0, p0, Landroid/os/IServiceManager$CallerContext;->uid:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1060
    nop

    .line 1061
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 1041
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1042
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1044
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_72

    .line 1045
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_70

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 1052
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 1055
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1045
    return-void

    .line 1053
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1046
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/IServiceManager$CallerContext;->sidName:Ljava/lang/String;

    .line 1047
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_70

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 1052
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 1055
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1047
    return-void

    .line 1053
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1048
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/IServiceManager$CallerContext;->debugPid:I

    .line 1049
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_70

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 1052
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 1055
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1049
    return-void

    .line 1053
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1050
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/IServiceManager$CallerContext;->uid:I
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_70

    .line 1052
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6a

    .line 1055
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1056
    nop

    .line 1057
    return-void

    .line 1053
    :cond_6a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1052
    :catchall_70
    move-exception v2

    goto :goto_7a

    .line 1044
    :cond_72
    :try_start_72
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_70

    .line 1052
    :goto_7a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_83

    .line 1053
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1055
    :cond_83
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1056
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1029
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 1030
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1031
    iget-object v0, p0, Landroid/os/IServiceManager$CallerContext;->sidName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1032
    iget v0, p0, Landroid/os/IServiceManager$CallerContext;->debugPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    iget v0, p0, Landroid/os/IServiceManager$CallerContext;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1035
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1036
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1038
    return-void
.end method
