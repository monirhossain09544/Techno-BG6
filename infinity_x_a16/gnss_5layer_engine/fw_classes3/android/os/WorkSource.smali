.class public Landroid/os/WorkSource;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/WorkSource$WorkChain;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o DEBUG:Z = false

.field static final greylist-max-o TAG:Ljava/lang/String; = "WorkSource"

.field static greylist-max-p sGoneWork:Landroid/os/WorkSource;

.field static greylist-max-p sNewbWork:Landroid/os/WorkSource;

.field static final greylist-max-p sTmpWorkSource:Landroid/os/WorkSource;


# instance fields
.field private greylist-max-o mChains:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation
.end field

.field greylist mNames:[Ljava/lang/String;

.field greylist mNum:I

.field greylist mUids:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    .line 1238
    new-instance v0, Landroid/os/WorkSource$1;

    invoke-direct {v0}, Landroid/os/WorkSource$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 66
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 103
    const/4 v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 104
    filled-new-array {p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 105
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 106
    iput-object p1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 107
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 117
    const-string/jumbo v1, "packageName can\'t be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const/4 v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 119
    filled-new-array {p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 120
    const/4 p1, 0x0

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 121
    iput-object p1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 122
    return-void
.end method

.method constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    new-array v0, v0, [I

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    if-ltz v0, :cond_3d

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 133
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    const-class v1, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    goto :goto_40

    .line 135
    :cond_3d
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 137
    :goto_40
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/WorkSource;)V
    .registers 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 75
    const/4 v1, 0x0

    if-nez p1, :cond_10

    .line 76
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 77
    iput-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 78
    return-void

    .line 80
    :cond_10
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 81
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 82
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_2b

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_2c

    :cond_2b
    move-object v0, v1

    :goto_2c
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 84
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_5d

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 87
    iget-object p1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource$WorkChain;

    .line 88
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    new-instance v2, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v2, v0}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/WorkSource$WorkChain;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    goto :goto_45

    :cond_5c
    goto :goto_5f

    .line 91
    :cond_5d
    iput-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 93
    :goto_5f
    return-void
.end method

.method private static greylist-max-o addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;
    .registers 3

    .line 704
    if-nez p0, :cond_8

    .line 705
    new-instance p0, Landroid/os/WorkSource;

    invoke-direct {p0, p1}, Landroid/os/WorkSource;-><init>(I)V

    return-object p0

    .line 707
    :cond_8
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-direct {p0, v0, p1}, Landroid/os/WorkSource;->insert(II)V

    .line 708
    return-object p0
.end method

.method private static greylist-max-o addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;
    .registers 4

    .line 796
    if-nez p0, :cond_8

    .line 797
    new-instance p0, Landroid/os/WorkSource;

    invoke-direct {p0, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 799
    :cond_8
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-direct {p0, v0, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 800
    return-object p0
.end method

.method private greylist-max-o clearNames()V
    .registers 7

    .line 228
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 231
    nop

    .line 232
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 233
    const/4 v1, 0x1

    move v2, v1

    :goto_c
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v1, v3, :cond_2c

    .line 234
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v1

    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_1f

    .line 235
    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    .line 237
    :cond_1f
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    aget v4, v4, v1

    aput v4, v3, v2

    .line 238
    add-int/lit8 v2, v2, 0x1

    .line 233
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 241
    :cond_2c
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 243
    :cond_2e
    return-void
.end method

.method private greylist-max-o compare(Landroid/os/WorkSource;II)I
    .registers 6

    .line 788
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p2

    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    aget v1, v1, p3

    sub-int/2addr v0, v1

    .line 789
    if-eqz v0, :cond_c

    .line 790
    return v0

    .line 792
    :cond_c
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object p2, v0, p2

    iget-object p1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object p1, p1, p3

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public static greylist-max-o diffChains(Landroid/os/WorkSource;Landroid/os/WorkSource;)[Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/WorkSource;",
            "Landroid/os/WorkSource;",
            ")[",
            "Ljava/util/ArrayList<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation

    .line 1118
    nop

    .line 1119
    nop

    .line 1125
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_39

    .line 1126
    move v0, v1

    move-object v3, v2

    :goto_a
    iget-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3a

    .line 1127
    iget-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource$WorkChain;

    .line 1128
    iget-object v5, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v5, :cond_26

    iget-object v5, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 1129
    :cond_26
    if-nez v3, :cond_33

    .line 1130
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1132
    :cond_33
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1125
    :cond_39
    move-object v3, v2

    .line 1137
    :cond_3a
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_6f

    .line 1138
    move v0, v1

    move-object v4, v2

    :goto_40
    iget-object v5, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_70

    .line 1139
    iget-object v5, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource$WorkChain;

    .line 1140
    iget-object v6, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v6, :cond_5c

    iget-object v6, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6c

    .line 1141
    :cond_5c
    if-nez v4, :cond_69

    .line 1142
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1144
    :cond_69
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 1137
    :cond_6f
    move-object v4, v2

    .line 1149
    :cond_70
    if-nez v4, :cond_76

    if-eqz v3, :cond_75

    goto :goto_76

    .line 1153
    :cond_75
    return-object v2

    .line 1150
    :cond_76
    :goto_76
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/util/ArrayList;

    aput-object v4, p0, v1

    const/4 p1, 0x1

    aput-object v3, p0, p1

    return-object p0
.end method

.method private greylist-max-o insert(II)V
    .registers 8

    .line 867
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_13

    .line 868
    const/4 p1, 0x4

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 869
    iget-object p1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, p1, v1

    .line 870
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_5c

    .line 871
    :cond_13
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v3, v3

    if-lt v0, v3, :cond_43

    .line 872
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 873
    if-lez p1, :cond_29

    .line 874
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-static {v3, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 876
    :cond_29
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v1, :cond_37

    .line 877
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 879
    :cond_37
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 880
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, p1

    .line 881
    iget p1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/os/WorkSource;->mNum:I

    .line 882
    goto :goto_5c

    .line 883
    :cond_43
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v0, :cond_53

    .line 884
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v0, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 886
    :cond_53
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, p1

    .line 887
    iget p1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/os/WorkSource;->mNum:I

    .line 889
    :goto_5c
    return-void
.end method

.method private greylist-max-o insert(IILjava/lang/String;)V
    .registers 10

    .line 892
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    .line 893
    const/4 p1, 0x4

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 894
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, v2

    .line 895
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 896
    iget-object p1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, p1, v2

    .line 897
    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_8c

    .line 898
    :cond_1a
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v3, v3

    if-lt v0, v3, :cond_65

    .line 899
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 900
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 901
    if-lez p1, :cond_3d

    .line 902
    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-static {v4, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 903
    iget-object v4, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-static {v4, v2, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 905
    :cond_3d
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v2, :cond_53

    .line 906
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v5, p1

    invoke-static {v2, p1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 907
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v5, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v5, p1

    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 909
    :cond_53
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 910
    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 911
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, p1

    .line 912
    iget-object p2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, p2, p1

    .line 913
    iget p1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/os/WorkSource;->mNum:I

    .line 914
    goto :goto_8c

    .line 915
    :cond_65
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v0, :cond_7f

    .line 916
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v0, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 917
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v0, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 919
    :cond_7f
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, p1

    .line 920
    iget-object p2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, p2, p1

    .line 921
    iget p1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/os/WorkSource;->mNum:I

    .line 923
    :goto_8c
    return-void
.end method

.method public static greylist-max-o isChainedBatteryAttributionEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "chained_battery_attribution_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    move v1, v0

    :cond_f
    return v1
.end method

.method public static blacklist isChainedBatteryAttributionEnabled$ravenwood(Landroid/content/Context;)Z
    .registers 1

    .line 153
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o removeUids(Landroid/os/WorkSource;)Z
    .registers 10

    .line 617
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 618
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 619
    iget v2, p1, Landroid/os/WorkSource;->mNum:I

    .line 620
    iget-object p1, p1, Landroid/os/WorkSource;->mUids:[I

    .line 621
    nop

    .line 622
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 624
    :goto_c
    if-ge v3, v0, :cond_32

    if-ge v4, v2, :cond_32

    .line 627
    aget v6, p1, v4

    aget v7, v1, v3

    if-ne v6, v7, :cond_26

    .line 630
    add-int/lit8 v0, v0, -0x1

    .line 631
    nop

    .line 632
    if-ge v3, v0, :cond_22

    add-int/lit8 v5, v3, 0x1

    sub-int v6, v0, v3

    invoke-static {v1, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    :cond_22
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    goto :goto_c

    .line 634
    :cond_26
    aget v6, p1, v4

    aget v7, v1, v3

    if-le v6, v7, :cond_2f

    .line 636
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 639
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 643
    :cond_32
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 645
    return v5
.end method

.method private greylist-max-o removeUidsAndNames(Landroid/os/WorkSource;)Z
    .registers 12

    .line 649
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 650
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 651
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 652
    iget v3, p1, Landroid/os/WorkSource;->mNum:I

    .line 653
    iget-object v4, p1, Landroid/os/WorkSource;->mUids:[I

    .line 654
    iget-object p1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 655
    nop

    .line 656
    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    .line 658
    :goto_10
    if-ge v5, v0, :cond_54

    if-ge v6, v3, :cond_54

    .line 661
    aget v8, v4, v6

    aget v9, v1, v5

    if-ne v8, v9, :cond_37

    aget-object v8, p1, v6

    aget-object v9, v2, v5

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 664
    add-int/lit8 v0, v0, -0x1

    .line 665
    nop

    .line 666
    if-ge v5, v0, :cond_33

    .line 667
    add-int/lit8 v7, v5, 0x1

    sub-int v8, v0, v5

    invoke-static {v1, v7, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 668
    invoke-static {v2, v7, v2, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 670
    :cond_33
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    goto :goto_10

    .line 671
    :cond_37
    aget v8, v4, v6

    aget v9, v1, v5

    if-gt v8, v9, :cond_51

    aget v8, v4, v6

    aget v9, v1, v5

    if-ne v8, v9, :cond_4e

    aget-object v8, p1, v6

    aget-object v9, v2, v5

    .line 672
    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_4e

    goto :goto_51

    .line 677
    :cond_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 674
    :cond_51
    :goto_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 681
    :cond_54
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 683
    return v7
.end method

.method private greylist-max-p updateLocked(Landroid/os/WorkSource;ZZ)Z
    .registers 6

    .line 688
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_d

    .line 689
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsLocked(Landroid/os/WorkSource;ZZ)Z

    move-result p1

    return p1

    .line 691
    :cond_d
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const-string v1, " does not"

    if-lez v0, :cond_3f

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_18

    goto :goto_3f

    .line 692
    :cond_18
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Other "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " has names, but target "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 695
    :cond_3f
    :goto_3f
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    if-lez v0, :cond_6f

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_48

    goto :goto_6f

    .line 696
    :cond_48
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Target "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " has names, but other "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 699
    :cond_6f
    :goto_6f
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z

    move-result p1

    return p1
.end method

.method private greylist-max-o updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z
    .registers 16

    .line 804
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    .line 805
    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    .line 806
    iget-object v2, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 807
    nop

    .line 808
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 811
    :goto_a
    iget v6, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v3, v6, :cond_12

    if-ge v4, v0, :cond_11

    goto :goto_12

    .line 862
    :cond_11
    return v5

    .line 814
    :cond_12
    :goto_12
    nop

    .line 815
    iget v6, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v3, v6, :cond_7a

    const/4 v6, -0x1

    if-ge v4, v0, :cond_21

    invoke-direct {p0, p1, v3, v4}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    move-result v7

    if-lez v7, :cond_22

    goto :goto_7a

    :cond_21
    move v7, v6

    .line 827
    :cond_22
    if-nez p2, :cond_2e

    .line 829
    if-ge v4, v0, :cond_2a

    if-nez v7, :cond_2a

    .line 830
    add-int/lit8 v4, v4, 0x1

    .line 832
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_95

    .line 835
    :cond_2e
    move v8, v3

    .line 836
    :goto_2f
    if-gez v7, :cond_51

    .line 839
    sget-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    iget-object v10, p0, Landroid/os/WorkSource;->mUids:[I

    aget v10, v10, v8

    iget-object v11, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v11, v11, v8

    invoke-static {v9, v10, v11}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v9

    sput-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 840
    add-int/lit8 v8, v8, 0x1

    .line 841
    iget v9, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v8, v9, :cond_48

    .line 842
    goto :goto_51

    .line 844
    :cond_48
    if-ge v4, v0, :cond_4f

    invoke-direct {p0, p1, v8, v4}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    move-result v7

    goto :goto_2f

    :cond_4f
    move v7, v6

    goto :goto_2f

    .line 846
    :cond_51
    :goto_51
    if-ge v3, v8, :cond_6e

    .line 847
    iget-object v6, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    iget v10, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v10, v8

    invoke-static {v6, v8, v9, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 848
    iget-object v6, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v9, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v10, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v10, v8

    invoke-static {v6, v8, v9, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 849
    iget v6, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v8, v3

    sub-int/2addr v6, v8

    iput v6, p0, Landroid/os/WorkSource;->mNum:I

    .line 850
    goto :goto_6f

    .line 846
    :cond_6e
    move v3, v8

    .line 853
    :goto_6f
    iget v6, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v3, v6, :cond_95

    if-nez v7, :cond_95

    .line 855
    add-int/lit8 v3, v3, 0x1

    .line 856
    add-int/lit8 v4, v4, 0x1

    goto :goto_95

    .line 817
    :cond_7a
    :goto_7a
    nop

    .line 820
    aget v5, v1, v4

    aget-object v6, v2, v4

    invoke-direct {p0, v3, v5, v6}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 821
    if-eqz p3, :cond_90

    .line 822
    sget-object v5, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v6, v1, v4

    aget-object v7, v2, v4

    invoke-static {v5, v6, v7}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v5

    sput-object v5, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 824
    :cond_90
    add-int/lit8 v3, v3, 0x1

    .line 825
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    .line 860
    :cond_95
    :goto_95
    goto/16 :goto_a
.end method

.method private greylist-max-o updateUidsLocked(Landroid/os/WorkSource;ZZ)Z
    .registers 14

    .line 712
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 713
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 714
    iget v2, p1, Landroid/os/WorkSource;->mNum:I

    .line 715
    iget-object p1, p1, Landroid/os/WorkSource;->mUids:[I

    .line 716
    nop

    .line 717
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    .line 720
    :goto_d
    if-lt v4, v0, :cond_17

    if-ge v5, v2, :cond_12

    goto :goto_17

    .line 778
    :cond_12
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 779
    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 781
    return v6

    .line 723
    :cond_17
    :goto_17
    if-ge v4, v0, :cond_63

    if-ge v5, v2, :cond_22

    aget v7, p1, v5

    aget v8, v1, v4

    if-ge v7, v8, :cond_22

    goto :goto_63

    .line 748
    :cond_22
    if-nez p2, :cond_31

    .line 751
    if-ge v5, v2, :cond_2e

    aget v7, p1, v5

    aget v8, v1, v4

    if-ne v7, v8, :cond_2e

    .line 752
    add-int/lit8 v5, v5, 0x1

    .line 754
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 757
    :cond_31
    move v7, v4

    .line 758
    :goto_32
    if-ge v7, v0, :cond_49

    if-ge v5, v2, :cond_3c

    aget v8, p1, v5

    aget v9, v1, v7

    if-le v8, v9, :cond_49

    .line 760
    :cond_3c
    sget-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aget v9, v1, v7

    invoke-static {v8, v9}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    move-result-object v8

    sput-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 761
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 763
    :cond_49
    if-ge v4, v7, :cond_53

    .line 764
    sub-int v8, v0, v7

    invoke-static {v1, v7, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 765
    sub-int/2addr v7, v4

    sub-int/2addr v0, v7

    .line 766
    goto :goto_54

    .line 763
    :cond_53
    move v4, v7

    .line 769
    :goto_54
    if-ge v4, v0, :cond_62

    if-ge v5, v2, :cond_62

    aget v7, p1, v5

    aget v8, v1, v4

    if-ne v7, v8, :cond_62

    .line 771
    add-int/lit8 v4, v4, 0x1

    .line 772
    add-int/lit8 v5, v5, 0x1

    .line 774
    :cond_62
    goto :goto_d

    .line 727
    :cond_63
    :goto_63
    nop

    .line 728
    array-length v6, v1

    if-nez v6, :cond_6f

    .line 729
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 730
    aget v6, p1, v5

    aput v6, v1, v3

    goto :goto_9b

    .line 731
    :cond_6f
    array-length v6, v1

    if-lt v0, v6, :cond_8e

    .line 732
    array-length v6, v1

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x2

    new-array v6, v6, [I

    .line 733
    if-lez v4, :cond_7e

    invoke-static {v1, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 734
    :cond_7e
    if-ge v4, v0, :cond_87

    add-int/lit8 v7, v4, 0x1

    sub-int v8, v0, v4

    invoke-static {v1, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 735
    :cond_87
    nop

    .line 736
    aget v1, p1, v5

    aput v1, v6, v4

    .line 737
    move-object v1, v6

    goto :goto_9b

    .line 738
    :cond_8e
    if-ge v4, v0, :cond_97

    add-int/lit8 v6, v4, 0x1

    sub-int v7, v0, v4

    invoke-static {v1, v4, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    :cond_97
    aget v6, p1, v5

    aput v6, v1, v4

    .line 741
    :goto_9b
    if-eqz p3, :cond_a7

    .line 742
    sget-object v6, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v7, p1, v5

    invoke-static {v6, v7}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    move-result-object v6

    sput-object v6, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 744
    :cond_a7
    add-int/lit8 v0, v0, 0x1

    .line 745
    add-int/lit8 v4, v4, 0x1

    .line 746
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    goto/16 :goto_d
.end method


# virtual methods
.method public greylist add(I)Z
    .registers 6

    .line 480
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_d

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 482
    invoke-direct {p0, v2, p1}, Landroid/os/WorkSource;->insert(II)V

    .line 483
    return v1

    .line 485
    :cond_d
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_22

    .line 488
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v2, v3, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 490
    if-ltz v0, :cond_1c

    .line 491
    return v2

    .line 493
    :cond_1c
    neg-int v0, v0

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, p1}, Landroid/os/WorkSource;->insert(II)V

    .line 494
    return v1

    .line 486
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding without name to named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist add(ILjava/lang/String;)Z
    .registers 7

    .line 501
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_a

    .line 502
    invoke-direct {p0, v2, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 503
    return v1

    .line 505
    :cond_a
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 509
    move v0, v2

    :goto_f
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v3, :cond_31

    .line 510
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v0

    if-le v3, p1, :cond_1a

    .line 511
    goto :goto_31

    .line 513
    :cond_1a
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_2e

    .line 514
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 515
    if-lez v3, :cond_2b

    .line 516
    goto :goto_31

    .line 518
    :cond_2b
    if-nez v3, :cond_2e

    .line 519
    return v2

    .line 509
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 523
    :cond_31
    :goto_31
    invoke-direct {p0, v0, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 524
    return v1

    .line 506
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Adding name to unnamed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist add(Landroid/os/WorkSource;)Z
    .registers 9

    .line 422
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 423
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p1, v1, v1}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v2

    .line 425
    nop

    .line 426
    iget-object v3, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    const/4 v4, 0x1

    if-eqz v3, :cond_46

    .line 429
    iget-object v3, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v3, :cond_1f

    .line 430
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 433
    :cond_1f
    iget-object p1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource$WorkChain;

    .line 434
    iget-object v6, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_45

    .line 435
    iget-object v3, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    new-instance v6, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v6, v5}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/WorkSource$WorkChain;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    move v3, v4

    .line 438
    :cond_45
    goto :goto_26

    .line 426
    :cond_46
    move v3, v1

    .line 441
    :cond_47
    if-nez v2, :cond_4b

    if-eqz v3, :cond_4c

    :cond_4b
    move v1, v4

    :cond_4c
    monitor-exit v0

    return v1

    .line 442
    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4 .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public blacklist addReturningNewbs(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 469
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 470
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 471
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 472
    sget-object p1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v0

    return-object p1

    .line 473
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public whitelist clear()V
    .registers 2

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 250
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 251
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 253
    :cond_c
    return-void
.end method

.method public whitelist createWorkChain()Landroid/os/WorkSource$WorkChain;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 562
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 566
    :cond_c
    new-instance v0, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v0}, Landroid/os/WorkSource$WorkChain;-><init>()V

    .line 567
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1158
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist diff(Landroid/os/WorkSource;)Z
    .registers 11

    .line 301
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 302
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_8

    .line 303
    return v2

    .line 305
    :cond_8
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 306
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 307
    iget-object v4, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 308
    iget-object p1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 309
    const/4 v5, 0x0

    move v6, v5

    :goto_12
    if-ge v6, v0, :cond_2d

    .line 310
    aget v7, v1, v6

    aget v8, v3, v6

    if-eq v7, v8, :cond_1b

    .line 311
    return v2

    .line 313
    :cond_1b
    if-eqz v4, :cond_2a

    if-eqz p1, :cond_2a

    aget-object v7, v4, v6

    aget-object v8, p1, v6

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2a

    .line 314
    return v2

    .line 309
    :cond_2a
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 317
    :cond_2d
    return v5
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 20

    .line 1206
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1207
    const/4 v5, 0x0

    :goto_9
    iget v6, v0, Landroid/os/WorkSource;->mNum:I

    const-wide v7, 0x10900000002L

    const-wide v9, 0x10500000001L

    const-wide v11, 0x20b00000001L

    if-ge v5, v6, :cond_38

    .line 1208
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 1209
    iget-object v6, v0, Landroid/os/WorkSource;->mUids:[I

    aget v6, v6, v5

    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1210
    iget-object v6, v0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v6, :cond_32

    .line 1211
    iget-object v6, v0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1213
    :cond_32
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1207
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 1216
    :cond_38
    iget-object v5, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v5, :cond_9c

    .line 1217
    const/4 v5, 0x0

    :goto_3d
    iget-object v6, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_9c

    .line 1218
    iget-object v6, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/WorkSource$WorkChain;

    .line 1219
    const-wide v13, 0x20b00000002L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 1221
    invoke-virtual {v6}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object v15

    .line 1222
    invoke-virtual {v6}, Landroid/os/WorkSource$WorkChain;->getUids()[I

    move-result-object v6

    .line 1223
    const/4 v4, 0x0

    :goto_5f
    array-length v7, v15

    if-ge v4, v7, :cond_86

    .line 1224
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 1225
    aget v11, v6, v4

    invoke-virtual {v1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1226
    aget-object v11, v15, v4

    const-wide v9, 0x10900000002L

    invoke-virtual {v1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1227
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1223
    add-int/lit8 v4, v4, 0x1

    move-wide v7, v9

    const-wide v9, 0x10500000001L

    const-wide v11, 0x20b00000001L

    goto :goto_5f

    .line 1230
    :cond_86
    const-wide v9, 0x10900000002L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1217
    add-int/lit8 v5, v5, 0x1

    move-wide v7, v9

    const-wide v9, 0x10500000001L

    const-wide v11, 0x20b00000001L

    goto :goto_3d

    .line 1234
    :cond_9c
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1235
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 257
    instance-of v0, p1, Landroid/os/WorkSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 258
    check-cast p1, Landroid/os/WorkSource;

    .line 260
    invoke-virtual {p0, p1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 261
    return v1

    .line 264
    :cond_e
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 265
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 267
    :cond_23
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_2f

    iget-object p1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_30

    :cond_2f
    const/4 v1, 0x1

    :cond_30
    return v1

    .line 271
    :cond_31
    return v1
.end method

.method public greylist get(I)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    invoke-virtual {p0, p1}, Landroid/os/WorkSource;->getUid(I)I

    move-result p1

    return p1
.end method

.method public blacklist getAttributionUid()I
    .registers 3

    .line 193
    invoke-virtual {p0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 194
    const/4 v0, -0x1

    return v0

    .line 197
    :cond_8
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x0

    if-lez v0, :cond_12

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, v1

    goto :goto_1e

    :cond_12
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v0

    :goto_1e
    return v0
.end method

.method public greylist getName(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    invoke-virtual {p0, p1}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getPackageName(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 218
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object p1, v0, p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return-object p1
.end method

.method public whitelist getUid(I)I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget p1, v0, p1

    return p1
.end method

.method public whitelist getWorkChains()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation

    .line 590
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 276
    nop

    .line 277
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v1, v3, :cond_15

    .line 278
    shl-int/lit8 v3, v2, 0x4

    ushr-int/lit8 v2, v2, 0x1c

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v1

    xor-int/2addr v2, v3

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 280
    :cond_15
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v1, :cond_2f

    .line 281
    nop

    :goto_1a
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v1, :cond_2f

    .line 282
    shl-int/lit8 v1, v2, 0x4

    ushr-int/lit8 v2, v2, 0x1c

    or-int/2addr v1, v2

    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 286
    :cond_2f
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_40

    .line 287
    shl-int/lit8 v0, v2, 0x4

    ushr-int/lit8 v1, v2, 0x1c

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    xor-int v2, v0, v1

    .line 290
    :cond_40
    return v2
.end method

.method public whitelist isEmpty()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 580
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist remove(Landroid/os/WorkSource;)Z
    .registers 6

    .line 528
    invoke-virtual {p0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_91

    invoke-virtual {p1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_91

    .line 533
    :cond_f
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_1c

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 534
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUids(Landroid/os/WorkSource;)Z

    move-result v0

    goto :goto_2a

    .line 536
    :cond_1c
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    const-string v2, " does not"

    if-eqz v0, :cond_6a

    .line 540
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_43

    .line 544
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUidsAndNames(Landroid/os/WorkSource;)Z

    move-result v0

    .line 547
    :goto_2a
    nop

    .line 548
    iget-object v2, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_3c

    .line 549
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    goto :goto_3d

    .line 552
    :cond_3c
    move p1, v1

    :goto_3d
    if-nez v0, :cond_41

    if-eqz p1, :cond_42

    :cond_41
    const/4 v1, 0x1

    :cond_42
    return v1

    .line 541
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has names, but other "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Other "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " has names, but target "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_91
    :goto_91
    return v1
.end method

.method public greylist-max-o set(I)V
    .registers 4

    .line 361
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 362
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v0, v0

    if-nez v0, :cond_d

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 363
    :cond_d
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 364
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 365
    iget-object p1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz p1, :cond_1e

    .line 366
    iget-object p1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 368
    :cond_1e
    return-void
.end method

.method public greylist-max-o set(ILjava/lang/String;)V
    .registers 5

    .line 372
    if-eqz p2, :cond_26

    .line 375
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 376
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v0, v0

    if-nez v0, :cond_13

    .line 377
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 378
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 380
    :cond_13
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 381
    iget-object p1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p2, p1, v1

    .line 382
    iget-object p1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz p1, :cond_25

    .line 383
    iget-object p1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 385
    :cond_25
    return-void

    .line 373
    :cond_26
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Name can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist set(Landroid/os/WorkSource;)V
    .registers 6

    .line 326
    if-nez p1, :cond_6

    .line 327
    invoke-virtual {p0}, Landroid/os/WorkSource;->clear()V

    .line 328
    return-void

    .line 330
    :cond_6
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 331
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v0, v0

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1c

    .line 332
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_26

    .line 334
    :cond_1c
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 336
    :goto_26
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_4a

    .line 337
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v0, v1, :cond_3f

    .line 338
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4d

    .line 340
    :cond_3f
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_4d

    .line 343
    :cond_4a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 346
    :goto_4d
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_85

    .line 347
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_5b

    .line 348
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_68

    .line 350
    :cond_5b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 353
    :goto_68
    iget-object p1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource$WorkChain;

    .line 354
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    new-instance v2, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v2, v0}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/WorkSource$WorkChain;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    goto :goto_6e

    .line 357
    :cond_85
    return-void
.end method

.method public blacklist setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 401
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 402
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 403
    sput-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 404
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 405
    sget-object p1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez p1, :cond_17

    sget-object p1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-eqz p1, :cond_15

    goto :goto_17

    .line 411
    :cond_15
    monitor-exit v0

    return-object v1

    .line 406
    :cond_17
    :goto_17
    nop

    .line 407
    sget-object p1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 408
    sget-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    filled-new-array {p1, v1}, [Landroid/os/WorkSource;

    move-result-object p1

    .line 409
    monitor-exit v0

    return-object p1

    .line 412
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public whitelist size()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 162
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1178
    const-string v1, "WorkSource{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    const-string v4, ", "

    if-ge v2, v3, :cond_31

    .line 1180
    if-eqz v2, :cond_17

    .line 1181
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    :cond_17
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1184
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v3, :cond_2e

    .line 1185
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1190
    :cond_31
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_54

    .line 1191
    const-string v2, " chains="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    nop

    :goto_3b
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_54

    .line 1193
    if-eqz v1, :cond_48

    .line 1194
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    :cond_48
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1192
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 1200
    :cond_54
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o transferWorkChains(Landroid/os/WorkSource;)V
    .registers 4

    .line 600
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 601
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 604
    :cond_9
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_2f

    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_2f

    .line 608
    :cond_16
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v0, :cond_22

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 612
    :cond_22
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 613
    iget-object p1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 614
    return-void

    .line 605
    :cond_2f
    :goto_2f
    return-void
.end method

.method public whitelist withoutNames()Landroid/os/WorkSource;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 455
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 456
    invoke-direct {v0}, Landroid/os/WorkSource;->clearNames()V

    .line 457
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1163
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1165
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v0, :cond_18

    .line 1168
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 1170
    :cond_18
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 1173
    :goto_26
    return-void
.end method
