.class public final Lcom/android/internal/inputmethod/InputConnectionProtoDumper;
.super Ljava/lang/Object;
.source "InputConnectionProtoDumper.java"


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "InputConnectionProtoDumper"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist buildGetCursorCapsModeProto(II)[B
    .registers 7

    .line 167
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 168
    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 169
    const-wide v3, 0x10500000001L

    invoke-virtual {v0, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 170
    const-wide v3, 0x10500000002L

    invoke-virtual {v0, v3, v4, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 172
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist buildGetExtractedTextProto(Landroid/view/inputmethod/ExtractedTextRequest;ILandroid/view/inputmethod/ExtractedText;)[B
    .registers 12

    .line 194
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 195
    const-wide v0, 0x10b00000006L

    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 196
    const-wide v2, 0x10b00000001L

    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 197
    const-wide v4, 0x10500000001L

    iget v6, p0, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 198
    iget v4, p0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    const-wide v5, 0x10500000002L

    invoke-virtual {p2, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 199
    const-wide v7, 0x10500000003L

    iget v4, p0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    invoke-virtual {p2, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 200
    const-wide v7, 0x10500000004L

    iget p0, p0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    invoke-virtual {p2, v7, v8, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 201
    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 202
    invoke-virtual {p2, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 203
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 204
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist buildGetSelectedTextProto(ILjava/lang/CharSequence;)[B
    .registers 6

    .line 111
    new-instance p1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 112
    const-wide v0, 0x10b00000003L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 113
    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 115
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist buildGetSurroundingTextProto(IIILandroid/view/inputmethod/SurroundingText;)[B
    .registers 11

    .line 137
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 138
    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 139
    const-wide v5, 0x10500000001L

    invoke-virtual {v0, v5, v6, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 140
    const-wide v5, 0x10500000002L

    invoke-virtual {v0, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 141
    const-wide p0, 0x10500000003L

    invoke-virtual {v0, p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 142
    if-eqz p3, :cond_4b

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 144
    nop

    .line 145
    invoke-virtual {p3}, Landroid/view/inputmethod/SurroundingText;->getSelectionStart()I

    move-result p2

    .line 144
    invoke-virtual {v0, v5, v6, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 146
    nop

    .line 147
    invoke-virtual {p3}, Landroid/view/inputmethod/SurroundingText;->getSelectionEnd()I

    move-result p2

    .line 146
    invoke-virtual {v0, p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 148
    const-wide p0, 0x10500000004L

    invoke-virtual {p3}, Landroid/view/inputmethod/SurroundingText;->getOffset()I

    move-result p2

    invoke-virtual {v0, p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 151
    :cond_4b
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 152
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist buildGetTextAfterCursorProto(IILjava/lang/CharSequence;)[B
    .registers 7

    .line 65
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 66
    const-wide v0, 0x10b00000002L

    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 67
    const-wide v2, 0x10500000001L

    invoke-virtual {p2, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 68
    const-wide v2, 0x10500000002L

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 69
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 70
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist buildGetTextBeforeCursorProto(IILjava/lang/CharSequence;)[B
    .registers 7

    .line 88
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 89
    const-wide v0, 0x10b00000001L

    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 90
    const-wide v2, 0x10500000001L

    invoke-virtual {p2, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 91
    const-wide v2, 0x10500000002L

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 92
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 93
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method
