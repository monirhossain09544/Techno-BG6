.class Lcom/android/internal/os/IDropBoxManagerService$Entry$1;
.super Ljava/lang/Object;
.source "IDropBoxManagerService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/IDropBoxManagerService$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/os/IDropBoxManagerService$Entry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/IDropBoxManagerService$Entry;
    .registers 3

    .line 301
    new-instance v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;

    invoke-direct {v0}, Lcom/android/internal/os/IDropBoxManagerService$Entry;-><init>()V

    .line 302
    invoke-virtual {v0, p1}, Lcom/android/internal/os/IDropBoxManagerService$Entry;->readFromParcel(Landroid/os/Parcel;)V

    .line 303
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

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/internal/os/IDropBoxManagerService$Entry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/IDropBoxManagerService$Entry;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/os/IDropBoxManagerService$Entry;
    .registers 2

    .line 307
    new-array p1, p1, [Lcom/android/internal/os/IDropBoxManagerService$Entry;

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

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/internal/os/IDropBoxManagerService$Entry$1;->newArray(I)[Lcom/android/internal/os/IDropBoxManagerService$Entry;

    move-result-object p1

    return-object p1
.end method
