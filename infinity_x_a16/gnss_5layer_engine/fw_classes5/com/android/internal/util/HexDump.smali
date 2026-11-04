.class public Lcom/android/internal/util/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field private static final blacklist HEX_DIGITS:[C

.field private static final blacklist HEX_LOWER_CASE_DIGITS:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 25
    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_12

    sput-object v1, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    .line 26
    new-array v0, v0, [C

    fill-array-data v0, :array_26

    sput-object v0, Lcom/android/internal/util/HexDump;->HEX_LOWER_CASE_DIGITS:[C

    return-void

    nop

    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_26
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist appendByteAsHex(Ljava/lang/StringBuilder;BZ)Ljava/lang/StringBuilder;
    .registers 4

    .line 188
    if-eqz p2, :cond_5

    sget-object p2, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    goto :goto_7

    :cond_5
    sget-object p2, Lcom/android/internal/util/HexDump;->HEX_LOWER_CASE_DIGITS:[C

    .line 189
    :goto_7
    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    aget-char v0, p2, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    and-int/lit8 p1, p1, 0xf

    aget-char p1, p2, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    return-object p0
.end method

.method public static blacklist dumpHexString([B)Ljava/lang/String;
    .registers 3

    .line 29
    if-nez p0, :cond_5

    const-string p0, "(null)"

    return-object p0

    .line 30
    :cond_5
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/HexDump;->dumpHexString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist dumpHexString([BII)Ljava/lang/String;
    .registers 16

    .line 35
    if-nez p0, :cond_5

    const-string p0, "(null)"

    return-object p0

    .line 36
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 39
    nop

    .line 41
    const-string v3, "\n0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const/4 v4, 0x0

    move v5, p1

    move v6, v4

    :goto_1e
    add-int v7, p1, p2

    const/16 v8, 0x7e

    const-string v9, "."

    const/16 v10, 0x20

    const-string v11, " "

    const/4 v12, 0x1

    if-ge v5, v7, :cond_76

    .line 46
    if-ne v6, v1, :cond_55

    .line 48
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    move v6, v4

    :goto_31
    if-ge v6, v1, :cond_4a

    .line 52
    aget-byte v7, v2, v6

    if-le v7, v10, :cond_44

    aget-byte v7, v2, v6

    if-ge v7, v8, :cond_44

    .line 54
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2, v6, v12}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 58
    :cond_44
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :goto_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 62
    :cond_4a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    move v6, v4

    .line 67
    :cond_55
    aget-byte v7, p0, v5

    .line 68
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    sget-object v8, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    ushr-int/lit8 v9, v7, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    sget-object v8, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    and-int/lit8 v9, v7, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v8, v6, 0x1

    aput-byte v7, v2, v6

    .line 44
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_1e

    .line 75
    :cond_76
    if-eq v6, v1, :cond_a0

    .line 77
    rsub-int/lit8 p0, v6, 0x10

    mul-int/lit8 p0, p0, 0x3

    .line 78
    add-int/2addr p0, v12

    .line 79
    move p1, v4

    :goto_7e
    if-ge p1, p0, :cond_86

    .line 81
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    add-int/lit8 p1, p1, 0x1

    goto :goto_7e

    .line 84
    :cond_86
    nop

    :goto_87
    if-ge v4, v6, :cond_a0

    .line 86
    aget-byte p0, v2, v4

    if-le p0, v10, :cond_9a

    aget-byte p0, v2, v4

    if-ge p0, v8, :cond_9a

    .line 88
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v4, v12}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9d

    .line 92
    :cond_9a
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :goto_9d
    add-int/lit8 v4, v4, 0x1

    goto :goto_87

    .line 97
    :cond_a0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist hexStringToByteArray(Ljava/lang/String;)[B
    .registers 7

    .line 176
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 177
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 179
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_28

    .line 181
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toByte(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toByte(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 179
    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    .line 184
    :cond_28
    return-object v1
.end method

.method private static blacklist toByte(C)I
    .registers 4

    .line 166
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    .line 167
    :cond_a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_16

    const/16 v1, 0x46

    if-gt p0, v1, :cond_16

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 168
    :cond_16
    const/16 v0, 0x61

    if-lt p0, v0, :cond_22

    const/16 v1, 0x66

    if-gt p0, v1, :cond_22

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 170
    :cond_22
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toByteArray(B)[B
    .registers 3

    .line 147
    nop

    .line 148
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 149
    return-object v0
.end method

.method public static blacklist toByteArray(I)[B
    .registers 4

    .line 154
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 156
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 157
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 158
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 159
    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 161
    return-object v0
.end method

.method public static blacklist toHexString(B)Ljava/lang/String;
    .registers 1

    .line 102
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toByteArray(B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist toHexString(I)Ljava/lang/String;
    .registers 1

    .line 142
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toByteArray(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist toHexString([B)Ljava/lang/String;
    .registers 4

    .line 108
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist toHexString([BII)Ljava/lang/String;
    .registers 4

    .line 120
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toHexString([BIIZ)Ljava/lang/String;
    .registers 10

    .line 125
    if-eqz p3, :cond_5

    sget-object p3, Lcom/android/internal/util/HexDump;->HEX_DIGITS:[C

    goto :goto_7

    :cond_5
    sget-object p3, Lcom/android/internal/util/HexDump;->HEX_LOWER_CASE_DIGITS:[C

    .line 126
    :goto_7
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [C

    .line 128
    nop

    .line 129
    const/4 v1, 0x0

    move v2, p1

    :goto_e
    add-int v3, p1, p2

    if-ge v2, v3, :cond_29

    .line 131
    aget-byte v3, p0, v2

    .line 132
    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p3, v5

    aput-char v5, v0, v1

    .line 133
    add-int/lit8 v1, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, p3, v3

    aput-char v3, v0, v4

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 136
    :cond_29
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static greylist-max-r toHexString([BZ)Ljava/lang/String;
    .registers 4

    .line 114
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
