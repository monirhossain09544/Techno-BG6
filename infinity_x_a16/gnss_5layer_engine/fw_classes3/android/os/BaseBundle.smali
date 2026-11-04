.class public Landroid/os/BaseBundle;
.super Ljava/lang/Object;
.source "BaseBundle.java"

# interfaces
.implements Landroid/os/Parcel$ClassLoaderProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BaseBundle$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field static final greylist-max-o BUNDLE_MAGIC:I = 0x4c444e42

.field private static final greylist-max-o BUNDLE_MAGIC_NATIVE:I = 0x4c444e44

.field static final greylist-max-o DEBUG:Z = false

.field static final greylist-max-o FLAG_DEFUSABLE:I = 0x1

.field private static final greylist-max-o LOG_DEFUSABLE:Z = false

.field protected static final greylist-max-o TAG:Ljava/lang/String; = "Bundle"

.field private static volatile greylist-max-o sShouldDefuse:Z


# instance fields
.field private greylist-max-o mClassLoader:Ljava/lang/ClassLoader;

.field public greylist-max-o mFlags:I

.field private blacklist mHasIntent:Z

.field private blacklist mLazyValues:I

.field greylist mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mOwnsLazyValues:Z

.field private greylist-max-o mParcelledByNative:Z

.field volatile greylist mParcelledData:Landroid/os/Parcel;

.field private blacklist mWeakParcelledData:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/BaseBundle;->sShouldDefuse:Z

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 3

    .line 167
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 168
    return-void
.end method

.method constructor greylist-max-o <init>(I)V
    .registers 4

    .line 202
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/ClassLoader;

    invoke-direct {p0, v0, p1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 203
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/BaseBundle;)V
    .registers 3

    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;Z)V

    .line 213
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/BaseBundle;Z)V
    .registers 10

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 114
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 130
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 137
    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 147
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 224
    monitor-enter p1

    .line 225
    :try_start_13
    iget-object v2, p1, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    iput-object v2, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 227
    iget-object v2, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-eqz v2, :cond_52

    .line 228
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 229
    iput-boolean v1, p1, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 231
    if-nez p2, :cond_2b

    .line 232
    new-instance p2, Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-direct {p2, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object p2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    goto :goto_54

    .line 234
    :cond_2b
    iget-object p2, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 235
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 236
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 237
    move v3, v1

    :goto_39
    if-ge v3, v2, :cond_51

    .line 238
    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/os/BaseBundle;->deepCopyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 240
    :cond_51
    goto :goto_54

    .line 242
    :cond_52
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 246
    :goto_54
    iget-object p2, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz p2, :cond_7a

    .line 247
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    move-result p2

    if-eqz p2, :cond_63

    .line 248
    sget-object v0, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    .line 249
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    goto :goto_7d

    .line 251
    :cond_63
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 252
    iget-object p2, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 253
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    .line 252
    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 254
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 255
    iget-boolean p2, p1, Landroid/os/BaseBundle;->mParcelledByNative:Z

    iput-boolean p2, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    goto :goto_7d

    .line 258
    :cond_7a
    nop

    .line 259
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 263
    :goto_7d
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 264
    iget-boolean p2, p1, Landroid/os/BaseBundle;->mHasIntent:Z

    iput-boolean p2, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 265
    monitor-exit p1

    .line 266
    return-void

    .line 265
    :catchall_85
    move-exception p2

    monitor-exit p1
    :try_end_87
    .catchall {:try_start_13 .. :try_end_87} :catchall_85

    throw p2
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 114
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 130
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 137
    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 147
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 177
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;)V

    .line 178
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;I)V
    .registers 5

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 114
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 130
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 137
    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 147
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 181
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 182
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/ClassLoader;)V
    .registers 3

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 193
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/ClassLoader;I)V
    .registers 5

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 114
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 130
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 137
    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 147
    iput-boolean v1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 158
    if-lez p2, :cond_1a

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p2}, Landroid/util/ArrayMap;-><init>(I)V

    goto :goto_1f

    :cond_1a
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    :goto_1f
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 160
    if-nez p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_2b
    iput-object p1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 161
    return-void
.end method

.method private greylist-max-o deepCopyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 702
    if-nez p1, :cond_4

    .line 703
    const/4 p1, 0x0

    return-object p1

    .line 705
    :cond_4
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_f

    .line 706
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 707
    :cond_f
    instance-of v0, p1, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1a

    .line 708
    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object p1

    return-object p1

    .line 709
    :cond_1a
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    .line 710
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroid/os/BaseBundle;->deepcopyArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 711
    :cond_25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 712
    instance-of v0, p1, [I

    if-eqz v0, :cond_3a

    .line 713
    check-cast p1, [I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 714
    :cond_3a
    instance-of v0, p1, [J

    if-eqz v0, :cond_45

    .line 715
    check-cast p1, [J

    invoke-virtual {p1}, [J->clone()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 716
    :cond_45
    instance-of v0, p1, [F

    if-eqz v0, :cond_50

    .line 717
    check-cast p1, [F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 718
    :cond_50
    instance-of v0, p1, [D

    if-eqz v0, :cond_5b

    .line 719
    check-cast p1, [D

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 720
    :cond_5b
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_66

    .line 721
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 722
    :cond_66
    instance-of v0, p1, [B

    if-eqz v0, :cond_71

    .line 723
    check-cast p1, [B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 724
    :cond_71
    instance-of v0, p1, [S

    if-eqz v0, :cond_7c

    .line 725
    check-cast p1, [S

    invoke-virtual {p1}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 726
    :cond_7c
    instance-of v0, p1, [C

    if-eqz v0, :cond_87

    .line 727
    check-cast p1, [C

    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 730
    :cond_87
    return-object p1
.end method

.method private greylist-max-o deepcopyArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6

    .line 734
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 735
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 736
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1a

    .line 737
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/os/BaseBundle;->deepCopyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 739
    :cond_1a
    return-object v1
.end method

.method public static greylist-max-o dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V
    .registers 5

    .line 2002
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2003
    if-nez p1, :cond_b

    .line 2004
    const-string p1, "[null]"

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2005
    return-void

    .line 2007
    :cond_b
    invoke-virtual {p1}, Landroid/os/BaseBundle;->getItemwiseMap()Landroid/util/ArrayMap;

    move-result-object p1

    .line 2008
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 2009
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2008
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2011
    :cond_26
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2012
    return-void
.end method

.method public static greylist-max-o dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/util/SparseArray;)V
    .registers 5

    .line 1989
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1990
    if-nez p1, :cond_b

    .line 1991
    const-string p1, "[null]"

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1992
    return-void

    .line 1994
    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 1995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1994
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1997
    :cond_37
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1998
    return-void
.end method

.method public static greylist-max-o dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 1971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1972
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1973
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1977
    const/16 v0, 0x400

    if-le v1, v0, :cond_45

    .line 1978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " [size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1979
    instance-of p1, p2, Landroid/os/BaseBundle;

    if-eqz p1, :cond_3c

    .line 1980
    check-cast p2, Landroid/os/BaseBundle;

    invoke-static {p0, p2}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V

    goto :goto_45

    .line 1981
    :cond_3c
    instance-of p1, p2, Landroid/util/SparseArray;

    if-eqz p1, :cond_45

    .line 1982
    check-cast p2, Landroid/util/SparseArray;

    invoke-static {p0, p2}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/util/SparseArray;)V

    .line 1985
    :cond_45
    :goto_45
    return-void
.end method

.method private greylist-max-o initializeFromParcelLocked(Landroid/os/Parcel;ZZ)V
    .registers 16

    .line 484
    const-string v8, "Failed to parse Bundle, but defusing quietly"

    const-string v9, "Bundle"

    invoke-static {p1}, Landroid/os/BaseBundle;->isEmptyParcel(Landroid/os/Parcel;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v0, :cond_23

    .line 489
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_19

    .line 490
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    goto :goto_1e

    .line 492
    :cond_19
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->erase()V

    .line 494
    :goto_1e
    iput-boolean v11, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 495
    iput-object v10, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 496
    return-void

    .line 499
    :cond_23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 504
    if-gez v3, :cond_2a

    .line 505
    return-void

    .line 507
    :cond_2a
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 508
    if-nez v0, :cond_35

    .line 509
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v3}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v2, v0

    goto :goto_3c

    .line 511
    :cond_35
    invoke-virtual {v0}, Landroid/util/ArrayMap;->erase()V

    .line 512
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    move-object v2, v0

    .line 514
    :goto_3c
    filled-new-array {v11}, [I

    move-result-object v7

    .line 516
    if-nez p3, :cond_44

    move v4, v1

    goto :goto_45

    :cond_44
    move v4, v11

    :goto_45
    move-object v6, p0

    move-object v1, p1

    move v5, p2

    :try_start_48
    invoke-virtual/range {v1 .. v7}, Landroid/os/Parcel;->readArrayMap(Landroid/util/ArrayMap;IZZLandroid/os/Parcel$ClassLoaderProvider;[I)V
    :try_end_4b
    .catch Landroid/os/BadParcelableException; {:try_start_48 .. :try_end_4b} :catch_95
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_4b} :catch_6b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_69

    .line 540
    iput-object v10, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 541
    if-eqz p2, :cond_5e

    .line 542
    aget v0, v7, v11

    if-nez v0, :cond_57

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    goto :goto_5e

    .line 546
    :cond_57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 550
    :cond_5e
    :goto_5e
    aget v0, v7, v11

    :goto_60
    iput v0, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 551
    iput-boolean v11, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 552
    iput-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 554
    iput-object v10, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 555
    goto :goto_c6

    .line 540
    :catchall_69
    move-exception v0

    goto :goto_c9

    .line 532
    :catch_6b
    move-exception v0

    .line 533
    :try_start_6c
    sget-boolean v3, Landroid/os/BaseBundle;->sShouldDefuse:Z

    if-eqz v3, :cond_94

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/ClassNotFoundException;

    if-eqz v3, :cond_94

    .line 534
    invoke-static {v9, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    invoke-virtual {v2}, Landroid/util/ArrayMap;->erase()V
    :try_end_7e
    .catchall {:try_start_6c .. :try_end_7e} :catchall_69

    .line 540
    iput-object v10, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 541
    if-eqz p2, :cond_91

    .line 542
    aget v0, v7, v11

    if-nez v0, :cond_8a

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    goto :goto_91

    .line 546
    :cond_8a
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 550
    :cond_91
    :goto_91
    aget v0, v7, v11

    goto :goto_60

    .line 537
    :cond_94
    :try_start_94
    throw v0

    .line 518
    :catch_95
    move-exception v0

    .line 519
    sget-boolean v3, Landroid/os/BaseBundle;->sShouldDefuse:Z

    if-eqz v3, :cond_c8

    .line 520
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->wtfBundleDefuse()Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 521
    invoke-static {v9, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a7

    .line 523
    :cond_a4
    invoke-static {v9, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    :goto_a7
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->deprecateBundleDefuse()Z

    move-result v3

    if-nez v3, :cond_c7

    .line 528
    invoke-virtual {v2}, Landroid/util/ArrayMap;->erase()V
    :try_end_b0
    .catchall {:try_start_94 .. :try_end_b0} :catchall_69

    .line 540
    iput-object v10, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 541
    if-eqz p2, :cond_c3

    .line 542
    aget v0, v7, v11

    if-nez v0, :cond_bc

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    goto :goto_c3

    .line 546
    :cond_bc
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 550
    :cond_c3
    :goto_c3
    aget v0, v7, v11

    goto :goto_60

    .line 560
    :goto_c6
    return-void

    .line 526
    :cond_c7
    :try_start_c7
    throw v0

    .line 530
    :cond_c8
    throw v0
    :try_end_c9
    .catchall {:try_start_c7 .. :try_end_c9} :catchall_69

    .line 540
    :goto_c9
    iput-object v10, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 541
    if-eqz p2, :cond_dc

    .line 542
    aget v3, v7, v11

    if-nez v3, :cond_d5

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    goto :goto_dc

    .line 546
    :cond_d5
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 550
    :cond_dc
    :goto_dc
    aget v1, v7, v11

    iput v1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 551
    iput-boolean v11, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 552
    iput-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 554
    iput-object v10, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 555
    throw v0
.end method

.method private static greylist-max-o isEmptyParcel(Landroid/os/Parcel;)Z
    .registers 2

    .line 581
    sget-object v0, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static greylist-max-o kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z
    .registers 2

    .line 648
    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method private greylist-max-o readFromParcelInner(Landroid/os/Parcel;I)V
    .registers 8

    .line 1919
    if-ltz p2, :cond_9f

    .line 1921
    const/4 v0, 0x0

    if-nez p2, :cond_c

    .line 1922
    iput-boolean v0, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 1924
    sget-object p1, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    iput-object p1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 1925
    return-void

    .line 1926
    :cond_c
    rem-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_86

    .line 1930
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1931
    const v2, 0x4c444e42    # 5.146036E7f

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1c

    move v2, v3

    goto :goto_1d

    :cond_1c
    move v2, v0

    .line 1932
    :goto_1d
    const v4, 0x4c444e44

    if-ne v1, v4, :cond_24

    move v4, v3

    goto :goto_25

    :cond_24
    move v4, v0

    .line 1933
    :goto_25
    if-nez v2, :cond_47

    if-eqz v4, :cond_2a

    goto :goto_47

    .line 1934
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad magic number for Bundle: 0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1935
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1938
    :cond_47
    :goto_47
    invoke-virtual {p1}, Landroid/os/Parcel;->hasReadWriteHelper()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1943
    monitor-enter p0

    .line 1944
    :try_start_4e
    iput-boolean v0, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 1945
    invoke-direct {p0, p1, v0, v4}, Landroid/os/BaseBundle;->initializeFromParcelLocked(Landroid/os/Parcel;ZZ)V

    .line 1946
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_5b

    .line 1947
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 1948
    return-void

    .line 1946
    :catchall_5b
    move-exception p1

    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p1

    .line 1952
    :cond_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1953
    invoke-static {v1, p2}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1956
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1957
    invoke-virtual {v2, p1, v1, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1958
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->adoptClassCookies(Landroid/os/Parcel;)V

    .line 1961
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1963
    iput-boolean v3, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 1964
    iput-boolean v4, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 1965
    iput-object v2, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 1966
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 1967
    return-void

    .line 1927
    :cond_86
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle length is not aligned by 4: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1920
    :cond_9f
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad length in parcel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist-max-o setShouldDefuse(Z)V
    .registers 1

    .line 92
    sput-boolean p0, Landroid/os/BaseBundle;->sShouldDefuse:Z

    .line 93
    return-void
.end method

.method private varargs blacklist unwrapLazyValueFromMapLocked(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 445
    instance-of v1, v0, Ljava/util/function/BiFunction;

    if-eqz v1, :cond_9b

    .line 447
    const/4 v1, 0x0

    :try_start_b
    check-cast v0, Ljava/util/function/BiFunction;

    invoke-interface {v0, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/BadParcelableException; {:try_start_b .. :try_end_11} :catch_40

    .line 464
    nop

    .line 465
    iget-object p2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget p1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 467
    iget-boolean p1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    if-eqz p1, :cond_9b

    .line 468
    iget p1, p0, Landroid/os/BaseBundle;->mLazyValues:I

    if-ltz p1, :cond_26

    goto :goto_27

    :cond_26
    const/4 p2, 0x0

    :goto_27
    const-string p1, "Lazy values ref count below 0"

    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 472
    iget-object p1, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcel;

    .line 473
    iget p2, p0, Landroid/os/BaseBundle;->mLazyValues:I

    if-nez p2, :cond_9b

    if-eqz p1, :cond_9b

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->destroy()V

    .line 475
    iput-object v1, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    goto :goto_9b

    .line 448
    :catch_40
    move-exception p2

    .line 449
    sget-boolean p3, Landroid/os/BaseBundle;->sShouldDefuse:Z

    if-eqz p3, :cond_9a

    .line 450
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->wtfBundleDefuse()Z

    move-result p3

    const-string v0, ", returning null."

    const-string v2, "Failed to parse item "

    const-string v3, "Bundle"

    if-eqz p3, :cond_72

    .line 451
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_92

    .line 454
    :cond_72
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    :goto_92
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->deprecateBundleDefuse()Z

    move-result p1

    if-nez p1, :cond_99

    .line 460
    return-object v1

    .line 458
    :cond_99
    throw p2

    .line 462
    :cond_9a
    throw p2

    .line 479
    :cond_9b
    :goto_9b
    return-object v0
.end method


# virtual methods
.method public whitelist clear()V
    .registers 2

    .line 687
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 688
    iget-boolean v0, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    .line 689
    iget-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    .line 690
    if-eqz v0, :cond_18

    .line 691
    invoke-virtual {v0}, Landroid/os/Parcel;->destroy()V

    .line 695
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 696
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BaseBundle;->mLazyValues:I

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 698
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 699
    return-void
.end method

.method public whitelist containsKey(Ljava/lang/String;)Z
    .registers 3

    .line 750
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 751
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 766
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 767
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method blacklist get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 787
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 789
    :try_start_3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_d} :catch_e
    .catch Landroid/os/BadTypeParcelableException; {:try_start_3 .. :try_end_d} :catch_e

    return-object p1

    .line 790
    :catch_e
    move-exception v0

    .line 791
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 792
    const/4 p1, 0x0

    return-object p1
.end method

.method blacklist getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1577
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1579
    :try_start_3
    const-class v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_17} :catch_18
    .catch Landroid/os/BadTypeParcelableException; {:try_start_3 .. :try_end_17} :catch_18

    return-object v0

    .line 1580
    :catch_18
    move-exception v0

    .line 1581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayList<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ">"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1582
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getBoolean(Ljava/lang/String;)Z
    .registers 3

    .line 1162
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist getBoolean(Ljava/lang/String;Z)Z
    .registers 10

    .line 1206
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1207
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1208
    if-nez v3, :cond_c

    .line 1209
    return p2

    .line 1212
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return p1

    .line 1213
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1214
    const-string v4, "Boolean"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1215
    return p2
.end method

.method public whitelist getBooleanArray(Ljava/lang/String;)[Z
    .registers 6

    .line 1635
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1636
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1637
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1638
    return-object v1

    .line 1641
    :cond_d
    :try_start_d
    check-cast v0, [Z
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1642
    :catch_10
    move-exception v2

    .line 1643
    const-string v3, "byte[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1644
    return-object v1
.end method

.method greylist-max-o getByte(Ljava/lang/String;)B
    .registers 3

    .line 1227
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1
.end method

.method greylist-max-o getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .registers 10

    .line 1240
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1241
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1242
    if-nez v3, :cond_10

    .line 1243
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1246
    :cond_10
    :try_start_10
    check-cast v3, Ljava/lang/Byte;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_12} :catch_13

    return-object v3

    .line 1247
    :catch_13
    move-exception v0

    move-object v6, v0

    .line 1248
    const-string v4, "Byte"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1249
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o getByteArray(Ljava/lang/String;)[B
    .registers 6

    .line 1658
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1659
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1660
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1661
    return-object v1

    .line 1664
    :cond_d
    :try_start_d
    check-cast v0, [B
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1665
    :catch_10
    move-exception v2

    .line 1666
    const-string v3, "byte[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1667
    return-object v1
.end method

.method greylist-max-o getChar(Ljava/lang/String;)C
    .registers 3

    .line 1261
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1262
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;C)C

    move-result p1

    return p1
.end method

.method greylist-max-o getChar(Ljava/lang/String;C)C
    .registers 10

    .line 1274
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1275
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1276
    if-nez v3, :cond_c

    .line 1277
    return p2

    .line 1280
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result p1
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return p1

    .line 1281
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1282
    const-string v4, "Character"

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1283
    return p2
.end method

.method greylist-max-o getCharArray(Ljava/lang/String;)[C
    .registers 6

    .line 1704
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1705
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1706
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1707
    return-object v1

    .line 1710
    :cond_d
    :try_start_d
    check-cast v0, [C
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1711
    :catch_10
    move-exception v2

    .line 1712
    const-string v3, "char[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1713
    return-object v1
.end method

.method greylist-max-o getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5

    .line 1503
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1504
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1506
    :try_start_9
    check-cast v0, Ljava/lang/CharSequence;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_b} :catch_c

    return-object v0

    .line 1507
    :catch_c
    move-exception v1

    .line 1508
    const-string v2, "CharSequence"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1509
    const/4 p1, 0x0

    return-object p1
.end method

.method greylist-max-o getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    .line 1525
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1526
    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p1

    :goto_8
    return-object p2
.end method

.method greylist-max-o getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .registers 6

    .line 1842
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1843
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1844
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1845
    return-object v1

    .line 1848
    :cond_d
    :try_start_d
    check-cast v0, [Ljava/lang/CharSequence;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1849
    :catch_10
    move-exception v2

    .line 1850
    const-string v3, "CharSequence[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1851
    return-object v1
.end method

.method greylist-max-o getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1622
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 319
    iget-object v0, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public whitelist getDouble(Ljava/lang/String;)D
    .registers 4

    .line 1431
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1432
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getDouble(Ljava/lang/String;D)D
    .registers 11

    .line 1444
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1445
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1446
    if-nez v3, :cond_c

    .line 1447
    return-wide p2

    .line 1450
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return-wide p1

    .line 1451
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1452
    const-string v4, "Double"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1453
    return-wide p2
.end method

.method public whitelist getDoubleArray(Ljava/lang/String;)[D
    .registers 6

    .line 1796
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1797
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1798
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1799
    return-object v1

    .line 1802
    :cond_d
    :try_start_d
    check-cast v0, [D
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1803
    :catch_10
    move-exception v2

    .line 1804
    const-string v3, "double[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1805
    return-object v1
.end method

.method greylist-max-o getFloat(Ljava/lang/String;)F
    .registers 3

    .line 1397
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1398
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method greylist-max-o getFloat(Ljava/lang/String;F)F
    .registers 10

    .line 1410
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1411
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1412
    if-nez v3, :cond_c

    .line 1413
    return p2

    .line 1416
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return p1

    .line 1417
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1418
    const-string v4, "Float"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1419
    return p2
.end method

.method greylist-max-o getFloatArray(Ljava/lang/String;)[F
    .registers 6

    .line 1773
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1774
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1775
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1776
    return-object v1

    .line 1779
    :cond_d
    :try_start_d
    check-cast v0, [F
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1780
    :catch_10
    move-exception v2

    .line 1781
    const-string v3, "float[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1782
    return-object v1
.end method

.method public whitelist getInt(Ljava/lang/String;)I
    .registers 3

    .line 1329
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public whitelist getInt(Ljava/lang/String;I)I
    .registers 10

    .line 1342
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1343
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1344
    if-nez v3, :cond_c

    .line 1345
    return p2

    .line 1348
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return p1

    .line 1349
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1350
    const-string v4, "Integer"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1351
    return p2
.end method

.method public whitelist getIntArray(Ljava/lang/String;)[I
    .registers 6

    .line 1727
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1728
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1729
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1730
    return-object v1

    .line 1733
    :cond_d
    :try_start_d
    check-cast v0, [I
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1734
    :catch_10
    move-exception v2

    .line 1735
    const-string v3, "int[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1736
    return-object v1
.end method

.method greylist-max-o getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1596
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method blacklist getItemwiseMap()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 594
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->unparcel(Z)V

    .line 595
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public whitelist getLong(Ljava/lang/String;)J
    .registers 4

    .line 1363
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1364
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLong(Ljava/lang/String;J)J
    .registers 11

    .line 1376
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1377
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1378
    if-nez v3, :cond_c

    .line 1379
    return-wide p2

    .line 1382
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return-wide p1

    .line 1383
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1384
    const-string v4, "Long"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1385
    return-wide p2
.end method

.method public whitelist getLongArray(Ljava/lang/String;)[J
    .registers 6

    .line 1750
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1751
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1752
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1753
    return-object v1

    .line 1756
    :cond_d
    :try_start_d
    check-cast v0, [J
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1757
    :catch_10
    move-exception v2

    .line 1758
    const-string v3, "long[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1759
    return-object v1
.end method

.method public greylist-max-o getPairValue()Ljava/lang/String;
    .registers 5

    .line 288
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 289
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 290
    const/4 v1, 0x1

    if-le v0, v1, :cond_13

    .line 291
    const-string v1, "Bundle"

    const-string v2, "getPairValue() used on Bundle with multiple pairs."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_13
    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 294
    return-object v1

    .line 297
    :cond_17
    :try_start_17
    const-class v0, Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v0, v3}, Landroid/os/BaseBundle;->getValueAt(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_22} :catch_23
    .catch Landroid/os/BadTypeParcelableException; {:try_start_17 .. :try_end_22} :catch_23

    return-object v0

    .line 298
    :catch_23
    move-exception v0

    .line 299
    const-string v2, "getPairValue()"

    const-string v3, "String"

    invoke-virtual {p0, v2, v3, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 300
    return-object v1
.end method

.method greylist-max-o getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1543
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1544
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1545
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1546
    return-object v1

    .line 1549
    :cond_b
    :try_start_b
    check-cast v0, Ljava/io/Serializable;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_e

    return-object v0

    .line 1550
    :catch_e
    move-exception v2

    .line 1551
    const-string v3, "Serializable"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1552
    return-object v1
.end method

.method blacklist getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1570
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    return-object p1
.end method

.method greylist-max-o getShort(Ljava/lang/String;)S
    .registers 3

    .line 1295
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1296
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;S)S

    move-result p1

    return p1
.end method

.method greylist-max-o getShort(Ljava/lang/String;S)S
    .registers 10

    .line 1308
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1309
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1310
    if-nez v3, :cond_c

    .line 1311
    return p2

    .line 1314
    :cond_c
    :try_start_c
    move-object v0, v3

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p1
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_14

    return p1

    .line 1315
    :catch_14
    move-exception v0

    move-object v6, v0

    .line 1316
    const-string v4, "Short"

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1317
    return p2
.end method

.method greylist-max-o getShortArray(Ljava/lang/String;)[S
    .registers 6

    .line 1681
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1682
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1683
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1684
    return-object v1

    .line 1687
    :cond_d
    :try_start_d
    check-cast v0, [S
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1688
    :catch_10
    move-exception v2

    .line 1689
    const-string/jumbo v3, "short[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1690
    return-object v1
.end method

.method public whitelist getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1467
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1468
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1470
    :try_start_9
    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_b} :catch_c

    return-object v0

    .line 1471
    :catch_c
    move-exception v1

    .line 1472
    const-string v2, "String"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1473
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1489
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1490
    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    move-object p2, p1

    :goto_8
    return-object p2
.end method

.method public whitelist getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 1819
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1820
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1821
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1822
    return-object v1

    .line 1825
    :cond_d
    :try_start_d
    check-cast v0, [Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 1826
    :catch_10
    move-exception v2

    .line 1827
    const-string v3, "String[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1828
    return-object v1
.end method

.method greylist-max-o getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1609
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method final blacklist getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final blacklist getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 381
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final varargs blacklist getValue(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    .line 398
    if-ltz p1, :cond_d

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BaseBundle;->getValueAt(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return-object p1
.end method

.method final varargs blacklist getValueAt(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 425
    instance-of v1, v0, Ljava/util/function/BiFunction;

    if-eqz v1, :cond_1d

    .line 426
    monitor-enter p0

    .line 427
    :try_start_b
    invoke-direct {p0, p1, p2, p3}, Landroid/os/BaseBundle;->unwrapLazyValueFromMapLocked(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 428
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1a

    .line 429
    iget p1, p0, Landroid/os/BaseBundle;->mFlags:I

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_27

    .line 430
    invoke-static {v0}, Landroid/content/Intent;->maybeMarkAsMissingCreatorToken(Ljava/lang/Object;)V

    goto :goto_27

    .line 428
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1

    .line 432
    :cond_1d
    instance-of p1, v0, Landroid/os/Bundle;

    if-eqz p1, :cond_27

    .line 433
    move-object p1, v0

    check-cast p1, Landroid/os/Bundle;

    .line 434
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->setClassLoaderSameAsContainerBundleWhenRetrievedFirstTime(Landroid/os/BaseBundle;)V

    .line 436
    :cond_27
    :goto_27
    if-eqz p2, :cond_2d

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_2d
    return-object v0
.end method

.method public blacklist hasIntent()Z
    .registers 2

    .line 270
    iget-boolean v0, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    return v0
.end method

.method public blacklist isDefinitelyEmpty()Z
    .registers 2

    .line 627
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 628
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    move-result v0

    return v0

    .line 630
    :cond_b
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist isEmpty()Z
    .registers 2

    .line 612
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 613
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isEmptyParcel()Z
    .registers 2

    .line 574
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-static {v0}, Landroid/os/BaseBundle;->isEmptyParcel(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r isParcelled()Z
    .registers 2

    .line 567
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isValueParceled(Ljava/lang/String;)Z
    .registers 3

    .line 406
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    const/4 p1, 0x1

    return p1

    .line 407
    :cond_6
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    .line 408
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/util/function/BiFunction;

    return p1
.end method

.method public whitelist keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 833
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 834
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o kindofEquals(Landroid/os/BaseBundle;)Z
    .registers 6

    .line 660
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 661
    return v0

    .line 663
    :cond_4
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isDefinitelyEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isDefinitelyEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 664
    return v2

    .line 666
    :cond_12
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v3

    if-eq v1, v3, :cond_1d

    .line 668
    return v0

    .line 669
    :cond_1d
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 670
    iget-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object p1, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->compareData(Landroid/os/Parcel;)I

    move-result p1

    if-nez p1, :cond_2e

    move v0, v2

    :cond_2e
    return v0

    .line 678
    :cond_2f
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist putAll(Landroid/os/PersistableBundle;)V
    .registers 3

    .line 812
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 813
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->unparcel()V

    .line 814
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 815
    return-void
.end method

.method greylist-max-o putAll(Landroid/util/ArrayMap;)V
    .registers 3

    .line 823
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 824
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 825
    return-void
.end method

.method public whitelist putBoolean(Ljava/lang/String;Z)V
    .registers 4

    .line 874
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 875
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    return-void
.end method

.method public whitelist putBooleanArray(Ljava/lang/String;[Z)V
    .registers 4

    .line 1042
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1043
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    return-void
.end method

.method greylist-max-o putByte(Ljava/lang/String;B)V
    .registers 4

    .line 886
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 887
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    return-void
.end method

.method greylist-max-o putByteArray(Ljava/lang/String;[B)V
    .registers 4

    .line 1054
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1055
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    return-void
.end method

.method greylist-max-o putChar(Ljava/lang/String;C)V
    .registers 4

    .line 898
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 899
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    return-void
.end method

.method greylist-max-o putCharArray(Ljava/lang/String;[C)V
    .registers 4

    .line 1078
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1079
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    return-void
.end method

.method greylist-max-o putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 4

    .line 982
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 983
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    return-void
.end method

.method greylist-max-o putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .registers 4

    .line 1150
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1151
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    return-void
.end method

.method greylist-max-o putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1018
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1019
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    return-void
.end method

.method public whitelist putDouble(Ljava/lang/String;D)V
    .registers 5

    .line 958
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 959
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    return-void
.end method

.method public whitelist putDoubleArray(Ljava/lang/String;[D)V
    .registers 4

    .line 1126
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1127
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    return-void
.end method

.method greylist-max-o putFloat(Ljava/lang/String;F)V
    .registers 4

    .line 946
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 947
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    return-void
.end method

.method greylist-max-o putFloatArray(Ljava/lang/String;[F)V
    .registers 4

    .line 1114
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1115
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    return-void
.end method

.method public whitelist putInt(Ljava/lang/String;I)V
    .registers 4

    .line 922
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 923
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    return-void
.end method

.method public whitelist putIntArray(Ljava/lang/String;[I)V
    .registers 4

    .line 1090
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1091
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    return-void
.end method

.method greylist-max-o putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 994
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 995
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    return-void
.end method

.method public whitelist putLong(Ljava/lang/String;J)V
    .registers 5

    .line 934
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 935
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    return-void
.end method

.method public whitelist putLongArray(Ljava/lang/String;[J)V
    .registers 4

    .line 1102
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1103
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    return-void
.end method

.method public blacklist putObject(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 839
    if-nez p2, :cond_8

    .line 840
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7c

    .line 841
    :cond_8
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    .line 842
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_7c

    .line 843
    :cond_17
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_25

    .line 844
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7c

    .line 845
    :cond_25
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_33

    .line 846
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_7c

    .line 847
    :cond_33
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_41

    .line 848
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_7c

    .line 849
    :cond_41
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4b

    .line 850
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c

    .line 851
    :cond_4b
    instance-of v0, p2, [Z

    if-eqz v0, :cond_55

    .line 852
    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_7c

    .line 853
    :cond_55
    instance-of v0, p2, [I

    if-eqz v0, :cond_5f

    .line 854
    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_7c

    .line 855
    :cond_5f
    instance-of v0, p2, [J

    if-eqz v0, :cond_69

    .line 856
    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_7c

    .line 857
    :cond_69
    instance-of v0, p2, [D

    if-eqz v0, :cond_73

    .line 858
    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_7c

    .line 859
    :cond_73
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_7d

    .line 860
    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 864
    :goto_7c
    return-void

    .line 862
    :cond_7d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method greylist-max-o putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 4

    .line 1030
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1031
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    return-void
.end method

.method greylist-max-o putShort(Ljava/lang/String;S)V
    .registers 4

    .line 910
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 911
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    return-void
.end method

.method greylist-max-o putShortArray(Ljava/lang/String;[S)V
    .registers 4

    .line 1066
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1067
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    return-void
.end method

.method public whitelist putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 970
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 971
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    return-void
.end method

.method public whitelist putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 1138
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1139
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    return-void
.end method

.method greylist-max-o putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1006
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1007
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    return-void
.end method

.method greylist-max-o readFromParcelInner(Landroid/os/Parcel;)V
    .registers 3

    .line 1914
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1915
    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 1916
    return-void
.end method

.method public whitelist remove(Ljava/lang/String;)V
    .registers 3

    .line 802
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 803
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    return-void
.end method

.method greylist-max-o setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2

    .line 311
    iput-object p1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 312
    return-void
.end method

.method public blacklist setHasIntent(Z)V
    .registers 2

    .line 275
    iput-boolean p1, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    .line 276
    return-void
.end method

.method public whitelist size()I
    .registers 2

    .line 604
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 605
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method blacklist typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V
    .registers 8

    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    const-string v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    const-string p1, " expected "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    if-eqz p2, :cond_28

    .line 1177
    const-string p1, " but value was a "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 1180
    :cond_28
    const-string p1, " but value was of a different type"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    :goto_2d
    const-string p1, ".  The default value "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1184
    const-string p1, " was returned."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Bundle"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const-string p1, "Attempt to cast generated internal exception:"

    invoke-static {p2, p1, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1187
    return-void
.end method

.method blacklist typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .registers 11

    .line 1190
    const-string v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1191
    return-void
.end method

.method blacklist typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .registers 10

    .line 1194
    const/4 v2, 0x0

    const-string v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1195
    return-void
.end method

.method final greylist unparcel()V
    .registers 2

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->unparcel(Z)V

    .line 329
    return-void
.end method

.method final blacklist unparcel(Z)V
    .registers 6

    .line 333
    monitor-enter p0

    .line 334
    :try_start_1
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 335
    if-eqz v0, :cond_10

    .line 336
    iget-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 337
    iget-boolean v1, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroid/os/BaseBundle;->initializeFromParcelLocked(Landroid/os/Parcel;ZZ)V

    .line 345
    :cond_10
    if-eqz p1, :cond_25

    .line 352
    iget-object p1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_1a
    if-ge v1, p1, :cond_25

    .line 354
    new-array v2, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Landroid/os/BaseBundle;->getValueAt(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 357
    :cond_25
    monitor-exit p0

    .line 358
    return-void

    .line 357
    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw p1
.end method

.method greylist-max-o writeToParcelInner(Landroid/os/Parcel;I)V
    .registers 6

    .line 1862
    invoke-virtual {p1}, Landroid/os/Parcel;->hasReadWriteHelper()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1863
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->unparcel(Z)V

    .line 1868
    :cond_a
    monitor-enter p0

    .line 1871
    :try_start_b
    iget-object p2, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    const v0, 0x4c444e42    # 5.146036E7f

    const/4 v1, 0x0

    if-eqz p2, :cond_3c

    .line 1872
    iget-object p2, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    sget-object v2, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    if-ne p2, v2, :cond_1d

    .line 1873
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3a

    .line 1875
    :cond_1d
    iget-object p2, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result p2

    .line 1876
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1877
    iget-boolean v2, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    if-eqz v2, :cond_2d

    const v0, 0x4c444e44

    :cond_2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1878
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {p1, v0, v1, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1879
    iget-boolean p2, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1881
    :goto_3a
    monitor-exit p0

    return-void

    .line 1883
    :cond_3c
    iget-object p2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 1884
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_73

    .line 1887
    if-eqz p2, :cond_6f

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-gtz v2, :cond_48

    goto :goto_6f

    .line 1891
    :cond_48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1892
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1893
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1894
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1895
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    .line 1896
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 1899
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1900
    sub-int v0, p2, v0

    .line 1901
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1902
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1903
    iget-boolean p2, p0, Landroid/os/BaseBundle;->mHasIntent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1904
    return-void

    .line 1888
    :cond_6f
    :goto_6f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1889
    return-void

    .line 1884
    :catchall_73
    move-exception p1

    :try_start_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw p1
.end method
