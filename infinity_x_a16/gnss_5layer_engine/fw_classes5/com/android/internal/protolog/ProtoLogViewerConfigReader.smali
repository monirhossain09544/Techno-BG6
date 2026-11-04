.class public Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
.super Ljava/lang/Object;
.source "ProtoLogViewerConfigReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;,
        Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedGroup;,
        Lcom/android/internal/protolog/ProtoLogViewerConfigReader$MessageData;
    }
.end annotation


# instance fields
.field private final blacklist mGroupHashes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mLogMessageMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mGroupHashes:Ljava/util/Map;

    .line 29
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Landroid/util/LongSparseArray;

    .line 34
    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    .line 35
    return-void
.end method

.method static synthetic blacklist lambda$loadViewerConfig$0(Ljava/lang/String;)V
    .registers 1

    .line 69
    return-void
.end method

.method static synthetic blacklist lambda$unloadViewerConfig$1(Ljava/lang/String;)V
    .registers 1

    .line 97
    return-void
.end method

.method private blacklist loadGroupId(Ljava/lang/String;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    invoke-interface {v0}, Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;->getInputStream()Lcom/android/internal/protolog/AutoClosableProtoInputStream;

    move-result-object v0

    .line 237
    :try_start_6
    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->get()Landroid/util/proto/ProtoInputStream;

    move-result-object v1

    .line 239
    :cond_a
    :goto_a
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_39

    .line 240
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 241
    const-wide v2, 0x20b00000002L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 242
    invoke-static {v1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->readGroup(Landroid/util/proto/ProtoInputStream;)Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedGroup;

    move-result-object v4

    .line 243
    iget-object v5, v4, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedGroup;->groupName:Ljava/lang/String;

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 244
    iget-wide v1, v4, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedGroup;->groupId:J
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_5d

    .line 250
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V

    .line 244
    :cond_34
    return-wide v1

    .line 247
    :cond_35
    :try_start_35
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_5d

    .line 248
    goto :goto_a

    .line 250
    :cond_39
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V

    .line 252
    :cond_3e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " not found in viewer config"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :catchall_5d
    move-exception p1

    if-eqz v0, :cond_68

    :try_start_60
    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_68

    :catchall_64
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_68
    :goto_68
    throw p1
.end method

.method private blacklist loadViewerConfigMappingForGroup(Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadGroupId(Ljava/lang/String;)J

    move-result-wide v0

    .line 203
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 204
    iget-object v2, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    invoke-interface {v2}, Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;->getInputStream()Lcom/android/internal/protolog/AutoClosableProtoInputStream;

    move-result-object v2

    .line 205
    :try_start_f
    invoke-virtual {v2}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->get()Landroid/util/proto/ProtoInputStream;

    move-result-object v3

    .line 206
    :cond_13
    :goto_13
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6c

    .line 207
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    .line 208
    const-wide v4, 0x20b00000001L

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 209
    invoke-static {v3}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->readMessage(Landroid/util/proto/ProtoInputStream;)Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;

    move-result-object v6

    .line 211
    iget v7, v6, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;->groupId:I

    if-eqz v7, :cond_64

    .line 215
    iget-wide v7, v6, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;->messageId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_5c

    .line 219
    iget-object v7, v6, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;->message:Ljava/lang/String;

    if-eqz v7, :cond_54

    .line 223
    iget v7, v6, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;->groupId:I

    int-to-long v7, v7

    cmp-long v7, v7, v0

    if-nez v7, :cond_50

    .line 224
    iget-wide v7, v6, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;->messageId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v6, v6, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;->message:Ljava/lang/String;

    invoke-interface {p1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_50
    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 228
    goto :goto_13

    .line 220
    :cond_54
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to get message string"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 216
    :cond_5c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to get message id"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_64
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to get group id"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6c
    .catchall {:try_start_f .. :try_end_6c} :catchall_72

    .line 230
    :cond_6c
    if-eqz v2, :cond_71

    invoke-virtual {v2}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V

    .line 232
    :cond_71
    return-object p1

    .line 204
    :catchall_72
    move-exception p1

    if-eqz v2, :cond_7d

    :try_start_75
    invoke-virtual {v2}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_7d

    :catchall_79
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7d
    :goto_7d
    throw p1
.end method

.method private static blacklist readGroup(Landroid/util/proto/ProtoInputStream;)Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedGroup;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    new-instance v0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedGroup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedGroup;-><init>(Lcom/android/internal/protolog/ProtoLogViewerConfigReader-IA;)V

    .line 286
    :goto_6
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2f

    .line 287
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_30

    goto :goto_2e

    .line 292
    :pswitch_15
    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedGroup;->groupName:Ljava/lang/String;

    goto :goto_2e

    .line 289
    :pswitch_21
    const-wide v1, 0x10d00000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedGroup;->groupId:J

    .line 290
    nop

    .line 293
    :goto_2e
    goto :goto_6

    .line 296
    :cond_2f
    return-object v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_21
        :pswitch_15
    .end packed-switch
.end method

.method private static blacklist readMessage(Landroid/util/proto/ProtoInputStream;)Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    new-instance v0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;-><init>(Lcom/android/internal/protolog/ProtoLogViewerConfigReader-IA;)V

    .line 263
    :goto_6
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3a

    .line 264
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    :pswitch_14
    goto :goto_39

    .line 272
    :pswitch_15
    const-wide v1, 0x10d00000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;->groupId:I

    goto :goto_39

    .line 269
    :pswitch_21
    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;->message:Ljava/lang/String;

    .line 270
    goto :goto_39

    .line 266
    :pswitch_2d
    const-wide v1, 0x10600000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;->messageId:J

    .line 267
    nop

    .line 273
    :goto_39
    goto :goto_6

    .line 276
    :cond_3a
    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_21
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public blacklist getMessageDataForHashFromFile(J)Lcom/android/internal/protolog/ProtoLogViewerConfigReader$MessageData;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    invoke-interface {v0}, Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;->getInputStream()Lcom/android/internal/protolog/AutoClosableProtoInputStream;

    move-result-object v0

    .line 159
    :try_start_6
    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->get()Landroid/util/proto/ProtoInputStream;

    move-result-object v1

    .line 161
    nop

    .line 162
    nop

    .line 163
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v6, v3

    .line 165
    :goto_15
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_63

    .line 166
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3f

    .line 167
    const-wide v7, 0x20b00000001L

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    .line 168
    invoke-static {v1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->readMessage(Landroid/util/proto/ProtoInputStream;)Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;

    move-result-object v9

    .line 169
    iget-wide v10, v9, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;->messageId:J

    cmp-long v10, v10, p1

    if-nez v10, :cond_3b

    .line 170
    iget-object v6, v9, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;->message:Ljava/lang/String;

    .line 171
    iget v4, v9, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;->groupId:I

    int-to-long v4, v4

    .line 174
    :cond_3b
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 175
    :cond_3e
    goto :goto_15

    :cond_3f
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3e

    .line 176
    const-wide v7, 0x20b00000002L

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    .line 178
    nop

    .line 179
    invoke-static {v1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->readGroup(Landroid/util/proto/ProtoInputStream;)Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedGroup;

    move-result-object v9

    .line 180
    iget-object v10, v9, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedGroup;->groupName:Ljava/lang/String;

    if-eqz v10, :cond_5f

    .line 181
    iget-wide v10, v9, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedGroup;->groupId:J

    iget-object v9, v9, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v10, v11, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 183
    :cond_5f
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 184
    goto :goto_15

    .line 187
    :cond_63
    if-eqz v6, :cond_78

    .line 188
    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 189
    if-eqz p1, :cond_78

    .line 190
    new-instance p2, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$MessageData;

    invoke-direct {p2, v6, p1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$MessageData;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_6 .. :try_end_72} :catchall_7e

    .line 193
    if-eqz v0, :cond_77

    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V

    .line 190
    :cond_77
    return-object p2

    .line 193
    :cond_78
    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V

    .line 195
    :cond_7d
    return-object v3

    .line 158
    :catchall_7e
    move-exception p1

    if-eqz v0, :cond_89

    :try_start_81
    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_85

    goto :goto_89

    :catchall_85
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_89
    :goto_89
    throw p1
.end method

.method public blacklist getViewerString(J)Ljava/lang/String;
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public declared-synchronized blacklist loadViewerConfig([Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 69
    :try_start_1
    new-instance v0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadViewerConfig([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 70
    monitor-exit p0

    return-void

    .line 68
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized blacklist loadViewerConfig([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)V
    .registers 11

    monitor-enter p0

    .line 76
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_7e

    aget-object v2, p1, v1

    .line 77
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mGroupHashes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_80

    if-eqz v3, :cond_10

    .line 78
    goto :goto_7b

    .line 82
    :cond_10
    :try_start_10
    invoke-direct {p0, v2}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadViewerConfigMappingForGroup(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 83
    iget-object v4, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mGroupHashes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 85
    iget-object v5, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 86
    goto :goto_25

    .line 88
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " log definitions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_63} :catch_64
    .catchall {:try_start_10 .. :try_end_63} :catchall_80

    .line 92
    goto :goto_7b

    .line 89
    :catch_64
    move-exception v2

    .line 90
    :try_start_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load log definitions: IOException while processing viewer config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_65 .. :try_end_7b} :catchall_80

    .line 76
    :goto_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 94
    :cond_7e
    monitor-exit p0

    return-void

    .line 75
    :catchall_80
    move-exception p1

    :try_start_81
    monitor-exit p0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw p1
.end method

.method public blacklist messageHashIsAvailableInFile(J)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    invoke-interface {v0}, Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;->getInputStream()Lcom/android/internal/protolog/AutoClosableProtoInputStream;

    move-result-object v0

    .line 127
    :try_start_6
    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->get()Landroid/util/proto/ProtoInputStream;

    move-result-object v1

    .line 128
    :cond_a
    :goto_a
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_45

    .line 129
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    .line 130
    const-wide v5, 0x20b00000001L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    .line 132
    :cond_21
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    if-eq v2, v3, :cond_41

    .line 133
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    if-ne v2, v4, :cond_21

    .line 134
    const-wide v7, 0x10600000001L

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_4c

    cmp-long v2, v7, p1

    if-nez v2, :cond_21

    .line 135
    nop

    .line 143
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V

    .line 135
    :cond_40
    return v4

    .line 140
    :cond_41
    :try_start_41
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_4c

    .line 141
    goto :goto_a

    .line 143
    :cond_45
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V

    .line 145
    :cond_4a
    const/4 p1, 0x0

    return p1

    .line 126
    :catchall_4c
    move-exception p1

    if-eqz v0, :cond_57

    :try_start_4f
    invoke-virtual {v0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_57
    :goto_57
    throw p1
.end method

.method public declared-synchronized blacklist unloadViewerConfig([Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 97
    :try_start_1
    new-instance v0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->unloadViewerConfig([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 98
    monitor-exit p0

    return-void

    .line 96
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized blacklist unloadViewerConfig([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)V
    .registers 11

    monitor-enter p0

    .line 104
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_50

    aget-object v2, p1, v1

    .line 105
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mGroupHashes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 106
    goto :goto_4d

    .line 109
    :cond_10
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mGroupHashes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 110
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unloading viewer config hash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V

    .line 112
    iget-object v5, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->remove(J)V

    .line 113
    goto :goto_1c

    .line 114
    :cond_48
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mGroupHashes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_52

    .line 104
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 116
    :cond_50
    monitor-exit p0

    return-void

    .line 103
    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p1
.end method
