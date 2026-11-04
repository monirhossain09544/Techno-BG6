.class Landroid/net/Uri$OpaqueUri;
.super Landroid/net/Uri;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpaqueUri"
.end annotation


# static fields
.field static final greylist-max-o TYPE_ID:I = 0x2


# instance fields
.field private volatile greylist-max-o cachedString:Ljava/lang/String;

.field private final greylist-max-o fragment:Landroid/net/Uri$Part;

.field private final greylist-max-o scheme:Ljava/lang/String;

.field private final greylist-max-o ssp:Landroid/net/Uri$Part;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V
    .registers 5

    .line 879
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/Uri;-><init>(Landroid/net/Uri-IA;)V

    .line 979
    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/Uri$OpaqueUri;->cachedString:Ljava/lang/String;

    .line 880
    iput-object p1, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    .line 881
    iput-object p2, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    .line 882
    if-nez p3, :cond_10

    sget-object p3, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    :cond_10
    iput-object p3, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    .line 883
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V

    return-void
.end method

.method static greylist-max-o readFrom(Landroid/os/Parcel;)Landroid/net/Uri;
    .registers 4

    .line 886
    new-instance v0, Landroid/net/Uri$StringUri;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/Uri$StringUri;-><init>(Ljava/lang/String;Landroid/net/Uri-IA;)V

    .line 887
    new-instance p0, Landroid/net/Uri$OpaqueUri;

    .line 888
    invoke-static {v0}, Landroid/net/Uri$StringUri;->-$$Nest$mparseScheme(Landroid/net/Uri$StringUri;)Ljava/lang/String;

    move-result-object v1

    .line 889
    invoke-static {v0}, Landroid/net/Uri$StringUri;->-$$Nest$mgetSsp(Landroid/net/Uri$StringUri;)Landroid/net/Uri$Part;

    move-result-object v2

    .line 890
    invoke-static {v0}, Landroid/net/Uri$StringUri;->-$$Nest$mgetFragmentPart(Landroid/net/Uri$StringUri;)Landroid/net/Uri$Part;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V

    .line 887
    return-object p0
.end method


# virtual methods
.method public whitelist buildUpon()Landroid/net/Uri$Builder;
    .registers 3

    .line 1001
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v1, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    .line 1002
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    .line 1003
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    .line 1004
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1001
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 895
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAuthority()Ljava/lang/String;
    .registers 2

    .line 924
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getEncodedAuthority()Ljava/lang/String;
    .registers 2

    .line 928
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getEncodedFragment()Ljava/lang/String;
    .registers 2

    .line 952
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEncodedPath()Ljava/lang/String;
    .registers 2

    .line 936
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getEncodedQuery()Ljava/lang/String;
    .registers 2

    .line 944
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getEncodedSchemeSpecificPart()Ljava/lang/String;
    .registers 2

    .line 916
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEncodedUserInfo()Ljava/lang/String;
    .registers 2

    .line 968
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getFragment()Ljava/lang/String;
    .registers 2

    .line 948
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHost()Ljava/lang/String;
    .registers 2

    .line 972
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getLastPathSegment()Ljava/lang/String;
    .registers 2

    .line 960
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPath()Ljava/lang/String;
    .registers 2

    .line 932
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPathSegments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 956
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPort()I
    .registers 2

    .line 976
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getQuery()Ljava/lang/String;
    .registers 2

    .line 940
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getScheme()Ljava/lang/String;
    .registers 2

    .line 912
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSchemeSpecificPart()Ljava/lang/String;
    .registers 2

    .line 920
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUserInfo()Ljava/lang/String;
    .registers 2

    .line 964
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isHierarchical()Z
    .registers 2

    .line 904
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isRelative()Z
    .registers 2

    .line 908
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 983
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->cachedString:Ljava/lang/String;

    sget-object v1, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 984
    :goto_9
    if-eqz v0, :cond_e

    .line 985
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->cachedString:Ljava/lang/String;

    return-object v0

    .line 988
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 990
    iget-object v1, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {p0}, Landroid/net/Uri$OpaqueUri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    iget-object v1, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v1}, Landroid/net/Uri$Part;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 994
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v2}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$OpaqueUri;->cachedString:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 899
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    invoke-virtual {p0}, Landroid/net/Uri$OpaqueUri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 901
    return-void
.end method
