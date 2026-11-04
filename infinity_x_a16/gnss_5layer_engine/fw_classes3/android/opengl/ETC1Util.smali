.class public Landroid/opengl/ETC1Util;
.super Ljava/lang/Object;
.source "ETC1Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/ETC1Util$ETC1Texture;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist compressTexture(Ljava/nio/Buffer;IIII)Landroid/opengl/ETC1Util$ETC1Texture;
    .registers 13

    .line 193
    invoke-static {p1, p2}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    move-result v0

    .line 194
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 195
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 196
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v2 .. v7}, Landroid/opengl/ETC1;->encodeImage(Ljava/nio/Buffer;IIIILjava/nio/Buffer;)V

    .line 197
    new-instance p0, Landroid/opengl/ETC1Util$ETC1Texture;

    invoke-direct {p0, v3, v4, v7}, Landroid/opengl/ETC1Util$ETC1Texture;-><init>(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public static whitelist createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    nop

    .line 154
    nop

    .line 155
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 157
    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v3, :cond_6d

    .line 160
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 161
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 162
    invoke-virtual {v4, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 163
    invoke-static {v4}, Landroid/opengl/ETC1;->isValid(Ljava/nio/Buffer;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 166
    invoke-static {v4}, Landroid/opengl/ETC1;->getWidth(Ljava/nio/Buffer;)I

    move-result v3

    .line 167
    invoke-static {v4}, Landroid/opengl/ETC1;->getHeight(Ljava/nio/Buffer;)I

    move-result v4

    .line 169
    invoke-static {v3, v4}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    move-result v5

    .line 170
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 171
    move v7, v2

    :goto_41
    if-ge v7, v5, :cond_5c

    .line 172
    sub-int v8, v5, v7

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 173
    invoke-virtual {p0, v1, v2, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    if-ne v9, v8, :cond_54

    .line 176
    invoke-virtual {v6, v1, v2, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 177
    add-int/2addr v7, v8

    .line 178
    goto :goto_41

    .line 174
    :cond_54
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unable to read PKM file data."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 179
    :cond_5c
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 180
    new-instance p0, Landroid/opengl/ETC1Util$ETC1Texture;

    invoke-direct {p0, v3, v4, v6}, Landroid/opengl/ETC1Util$ETC1Texture;-><init>(IILjava/nio/ByteBuffer;)V

    return-object p0

    .line 164
    :cond_65
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Not a PKM file."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 158
    :cond_6d
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unable to read PKM file header."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist isETC1Supported()Z
    .registers 6

    .line 98
    const/16 v0, 0x14

    new-array v1, v0, [I

    .line 99
    const v2, 0x86a2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 100
    aget v2, v1, v3

    .line 101
    if-le v2, v0, :cond_11

    .line 102
    new-array v1, v2, [I

    .line 104
    :cond_11
    const v0, 0x86a3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 105
    move v0, v3

    :goto_18
    if-ge v0, v2, :cond_26

    .line 106
    aget v4, v1, v0

    const v5, 0x8d64

    if-ne v4, v5, :cond_23

    .line 107
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 110
    :cond_26
    return v3
.end method

.method public static whitelist loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V
    .registers 15

    .line 66
    const/16 v0, 0x1907

    if-ne p3, v0, :cond_64

    .line 69
    const v0, 0x8363

    const/16 v1, 0x1401

    if-eq p4, v0, :cond_16

    if-ne p4, v1, :cond_e

    goto :goto_16

    .line 71
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported fallbackType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_16
    :goto_16
    invoke-virtual {p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getWidth()I

    move-result v3

    .line 75
    invoke-virtual {p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getHeight()I

    move-result v4

    .line 76
    invoke-virtual {p5}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 77
    invoke-static {}, Landroid/opengl/ETC1Util;->isETC1Supported()Z

    move-result p5

    if-eqz p5, :cond_37

    .line 78
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    .line 79
    const v2, 0x8d64

    move v1, p1

    move v5, p2

    move-object v7, v0

    move v0, p0

    invoke-static/range {v0 .. v7}, Landroid/opengl/GLES10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 81
    goto :goto_63

    .line 82
    :cond_37
    if-eq p4, v1, :cond_3b

    const/4 p5, 0x1

    goto :goto_3c

    :cond_3b
    const/4 p5, 0x0

    .line 83
    :goto_3c
    if-eqz p5, :cond_40

    const/4 p5, 0x2

    goto :goto_41

    :cond_40
    const/4 p5, 0x3

    .line 84
    :goto_41
    mul-int v5, p5, v3

    .line 85
    mul-int v1, v5, v4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 86
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 87
    move v2, v3

    move v3, v4

    move v4, p5

    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1;->decodeImage(Ljava/nio/Buffer;Ljava/nio/Buffer;IIII)V

    .line 88
    move v4, v3

    move v3, v2

    move v6, p3

    move v0, p0

    move v5, p2

    move v2, p3

    move v7, p4

    move-object v8, v1

    move v1, p1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 91
    :goto_63
    return-void

    .line 67
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fallbackFormat must be GL_RGB"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist loadTexture(IIIIILjava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-static {p5}, Landroid/opengl/ETC1Util;->createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;

    move-result-object p5

    invoke-static/range {p0 .. p5}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V

    .line 49
    return-void
.end method

.method public static whitelist writeTexture(Landroid/opengl/ETC1Util$ETC1Texture;Ljava/io/OutputStream;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 210
    :try_start_8
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getWidth()I

    move-result v2

    .line 211
    invoke-virtual {p0}, Landroid/opengl/ETC1Util$ETC1Texture;->getHeight()I

    move-result p0

    .line 212
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 213
    invoke-static {v4, v2, p0}, Landroid/opengl/ETC1;->formatHeader(Ljava/nio/Buffer;II)V

    .line 214
    const/16 v5, 0x1000

    new-array v6, v5, [B

    .line 215
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 216
    invoke-virtual {p1, v6, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 217
    invoke-static {v2, p0}, Landroid/opengl/ETC1;->getEncodedDataSize(II)I

    move-result p0

    .line 218
    move v2, v7

    :goto_31
    if-ge v2, p0, :cond_41

    .line 219
    sub-int v3, p0, v2

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 220
    invoke-virtual {v0, v6, v7, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 221
    invoke-virtual {p1, v6, v7, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_46

    .line 222
    add-int/2addr v2, v3

    .line 223
    goto :goto_31

    .line 225
    :cond_41
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 226
    nop

    .line 227
    return-void

    .line 225
    :catchall_46
    move-exception p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 226
    throw p0
.end method
