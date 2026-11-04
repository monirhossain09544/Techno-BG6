.class public final Lcom/android/internal/util/ParseUtils;
.super Ljava/lang/Object;
.source "ParseUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static blacklist parseBoolean(Ljava/lang/String;Z)Z
    .registers 5

    .line 91
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 92
    return v1

    .line 94
    :cond_a
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    .line 95
    return v2

    .line 97
    :cond_14
    invoke-static {p0, p1}, Lcom/android/internal/util/ParseUtils;->parseInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1
.end method

.method public static blacklist parseDouble(Ljava/lang/String;D)D
    .registers 3

    .line 79
    if-nez p0, :cond_3

    .line 80
    return-wide p1

    .line 83
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide p0

    .line 84
    :catch_8
    move-exception p0

    .line 85
    return-wide p1
.end method

.method public static blacklist parseFloat(Ljava/lang/String;F)F
    .registers 2

    .line 67
    if-nez p0, :cond_3

    .line 68
    return p1

    .line 71
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    .line 72
    :catch_8
    move-exception p0

    .line 73
    return p1
.end method

.method public static blacklist parseInt(Ljava/lang/String;I)I
    .registers 3

    .line 33
    const/16 v0, 0xa

    invoke-static {p0, v0, p1}, Lcom/android/internal/util/ParseUtils;->parseIntWithBase(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static blacklist parseIntWithBase(Ljava/lang/String;II)I
    .registers 3

    .line 38
    if-nez p0, :cond_3

    .line 39
    return p2

    .line 42
    :cond_3
    :try_start_3
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    .line 43
    :catch_8
    move-exception p0

    .line 44
    return p2
.end method

.method public static blacklist parseLong(Ljava/lang/String;J)J
    .registers 4

    .line 50
    const/16 v0, 0xa

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/util/ParseUtils;->parseLongWithBase(Ljava/lang/String;IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist parseLongWithBase(Ljava/lang/String;IJ)J
    .registers 4

    .line 55
    if-nez p0, :cond_3

    .line 56
    return-wide p2

    .line 59
    :cond_3
    :try_start_3
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide p0

    .line 60
    :catch_8
    move-exception p0

    .line 61
    return-wide p2
.end method
