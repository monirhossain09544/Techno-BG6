.class public Lcom/android/internal/util/LineBreakBufferedWriter;
.super Ljava/io/PrintWriter;
.source "LineBreakBufferedWriter.java"


# instance fields
.field private blacklist buffer:[C

.field private blacklist bufferIndex:I

.field private final blacklist bufferSize:I

.field private blacklist lastNewline:I

.field private final blacklist lineSeparator:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/io/Writer;I)V
    .registers 4

    .line 70
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;-><init>(Ljava/io/Writer;II)V

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;II)V
    .registers 4

    .line 81
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 56
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    .line 82
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    .line 83
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 84
    iput p2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    .line 85
    const-string p1, "line.separator"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lineSeparator:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private blacklist appendToBuffer(Ljava/lang/String;II)V
    .registers 7

    .line 249
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_e

    .line 250
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->ensureCapacity(I)V

    .line 252
    :cond_e
    add-int v0, p2, p3

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 253
    iget p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 254
    return-void
.end method

.method private blacklist appendToBuffer([CII)V
    .registers 6

    .line 234
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_e

    .line 235
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->ensureCapacity(I)V

    .line 237
    :cond_e
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    iget p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 239
    return-void
.end method

.method private blacklist ensureCapacity(I)V
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    .line 264
    if-ge v0, p1, :cond_a

    .line 265
    goto :goto_b

    .line 264
    :cond_a
    move p1, v0

    .line 267
    :goto_b
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    .line 268
    return-void
.end method

.method private blacklist removeFromBuffer(I)V
    .registers 6

    .line 276
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v0, p1

    .line 277
    const/4 p1, 0x0

    if-lez v0, :cond_13

    .line 278
    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    goto :goto_15

    .line 281
    :cond_13
    iput p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 283
    :goto_15
    return-void
.end method

.method private blacklist writeBuffer(I)V
    .registers 4

    .line 290
    if-lez p1, :cond_8

    .line 291
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    const/4 v1, 0x0

    invoke-super {p0, v0, v1, p1}, Ljava/io/PrintWriter;->write([CII)V

    .line 293
    :cond_8
    return-void
.end method


# virtual methods
.method public whitelist test-api flush()V
    .registers 2

    .line 93
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 95
    invoke-super {p0}, Ljava/io/PrintWriter;->flush()V

    .line 96
    return-void
.end method

.method public whitelist test-api println()V
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->write(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 5

    .line 100
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1d

    .line 101
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    int-to-char p1, p1

    aput-char p1, v0, v1

    .line 102
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 103
    const/16 v0, 0xa

    if-ne p1, v0, :cond_26

    .line 104
    iget p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    iput p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    goto :goto_26

    .line 109
    :cond_1d
    int-to-char p1, p1

    new-array v0, v2, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->write([CII)V

    .line 111
    :cond_26
    :goto_26
    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;II)V
    .registers 12

    .line 174
    nop

    :goto_1
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    const/16 v2, 0xa

    if-le v0, v1, :cond_61

    .line 177
    nop

    .line 178
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v0, v1

    .line 179
    const/4 v1, 0x0

    const/4 v3, -0x1

    move v4, v1

    move v5, v3

    :goto_14
    if-ge v4, v0, :cond_29

    .line 180
    add-int v6, p2, v4

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v2, :cond_26

    .line 181
    iget v6, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    if-ge v6, v7, :cond_29

    .line 182
    move v5, v4

    .line 179
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 189
    :cond_29
    if-eq v5, v3, :cond_3c

    .line 191
    invoke-direct {p0, p1, p2, v5}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer(Ljava/lang/String;II)V

    .line 192
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 193
    iput v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 194
    iput v3, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    .line 195
    add-int/lit8 v5, v5, 0x1

    add-int/2addr p2, v5

    .line 196
    sub-int/2addr p3, v5

    goto :goto_60

    .line 197
    :cond_3c
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    if-eq v0, v3, :cond_4f

    .line 199
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 200
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->removeFromBuffer(I)V

    .line 201
    iput v3, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    goto :goto_60

    .line 204
    :cond_4f
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v0, v2

    .line 205
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer(Ljava/lang/String;II)V

    .line 206
    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 207
    iput v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 208
    add-int/2addr p2, v0

    .line 209
    sub-int/2addr p3, v0

    .line 211
    :goto_60
    goto :goto_1

    .line 214
    :cond_61
    if-lez p3, :cond_7c

    .line 216
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer(Ljava/lang/String;II)V

    .line 217
    add-int/lit8 v0, p3, -0x1

    :goto_68
    if-ltz v0, :cond_7c

    .line 218
    add-int v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_79

    .line 219
    iget p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr p1, p3

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    .line 220
    goto :goto_7c

    .line 217
    :cond_79
    add-int/lit8 v0, v0, -0x1

    goto :goto_68

    .line 224
    :cond_7c
    :goto_7c
    return-void
.end method

.method public whitelist test-api write([CII)V
    .registers 12

    .line 120
    nop

    :goto_1
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    const/16 v2, 0xa

    if-le v0, v1, :cond_5f

    .line 123
    nop

    .line 124
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v0, v1

    .line 125
    const/4 v1, 0x0

    const/4 v3, -0x1

    move v4, v1

    move v5, v3

    :goto_14
    if-ge v4, v0, :cond_27

    .line 126
    add-int v6, p2, v4

    aget-char v6, p1, v6

    if-ne v6, v2, :cond_24

    .line 127
    iget v6, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    if-ge v6, v7, :cond_27

    .line 128
    move v5, v4

    .line 125
    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 135
    :cond_27
    if-eq v5, v3, :cond_3a

    .line 137
    invoke-direct {p0, p1, p2, v5}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer([CII)V

    .line 138
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 139
    iput v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 140
    iput v3, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    .line 141
    add-int/lit8 v5, v5, 0x1

    add-int/2addr p2, v5

    .line 142
    sub-int/2addr p3, v5

    goto :goto_5e

    .line 143
    :cond_3a
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    if-eq v0, v3, :cond_4d

    .line 145
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 146
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->removeFromBuffer(I)V

    .line 147
    iput v3, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    goto :goto_5e

    .line 150
    :cond_4d
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v0, v2

    .line 151
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer([CII)V

    .line 152
    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 153
    iput v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 154
    add-int/2addr p2, v0

    .line 155
    sub-int/2addr p3, v0

    .line 157
    :goto_5e
    goto :goto_1

    .line 160
    :cond_5f
    if-lez p3, :cond_78

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer([CII)V

    .line 163
    add-int/lit8 v0, p3, -0x1

    :goto_66
    if-ltz v0, :cond_78

    .line 164
    add-int v1, p2, v0

    aget-char v1, p1, v1

    if-ne v1, v2, :cond_75

    .line 165
    iget p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr p1, p3

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    .line 166
    goto :goto_78

    .line 163
    :cond_75
    add-int/lit8 v0, v0, -0x1

    goto :goto_66

    .line 170
    :cond_78
    :goto_78
    return-void
.end method
