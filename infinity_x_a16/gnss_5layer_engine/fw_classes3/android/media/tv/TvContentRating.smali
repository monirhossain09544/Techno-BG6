.class public final Landroid/media/tv/TvContentRating;
.super Ljava/lang/Object;
.source "TvContentRating.java"


# static fields
.field private static final greylist-max-o DELIMITER:Ljava/lang/String; = "/"

.field public static final whitelist UNRATED:Landroid/media/tv/TvContentRating;


# instance fields
.field private final greylist-max-o mDomain:Ljava/lang/String;

.field private final greylist-max-o mHashCode:I

.field private final greylist-max-o mRating:Ljava/lang/String;

.field private final greylist-max-o mRatingSystem:Ljava/lang/String;

.field private final greylist-max-o mSubRatings:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 907
    new-instance v0, Landroid/media/tv/TvContentRating;

    const-string/jumbo v1, "null"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v1, v2}, Landroid/media/tv/TvContentRating;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Landroid/media/tv/TvContentRating;->UNRATED:Landroid/media/tv/TvContentRating;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    iput-object p1, p0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    .line 970
    iput-object p2, p0, Landroid/media/tv/TvContentRating;->mRatingSystem:Ljava/lang/String;

    .line 971
    iput-object p3, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    .line 972
    if-eqz p4, :cond_15

    array-length p1, p4

    if-nez p1, :cond_f

    goto :goto_15

    .line 975
    :cond_f
    invoke-static {p4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 976
    iput-object p4, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    goto :goto_18

    .line 973
    :cond_15
    :goto_15
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    .line 978
    :goto_18
    iget-object p1, p0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    iget-object p2, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x1f

    iget-object p2, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Landroid/media/tv/TvContentRating;->mHashCode:I

    .line 979
    return-void
.end method

.method public static varargs whitelist createRating(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/media/tv/TvContentRating;
    .registers 5

    .line 922
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 925
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 928
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 931
    new-instance v0, Landroid/media/tv/TvContentRating;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/tv/TvContentRating;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    .line 929
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "rating cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 926
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "ratingSystem cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 923
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "domain cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;
    .registers 7

    .line 944
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 947
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 948
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_36

    .line 951
    array-length p0, v0

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le p0, v2, :cond_29

    .line 952
    array-length p0, v0

    sub-int/2addr p0, v2

    new-array v5, p0, [Ljava/lang/String;

    .line 953
    invoke-static {v0, v2, v5, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 954
    new-instance p0, Landroid/media/tv/TvContentRating;

    aget-object v2, v0, v4

    aget-object v3, v0, v3

    aget-object v0, v0, v1

    invoke-direct {p0, v2, v3, v0, v5}, Landroid/media/tv/TvContentRating;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0

    .line 956
    :cond_29
    new-instance p0, Landroid/media/tv/TvContentRating;

    aget-object v2, v0, v4

    aget-object v3, v0, v3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/media/tv/TvContentRating;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0

    .line 949
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rating string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "ratingString cannot be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final whitelist contains(Landroid/media/tv/TvContentRating;)Z
    .registers 5

    .line 1049
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->getMainRating()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 1051
    return v1

    .line 1053
    :cond_11
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->getDomain()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1054
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->getRatingSystem()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/media/tv/TvContentRating;->mRatingSystem:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1055
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->getMainRating()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_53

    .line 1058
    :cond_36
    invoke-virtual {p0}, Landroid/media/tv/TvContentRating;->getSubRatings()Ljava/util/List;

    move-result-object v0

    .line 1059
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->getSubRatings()Ljava/util/List;

    move-result-object p1

    .line 1060
    const/4 v2, 0x1

    if-nez v0, :cond_44

    if-nez p1, :cond_44

    .line 1061
    return v2

    .line 1062
    :cond_44
    if-nez v0, :cond_49

    if-eqz p1, :cond_49

    .line 1063
    return v1

    .line 1064
    :cond_49
    if-eqz v0, :cond_4e

    if-nez p1, :cond_4e

    .line 1065
    return v2

    .line 1067
    :cond_4e
    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 1056
    :cond_53
    :goto_53
    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1073
    instance-of v0, p1, Landroid/media/tv/TvContentRating;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1074
    return v1

    .line 1076
    :cond_6
    check-cast p1, Landroid/media/tv/TvContentRating;

    .line 1077
    iget v0, p0, Landroid/media/tv/TvContentRating;->mHashCode:I

    iget v2, p1, Landroid/media/tv/TvContentRating;->mHashCode:I

    if-eq v0, v2, :cond_f

    .line 1078
    return v1

    .line 1080
    :cond_f
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    iget-object v2, p1, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1081
    return v1

    .line 1083
    :cond_1a
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mRatingSystem:Ljava/lang/String;

    iget-object v2, p1, Landroid/media/tv/TvContentRating;->mRatingSystem:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1084
    return v1

    .line 1086
    :cond_25
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    iget-object v2, p1, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1087
    return v1

    .line 1089
    :cond_30
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    iget-object p1, p1, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist flattenToString()Ljava/lang/String;
    .registers 7

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1024
    iget-object v1, p0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    iget-object v2, p0, Landroid/media/tv/TvContentRating;->mRatingSystem:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    iget-object v2, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    iget-object v2, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    if-eqz v2, :cond_31

    .line 1030
    iget-object v2, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v3, :cond_31

    aget-object v5, v2, v4

    .line 1031
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 1035
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDomain()Ljava/lang/String;
    .registers 2

    .line 985
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMainRating()Ljava/lang/String;
    .registers 2

    .line 999
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRatingSystem()Ljava/lang/String;
    .registers 2

    .line 992
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mRatingSystem:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSubRatings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    if-nez v0, :cond_6

    .line 1008
    const/4 v0, 0x0

    return-object v0

    .line 1010
    :cond_6
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1094
    iget v0, p0, Landroid/media/tv/TvContentRating;->mHashCode:I

    return v0
.end method
