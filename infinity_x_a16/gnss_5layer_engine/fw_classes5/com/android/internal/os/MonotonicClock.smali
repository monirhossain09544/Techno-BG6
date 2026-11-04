.class public Lcom/android/internal/os/MonotonicClock;
.super Ljava/lang/Object;
.source "MonotonicClock.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MonotonicClock"

.field public static final blacklist UNDEFINED:J = -0x1L

.field private static final blacklist XML_ATTR_TIMESHIFT:Ljava/lang/String; = "timeshift"

.field private static final blacklist XML_TAG_MONOTONIC_TIME:Ljava/lang/String; = "monotonic_time"


# instance fields
.field private final blacklist mClock:Lcom/android/internal/os/Clock;

.field private final blacklist mFile:Landroid/util/AtomicFile;

.field private final blacklist mTimeshift:J


# direct methods
.method public constructor blacklist <init>(JLcom/android/internal/os/Clock;)V
    .registers 5

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/internal/os/MonotonicClock;-><init>(Ljava/io/File;JLcom/android/internal/os/Clock;)V

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;)V
    .registers 5

    .line 57
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/os/MonotonicClock;-><init>(Ljava/io/File;JLcom/android/internal/os/Clock;)V

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;JLcom/android/internal/os/Clock;)V
    .registers 7

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p4, p0, Lcom/android/internal/os/MonotonicClock;->mClock:Lcom/android/internal/os/Clock;

    .line 66
    if-eqz p1, :cond_1c

    .line 67
    new-instance p4, Landroid/util/AtomicFile;

    invoke-direct {p4, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p4, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    .line 68
    iget-object p1, p0, Lcom/android/internal/os/MonotonicClock;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-direct {p0, p2, p3}, Lcom/android/internal/os/MonotonicClock;->read(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/MonotonicClock;->mTimeshift:J

    goto :goto_28

    .line 70
    :cond_1c
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    .line 71
    iget-object p1, p0, Lcom/android/internal/os/MonotonicClock;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/android/internal/os/MonotonicClock;->mTimeshift:J

    .line 73
    :goto_28
    return-void
.end method

.method private blacklist read(J)J
    .registers 6

    .line 92
    iget-object v0, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 93
    return-wide p1

    .line 97
    :cond_9
    :try_start_9
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/MonotonicClock;->readXml(Ljava/io/InputStream;Lcom/android/modules/utils/TypedXmlPullParser;)J

    move-result-wide p1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1c} :catch_1d

    return-wide p1

    .line 98
    :catch_1d
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot load monotonic clock from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MonotonicClock"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    return-wide p1
.end method

.method private blacklist readXml(Ljava/io/InputStream;Lcom/android/modules/utils/TypedXmlPullParser;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    nop

    .line 130
    :try_start_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 131
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result p1

    const-wide/16 v0, 0x0

    .line 132
    :goto_10
    const/4 v2, 0x1

    if-eq p1, v2, :cond_2e

    .line 133
    const/4 v2, 0x2

    if-ne p1, v2, :cond_29

    .line 134
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "monotonic_time"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 135
    const-string p1, "timeshift"

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 137
    :cond_29
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result p1
    :try_end_2d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_2d} :catch_37

    goto :goto_10

    .line 141
    :cond_2e
    nop

    .line 142
    iget-object p1, p0, Lcom/android/internal/os/MonotonicClock;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    return-wide v0

    .line 139
    :catch_37
    move-exception p1

    .line 140
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private blacklist writeXml(Ljava/io/OutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 150
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 151
    const-string p1, "monotonic_time"

    invoke-interface {p2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    const-string v1, "timeshift"

    invoke-virtual {p0}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v2

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    invoke-interface {p2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 155
    return-void
.end method


# virtual methods
.method public blacklist monotonicTime()J
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/internal/os/MonotonicClock;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/MonotonicClock;->monotonicTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist monotonicTime(J)J
    .registers 5

    .line 88
    iget-wide v0, p0, Lcom/android/internal/os/MonotonicClock;->mTimeshift:J

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public blacklist write()V
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    if-nez v0, :cond_5

    .line 110
    return-void

    .line 113
    :cond_5
    nop

    .line 115
    const/4 v0, 0x0

    :try_start_7
    iget-object v1, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 116
    invoke-static {}, Landroid/util/Xml;->newBinarySerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/MonotonicClock;->writeXml(Ljava/io/OutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 117
    iget-object v1, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_19} :catch_1a

    .line 121
    goto :goto_3e

    .line 118
    :catch_1a
    move-exception v1

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot write monotonic clock to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MonotonicClock"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    iget-object v1, p0, Lcom/android/internal/os/MonotonicClock;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 122
    :goto_3e
    return-void
.end method
