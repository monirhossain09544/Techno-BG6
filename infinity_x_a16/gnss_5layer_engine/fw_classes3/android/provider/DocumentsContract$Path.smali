.class public final Landroid/provider/DocumentsContract$Path;
.super Ljava/lang/Object;
.source "DocumentsContract.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DocumentsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Path"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/provider/DocumentsContract$Path;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mRootId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1994
    new-instance v0, Landroid/provider/DocumentsContract$Path$1;

    invoke-direct {v0}, Landroid/provider/DocumentsContract$Path$1;-><init>()V

    sput-object v0, Landroid/provider/DocumentsContract$Path;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1929
    const-string/jumbo v0, "path"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 1930
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 1932
    iput-object p1, p0, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    .line 1933
    iput-object p2, p0, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    .line 1934
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1991
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1955
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1956
    return v0

    .line 1958
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    instance-of v2, p1, Landroid/provider/DocumentsContract$Path;

    if-nez v2, :cond_c

    goto :goto_25

    .line 1961
    :cond_c
    check-cast p1, Landroid/provider/DocumentsContract$Path;

    .line 1962
    iget-object v2, p0, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    iget-object v3, p1, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    iget-object p1, p1, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    .line 1963
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    .line 1962
    :goto_24
    return v0

    .line 1959
    :cond_25
    :goto_25
    return v1
.end method

.method public whitelist getPath()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1950
    iget-object v0, p0, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getRootId()Ljava/lang/String;
    .registers 2

    .line 1941
    iget-object v0, p0, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1968
    iget-object v0, p0, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    iget-object v1, p0, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1974
    const-string v1, "DocumentsContract.Path{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1975
    const-string/jumbo v1, "rootId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    .line 1976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1977
    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    .line 1978
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1979
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1980
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1973
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1985
    iget-object p2, p0, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1986
    iget-object p2, p0, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1987
    return-void
.end method
