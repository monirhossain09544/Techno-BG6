.class public final Lcom/android/internal/org/bouncycastle/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;
    }
.end annotation


# static fields
.field private static blacklist LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 26
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/Strings$1;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/util/Strings$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 47
    goto :goto_20

    .line 36
    :catch_e
    move-exception v0

    .line 41
    :try_start_f
    const-string v0, "%n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1b

    .line 46
    goto :goto_20

    .line 43
    :catch_1b
    move-exception v0

    .line 45
    const-string v0, "\n"

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    .line 48
    :goto_20
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist asCharArray([B)[C
    .registers 5

    .line 293
    array-length v0, p0

    new-array v1, v0, [C

    .line 295
    const/4 v2, 0x0

    :goto_4
    if-eq v2, v0, :cond_10

    .line 297
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 300
    :cond_10
    return-object v1
.end method

.method public static blacklist constantTimeAreEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 253
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v3

    .line 254
    :goto_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 256
    if-eqz v0, :cond_29

    .line 258
    move v4, v3

    :goto_16
    if-eq v4, v1, :cond_3b

    .line 260
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_24

    move v5, v2

    goto :goto_25

    :cond_24
    move v5, v3

    :goto_25
    and-int/2addr v0, v5

    .line 258
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 265
    :cond_29
    move p1, v3

    :goto_2a
    if-eq p1, v1, :cond_3b

    .line 267
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_36

    move v4, v2

    goto :goto_37

    :cond_36
    move v4, v3

    :goto_37
    and-int/2addr v0, v4

    .line 265
    add-int/lit8 p1, p1, 0x1

    goto :goto_2a

    .line 271
    :cond_3b
    return v0
.end method

.method public static blacklist fromByteArray([B)Ljava/lang/String;
    .registers 2

    .line 282
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->asCharArray([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static blacklist fromUTF8ByteArray([B)Ljava/lang/String;
    .registers 4

    .line 52
    array-length v0, p0

    new-array v0, v0, [C

    .line 53
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transcodeToUTF16([B[C)I

    move-result p0

    .line 54
    if-ltz p0, :cond_10

    .line 58
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 56
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid UTF-8 input"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist fromUTF8ByteArray([BII)Ljava/lang/String;
    .registers 4

    .line 63
    new-array v0, p2, [C

    .line 64
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transcodeToUTF16([BII[C)I

    move-result p0

    .line 65
    if-ltz p0, :cond_f

    .line 69
    new-instance p1, Ljava/lang/String;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 67
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid UTF-8 input"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist lineSeparator()Ljava/lang/String;
    .registers 1

    .line 341
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist newList()Lcom/android/internal/org/bouncycastle/util/StringList;
    .registers 2

    .line 336
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;-><init>(Lcom/android/internal/org/bouncycastle/util/Strings-IA;)V

    return-object v0
.end method

.method public static blacklist split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 6

    .line 305
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 306
    const/4 v1, 0x1

    .line 309
    :goto_6
    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 311
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 312
    if-lez v3, :cond_1d

    .line 314
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 316
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_22

    .line 320
    :cond_1d
    nop

    .line 321
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v1, v2

    .line 323
    :goto_22
    goto :goto_6

    .line 325
    :cond_23
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p1, p0, [Ljava/lang/String;

    .line 327
    nop

    :goto_2a
    if-eq v2, p0, :cond_37

    .line 329
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, p1, v2

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 331
    :cond_37
    return-object p1
.end method

.method public static blacklist toByteArray(Ljava/lang/String;[BI)I
    .registers 7

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 235
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    .line 237
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 238
    add-int v3, p2, v1

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 240
    :cond_13
    return v0
.end method

.method public static blacklist toByteArray(Ljava/lang/String;)[B
    .registers 5

    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    .line 222
    const/4 v2, 0x0

    :goto_7
    if-eq v2, v0, :cond_13

    .line 224
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 226
    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 229
    :cond_13
    return-object v1
.end method

.method public static blacklist toByteArray([C)[B
    .registers 5

    .line 207
    array-length v0, p0

    new-array v1, v0, [B

    .line 209
    const/4 v2, 0x0

    :goto_4
    if-eq v2, v0, :cond_e

    .line 211
    aget-char v3, p0, v2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 214
    :cond_e
    return-object v1
.end method

.method public static blacklist toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 184
    nop

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 187
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    array-length v3, v0

    if-eq v1, v3, :cond_20

    .line 189
    aget-char v3, v0, v1

    .line 190
    const/16 v4, 0x41

    if-gt v4, v3, :cond_1d

    const/16 v4, 0x5a

    if-lt v4, v3, :cond_1d

    .line 192
    nop

    .line 193
    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0x61

    int-to-char v2, v3

    aput-char v2, v0, v1

    const/4 v2, 0x1

    .line 187
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 197
    :cond_20
    if-eqz v2, :cond_28

    .line 199
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 202
    :cond_28
    return-object p0
.end method

.method public static blacklist toUTF8ByteArray([CLjava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    nop

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_2
    array-length v1, p0

    if-ge v0, v1, :cond_89

    .line 101
    aget-char v1, p0, v0

    .line 103
    const/16 v2, 0x80

    if-ge v1, v2, :cond_10

    .line 105
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_85

    .line 107
    :cond_10
    const/16 v3, 0x800

    if-ge v1, v3, :cond_22

    .line 109
    shr-int/lit8 v3, v1, 0x6

    or-int/lit16 v3, v3, 0xc0

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 110
    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_85

    .line 113
    :cond_22
    const v3, 0xd800

    if-lt v1, v3, :cond_70

    const v3, 0xdfff

    if-gt v1, v3, :cond_70

    .line 117
    add-int/lit8 v0, v0, 0x1

    array-length v3, p0

    const-string v4, "invalid UTF-16 codepoint"

    if-ge v0, v3, :cond_6a

    .line 121
    nop

    .line 122
    aget-char v3, p0, v0

    .line 123
    nop

    .line 126
    const v5, 0xdbff

    if-gt v1, v5, :cond_64

    .line 130
    and-int/lit16 v1, v1, 0x3ff

    shl-int/lit8 v1, v1, 0xa

    and-int/lit16 v3, v3, 0x3ff

    or-int/2addr v1, v3

    const/high16 v3, 0x10000

    add-int/2addr v1, v3

    .line 131
    shr-int/lit8 v3, v1, 0x12

    or-int/lit16 v3, v3, 0xf0

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 132
    shr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 133
    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 134
    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 135
    goto :goto_85

    .line 128
    :cond_64
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_6a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 138
    :cond_70
    shr-int/lit8 v3, v1, 0xc

    or-int/lit16 v3, v3, 0xe0

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 139
    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 140
    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 143
    :goto_85
    add-int/lit8 v0, v0, 0x1

    .line 144
    goto/16 :goto_2

    .line 145
    :cond_89
    return-void
.end method

.method public static blacklist toUTF8ByteArray(Ljava/lang/String;)[B
    .registers 1

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toUTF8ByteArray([C)[B
    .registers 2

    .line 79
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    :try_start_5
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUTF8ByteArray([CLjava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_e

    .line 88
    nop

    .line 90
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 85
    :catch_e
    move-exception p0

    .line 87
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot encode string to byte array!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 155
    nop

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 158
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    array-length v3, v0

    if-eq v1, v3, :cond_20

    .line 160
    aget-char v3, v0, v1

    .line 161
    const/16 v4, 0x61

    if-gt v4, v3, :cond_1d

    const/16 v4, 0x7a

    if-lt v4, v3, :cond_1d

    .line 163
    nop

    .line 164
    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0x41

    int-to-char v2, v3

    aput-char v2, v0, v1

    const/4 v2, 0x1

    .line 158
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 168
    :cond_20
    if-eqz v2, :cond_28

    .line 170
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 173
    :cond_28
    return-object p0
.end method
