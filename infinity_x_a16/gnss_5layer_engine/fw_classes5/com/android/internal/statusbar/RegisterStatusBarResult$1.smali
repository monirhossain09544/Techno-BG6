.class Lcom/android/internal/statusbar/RegisterStatusBarResult$1;
.super Ljava/lang/Object;
.source "RegisterStatusBarResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/RegisterStatusBarResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/statusbar/RegisterStatusBarResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/statusbar/RegisterStatusBarResult;
    .registers 19

    .line 100
    move-object/from16 v0, p1

    sget-object v1, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 101
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayMap(Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 104
    const-class v1, Lcom/android/internal/view/AppearanceRegion;

    .line 105
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Lcom/android/internal/view/AppearanceRegion;

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 107
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 108
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 115
    const-class v1, Lcom/android/internal/statusbar/LetterboxDetails;

    .line 116
    invoke-virtual {v0, v2, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [Lcom/android/internal/statusbar/LetterboxDetails;

    .line 117
    new-instance v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;

    invoke-direct/range {v2 .. v16}, Lcom/android/internal/statusbar/RegisterStatusBarResult;-><init>(Landroid/util/ArrayMap;II[Lcom/android/internal/view/AppearanceRegion;IIZIZIILjava/lang/String;I[Lcom/android/internal/statusbar/LetterboxDetails;)V

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

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/RegisterStatusBarResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/statusbar/RegisterStatusBarResult;
    .registers 2

    .line 126
    new-array p1, p1, [Lcom/android/internal/statusbar/RegisterStatusBarResult;

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

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/RegisterStatusBarResult$1;->newArray(I)[Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object p1

    return-object p1
.end method
