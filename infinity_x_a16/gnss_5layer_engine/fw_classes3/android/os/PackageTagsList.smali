.class public final Landroid/os/PackageTagsList;
.super Ljava/lang/Object;
.source "PackageTagsList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PackageTagsList$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/PackageTagsList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPackageTags:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPackageTags(Landroid/os/PackageTagsList;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 185
    new-instance v0, Landroid/os/PackageTagsList$1;

    invoke-direct {v0}, Landroid/os/PackageTagsList$1;-><init>()V

    sput-object v0, Landroid/os/PackageTagsList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/util/ArrayMap;Landroid/os/PackageTagsList-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/PackageTagsList;-><init>(Landroid/util/ArrayMap;)V

    return-void
.end method


# virtual methods
.method public blacklist contains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 137
    iget-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 138
    if-nez p1, :cond_c

    .line 139
    const/4 p1, 0x0

    return p1

    .line 140
    :cond_c
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 142
    const/4 p1, 0x1

    return p1

    .line 144
    :cond_14
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public greylist containsAll(Landroid/os/PackageTagsList;)Z
    .registers 8

    .line 151
    iget-object v0, p1, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 152
    iget-object v1, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_10

    .line 153
    return v2

    .line 156
    :cond_10
    move v1, v2

    :goto_11
    if-ge v1, v0, :cond_46

    .line 157
    iget-object v3, p1, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 158
    iget-object v4, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 159
    if-nez v3, :cond_26

    .line 160
    return v2

    .line 162
    :cond_26
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 164
    goto :goto_43

    .line 166
    :cond_2d
    iget-object v4, p1, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 167
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 169
    return v2

    .line 171
    :cond_3c
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 172
    return v2

    .line 156
    :cond_43
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 176
    :cond_46
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist containsAll(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    invoke-virtual {p0, p1}, Landroid/os/PackageTagsList;->containsPackageWithAllTags(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public greylist containsPackage(Ljava/lang/String;)Z
    .registers 3

    .line 74
    iget-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public greylist containsPackageWithAllTags(Ljava/lang/String;)Z
    .registers 3

    .line 116
    iget-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 117
    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public greylist containsTag(Ljava/lang/String;)Z
    .registers 6

    .line 99
    iget-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 100
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 101
    iget-object v3, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 102
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 103
    const/4 p1, 0x1

    return p1

    .line 100
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 107
    :cond_1d
    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 10

    .line 248
    iget-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 249
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_68

    .line 250
    iget-object v3, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 251
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    const-string v4, "["

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    iget-object v4, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 254
    if-nez v4, :cond_2e

    .line 255
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_60

    .line 257
    :cond_2e
    move v5, v1

    :goto_2f
    if-ge v5, v4, :cond_60

    .line 258
    iget-object v6, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 259
    if-lez v5, :cond_46

    .line 260
    const-string v7, ", "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    :cond_46
    if-eqz v6, :cond_5a

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 263
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5d

    .line 265
    :cond_5a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    :goto_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 269
    :cond_60
    :goto_60
    const-string v3, "]"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 271
    :cond_68
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 223
    if-ne p0, p1, :cond_4

    .line 224
    const/4 p1, 0x1

    return p1

    .line 226
    :cond_4
    instance-of v0, p1, Landroid/os/PackageTagsList;

    if-nez v0, :cond_a

    .line 227
    const/4 p1, 0x0

    return p1

    .line 230
    :cond_a
    check-cast p1, Landroid/os/PackageTagsList;

    .line 231
    iget-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public greylist getPackages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist includes(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Landroid/os/PackageTagsList;->containsPackage(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 241
    iget-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 208
    iget-object p2, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    .line 209
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v0, 0x0

    :goto_a
    if-ge v0, p2, :cond_25

    .line 211
    iget-object v1, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 214
    :cond_25
    return-void
.end method
