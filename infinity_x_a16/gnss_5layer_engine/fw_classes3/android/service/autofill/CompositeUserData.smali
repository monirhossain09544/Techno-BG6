.class public final Landroid/service/autofill/CompositeUserData;
.super Ljava/lang/Object;
.source "CompositeUserData.java"

# interfaces
.implements Landroid/service/autofill/FieldClassificationUserData;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/CompositeUserData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCategories:[Ljava/lang/String;

.field private final blacklist mGenericUserData:Landroid/service/autofill/UserData;

.field private final blacklist mPackageUserData:Landroid/service/autofill/UserData;

.field private final blacklist mValues:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 193
    new-instance v0, Landroid/service/autofill/CompositeUserData$1;

    invoke-direct {v0}, Landroid/service/autofill/CompositeUserData$1;-><init>()V

    sput-object v0, Landroid/service/autofill/CompositeUserData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/autofill/UserData;Landroid/service/autofill/UserData;)V
    .registers 8

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    .line 50
    iput-object p2, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    .line 52
    iget-object p1, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {p1}, Landroid/service/autofill/UserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object p1

    .line 53
    iget-object p2, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {p2}, Landroid/service/autofill/UserData;->getValues()[Ljava/lang/String;

    move-result-object p2

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 59
    invoke-static {v1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 61
    iget-object p1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    if-eqz p1, :cond_54

    .line 62
    iget-object p1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    invoke-virtual {p1}, Landroid/service/autofill/UserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object p1

    .line 63
    iget-object p2, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    invoke-virtual {p2}, Landroid/service/autofill/UserData;->getValues()[Ljava/lang/String;

    move-result-object p2

    .line 64
    iget-object v2, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v2}, Landroid/service/autofill/UserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    .line 65
    const/4 v3, 0x0

    :goto_3d
    if-ge v3, v2, :cond_54

    .line 66
    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 67
    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    aget-object v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 73
    :cond_54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/service/autofill/CompositeUserData;->mCategories:[Ljava/lang/String;

    .line 74
    iget-object p1, p0, Landroid/service/autofill/CompositeUserData;->mCategories:[Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 75
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/service/autofill/CompositeUserData;->mValues:[Ljava/lang/String;

    .line 76
    iget-object p1, p0, Landroid/service/autofill/CompositeUserData;->mValues:[Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 77
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCategoryIds()[Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mCategories:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDefaultFieldClassificationArgs()Landroid/os/Bundle;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getDefaultFieldClassificationArgs()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_9

    .line 95
    return-object v0

    .line 97
    :cond_9
    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_15

    .line 98
    :cond_f
    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getDefaultFieldClassificationArgs()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    :goto_15
    return-object v0
.end method

.method public blacklist getFieldClassificationAlgorithm()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getFieldClassificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_9

    .line 84
    return-object v0

    .line 86
    :cond_9
    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_15

    .line 87
    :cond_f
    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getFieldClassificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_15
    return-object v0
.end method

.method public blacklist getFieldClassificationAlgorithmForCategory(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p0}, Landroid/service/autofill/CompositeUserData;->getFieldClassificationAlgorithms()Landroid/util/ArrayMap;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_17

    .line 110
    :cond_10
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 108
    :cond_17
    :goto_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getFieldClassificationAlgorithms()Landroid/util/ArrayMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    .line 116
    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getFieldClassificationAlgorithms()Landroid/util/ArrayMap;

    move-result-object v0

    .line 117
    iget-object v1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    const/4 v2, 0x0

    if-nez v1, :cond_d

    move-object v1, v2

    goto :goto_13

    .line 118
    :cond_d
    iget-object v1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v1}, Landroid/service/autofill/UserData;->getFieldClassificationAlgorithms()Landroid/util/ArrayMap;

    move-result-object v1

    .line 120
    :goto_13
    nop

    .line 121
    if-nez v0, :cond_18

    if-eqz v1, :cond_27

    .line 122
    :cond_18
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 123
    if-eqz v1, :cond_22

    .line 124
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 126
    :cond_22
    if-eqz v0, :cond_27

    .line 127
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 131
    :cond_27
    return-object v2
.end method

.method public blacklist getFieldClassificationArgs()Landroid/util/ArrayMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getFieldClassificationArgs()Landroid/util/ArrayMap;

    move-result-object v0

    .line 137
    iget-object v1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    const/4 v2, 0x0

    if-nez v1, :cond_d

    move-object v1, v2

    goto :goto_13

    .line 138
    :cond_d
    iget-object v1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v1}, Landroid/service/autofill/UserData;->getFieldClassificationArgs()Landroid/util/ArrayMap;

    move-result-object v1

    .line 140
    :goto_13
    nop

    .line 141
    if-nez v0, :cond_18

    if-eqz v1, :cond_27

    .line 142
    :cond_18
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 143
    if-eqz v1, :cond_22

    .line 144
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 146
    :cond_22
    if-eqz v0, :cond_27

    .line 147
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 151
    :cond_27
    return-object v2
.end method

.method public blacklist getValues()[Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/service/autofill/CompositeUserData;->mValues:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 169
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 172
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "genericUserData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    const-string v1, ", packageUserData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 189
    iget-object p2, p0, Landroid/service/autofill/CompositeUserData;->mGenericUserData:Landroid/service/autofill/UserData;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 190
    iget-object p2, p0, Landroid/service/autofill/CompositeUserData;->mPackageUserData:Landroid/service/autofill/UserData;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 191
    return-void
.end method
