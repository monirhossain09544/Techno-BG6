.class public abstract Lcom/android/internal/os/LoggingPrintStream;
.super Ljava/io/PrintStream;
.source "LoggingPrintStream.java"


# instance fields
.field private final blacklist builder:Ljava/lang/StringBuilder;

.field private blacklist decodedChars:Ljava/nio/CharBuffer;

.field private blacklist decoder:Ljava/nio/charset/CharsetDecoder;

.field private blacklist encodedBytes:Ljava/nio/ByteBuffer;

.field private final blacklist formatter:Ljava/util/Formatter;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 4

    .line 66
    new-instance v0, Lcom/android/internal/os/LoggingPrintStream$1;

    invoke-direct {v0}, Lcom/android/internal/os/LoggingPrintStream$1;-><init>()V

    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    .line 186
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->formatter:Ljava/util/Formatter;

    .line 71
    return-void
.end method

.method private blacklist flush(Z)V
    .registers 7

    .line 90
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 92
    const/4 v1, 0x0

    move v2, v1

    .line 96
    :goto_8
    if-ge v2, v0, :cond_21

    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    .line 97
    const-string v4, "\n"

    invoke-virtual {v3, v4, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_21

    .line 98
    iget-object v4, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/os/LoggingPrintStream;->log(Ljava/lang/String;)V

    .line 99
    add-int/lit8 v2, v3, 0x1

    goto :goto_8

    .line 102
    :cond_21
    if-eqz p1, :cond_34

    .line 104
    if-ge v2, v0, :cond_2e

    .line 105
    iget-object p1, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->log(Ljava/lang/String;)V

    .line 107
    :cond_2e
    iget-object p1, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_39

    .line 110
    :cond_34
    iget-object p1, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 112
    :goto_39
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api append(C)Ljava/io/PrintStream;
    .registers 2

    monitor-enter p0

    .line 331
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->print(C)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 332
    monitor-exit p0

    return-object p0

    .line 330
    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public declared-synchronized whitelist test-api append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;
    .registers 3

    monitor-enter p0

    .line 337
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 338
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 339
    monitor-exit p0

    return-object p0

    .line 336
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;
    .registers 5

    monitor-enter p0

    .line 345
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 346
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 347
    monitor-exit p0

    return-object p0

    .line 344
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public bridge synthetic whitelist test-api append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->append(C)Ljava/io/PrintStream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/LoggingPrintStream;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintStream;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api checkError()Z
    .registers 2

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api close()V
    .registers 1

    .line 169
    return-void
.end method

.method public declared-synchronized whitelist test-api flush()V
    .registers 2

    monitor-enter p0

    .line 80
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 81
    monitor-exit p0

    return-void

    .line 79
    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public varargs whitelist test-api format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 4

    .line 173
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/os/LoggingPrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object p1

    return-object p1
.end method

.method public varargs declared-synchronized whitelist test-api format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 5

    monitor-enter p0

    .line 191
    if-eqz p2, :cond_10

    .line 195
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->formatter:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 196
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 197
    monitor-exit p0

    return-object p0

    .line 190
    :catchall_e
    move-exception p1

    goto :goto_18

    .line 192
    :cond_10
    :try_start_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "format"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :goto_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_e

    throw p1
.end method

.method protected abstract blacklist log(Ljava/lang/String;)V
.end method

.method public declared-synchronized whitelist test-api print(C)V
    .registers 3

    monitor-enter p0

    .line 208
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    const/16 v0, 0xa

    if-ne p1, v0, :cond_e

    .line 210
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 212
    :cond_e
    monitor-exit p0

    return-void

    .line 207
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public declared-synchronized whitelist test-api print(D)V
    .registers 4

    monitor-enter p0

    .line 216
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 217
    monitor-exit p0

    return-void

    .line 215
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized whitelist test-api print(F)V
    .registers 3

    monitor-enter p0

    .line 221
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 222
    monitor-exit p0

    return-void

    .line 220
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized whitelist test-api print(I)V
    .registers 3

    monitor-enter p0

    .line 226
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 227
    monitor-exit p0

    return-void

    .line 225
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized whitelist test-api print(J)V
    .registers 4

    monitor-enter p0

    .line 231
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 232
    monitor-exit p0

    return-void

    .line 230
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized whitelist test-api print(Ljava/lang/Object;)V
    .registers 3

    monitor-enter p0

    .line 236
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 238
    monitor-exit p0

    return-void

    .line 235
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api print(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 242
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 244
    monitor-exit p0

    return-void

    .line 241
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api print(Z)V
    .registers 3

    monitor-enter p0

    .line 248
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 249
    monitor-exit p0

    return-void

    .line 247
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized whitelist test-api print([C)V
    .registers 3

    monitor-enter p0

    .line 202
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 203
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 204
    monitor-exit p0

    return-void

    .line 201
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public varargs whitelist test-api printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 3

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/LoggingPrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object p1

    return-object p1
.end method

.method public varargs whitelist test-api printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    .registers 4

    .line 183
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/LoggingPrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist test-api println()V
    .registers 2

    monitor-enter p0

    .line 253
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 254
    monitor-exit p0

    return-void

    .line 252
    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized whitelist test-api println(C)V
    .registers 3

    monitor-enter p0

    .line 264
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 266
    monitor-exit p0

    return-void

    .line 263
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api println(D)V
    .registers 4

    monitor-enter p0

    .line 270
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 271
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 272
    monitor-exit p0

    return-void

    .line 269
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api println(F)V
    .registers 3

    monitor-enter p0

    .line 276
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 277
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 278
    monitor-exit p0

    return-void

    .line 275
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api println(I)V
    .registers 3

    monitor-enter p0

    .line 282
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 284
    monitor-exit p0

    return-void

    .line 281
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api println(J)V
    .registers 4

    monitor-enter p0

    .line 288
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 289
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 290
    monitor-exit p0

    return-void

    .line 287
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api println(Ljava/lang/Object;)V
    .registers 3

    monitor-enter p0

    .line 294
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 296
    monitor-exit p0

    return-void

    .line 293
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api println(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 300
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_2f

    if-eqz p1, :cond_2f

    .line 302
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 304
    const/4 v1, 0x0

    .line 308
    :goto_10
    if-ge v1, v0, :cond_25

    .line 309
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    .line 310
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/os/LoggingPrintStream;->log(Ljava/lang/String;)V

    .line 311
    add-int/lit8 v1, v2, 0x1

    goto :goto_10

    .line 314
    :cond_25
    if-ge v1, v0, :cond_2e

    .line 315
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->log(Ljava/lang/String;)V

    .line 317
    :cond_2e
    goto :goto_38

    .line 318
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 321
    :goto_38
    monitor-exit p0

    return-void

    .line 299
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public declared-synchronized whitelist test-api println(Z)V
    .registers 3

    monitor-enter p0

    .line 325
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 326
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 327
    monitor-exit p0

    return-void

    .line 324
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api println([C)V
    .registers 3

    monitor-enter p0

    .line 258
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 259
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 260
    monitor-exit p0

    return-void

    .line 257
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method protected whitelist test-api setError()V
    .registers 1

    .line 165
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 5

    .line 115
    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/os/LoggingPrintStream;->write([BII)V

    .line 116
    return-void
.end method

.method public whitelist test-api write([B)V
    .registers 4

    .line 120
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/LoggingPrintStream;->write([BII)V

    .line 121
    return-void
.end method

.method public declared-synchronized whitelist test-api write([BII)V
    .registers 8

    monitor-enter p0

    .line 125
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v0, :cond_29

    .line 126
    const/16 v0, 0x50

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    .line 127
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    .line 128
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 129
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 130
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 133
    :cond_29
    add-int/2addr p3, p2

    .line 134
    :goto_2a
    const/4 v0, 0x0

    if-ge p2, p3, :cond_6b

    .line 137
    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    sub-int v2, p3, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 139
    add-int/2addr p2, v1

    .line 141
    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 145
    :cond_44
    iget-object v1, p0, Lcom/android/internal/os/LoggingPrintStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 149
    iget-object v2, p0, Lcom/android/internal/os/LoggingPrintStream;->builder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v2, p0, Lcom/android/internal/os/LoggingPrintStream;->decodedChars:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 151
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-nez v1, :cond_44

    .line 152
    iget-object v0, p0, Lcom/android/internal/os/LoggingPrintStream;->encodedBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 153
    goto :goto_2a

    .line 154
    :cond_6b
    invoke-direct {p0, v0}, Lcom/android/internal/os/LoggingPrintStream;->flush(Z)V
    :try_end_6e
    .catchall {:try_start_1 .. :try_end_6e} :catchall_70

    .line 155
    monitor-exit p0

    return-void

    .line 124
    :catchall_70
    move-exception p1

    :try_start_71
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p1
.end method
