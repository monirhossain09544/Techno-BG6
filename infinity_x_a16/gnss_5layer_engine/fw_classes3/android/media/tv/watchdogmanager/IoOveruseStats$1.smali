.class Landroid/media/tv/watchdogmanager/IoOveruseStats$1;
.super Ljava/lang/Object;
.source "IoOveruseStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/watchdogmanager/IoOveruseStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/watchdogmanager/IoOveruseStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/watchdogmanager/IoOveruseStats;
    .registers 3

    .line 216
    new-instance v0, Landroid/media/tv/watchdogmanager/IoOveruseStats;

    invoke-direct {v0, p1}, Landroid/media/tv/watchdogmanager/IoOveruseStats;-><init>(Landroid/os/Parcel;)V

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

    .line 208
    invoke-virtual {p0, p1}, Landroid/media/tv/watchdogmanager/IoOveruseStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/watchdogmanager/IoOveruseStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/tv/watchdogmanager/IoOveruseStats;
    .registers 2

    .line 211
    new-array p1, p1, [Landroid/media/tv/watchdogmanager/IoOveruseStats;

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

    .line 208
    invoke-virtual {p0, p1}, Landroid/media/tv/watchdogmanager/IoOveruseStats$1;->newArray(I)[Landroid/media/tv/watchdogmanager/IoOveruseStats;

    move-result-object p1

    return-object p1
.end method
