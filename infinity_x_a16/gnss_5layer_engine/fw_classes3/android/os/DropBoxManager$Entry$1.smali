.class Landroid/os/DropBoxManager$Entry$1;
.super Ljava/lang/Object;
.source "DropBoxManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DropBoxManager$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/DropBoxManager$Entry;
    .registers 4

    .line 279
    sget-object v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 280
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/IDropBoxManagerService$Entry;

    .line 281
    const/4 v0, 0x0

    if-nez p1, :cond_c

    goto :goto_12

    :cond_c
    new-instance v1, Landroid/os/DropBoxManager$Entry;

    invoke-direct {v1, p1, v0}, Landroid/os/DropBoxManager$Entry;-><init>(Lcom/android/internal/os/IDropBoxManagerService$Entry;Landroid/os/DropBoxManager-IA;)V

    move-object v0, v1

    :goto_12
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

    .line 276
    invoke-virtual {p0, p1}, Landroid/os/DropBoxManager$Entry$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/DropBoxManager$Entry;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/DropBoxManager$Entry;
    .registers 2

    .line 277
    new-array p1, p1, [Landroid/os/DropBoxManager$Entry;

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

    .line 276
    invoke-virtual {p0, p1}, Landroid/os/DropBoxManager$Entry$1;->newArray(I)[Landroid/os/DropBoxManager$Entry;

    move-result-object p1

    return-object p1
.end method
