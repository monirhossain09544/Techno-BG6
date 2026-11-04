.class public Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;
.super Ljava/lang/Object;
.source "UTF8.java"


# static fields
.field private static final blacklist C_CR1:B = 0x1t

.field private static final blacklist C_CR2:B = 0x2t

.field private static final blacklist C_CR3:B = 0x3t

.field private static final blacklist C_ILL:B = 0x0t

.field private static final blacklist C_L2A:B = 0x4t

.field private static final blacklist C_L3A:B = 0x5t

.field private static final blacklist C_L3B:B = 0x6t

.field private static final blacklist C_L3C:B = 0x7t

.field private static final blacklist C_L4A:B = 0x8t

.field private static final blacklist C_L4B:B = 0x9t

.field private static final blacklist C_L4C:B = 0xat

.field private static final blacklist S_CS1:B = 0x0t

.field private static final blacklist S_CS2:B = 0x10t

.field private static final blacklist S_CS3:B = 0x20t

.field private static final blacklist S_END:B = -0x1t

.field private static final blacklist S_ERR:B = -0x2t

.field private static final blacklist S_P3A:B = 0x30t

.field private static final blacklist S_P3B:B = 0x40t

.field private static final blacklist S_P4A:B = 0x50t

.field private static final blacklist S_P4B:B = 0x60t

.field private static final blacklist firstUnitTable:[S

.field private static final blacklist transitionTable:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 39
    const/16 v0, 0x80

    new-array v1, v0, [S

    sput-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    .line 40
    const/16 v1, 0x70

    new-array v2, v1, [B

    sput-object v2, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    .line 52
    new-array v2, v0, [B

    .line 53
    const/4 v3, 0x0

    const/16 v4, 0xf

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 54
    const/16 v4, 0x1f

    const/4 v6, 0x2

    const/16 v7, 0x10

    invoke-static {v2, v7, v4, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 55
    const/16 v4, 0x3f

    const/4 v6, 0x3

    const/16 v8, 0x20

    invoke-static {v2, v8, v4, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 56
    const/16 v4, 0x40

    const/16 v6, 0x41

    invoke-static {v2, v4, v6, v3}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 57
    const/16 v4, 0x5f

    const/4 v6, 0x4

    const/16 v8, 0x42

    invoke-static {v2, v8, v4, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 58
    const/16 v4, 0x60

    const/4 v6, 0x5

    invoke-static {v2, v4, v4, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 59
    const/16 v4, 0x61

    const/16 v6, 0x6c

    const/4 v8, 0x6

    invoke-static {v2, v4, v6, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 60
    const/16 v4, 0x6d

    const/4 v6, 0x7

    invoke-static {v2, v4, v4, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 61
    const/16 v4, 0x6e

    const/16 v6, 0x6f

    invoke-static {v2, v4, v6, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 62
    const/16 v4, 0x8

    invoke-static {v2, v1, v1, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 63
    const/16 v1, 0x73

    const/16 v6, 0x9

    const/16 v8, 0x71

    invoke-static {v2, v8, v1, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 64
    const/16 v1, 0x74

    const/16 v6, 0xa

    invoke-static {v2, v1, v1, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 65
    const/16 v1, 0x75

    const/16 v6, 0x7f

    invoke-static {v2, v1, v6, v3}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 67
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    sget-object v6, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    array-length v6, v6

    sub-int/2addr v6, v5

    const/4 v5, -0x2

    invoke-static {v1, v3, v6, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 68
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/4 v5, -0x1

    const/16 v6, 0xb

    invoke-static {v1, v4, v6, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 69
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v5, 0x18

    const/16 v8, 0x1b

    invoke-static {v1, v5, v8, v3}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 70
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v5, 0x28

    const/16 v8, 0x2b

    invoke-static {v1, v5, v8, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 71
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v5, 0x3a

    const/16 v8, 0x3b

    invoke-static {v1, v5, v8, v3}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 72
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v5, 0x48

    const/16 v8, 0x49

    invoke-static {v1, v5, v8, v3}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 73
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v5, 0x59

    const/16 v8, 0x5b

    invoke-static {v1, v5, v8, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 74
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v5, 0x68

    invoke-static {v1, v5, v5, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 76
    new-array v1, v6, [B

    fill-array-data v1, :array_d0

    .line 77
    new-array v5, v6, [B

    fill-array-data v5, :array_da

    .line 79
    nop

    :goto_bc
    if-ge v3, v0, :cond_cf

    .line 81
    aget-byte v6, v2, v3

    .line 83
    aget-byte v7, v1, v6

    and-int/2addr v7, v3

    .line 84
    aget-byte v6, v5, v6

    .line 86
    sget-object v8, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    shl-int/2addr v7, v4

    or-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v8, v3

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_bc

    .line 88
    :cond_cf
    return-void

    :array_d0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ft
        0xft
        0xft
        0xft
        0x7t
        0x7t
        0x7t
    .end array-data

    :array_da
    .array-data 1
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        0x0t
        0x30t
        0x10t
        0x40t
        0x50t
        0x20t
        0x60t
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist fill([BIIB)V
    .registers 4

    .line 44
    nop

    :goto_1
    if-gt p1, p2, :cond_8

    .line 46
    aput-byte p3, p0, p1

    .line 44
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 48
    :cond_8
    return-void
.end method

.method public static blacklist transcodeToUTF16([BII[C)I
    .registers 10

    .line 133
    nop

    .line 134
    add-int/2addr p2, p1

    const/4 v0, 0x0

    .line 136
    :goto_3
    if-ge p1, p2, :cond_6c

    .line 138
    add-int/lit8 v1, p1, 0x1

    aget-byte p1, p0, p1

    .line 139
    const/4 v2, -0x1

    if-ltz p1, :cond_18

    .line 141
    array-length v3, p3

    if-lt v0, v3, :cond_10

    .line 143
    return v2

    .line 146
    :cond_10
    add-int/lit8 v2, v0, 0x1

    int-to-char p1, p1

    aput-char p1, p3, v0

    .line 147
    move p1, v1

    move v0, v2

    goto :goto_3

    .line 150
    :cond_18
    sget-object v3, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    and-int/lit8 p1, p1, 0x7f

    aget-short p1, v3, p1

    .line 151
    ushr-int/lit8 v3, p1, 0x8

    .line 152
    int-to-byte p1, p1

    .line 154
    :goto_21
    if-ltz p1, :cond_3a

    .line 156
    if-lt v1, p2, :cond_26

    .line 158
    return v2

    .line 161
    :cond_26
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p0, v1

    .line 162
    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v5, v1, 0x3f

    or-int/2addr v3, v5

    .line 163
    sget-object v5, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v1, v1, 0x4

    add-int/2addr p1, v1

    aget-byte p1, v5, p1

    move v1, v4

    goto :goto_21

    .line 166
    :cond_3a
    const/4 v4, -0x2

    if-ne p1, v4, :cond_3e

    .line 168
    return v2

    .line 171
    :cond_3e
    const p1, 0xffff

    if-gt v3, p1, :cond_4e

    .line 173
    array-length p1, p3

    if-lt v0, p1, :cond_47

    .line 175
    return v2

    .line 179
    :cond_47
    add-int/lit8 p1, v0, 0x1

    int-to-char v2, v3

    aput-char v2, p3, v0

    move v0, p1

    goto :goto_6a

    .line 183
    :cond_4e
    array-length p1, p3

    add-int/lit8 p1, p1, -0x1

    if-lt v0, p1, :cond_54

    .line 185
    return v2

    .line 189
    :cond_54
    add-int/lit8 p1, v0, 0x1

    ushr-int/lit8 v2, v3, 0xa

    const v4, 0xd7c0

    add-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, p3, v0

    .line 190
    add-int/lit8 v0, p1, 0x1

    and-int/lit16 v2, v3, 0x3ff

    const v3, 0xdc00

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p3, p1

    .line 192
    :goto_6a
    move p1, v1

    goto :goto_3

    .line 194
    :cond_6c
    return v0
.end method

.method public static blacklist transcodeToUTF16([B[C)I
    .registers 4

    .line 109
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transcodeToUTF16([BII[C)I

    move-result p0

    return p0
.end method
