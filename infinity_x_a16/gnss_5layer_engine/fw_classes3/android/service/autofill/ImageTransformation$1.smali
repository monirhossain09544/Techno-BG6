.class Landroid/service/autofill/ImageTransformation$1;
.super Ljava/lang/Object;
.source "ImageTransformation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/ImageTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/ImageTransformation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/ImageTransformation;
    .registers 10

    .line 250
    const/4 v0, 0x0

    const-class v1, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [Ljava/util/regex/Pattern;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object p1

    .line 258
    const/4 v3, 0x0

    aget-object v4, p1, v3

    .line 259
    if-eqz v4, :cond_26

    .line 260
    new-instance v5, Landroid/service/autofill/ImageTransformation$Builder;

    aget-object v6, v1, v3

    aget v3, v2, v3

    invoke-direct {v5, v0, v6, v3, v4}, Landroid/service/autofill/ImageTransformation$Builder;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V

    goto :goto_2f

    .line 261
    :cond_26
    new-instance v5, Landroid/service/autofill/ImageTransformation$Builder;

    aget-object v4, v1, v3

    aget v3, v2, v3

    invoke-direct {v5, v0, v4, v3}, Landroid/service/autofill/ImageTransformation$Builder;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;I)V

    .line 263
    :goto_2f
    array-length v0, v1

    .line 264
    const/4 v3, 0x1

    :goto_31
    if-ge v3, v0, :cond_4b

    .line 265
    aget-object v4, p1, v3

    if-eqz v4, :cond_41

    .line 266
    aget-object v4, v1, v3

    aget v6, v2, v3

    aget-object v7, p1, v3

    invoke-virtual {v5, v4, v6, v7}, Landroid/service/autofill/ImageTransformation$Builder;->addOption(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)Landroid/service/autofill/ImageTransformation$Builder;

    goto :goto_48

    .line 268
    :cond_41
    aget-object v4, v1, v3

    aget v6, v2, v3

    invoke-virtual {v5, v4, v6}, Landroid/service/autofill/ImageTransformation$Builder;->addOption(Ljava/util/regex/Pattern;I)Landroid/service/autofill/ImageTransformation$Builder;

    .line 264
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 272
    :cond_4b
    invoke-virtual {v5}, Landroid/service/autofill/ImageTransformation$Builder;->build()Landroid/service/autofill/ImageTransformation;

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

    .line 247
    invoke-virtual {p0, p1}, Landroid/service/autofill/ImageTransformation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/ImageTransformation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/ImageTransformation;
    .registers 2

    .line 277
    new-array p1, p1, [Landroid/service/autofill/ImageTransformation;

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

    .line 247
    invoke-virtual {p0, p1}, Landroid/service/autofill/ImageTransformation$1;->newArray(I)[Landroid/service/autofill/ImageTransformation;

    move-result-object p1

    return-object p1
.end method
