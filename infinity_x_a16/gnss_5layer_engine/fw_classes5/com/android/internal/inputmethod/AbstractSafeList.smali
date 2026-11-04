.class public abstract Lcom/android/internal/inputmethod/AbstractSafeList;
.super Ljava/lang/Object;
.source "AbstractSafeList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# instance fields
.field private blacklist mBuffer:[B


# direct methods
.method protected constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_11

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 45
    invoke-static {p1}, Lcom/android/internal/inputmethod/AbstractSafeList;->marshall(Ljava/util/List;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/inputmethod/AbstractSafeList;->mBuffer:[B

    .line 47
    :cond_11
    return-void
.end method

.method protected constructor blacklist <init>([B)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/internal/inputmethod/AbstractSafeList;->mBuffer:[B

    .line 51
    return-void
.end method

.method protected static blacklist extractFrom(Lcom/android/internal/inputmethod/AbstractSafeList;Landroid/os/Parcelable$Creator;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Lcom/android/internal/inputmethod/AbstractSafeList<",
            "TT;>;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 65
    if-nez p0, :cond_8

    .line 66
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 68
    :cond_8
    iget-object v0, p0, Lcom/android/internal/inputmethod/AbstractSafeList;->mBuffer:[B

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/inputmethod/AbstractSafeList;->mBuffer:[B

    .line 70
    if-eqz v0, :cond_16

    .line 71
    invoke-static {v0, p1}, Lcom/android/internal/inputmethod/AbstractSafeList;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object p0

    .line 72
    if-eqz p0, :cond_16

    .line 73
    return-object p0

    .line 76
    :cond_16
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static blacklist marshall(Ljava/util/List;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)[B"
        }
    .end annotation

    .line 96
    nop

    .line 98
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_14

    .line 99
    :try_start_5
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    .line 102
    if-eqz v0, :cond_11

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 100
    :cond_11
    return-object p0

    .line 102
    :catchall_12
    move-exception p0

    goto :goto_16

    :catchall_14
    move-exception p0

    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_1b

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    :cond_1b
    throw p0
.end method

.method public static blacklist unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 115
    nop

    .line 117
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_19

    .line 118
    :try_start_5
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 119
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_17

    .line 122
    if-eqz v0, :cond_16

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    :cond_16
    return-object p0

    .line 122
    :catchall_17
    move-exception p0

    goto :goto_1b

    :catchall_19
    move-exception p0

    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_20

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 125
    :cond_20
    throw p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 87
    iget-object p2, p0, Lcom/android/internal/inputmethod/AbstractSafeList;->mBuffer:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBlob([B)V

    .line 88
    return-void
.end method
