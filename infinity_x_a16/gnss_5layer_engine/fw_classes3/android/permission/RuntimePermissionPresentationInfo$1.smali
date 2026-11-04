.class Landroid/permission/RuntimePermissionPresentationInfo$1;
.super Ljava/lang/Object;
.source "RuntimePermissionPresentationInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/RuntimePermissionPresentationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/permission/RuntimePermissionPresentationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/permission/RuntimePermissionPresentationInfo;
    .registers 7

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 105
    new-instance v1, Landroid/permission/RuntimePermissionPresentationInfo;

    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_12

    move v2, v4

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_18

    move v3, v4

    :cond_18
    invoke-direct {v1, v0, v2, v3}, Landroid/permission/RuntimePermissionPresentationInfo;-><init>(Ljava/lang/CharSequence;ZZ)V

    return-object v1
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

    .line 100
    invoke-virtual {p0, p1}, Landroid/permission/RuntimePermissionPresentationInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/permission/RuntimePermissionPresentationInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/permission/RuntimePermissionPresentationInfo;
    .registers 2

    .line 110
    new-array p1, p1, [Landroid/permission/RuntimePermissionPresentationInfo;

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

    .line 100
    invoke-virtual {p0, p1}, Landroid/permission/RuntimePermissionPresentationInfo$1;->newArray(I)[Landroid/permission/RuntimePermissionPresentationInfo;

    move-result-object p1

    return-object p1
.end method
