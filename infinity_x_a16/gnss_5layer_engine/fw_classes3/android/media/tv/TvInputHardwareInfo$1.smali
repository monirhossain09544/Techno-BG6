.class Landroid/media/tv/TvInputHardwareInfo$1;
.super Ljava/lang/Object;
.source "TvInputHardwareInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputHardwareInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/TvInputHardwareInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvInputHardwareInfo;
    .registers 5

    .line 84
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/media/tv/TvInputHardwareInfo;

    invoke-direct {v1, v0}, Landroid/media/tv/TvInputHardwareInfo;-><init>(Landroid/media/tv/TvInputHardwareInfo-IA;)V

    .line 85
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputHardwareInfo;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    .line 86
    return-object v1

    .line 87
    :catch_a
    move-exception p1

    .line 88
    const-string v1, "TvInputHardwareInfo"

    const-string v2, "Exception creating TvInputHardwareInfo from parcel"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
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

    .line 80
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputHardwareInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/tv/TvInputHardwareInfo;
    .registers 2

    .line 95
    new-array p1, p1, [Landroid/media/tv/TvInputHardwareInfo;

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

    .line 80
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputHardwareInfo$1;->newArray(I)[Landroid/media/tv/TvInputHardwareInfo;

    move-result-object p1

    return-object p1
.end method
