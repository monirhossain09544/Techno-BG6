.class public abstract Landroid/net/Uri;
.super Ljava/lang/Object;
.source "Uri.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$StringUri;,
        Landroid/net/Uri$PathPart;,
        Landroid/net/Uri$HierarchicalUri;,
        Landroid/net/Uri$Part;,
        Landroid/net/Uri$OpaqueUri;,
        Landroid/net/Uri$Builder;,
        Landroid/net/Uri$AbstractPart;,
        Landroid/net/Uri$AbstractHierarchicalUri;,
        Landroid/net/Uri$PathSegmentsBuilder;,
        Landroid/net/Uri$PathSegments;,
        Landroid/net/Uri$NotCachedHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final whitelist EMPTY:Landroid/net/Uri;

.field private static final greylist-max-o HEX_DIGITS:[C

.field private static final greylist-max-o LOG:Ljava/lang/String;

.field private static final greylist-max-o NOT_CALCULATED:I = -0x2

.field private static final greylist-max-o NOT_FOUND:I = -0x1

.field private static final greylist-max-o NOT_HIERARCHICAL:Ljava/lang/String; = "This isn\'t a hierarchical URI."

.field private static final greylist-max-o NULL_TYPE_ID:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLOG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/net/Uri;->LOG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 8

    .line 117
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/Uri;->LOG:Ljava/lang/String;

    .line 145
    new-instance v1, Landroid/net/Uri$HierarchicalUri;

    sget-object v3, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    sget-object v4, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    sget-object v5, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    sget-object v6, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri-IA;)V

    sput-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1820
    new-instance v0, Landroid/net/Uri$1;

    invoke-direct {v0}, Landroid/net/Uri$1;-><init>()V

    sput-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1854
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/net/Uri;->HEX_DIGITS:[C

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/Uri-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/Uri;-><init>()V

    return-void
.end method

.method public static whitelist decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2024
    if-nez p0, :cond_4

    .line 2025
    const/4 p0, 0x0

    return-object p0

    .line 2027
    :cond_4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/net/UriCodec;->decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist decodeIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2038
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 2039
    :cond_4
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2040
    :cond_11
    return-object p0
.end method

.method public static whitelist encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1867
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 1884
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1885
    return-object v0

    .line 1889
    :cond_4
    nop

    .line 1891
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1896
    const/4 v2, 0x0

    move v3, v2

    .line 1897
    :goto_b
    if-ge v3, v1, :cond_80

    .line 1901
    move v4, v3

    .line 1902
    :goto_e
    if-ge v4, v1, :cond_1d

    .line 1903
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, p1}, Landroid/net/Uri;->isAllowed(CLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1904
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1908
    :cond_1d
    if-ne v4, v1, :cond_2a

    .line 1909
    if-nez v3, :cond_22

    .line 1911
    return-object p0

    .line 1914
    :cond_22
    invoke-virtual {v0, p0, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1915
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1919
    :cond_2a
    if-nez v0, :cond_31

    .line 1920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1923
    :cond_31
    if-le v4, v3, :cond_36

    .line 1925
    invoke-virtual {v0, p0, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1933
    :cond_36
    nop

    .line 1934
    add-int/lit8 v3, v4, 0x1

    .line 1935
    :goto_39
    if-ge v3, v1, :cond_48

    .line 1936
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, p1}, Landroid/net/Uri;->isAllowed(CLjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_48

    .line 1937
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 1942
    :cond_48
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1944
    :try_start_4c
    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 1945
    array-length v5, v4

    .line 1946
    move v6, v2

    :goto_54
    if-ge v6, v5, :cond_76

    .line 1947
    const/16 v7, 0x25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1948
    sget-object v7, Landroid/net/Uri;->HEX_DIGITS:[C

    aget-byte v8, v4, v6

    and-int/lit16 v8, v8, 0xf0

    shr-int/lit8 v8, v8, 0x4

    aget-char v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1949
    sget-object v7, Landroid/net/Uri;->HEX_DIGITS:[C

    aget-byte v8, v4, v6

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_73
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4c .. :try_end_73} :catch_79

    .line 1946
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    .line 1953
    :cond_76
    nop

    .line 1955
    nop

    .line 1956
    goto :goto_b

    .line 1951
    :catch_79
    move-exception p0

    .line 1952
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 1959
    :cond_80
    if-nez v0, :cond_83

    goto :goto_87

    :cond_83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_87
    return-object p0
.end method

.method public static blacklist encodeIfNotEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1987
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1988
    :cond_4
    invoke-static {p0, p1}, Landroid/net/Uri;->isEncoded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 1989
    :cond_b
    invoke-static {p0, p1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist fromFile(Ljava/io/File;)Landroid/net/Uri;
    .registers 8

    .line 481
    if-eqz p0, :cond_19

    .line 485
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri$PathPart;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v3

    .line 486
    new-instance v0, Landroid/net/Uri$HierarchicalUri;

    sget-object v2, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    sget-object v4, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    sget-object v5, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    const/4 v6, 0x0

    const-string v1, "file"

    invoke-direct/range {v0 .. v6}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri-IA;)V

    return-object v0

    .line 482
    :cond_19
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "file"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5

    .line 856
    if-eqz p0, :cond_1c

    .line 859
    if-eqz p1, :cond_13

    .line 863
    new-instance v0, Landroid/net/Uri$OpaqueUri;

    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p1

    .line 864
    invoke-static {p2}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri-IA;)V

    .line 863
    return-object v0

    .line 860
    :cond_13
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "ssp"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 857
    :cond_1c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "scheme"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o isAllowed(CLjava/lang/String;)Z
    .registers 4

    .line 1971
    const/16 v0, 0x41

    if-lt p0, v0, :cond_8

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2c

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2c

    :cond_10
    const/16 v0, 0x30

    if-lt p0, v0, :cond_18

    const/16 v0, 0x39

    if-le p0, v0, :cond_2c

    .line 1974
    :cond_18
    const-string v0, "_-!.~\'()*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2c

    if-eqz p1, :cond_2a

    .line 1975
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-eq p0, v1, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p0, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 p0, 0x1

    .line 1971
    :goto_2d
    return p0
.end method

.method private static blacklist isEncoded(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 2000
    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 2001
    :cond_4
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 2002
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2007
    invoke-static {v3, p1}, Landroid/net/Uri;->isAllowed(CLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    const/16 v4, 0x25

    if-eq v3, v4, :cond_1b

    .line 2008
    return v1

    .line 2001
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2011
    :cond_1e
    return v0
.end method

.method public static whitelist parse(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 467
    new-instance v0, Landroid/net/Uri$StringUri;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/Uri$StringUri;-><init>(Ljava/lang/String;Landroid/net/Uri-IA;)V

    return-object v0
.end method

.method public static whitelist withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    .line 2352
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 2353
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 2354
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V
    .registers 3

    .line 1847
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 1848
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 1850
    :cond_7
    invoke-virtual {p1, p0, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1852
    :goto_a
    return-void
.end method


# virtual methods
.method public abstract whitelist buildUpon()Landroid/net/Uri$Builder;
.end method

.method public greylist-max-o checkContentUriWithoutPermission(Ljava/lang/String;I)V
    .registers 5

    .line 2413
    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p2}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result p2

    if-nez p2, :cond_15

    .line 2414
    invoke-static {p0, p1}, Landroid/os/StrictMode;->onContentUriWithoutPermission(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2416
    :cond_15
    return-void
.end method

.method public greylist-max-o checkFileUriExposed(Ljava/lang/String;)V
    .registers 4

    .line 2400
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2401
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 2402
    invoke-static {p0, p1}, Landroid/os/StrictMode;->onFileUriExposed(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2404
    :cond_21
    return-void
.end method

.method public whitelist compareTo(Landroid/net/Uri;)I
    .registers 3

    .line 381
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 57
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 359
    instance-of v0, p1, Landroid/net/Uri;

    if-nez v0, :cond_6

    .line 360
    const/4 p1, 0x0

    return p1

    .line 363
    :cond_6
    check-cast p1, Landroid/net/Uri;

    .line 365
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract whitelist getAuthority()Ljava/lang/String;
.end method

.method public whitelist getBooleanQueryParameter(Ljava/lang/String;Z)Z
    .registers 3

    .line 1776
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1777
    if-nez p1, :cond_7

    .line 1778
    return p2

    .line 1780
    :cond_7
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1781
    const-string p2, "false"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1f

    const-string p2, "0"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    return p1
.end method

.method public greylist getCanonicalUri()Landroid/net/Uri;
    .registers 5

    .line 2367
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2370
    :try_start_c
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_54

    .line 2373
    nop

    .line 2375
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2376
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 2377
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2380
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2381
    new-instance v2, Ljava/io/File;

    .line 2382
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2383
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 2387
    :cond_4a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 2371
    :catch_54
    move-exception v0

    .line 2372
    return-object p0

    .line 2389
    :cond_56
    return-object p0
.end method

.method public abstract whitelist getEncodedAuthority()Ljava/lang/String;
.end method

.method public abstract whitelist getEncodedFragment()Ljava/lang/String;
.end method

.method public abstract whitelist getEncodedPath()Ljava/lang/String;
.end method

.method public abstract whitelist getEncodedQuery()Ljava/lang/String;
.end method

.method public abstract whitelist getEncodedSchemeSpecificPart()Ljava/lang/String;
.end method

.method public abstract whitelist getEncodedUserInfo()Ljava/lang/String;
.end method

.method public abstract whitelist getFragment()Ljava/lang/String;
.end method

.method public abstract whitelist getHost()Ljava/lang/String;
.end method

.method public abstract whitelist getLastPathSegment()Ljava/lang/String;
.end method

.method public abstract whitelist getPath()Ljava/lang/String;
.end method

.method public abstract whitelist getPathSegments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getPort()I
.end method

.method public abstract whitelist getQuery()Ljava/lang/String;
.end method

.method public whitelist getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 1722
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_63

    .line 1725
    if-eqz p1, :cond_5b

    .line 1729
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 1730
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 1731
    return-object v1

    .line 1734
    :cond_10
    invoke-static {p1, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1735
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1736
    const/4 v3, 0x0

    move v4, v3

    .line 1738
    :goto_1a
    const/16 v5, 0x26

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 1739
    const/4 v6, -0x1

    if-eq v5, v6, :cond_25

    move v7, v5

    goto :goto_26

    :cond_25
    move v7, v2

    .line 1741
    :goto_26
    const/16 v8, 0x3d

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 1742
    if-gt v8, v7, :cond_30

    if-ne v8, v6, :cond_31

    .line 1743
    :cond_30
    move v8, v7

    .line 1746
    :cond_31
    sub-int v9, v8, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_55

    .line 1747
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0, v4, p1, v3, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 1748
    if-ne v8, v7, :cond_48

    .line 1749
    const-string p1, ""

    return-object p1

    .line 1751
    :cond_48
    const/4 p1, 0x1

    add-int/2addr v8, p1

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1752
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, p1, v1, v3}, Landroid/net/UriCodec;->decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1757
    :cond_55
    if-eq v5, v6, :cond_5a

    .line 1758
    add-int/lit8 v4, v5, 0x1

    .line 1762
    goto :goto_1a

    .line 1763
    :cond_5a
    return-object v1

    .line 1726
    :cond_5b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1723
    :cond_63
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This isn\'t a hierarchical URI."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getQueryParameterNames()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1618
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_47

    .line 1622
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 1623
    if-nez v0, :cond_11

    .line 1624
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1627
    :cond_11
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1628
    const/4 v2, 0x0

    .line 1630
    :cond_17
    const/16 v3, 0x26

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1631
    const/4 v4, -0x1

    if-ne v3, v4, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1633
    :cond_24
    const/16 v5, 0x3d

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 1634
    if-gt v5, v3, :cond_2e

    if-ne v5, v4, :cond_2f

    .line 1635
    :cond_2e
    move v5, v3

    .line 1638
    :cond_2f
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1639
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1642
    add-int/lit8 v2, v3, 0x1

    .line 1643
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_17

    .line 1645
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1619
    :cond_47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This isn\'t a hierarchical URI."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getQueryParameters(Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1658
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 1661
    if-eqz p1, :cond_73

    .line 1665
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 1666
    if-nez v0, :cond_13

    .line 1667
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1672
    :cond_13
    :try_start_13
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_19} :catch_6c

    .line 1675
    nop

    .line 1677
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1679
    const/4 v2, 0x0

    move v3, v2

    .line 1681
    :goto_21
    const/16 v4, 0x26

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1682
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2c

    move v6, v4

    goto :goto_30

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1684
    :goto_30
    const/16 v7, 0x3d

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 1685
    if-gt v7, v6, :cond_3a

    if-ne v7, v5, :cond_3b

    .line 1686
    :cond_3a
    move v7, v6

    .line 1689
    :cond_3b
    sub-int v8, v7, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_62

    .line 1690
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v3, p1, v2, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 1691
    if-ne v7, v6, :cond_55

    .line 1692
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 1694
    :cond_55
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1699
    :cond_62
    :goto_62
    if-eq v4, v5, :cond_67

    .line 1700
    add-int/lit8 v3, v4, 0x1

    .line 1704
    goto :goto_21

    .line 1706
    :cond_67
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1673
    :catch_6c
    move-exception p1

    .line 1674
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1662
    :cond_73
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1659
    :cond_7b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This isn\'t a hierarchical URI."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist getScheme()Ljava/lang/String;
.end method

.method public abstract whitelist getSchemeSpecificPart()Ljava/lang/String;
.end method

.method public abstract whitelist getUserInfo()Ljava/lang/String;
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 373
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist isAbsolute()Z
    .registers 2

    .line 184
    invoke-virtual {p0}, Landroid/net/Uri;->isRelative()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract whitelist isHierarchical()Z
.end method

.method public whitelist isOpaque()Z
    .registers 2

    .line 166
    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o isPathPrefixMatch(Landroid/net/Uri;)Z
    .registers 8

    .line 2425
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 2426
    :cond_10
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    .line 2428
    :cond_1f
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 2429
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    .line 2431
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2432
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v2, :cond_32

    return v1

    .line 2434
    :cond_32
    move v3, v1

    :goto_33
    if-ge v3, v2, :cond_47

    .line 2435
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 2436
    return v1

    .line 2434
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 2440
    :cond_47
    const/4 p1, 0x1

    return p1
.end method

.method public abstract whitelist isRelative()Z
.end method

.method public whitelist normalizeScheme()Landroid/net/Uri;
    .registers 3

    .line 1806
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1807
    if-nez v0, :cond_7

    return-object p0

    .line 1808
    :cond_7
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1809
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-object p0

    .line 1811
    :cond_14
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public whitelist toSafeString()Ljava/lang/String;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 401
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 405
    if-eqz v0, :cond_a2

    .line 406
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const-string/jumbo v5, "tel"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7e

    const-string/jumbo v5, "sip"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7e

    .line 409
    const-string/jumbo v5, "sms"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7e

    const-string/jumbo v5, "smsto"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7e

    .line 410
    const-string v5, "mailto"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7e

    const-string v5, "nfc"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_7e

    .line 425
    :cond_4e
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v1

    .line 427
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 429
    if-eqz v5, :cond_65

    const-string v6, "//"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_65
    if-eqz v0, :cond_6a

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_6a
    const/4 v0, -0x1

    if-eq v1, v0, :cond_74

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 432
    :cond_74
    if-nez v5, :cond_78

    if-eqz v3, :cond_a2

    :cond_78
    const-string v0, "/..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 411
    :cond_7e
    :goto_7e
    if-eqz v1, :cond_a2

    .line 412
    const/4 v0, 0x0

    :goto_81
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_a2

    .line 413
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 414
    const/16 v5, 0x2d

    if-eq v4, v5, :cond_9c

    if-eq v4, v3, :cond_9c

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_96

    goto :goto_9c

    .line 417
    :cond_96
    const/16 v4, 0x78

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 415
    :cond_9c
    :goto_9c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    :goto_9f
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    .line 435
    :cond_a2
    :goto_a2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method
