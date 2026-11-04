.class Lcom/android/internal/statusbar/DisableStates$1;
.super Ljava/lang/Object;
.source "DisableStates.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/DisableStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/statusbar/DisableStates;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/statusbar/DisableStates;
    .registers 9

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 79
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_2f

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v6, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 85
    :cond_2f
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 86
    new-instance v0, Lcom/android/internal/statusbar/DisableStates;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/statusbar/DisableStates;-><init>(Ljava/util/Map;Z)V

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

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/DisableStates$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/statusbar/DisableStates;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/statusbar/DisableStates;
    .registers 2

    .line 91
    new-array p1, p1, [Lcom/android/internal/statusbar/DisableStates;

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

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/DisableStates$1;->newArray(I)[Lcom/android/internal/statusbar/DisableStates;

    move-result-object p1

    return-object p1
.end method
