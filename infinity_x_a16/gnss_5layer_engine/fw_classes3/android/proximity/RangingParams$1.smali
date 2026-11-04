.class Landroid/proximity/RangingParams$1;
.super Ljava/lang/Object;
.source "RangingParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/proximity/RangingParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/proximity/RangingParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/proximity/RangingParams;
    .registers 6

    .line 57
    new-instance v0, Landroid/proximity/RangingParams;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/proximity/RangingParams;-><init>(DILandroid/proximity/RangingParams-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Landroid/proximity/RangingParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/proximity/RangingParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/proximity/RangingParams;
    .registers 2

    .line 62
    new-array p1, p1, [Landroid/proximity/RangingParams;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Landroid/proximity/RangingParams$1;->newArray(I)[Landroid/proximity/RangingParams;

    move-result-object p1

    return-object p1
.end method
