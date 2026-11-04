.class public Lcom/android/internal/protolog/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ProtoLogUtils"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dumpViewerConfig(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;)V
    .registers 3

    .line 50
    new-instance v0, Lcom/android/internal/protolog/Utils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/internal/protolog/Utils$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/protolog/ProtoLogDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V

    .line 74
    return-void
.end method

.method static synthetic blacklist lambda$dumpViewerConfig$0(Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;Landroid/tracing/perfetto/TracingContext;)V
    .registers 7

    .line 51
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;->getInputStream()Lcom/android/internal/protolog/AutoClosableProtoInputStream;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_52

    .line 52
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->get()Landroid/util/proto/ProtoInputStream;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object p1

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const-wide v3, 0x10400000008L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 58
    const-wide v1, 0x10b00000069L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 59
    :cond_21
    :goto_21
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3d

    .line 60
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_32

    .line 61
    invoke-static {v0, p1}, Lcom/android/internal/protolog/Utils;->writeViewerConfigMessage(Landroid/util/proto/ProtoInputStream;Landroid/util/proto/ProtoOutputStream;)V

    .line 64
    :cond_32
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    .line 65
    invoke-static {v0, p1}, Lcom/android/internal/protolog/Utils;->writeViewerConfigGroup(Landroid/util/proto/ProtoInputStream;Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_21

    .line 69
    :cond_3d
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_40
    .catchall {:try_start_4 .. :try_end_40} :catchall_46

    .line 70
    if-eqz p0, :cond_45

    :try_start_42
    invoke-virtual {p0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_52

    .line 72
    :cond_45
    goto :goto_5a

    .line 51
    :catchall_46
    move-exception p1

    if-eqz p0, :cond_51

    :try_start_49
    invoke-virtual {p0}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception p0

    :try_start_4e
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_51
    :goto_51
    throw p1
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_52} :catch_52

    .line 70
    :catch_52
    move-exception p0

    .line 71
    const-string p1, "ProtoLogUtils"

    const-string v0, "Failed to read ProtoLog viewer config to dump to datasource"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :goto_5a
    return-void
.end method

.method private static blacklist writeViewerConfigGroup(Landroid/util/proto/ProtoInputStream;Landroid/util/proto/ProtoOutputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const-wide v0, 0x20b00000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 81
    :goto_d
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5f

    .line 82
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    packed-switch v4, :pswitch_data_66

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected field id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ProtoLogUtils"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 92
    :pswitch_38
    const-wide v4, 0x10900000003L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    .line 93
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 94
    goto :goto_d

    .line 88
    :pswitch_45
    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 90
    goto :goto_d

    .line 84
    :pswitch_52
    const-wide v4, 0x10d00000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    .line 85
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 86
    goto :goto_d

    .line 100
    :cond_5f
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 102
    return-void

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_52
        :pswitch_45
        :pswitch_38
    .end packed-switch
.end method

.method private static blacklist writeViewerConfigMessage(Landroid/util/proto/ProtoInputStream;Landroid/util/proto/ProtoOutputStream;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    const-wide v0, 0x20b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 109
    :goto_d
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7a

    .line 110
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    packed-switch v4, :pswitch_data_82

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected field id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ProtoLogUtils"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 125
    :pswitch_38
    const-wide v4, 0x10900000005L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 126
    goto :goto_d

    .line 122
    :pswitch_45
    const-wide v4, 0x10d00000004L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 123
    goto :goto_d

    .line 119
    :pswitch_52
    const-wide v4, 0x10e00000003L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 120
    goto :goto_d

    .line 116
    :pswitch_5f
    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 117
    goto :goto_d

    .line 112
    :pswitch_6c
    nop

    .line 113
    const-wide v4, 0x10600000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    .line 112
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 114
    goto :goto_d

    .line 132
    :cond_7a
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 134
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_5f
        :pswitch_52
        :pswitch_45
        :pswitch_38
    .end packed-switch
.end method
