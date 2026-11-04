.class Landroid/service/autofill/CharSequenceTransformation$1;
.super Ljava/lang/Object;
.source "CharSequenceTransformation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/CharSequenceTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/CharSequenceTransformation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CharSequenceTransformation;
    .registers 10

    .line 216
    const/4 v0, 0x0

    const-class v1, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/autofill/AutofillId;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [Ljava/util/regex/Pattern;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 223
    new-instance v2, Landroid/service/autofill/CharSequenceTransformation$Builder;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    aget-object v5, v1, v3

    aget-object v3, p1, v3

    invoke-direct {v2, v4, v5, v3}, Landroid/service/autofill/CharSequenceTransformation$Builder;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 226
    array-length v3, v0

    .line 227
    const/4 v4, 0x1

    :goto_21
    if-ge v4, v3, :cond_2f

    .line 228
    aget-object v5, v0, v4

    aget-object v6, v1, v4

    aget-object v7, p1, v4

    invoke-virtual {v2, v5, v6, v7}, Landroid/service/autofill/CharSequenceTransformation$Builder;->addField(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;Ljava/lang/String;)Landroid/service/autofill/CharSequenceTransformation$Builder;

    .line 227
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 230
    :cond_2f
    invoke-virtual {v2}, Landroid/service/autofill/CharSequenceTransformation$Builder;->build()Landroid/service/autofill/CharSequenceTransformation;

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

    .line 213
    invoke-virtual {p0, p1}, Landroid/service/autofill/CharSequenceTransformation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CharSequenceTransformation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/CharSequenceTransformation;
    .registers 2

    .line 235
    new-array p1, p1, [Landroid/service/autofill/CharSequenceTransformation;

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

    .line 213
    invoke-virtual {p0, p1}, Landroid/service/autofill/CharSequenceTransformation$1;->newArray(I)[Landroid/service/autofill/CharSequenceTransformation;

    move-result-object p1

    return-object p1
.end method
