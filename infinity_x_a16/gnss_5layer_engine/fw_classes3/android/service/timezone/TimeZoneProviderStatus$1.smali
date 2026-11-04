.class Landroid/service/timezone/TimeZoneProviderStatus$1;
.super Ljava/lang/Object;
.source "TimeZoneProviderStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/timezone/TimeZoneProviderStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/timezone/TimeZoneProviderStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/timezone/TimeZoneProviderStatus;
    .registers 6

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 254
    new-instance v2, Landroid/service/timezone/TimeZoneProviderStatus;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p1, v3}, Landroid/service/timezone/TimeZoneProviderStatus;-><init>(IIILandroid/service/timezone/TimeZoneProviderStatus-IA;)V

    return-object v2
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

    .line 248
    invoke-virtual {p0, p1}, Landroid/service/timezone/TimeZoneProviderStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/timezone/TimeZoneProviderStatus;
    .registers 2

    .line 260
    new-array p1, p1, [Landroid/service/timezone/TimeZoneProviderStatus;

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

    .line 248
    invoke-virtual {p0, p1}, Landroid/service/timezone/TimeZoneProviderStatus$1;->newArray(I)[Landroid/service/timezone/TimeZoneProviderStatus;

    move-result-object p1

    return-object p1
.end method
