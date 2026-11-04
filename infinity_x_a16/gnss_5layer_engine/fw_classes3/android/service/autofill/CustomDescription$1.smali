.class Landroid/service/autofill/CustomDescription$1;
.super Ljava/lang/Object;
.source "CustomDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/CustomDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/CustomDescription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CustomDescription;
    .registers 11

    .line 440
    const-class v0, Landroid/widget/RemoteViews;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 441
    if-nez v0, :cond_c

    return-object v1

    .line 443
    :cond_c
    new-instance v2, Landroid/service/autofill/CustomDescription$Builder;

    invoke-direct {v2, v0}, Landroid/service/autofill/CustomDescription$Builder;-><init>(Landroid/widget/RemoteViews;)V

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 445
    const/4 v3, 0x0

    if-eqz v0, :cond_2e

    .line 446
    const-class v4, Landroid/service/autofill/InternalTransformation;

    .line 447
    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/service/autofill/InternalTransformation;

    .line 448
    array-length v5, v0

    .line 449
    move v6, v3

    :goto_22
    if-ge v6, v5, :cond_2e

    .line 450
    aget v7, v0, v6

    aget-object v8, v4, v6

    invoke-virtual {v2, v7, v8}, Landroid/service/autofill/CustomDescription$Builder;->addChild(ILandroid/service/autofill/Transformation;)Landroid/service/autofill/CustomDescription$Builder;

    .line 449
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 453
    :cond_2e
    const-class v0, Landroid/service/autofill/InternalValidator;

    .line 454
    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/service/autofill/InternalValidator;

    .line 455
    if-eqz v0, :cond_4e

    .line 456
    const-class v4, Landroid/service/autofill/BatchUpdates;

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/service/autofill/BatchUpdates;

    .line 457
    array-length v5, v0

    .line 458
    move v6, v3

    :goto_42
    if-ge v6, v5, :cond_4e

    .line 459
    aget-object v7, v0, v6

    aget-object v8, v4, v6

    invoke-virtual {v2, v7, v8}, Landroid/service/autofill/CustomDescription$Builder;->batchUpdate(Landroid/service/autofill/Validator;Landroid/service/autofill/BatchUpdates;)Landroid/service/autofill/CustomDescription$Builder;

    .line 458
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 462
    :cond_4e
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 463
    if-eqz v0, :cond_6a

    .line 464
    const-class v4, Landroid/service/autofill/InternalOnClickAction;

    .line 465
    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/service/autofill/InternalOnClickAction;

    .line 466
    array-length v1, v0

    .line 467
    nop

    :goto_5e
    if-ge v3, v1, :cond_6a

    .line 468
    aget v4, v0, v3

    aget-object v5, p1, v3

    invoke-virtual {v2, v4, v5}, Landroid/service/autofill/CustomDescription$Builder;->addOnClickAction(ILandroid/service/autofill/OnClickAction;)Landroid/service/autofill/CustomDescription$Builder;

    .line 467
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 471
    :cond_6a
    invoke-virtual {v2}, Landroid/service/autofill/CustomDescription$Builder;->build()Landroid/service/autofill/CustomDescription;

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

    .line 434
    invoke-virtual {p0, p1}, Landroid/service/autofill/CustomDescription$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CustomDescription;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/CustomDescription;
    .registers 2

    .line 476
    new-array p1, p1, [Landroid/service/autofill/CustomDescription;

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

    .line 434
    invoke-virtual {p0, p1}, Landroid/service/autofill/CustomDescription$1;->newArray(I)[Landroid/service/autofill/CustomDescription;

    move-result-object p1

    return-object p1
.end method
