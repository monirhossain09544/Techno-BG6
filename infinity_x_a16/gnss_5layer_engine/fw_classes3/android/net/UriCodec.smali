.class public final Landroid/net/UriCodec;
.super Ljava/lang/Object;
.source "UriCodec.java"


# static fields
.field private static final blacklist INVALID_INPUT_CHARACTER:C = '\ufffd'


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist appendDecoded(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/nio/charset/Charset;Z)V
    .registers 14

    .line 94
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p3

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 95
    invoke-virtual {p3, v0}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p3

    .line 96
    const-string/jumbo v0, "\ufffd"

    invoke-virtual {p3, v0}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p3

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 97
    invoke-virtual {p3, v0}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p3

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 101
    const/4 v1, 0x0

    move v2, v1

    .line 102
    :goto_21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_91

    .line 103
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 105
    sparse-switch v3, :sswitch_data_96

    .line 146
    invoke-static {p0, p3, v0, p4}, Landroid/net/UriCodec;->flushDecodingByteAccumulator(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Z)V

    .line 147
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_90

    .line 107
    :sswitch_37
    invoke-static {p0, p3, v0, p4}, Landroid/net/UriCodec;->flushDecodingByteAccumulator(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Z)V

    .line 109
    if-eqz p2, :cond_3f

    const/16 v3, 0x20

    goto :goto_41

    :cond_3f
    const/16 v3, 0x2b

    :goto_41
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    goto :goto_90

    .line 113
    :sswitch_45
    nop

    .line 114
    move v3, v1

    move v4, v3

    :goto_48
    const/4 v5, 0x2

    if-ge v3, v5, :cond_8c

    .line 116
    const v5, 0xfffd

    :try_start_4e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {p1, v2, v6, v7}, Landroid/net/UriCodec;->getNextCharacter(Ljava/lang/String;IILjava/lang/String;)C

    move-result v6
    :try_end_57
    .catch Ljava/net/URISyntaxException; {:try_start_4e .. :try_end_57} :catch_7c

    .line 127
    nop

    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    invoke-static {v6}, Landroid/net/UriCodec;->hexCharToValue(C)I

    move-result v8

    .line 130
    if-gez v8, :cond_75

    .line 131
    if-nez p4, :cond_69

    .line 135
    invoke-static {p0, p3, v0, p4}, Landroid/net/UriCodec;->flushDecodingByteAccumulator(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Z)V

    .line 137
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    goto :goto_8c

    .line 132
    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v2, v2, -0x1

    .line 133
    invoke-static {p1, v7, v6, v2}, Landroid/net/UriCodec;->unexpectedCharacterException(Ljava/lang/String;Ljava/lang/String;CI)Ljava/net/URISyntaxException;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 141
    :cond_75
    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v8

    int-to-byte v4, v4

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 117
    :catch_7c
    move-exception p1

    .line 119
    if-nez p4, :cond_86

    .line 122
    invoke-static {p0, p3, v0, p4}, Landroid/net/UriCodec;->flushDecodingByteAccumulator(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Z)V

    .line 124
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    return-void

    .line 120
    :cond_86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 143
    :cond_8c
    :goto_8c
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 144
    nop

    .line 149
    :goto_90
    goto :goto_21

    .line 150
    :cond_91
    invoke-static {p0, p3, v0, p4}, Landroid/net/UriCodec;->flushDecodingByteAccumulator(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Z)V

    .line 151
    return-void

    nop

    :sswitch_data_96
    .sparse-switch
        0x25 -> :sswitch_45
        0x2b -> :sswitch_37
    .end sparse-switch
.end method

.method public static blacklist decode(Ljava/lang/String;ZLjava/nio/charset/Charset;Z)Ljava/lang/String;
    .registers 6

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 79
    invoke-static {v0, p0, p1, p2, p3}, Landroid/net/UriCodec;->appendDecoded(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/nio/charset/Charset;Z)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist flushDecodingByteAccumulator(Ljava/lang/StringBuilder;Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Z)V
    .registers 5

    .line 158
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_7

    .line 159
    return-void

    .line 161
    :cond_7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 163
    :try_start_a
    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_11
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_a .. :try_end_11} :catch_1e
    .catchall {:try_start_a .. :try_end_11} :catchall_1c

    .line 172
    :goto_11
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 173
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 174
    goto :goto_28

    .line 172
    :catchall_1c
    move-exception p0

    goto :goto_2f

    .line 164
    :catch_1e
    move-exception p1

    .line 165
    if-nez p3, :cond_29

    .line 168
    const p1, 0xfffd

    :try_start_24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 175
    :goto_28
    return-void

    .line 166
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p0
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_1c

    .line 172
    :goto_2f
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 173
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 174
    throw p0
.end method

.method private static blacklist getNextCharacter(Ljava/lang/String;IILjava/lang/String;)C
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 60
    if-lt p1, p2, :cond_39

    .line 61
    if-nez p3, :cond_7

    const-string p2, ""

    goto :goto_20

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " in ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 62
    :goto_20
    new-instance p3, Ljava/net/URISyntaxException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end of string"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p0, p2, p1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p3

    .line 65
    :cond_39
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method private static blacklist hexCharToValue(C)I
    .registers 3

    .line 39
    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    .line 40
    sub-int/2addr p0, v0

    return p0

    .line 42
    :cond_a
    const/16 v0, 0x61

    if-gt v0, p0, :cond_16

    const/16 v1, 0x66

    if-gt p0, v1, :cond_16

    .line 43
    add-int/lit8 p0, p0, 0xa

    sub-int/2addr p0, v0

    return p0

    .line 45
    :cond_16
    const/16 v0, 0x41

    if-gt v0, p0, :cond_22

    const/16 v1, 0x46

    if-gt p0, v1, :cond_22

    .line 46
    add-int/lit8 p0, p0, 0xa

    sub-int/2addr p0, v0

    return p0

    .line 48
    :cond_22
    const/4 p0, -0x1

    return p0
.end method

.method private static blacklist unexpectedCharacterException(Ljava/lang/String;Ljava/lang/String;CI)Ljava/net/URISyntaxException;
    .registers 7

    .line 53
    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_1e

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " in ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    :goto_1e
    new-instance v0, Ljava/net/URISyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1, p3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
