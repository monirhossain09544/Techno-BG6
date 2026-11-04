.class Landroid/media/tv/watchdogmanager/PerStateBytes$1;
.super Ljava/lang/Object;
.source "PerStateBytes.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/watchdogmanager/PerStateBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/watchdogmanager/PerStateBytes;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/watchdogmanager/PerStateBytes;
    .registers 3

    .line 115
    new-instance v0, Landroid/media/tv/watchdogmanager/PerStateBytes;

    invoke-direct {v0, p1}, Landroid/media/tv/watchdogmanager/PerStateBytes;-><init>(Landroid/os/Parcel;)V

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

    .line 106
    invoke-virtual {p0, p1}, Landroid/media/tv/watchdogmanager/PerStateBytes$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/watchdogmanager/PerStateBytes;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/tv/watchdogmanager/PerStateBytes;
    .registers 2

    .line 109
    new-array p1, p1, [Landroid/media/tv/watchdogmanager/PerStateBytes;

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

    .line 106
    invoke-virtual {p0, p1}, Landroid/media/tv/watchdogmanager/PerStateBytes$1;->newArray(I)[Landroid/media/tv/watchdogmanager/PerStateBytes;

    move-result-object p1

    return-object p1
.end method
