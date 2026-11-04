.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SntpClient$InvalidServerReplyException;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o NTP_LEAP_NOSYNC:I = 0x3

.field private static final greylist-max-o NTP_MODE_BROADCAST:I = 0x5

.field private static final greylist-max-o NTP_MODE_CLIENT:I = 0x3

.field private static final greylist-max-o NTP_MODE_SERVER:I = 0x4

.field private static final greylist-max-o NTP_PACKET_SIZE:I = 0x30

.field private static final greylist-max-o NTP_STRATUM_DEATH:I = 0x0

.field private static final greylist-max-o NTP_STRATUM_MAX:I = 0xf

.field private static final greylist-max-o NTP_VERSION:I = 0x3

.field private static final greylist-max-o ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final greylist-max-o RECEIVE_TIME_OFFSET:I = 0x20

.field private static final greylist-max-o REFERENCE_TIME_OFFSET:I = 0x10

.field public static final blacklist STANDARD_NTP_PORT:I = 0x7b

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SntpClient"

.field private static final greylist-max-o TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private blacklist mClockOffset:J

.field private greylist-max-o mNtpTime:J

.field private greylist-max-o mNtpTimeReference:J

.field private final blacklist mRandom:Ljava/util/Random;

.field private greylist-max-o mRoundTripTime:J

.field private blacklist mServerSocketAddress:Ljava/net/InetSocketAddress;

.field private final blacklist mSystemTimeSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 105
    new-instance v0, Landroid/net/SntpClient$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/net/SntpClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {}, Landroid/net/SntpClient;->defaultRandom()Ljava/util/Random;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/SntpClient;-><init>(Ljava/util/function/Supplier;Ljava/util/Random;)V

    .line 106
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/function/Supplier;Ljava/util/Random;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/time/Instant;",
            ">;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Supplier;

    iput-object p1, p0, Landroid/net/SntpClient;->mSystemTimeSupplier:Ljava/util/function/Supplier;

    .line 111
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Random;

    iput-object p1, p0, Landroid/net/SntpClient;->mRandom:Ljava/util/Random;

    .line 112
    return-void
.end method

.method public static blacklist calculateClockOffset(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Ljava/time/Duration;
    .registers 4

    .line 244
    invoke-static {p0, p1}, Landroid/net/sntp/Duration64;->between(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Landroid/net/sntp/Duration64;

    move-result-object p0

    .line 245
    invoke-static {p3, p2}, Landroid/net/sntp/Duration64;->between(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Landroid/net/sntp/Duration64;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/sntp/Duration64;->plus(Landroid/net/sntp/Duration64;)Ljava/time/Duration;

    move-result-object p0

    .line 246
    const-wide/16 p1, 0x2

    invoke-virtual {p0, p1, p2}, Ljava/time/Duration;->dividedBy(J)Ljava/time/Duration;

    move-result-object p0

    .line 244
    return-object p0
.end method

.method private static blacklist checkValidServerReply(BBILandroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SntpClient$InvalidServerReplyException;
        }
    .end annotation

    .line 307
    const/4 v0, 0x3

    if-eq p0, v0, :cond_76

    .line 310
    const/4 p0, 0x4

    if-eq p1, p0, :cond_24

    const/4 p0, 0x5

    if-ne p1, p0, :cond_a

    goto :goto_24

    .line 311
    :cond_a
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "untrusted mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 313
    :cond_24
    :goto_24
    if-eqz p2, :cond_5c

    const/16 p0, 0xf

    if-gt p2, p0, :cond_5c

    .line 316
    invoke-virtual {p5, p6}, Landroid/net/sntp/Timestamp64;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_53

    .line 320
    sget-object p0, Landroid/net/sntp/Timestamp64;->ZERO:Landroid/net/sntp/Timestamp64;

    invoke-virtual {p3, p0}, Landroid/net/sntp/Timestamp64;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    .line 323
    sget-object p0, Landroid/net/sntp/Timestamp64;->ZERO:Landroid/net/sntp/Timestamp64;

    invoke-virtual {p4, p0}, Landroid/net/sntp/Timestamp64;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    .line 326
    return-void

    .line 324
    :cond_41
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo p1, "zero referenceTimestamp"

    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 321
    :cond_4a
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo p1, "zero transmitTimestamp"

    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 317
    :cond_53
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo p1, "originateTimestamp != randomizedRequestTimestamp"

    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 314
    :cond_5c
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "untrusted stratum: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 308
    :cond_76
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo p1, "unsynchronized server"

    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist defaultRandom()Ljava/util/Random;
    .registers 3

    .line 372
    :try_start_0
    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4} :catch_5

    .line 377
    goto :goto_16

    .line 373
    :catch_5
    move-exception v0

    .line 375
    const-string v1, "SntpClient"

    const-string v2, "Unable to access SecureRandom"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 378
    :goto_16
    return-object v0
.end method

.method private blacklist readTimeStamp([BI)Landroid/net/sntp/Timestamp64;
    .registers 5

    .line 345
    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->readUnsigned32([BI)J

    move-result-wide v0

    .line 346
    add-int/lit8 p2, p2, 0x4

    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->readUnsigned32([BI)J

    move-result-wide p1

    long-to-int p1, p1

    .line 347
    invoke-static {v0, v1, p1}, Landroid/net/sntp/Timestamp64;->fromComponents(JI)Landroid/net/sntp/Timestamp64;

    move-result-object p1

    return-object p1
.end method

.method private blacklist readUnsigned32([BI)J
    .registers 6

    .line 332
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 333
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 334
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 335
    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    .line 337
    shl-int/lit8 p2, p2, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p2, v0

    or-int/2addr p1, p2

    .line 338
    int-to-long p1, p1

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    return-wide p1
.end method

.method private blacklist writeTimeStamp([BILandroid/net/sntp/Timestamp64;)V
    .registers 9

    .line 354
    invoke-virtual {p3}, Landroid/net/sntp/Timestamp64;->getEraSeconds()J

    move-result-wide v0

    .line 356
    add-int/lit8 v2, p2, 0x1

    const/16 v3, 0x18

    ushr-long v3, v0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 357
    add-int/lit8 p2, v2, 0x1

    const/16 v3, 0x10

    ushr-long v3, v0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 358
    add-int/lit8 v2, p2, 0x1

    const/16 v3, 0x8

    ushr-long v3, v0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 359
    add-int/lit8 p2, v2, 0x1

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 361
    invoke-virtual {p3}, Landroid/net/sntp/Timestamp64;->getFractionBits()I

    move-result p3

    .line 363
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p3, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 364
    add-int/lit8 p2, v0, 0x1

    ushr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 365
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 366
    int-to-byte p2, p3

    aput-byte p2, p1, v0

    .line 367
    return-void
.end method


# virtual methods
.method public blacklist getClockOffset()J
    .registers 3

    .line 261
    iget-wide v0, p0, Landroid/net/SntpClient;->mClockOffset:J

    return-wide v0
.end method

.method public greylist getNtpTime()J
    .registers 3

    .line 271
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public greylist getNtpTimeReference()J
    .registers 3

    .line 282
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public greylist getRoundTripTime()J
    .registers 3

    .line 292
    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public blacklist getServerSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 300
    iget-object v0, p0, Landroid/net/SntpClient;->mServerSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public greylist requestTime(Ljava/lang/String;I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    const-string p1, "SntpClient"

    const-string p2, "Shame on you for calling the hidden API requestTime()!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist requestTime(Ljava/lang/String;IILandroid/net/Network;)Z
    .registers 9

    .line 126
    invoke-virtual {p4}, Landroid/net/Network;->getPrivateDnsBypassingCopy()Landroid/net/Network;

    move-result-object p4

    .line 128
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p4, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 129
    move v2, v0

    :goto_a
    array-length v3, v1

    if-ge v2, v3, :cond_1a

    .line 130
    aget-object v3, v1, v2

    invoke-virtual {p0, v3, p2, p3, p4}, Landroid/net/SntpClient;->requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z

    move-result v3
    :try_end_13
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_13} :catch_1b

    if-eqz v3, :cond_17

    .line 131
    const/4 p1, 0x1

    return p1

    .line 129
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 137
    :cond_1a
    goto :goto_3b

    .line 134
    :catch_1b
    move-exception p2

    .line 135
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown host: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "SntpClient"

    invoke-static {p4, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_3b
    return v0
.end method

.method public greylist-max-o requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z
    .registers 28

    .line 144
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 145
    const/16 v3, -0xbf

    invoke-static {v3}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v3

    .line 148
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_e
    new-instance v6, Ljava/net/DatagramSocket;

    invoke-direct {v6}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_10e
    .catchall {:try_start_e .. :try_end_13} :catchall_10a

    .line 149
    move-object/from16 v5, p4

    :try_start_15
    invoke-virtual {v5, v6}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    .line 150
    move/from16 v5, p3

    invoke-virtual {v6, v5}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 151
    const/16 v5, 0x30

    new-array v7, v5, [B

    .line 152
    new-instance v8, Ljava/net/DatagramPacket;

    invoke-direct {v8, v7, v5, v1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 157
    const/16 v9, 0x1b

    aput-byte v9, v7, v4

    .line 160
    iget-object v9, v0, Landroid/net/SntpClient;->mSystemTimeSupplier:Ljava/util/function/Supplier;

    invoke-interface {v9}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/time/Instant;

    .line 161
    invoke-static {v9}, Landroid/net/sntp/Timestamp64;->fromInstant(Ljava/time/Instant;)Landroid/net/sntp/Timestamp64;

    move-result-object v10

    .line 163
    iget-object v11, v0, Landroid/net/SntpClient;->mRandom:Ljava/util/Random;

    .line 164
    invoke-virtual {v10, v11}, Landroid/net/sntp/Timestamp64;->randomizeSubMillis(Ljava/util/Random;)Landroid/net/sntp/Timestamp64;

    move-result-object v11

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 166
    const/16 v14, 0x28

    invoke-direct {v0, v7, v14, v11}, Landroid/net/SntpClient;->writeTimeStamp([BILandroid/net/sntp/Timestamp64;)V

    .line 168
    invoke-virtual {v6, v8}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 171
    new-instance v8, Ljava/net/DatagramPacket;

    invoke-direct {v8, v7, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 172
    invoke-virtual {v6, v8}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_50} :catch_100
    .catchall {:try_start_15 .. :try_end_50} :catchall_f8

    .line 173
    move v8, v4

    :try_start_51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 174
    sub-long v12, v4, v12

    invoke-virtual {v9, v12, v13}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v9

    .line 175
    invoke-static {v9}, Landroid/net/sntp/Timestamp64;->fromInstant(Ljava/time/Instant;)Landroid/net/sntp/Timestamp64;

    move-result-object v15

    .line 178
    aget-byte v16, v7, v8
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_61} :catch_f0
    .catchall {:try_start_51 .. :try_end_61} :catchall_f8

    shr-int/lit8 v16, v16, 0x6

    move/from16 p3, v8

    and-int/lit8 v8, v16, 0x3

    int-to-byte v8, v8

    .line 179
    :try_start_68
    aget-byte v16, v7, p3
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6a} :catch_ec
    .catchall {:try_start_68 .. :try_end_6a} :catchall_f8

    and-int/lit8 v14, v16, 0x7

    int-to-byte v14, v14

    .line 180
    const/16 v19, 0x1

    move/from16 v20, v3

    :try_start_71
    aget-byte v3, v7, v19

    and-int/lit16 v3, v3, 0xff

    .line 181
    move/from16 v16, v3

    const/16 v3, 0x10

    invoke-direct {v0, v7, v3}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v3

    .line 182
    move-object/from16 v17, v3

    const/16 v3, 0x18

    invoke-direct {v0, v7, v3}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v18

    .line 183
    const/16 v3, 0x20

    invoke-direct {v0, v7, v3}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v3
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_8b} :catch_ea
    .catchall {:try_start_71 .. :try_end_8b} :catchall_e8

    .line 184
    move-object/from16 v21, v6

    const/16 v6, 0x28

    :try_start_8f
    invoke-direct {v0, v7, v6}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v6

    .line 187
    move-object/from16 v22, v15

    move-object v15, v6

    move-wide v6, v12

    move v12, v8

    move-object/from16 v8, v22

    move v13, v14

    move/from16 v14, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v18}, Landroid/net/SntpClient;->checkValidServerReply(BBILandroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)V

    .line 190
    nop

    .line 191
    nop

    .line 192
    invoke-static {v3, v15}, Landroid/net/sntp/Duration64;->between(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Landroid/net/sntp/Duration64;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/sntp/Duration64;->toDuration()Ljava/time/Duration;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/Duration;->toMillis()J

    move-result-wide v11

    .line 193
    sub-long v12, v6, v11

    .line 195
    invoke-static {v10, v3, v15, v8}, Landroid/net/SntpClient;->calculateClockOffset(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Ljava/time/Duration;

    move-result-object v3

    .line 197
    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v6

    .line 199
    nop

    .line 200
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 199
    invoke-static {v8, v12, v13, v6, v7}, Landroid/net/EventLogTags;->writeNtpSuccess(Ljava/lang/String;JJ)V

    .line 208
    iput-wide v6, v0, Landroid/net/SntpClient;->mClockOffset:J

    .line 209
    invoke-virtual {v9, v3}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/net/SntpClient;->mNtpTime:J

    .line 210
    iput-wide v4, v0, Landroid/net/SntpClient;->mNtpTimeReference:J

    .line 211
    iput-wide v12, v0, Landroid/net/SntpClient;->mRoundTripTime:J

    .line 212
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v3, v0, Landroid/net/SntpClient;->mServerSocketAddress:Ljava/net/InetSocketAddress;
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_db} :catch_e6
    .catchall {:try_start_8f .. :try_end_db} :catchall_e4

    .line 218
    nop

    .line 219
    invoke-virtual/range {v21 .. v21}, Ljava/net/DatagramSocket;->close()V

    .line 221
    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 222
    nop

    .line 224
    return v19

    .line 218
    :catchall_e4
    move-exception v0

    goto :goto_fd

    .line 213
    :catch_e6
    move-exception v0

    goto :goto_107

    .line 218
    :catchall_e8
    move-exception v0

    goto :goto_fb

    .line 213
    :catch_ea
    move-exception v0

    goto :goto_105

    :catch_ec
    move-exception v0

    move/from16 v20, v3

    goto :goto_105

    :catch_f0
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v21, v6

    move/from16 p3, v8

    goto :goto_107

    .line 218
    :catchall_f8
    move-exception v0

    move/from16 v20, v3

    :goto_fb
    move-object/from16 v21, v6

    :goto_fd
    move-object/from16 v5, v21

    goto :goto_129

    .line 213
    :catch_100
    move-exception v0

    move/from16 v20, v3

    move/from16 p3, v4

    :goto_105
    move-object/from16 v21, v6

    :goto_107
    move-object/from16 v5, v21

    goto :goto_113

    .line 218
    :catchall_10a
    move-exception v0

    move/from16 v20, v3

    goto :goto_129

    .line 213
    :catch_10e
    move-exception v0

    move/from16 v20, v3

    move/from16 p3, v4

    .line 214
    :goto_113
    :try_start_113
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11e
    .catchall {:try_start_113 .. :try_end_11e} :catchall_128

    .line 216
    nop

    .line 218
    if-eqz v5, :cond_124

    .line 219
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    .line 221
    :cond_124
    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 216
    return p3

    .line 218
    :catchall_128
    move-exception v0

    :goto_129
    if-eqz v5, :cond_12e

    .line 219
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    .line 221
    :cond_12e
    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 222
    throw v0
.end method
