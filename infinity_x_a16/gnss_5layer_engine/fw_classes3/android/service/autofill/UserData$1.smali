.class Landroid/service/autofill/UserData$1;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/UserData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/UserData;
    .registers 12

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 455
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 456
    const-class v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 457
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 458
    const-class v7, Landroid/os/Bundle;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 460
    new-instance p1, Landroid/service/autofill/UserData$Builder;

    const/4 v7, 0x0

    aget-object v8, v2, v7

    aget-object v9, v1, v7

    invoke-direct {p1, v0, v8, v9}, Landroid/service/autofill/UserData$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1, v3, v4}, Landroid/service/autofill/UserData$Builder;->setFieldClassificationAlgorithm(Ljava/lang/String;Landroid/os/Bundle;)Landroid/service/autofill/UserData$Builder;

    move-result-object p1

    .line 463
    const/4 v0, 0x1

    :goto_3f
    array-length v3, v1

    if-ge v0, v3, :cond_4c

    .line 464
    aget-object v3, v1, v0

    .line 465
    aget-object v4, v2, v0

    invoke-virtual {p1, v4, v3}, Landroid/service/autofill/UserData$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/service/autofill/UserData$Builder;

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 468
    :cond_4c
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 469
    if-lez v0, :cond_6e

    .line 470
    nop

    :goto_53
    if-ge v7, v0, :cond_6e

    .line 471
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 472
    nop

    .line 473
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 472
    invoke-virtual {p1, v1, v2, v3}, Landroid/service/autofill/UserData$Builder;->setFieldClassificationAlgorithmForCategory(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/service/autofill/UserData$Builder;

    .line 470
    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    .line 476
    :cond_6e
    invoke-virtual {p1}, Landroid/service/autofill/UserData$Builder;->build()Landroid/service/autofill/UserData;

    move-result-object p1

    return-object p1
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

    .line 444
    invoke-virtual {p0, p1}, Landroid/service/autofill/UserData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/UserData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/UserData;
    .registers 2

    .line 481
    new-array p1, p1, [Landroid/service/autofill/UserData;

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

    .line 444
    invoke-virtual {p0, p1}, Landroid/service/autofill/UserData$1;->newArray(I)[Landroid/service/autofill/UserData;

    move-result-object p1

    return-object p1
.end method
