.class Landroid/os/IdmapParams$1;
.super Ljava/lang/Object;
.source "IdmapParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IdmapParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/IdmapParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/IdmapParams;
    .registers 3

    .line 23
    new-instance v0, Landroid/os/IdmapParams;

    invoke-direct {v0}, Landroid/os/IdmapParams;-><init>()V

    .line 24
    invoke-virtual {v0, p1}, Landroid/os/IdmapParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
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

    .line 20
    invoke-virtual {p0, p1}, Landroid/os/IdmapParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/IdmapParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/IdmapParams;
    .registers 2

    .line 29
    new-array p1, p1, [Landroid/os/IdmapParams;

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

    .line 20
    invoke-virtual {p0, p1}, Landroid/os/IdmapParams$1;->newArray(I)[Landroid/os/IdmapParams;

    move-result-object p1

    return-object p1
.end method
