.class Landroid/os/IServiceManager$CallerContext$1;
.super Ljava/lang/Object;
.source "IServiceManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IServiceManager$CallerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/IServiceManager$CallerContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/IServiceManager$CallerContext;
    .registers 3

    .line 1018
    new-instance v0, Landroid/os/IServiceManager$CallerContext;

    invoke-direct {v0}, Landroid/os/IServiceManager$CallerContext;-><init>()V

    .line 1019
    invoke-virtual {v0, p1}, Landroid/os/IServiceManager$CallerContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 1020
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

    .line 1015
    invoke-virtual {p0, p1}, Landroid/os/IServiceManager$CallerContext$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/IServiceManager$CallerContext;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/IServiceManager$CallerContext;
    .registers 2

    .line 1024
    new-array p1, p1, [Landroid/os/IServiceManager$CallerContext;

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

    .line 1015
    invoke-virtual {p0, p1}, Landroid/os/IServiceManager$CallerContext$1;->newArray(I)[Landroid/os/IServiceManager$CallerContext;

    move-result-object p1

    return-object p1
.end method
