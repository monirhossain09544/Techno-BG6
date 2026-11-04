.class public Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;
.super Ljava/lang/Object;
.source "LongitudinalReportingEncoder.java"

# interfaces
.implements Landroid/privacy/DifferentialPrivacyEncoder;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist PRR1_ENCODER_ID:Ljava/lang/String; = "prr1_encoder_id"

.field private static final blacklist PRR2_ENCODER_ID:Ljava/lang/String; = "prr2_encoder_id"

.field private static final blacklist TAG:Ljava/lang/String; = "LongitudinalEncoder"


# instance fields
.field private final blacklist mConfig:Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

.field private final blacklist mFakeValue:Ljava/lang/Boolean;

.field private final blacklist mIRREncoder:Landroid/privacy/internal/rappor/RapporEncoder;

.field private final blacklist mIsSecure:Z


# direct methods
.method private constructor blacklist <init>(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;Z[B)V
    .registers 8

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mConfig:Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    .line 103
    iput-boolean p2, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mIsSecure:Z

    .line 104
    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getProbabilityP()D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getEncoderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "prr1_encoder_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v0, v1, p2, p3, v2}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->getLongTermRandomizedResult(DZ[BLjava/lang/String;)Z

    move-result v0

    .line 107
    if-eqz v0, :cond_50

    .line 108
    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getProbabilityQ()D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getEncoderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "prr2_encoder_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-static {v0, v1, p2, p3, v2}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->getLongTermRandomizedResult(DZ[BLjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mFakeValue:Ljava/lang/Boolean;

    goto :goto_53

    .line 112
    :cond_50
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mFakeValue:Ljava/lang/Boolean;

    .line 115
    :goto_53
    invoke-virtual {p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;->getIRRConfig()Landroid/privacy/internal/rappor/RapporConfig;

    move-result-object p1

    .line 116
    if-eqz p2, :cond_5e

    .line 117
    invoke-static {p1, p3}, Landroid/privacy/internal/rappor/RapporEncoder;->createEncoder(Landroid/privacy/internal/rappor/RapporConfig;[B)Landroid/privacy/internal/rappor/RapporEncoder;

    move-result-object p1

    goto :goto_62

    .line 118
    :cond_5e
    invoke-static {p1}, Landroid/privacy/internal/rappor/RapporEncoder;->createInsecureEncoderForTest(Landroid/privacy/internal/rappor/RapporConfig;)Landroid/privacy/internal/rappor/RapporEncoder;

    move-result-object p1

    :goto_62
    iput-object p1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mIRREncoder:Landroid/privacy/internal/rappor/RapporEncoder;

    .line 119
    return-void
.end method

.method public static blacklist createEncoder(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;[B)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;
    .registers 4

    .line 83
    new-instance v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;-><init>(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;Z[B)V

    return-object v0
.end method

.method public static blacklist createInsecureEncoderForTest(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;
    .registers 4

    .line 97
    new-instance v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;-><init>(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;Z[B)V

    return-object v0
.end method

.method public static blacklist getLongTermRandomizedResult(DZ[BLjava/lang/String;)Z
    .registers 17

    .line 172
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, p0, v0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-gez v0, :cond_a

    mul-double/2addr p0, v1

    goto :goto_f

    :cond_a
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, p0

    mul-double p0, v3, v1

    :goto_f
    move-wide v4, p0

    .line 173
    const/4 p0, 0x1

    const/4 p1, 0x0

    if-gez v0, :cond_16

    move v0, p1

    goto :goto_17

    :cond_16
    move v0, p0

    .line 174
    :goto_17
    new-instance v1, Landroid/privacy/internal/rappor/RapporConfig;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object/from16 v2, p4

    invoke-direct/range {v1 .. v11}, Landroid/privacy/internal/rappor/RapporConfig;-><init>(Ljava/lang/String;IDDDII)V

    .line 176
    if-eqz p2, :cond_2c

    .line 177
    invoke-static {v1, p3}, Landroid/privacy/internal/rappor/RapporEncoder;->createEncoder(Landroid/privacy/internal/rappor/RapporConfig;[B)Landroid/privacy/internal/rappor/RapporEncoder;

    move-result-object v1

    goto :goto_30

    .line 178
    :cond_2c
    invoke-static {v1}, Landroid/privacy/internal/rappor/RapporEncoder;->createInsecureEncoderForTest(Landroid/privacy/internal/rappor/RapporConfig;)Landroid/privacy/internal/rappor/RapporEncoder;

    move-result-object v1

    .line 179
    :goto_30
    invoke-virtual {v1, v0}, Landroid/privacy/internal/rappor/RapporEncoder;->encodeBoolean(Z)[B

    move-result-object v0

    aget-byte v0, v0, p1

    if-lez v0, :cond_39

    goto :goto_3a

    :cond_39
    move p0, p1

    :goto_3a
    return p0
.end method


# virtual methods
.method public blacklist encodeBits([B)[B
    .registers 2

    .line 144
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist encodeBoolean(Z)[B
    .registers 3

    .line 132
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mFakeValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 134
    iget-object p1, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mFakeValue:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 137
    :cond_a
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mIRREncoder:Landroid/privacy/internal/rappor/RapporEncoder;

    invoke-virtual {v0, p1}, Landroid/privacy/internal/rappor/RapporEncoder;->encodeBoolean(Z)[B

    move-result-object p1

    .line 139
    return-object p1
.end method

.method public blacklist encodeString(Ljava/lang/String;)[B
    .registers 2

    .line 123
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic blacklist getConfig()Landroid/privacy/DifferentialPrivacyConfig;
    .registers 2

    .line 50
    invoke-virtual {p0}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->getConfig()Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getConfig()Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mConfig:Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    return-object v0
.end method

.method public blacklist isInsecureEncoderForTest()Z
    .registers 2

    .line 154
    iget-boolean v0, p0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->mIsSecure:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
