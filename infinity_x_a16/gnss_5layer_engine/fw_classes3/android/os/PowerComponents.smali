.class Landroid/os/PowerComponents;
.super Ljava/lang/Object;
.source "PowerComponents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerComponents$Builder;
    }
.end annotation


# static fields
.field private static final blacklist XML_TAG_CUSTOM_COMPONENT_COMPAT:Ljava/lang/String; = "custom_component"


# instance fields
.field private final blacklist mData:Landroid/os/BatteryConsumer$BatteryConsumerData;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmData(Landroid/os/PowerComponents;)Landroid/os/BatteryConsumer$BatteryConsumerData;
    .registers 1

    iget-object p0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 57
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/PowerComponents$Builder;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Landroid/os/PowerComponents$Builder;->-$$Nest$fgetmData(Landroid/os/PowerComponents$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object p1

    iput-object p1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 53
    return-void
.end method

.method private blacklist dump(Ljava/lang/StringBuilder;IIIIZ)V
    .registers 13

    .line 206
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/os/PowerComponents;->getConsumedPower(IIII)D

    move-result-wide v0

    .line 208
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/os/PowerComponents;->getUsageDurationMillis(IIII)J

    move-result-wide p4

    .line 210
    const-wide/16 v2, 0x0

    if-eqz p6, :cond_17

    const-wide/16 v4, 0x0

    cmpl-double p6, v0, v4

    if-nez p6, :cond_17

    cmp-long p6, p4, v2

    if-nez p6, :cond_17

    .line 211
    return-void

    .line 214
    :cond_17
    iget-object p6, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object p6, p6, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {p6, p2}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getPowerComponentName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const/4 p2, -0x1

    if-eq p3, p2, :cond_31

    .line 216
    const/16 p2, 0x3a

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {p3}, Landroid/os/BatteryConsumer;->processStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_31
    const-string p2, "="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {v0, v1}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    cmp-long p2, p4, v2

    if-eqz p2, :cond_4e

    .line 223
    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-static {p1, p4, p5}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 225
    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_4e
    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    return-void
.end method

.method static blacklist parseXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/PowerComponents$Builder;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v2

    .line 382
    const/4 v3, 0x2

    if-ne v2, v3, :cond_f4

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "power_components"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 387
    :goto_18
    const/4 v4, 0x3

    if-ne v2, v4, :cond_25

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f3

    :cond_25
    const/4 v6, 0x1

    if-eq v2, v6, :cond_f3

    .line 390
    if-ne v2, v3, :cond_ec

    .line 391
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    sparse-switch v7, :sswitch_data_fc

    :cond_37
    goto :goto_4c

    :sswitch_38
    const-string v7, "custom_component"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    move v2, v6

    goto :goto_4d

    :sswitch_42
    const-string v7, "component"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    move v2, v9

    goto :goto_4d

    :goto_4c
    move v2, v8

    :goto_4d
    packed-switch v2, :pswitch_data_106

    goto/16 :goto_ec

    .line 394
    :pswitch_52
    nop

    .line 395
    nop

    .line 396
    nop

    .line 397
    nop

    .line 398
    nop

    .line 399
    nop

    .line 400
    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move v7, v8

    move v2, v9

    move v3, v2

    move v14, v3

    move v15, v14

    :goto_61
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v4

    if-ge v2, v4, :cond_db

    .line 401
    invoke-interface {v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_10e

    :cond_72
    goto :goto_b3

    :sswitch_73
    const-string/jumbo v6, "process_state"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    const/4 v4, 0x1

    goto :goto_b4

    :sswitch_7e
    const-string/jumbo v6, "power_state"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    const/4 v4, 0x3

    goto :goto_b4

    :sswitch_89
    const-string/jumbo v6, "power"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    const/4 v4, 0x4

    goto :goto_b4

    :sswitch_94
    const-string v6, "id"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    move v4, v9

    goto :goto_b4

    :sswitch_9e
    const-string/jumbo v6, "screen_state"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    const/4 v4, 0x2

    goto :goto_b4

    :sswitch_a9
    const-string v6, "duration"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    const/4 v4, 0x5

    goto :goto_b4

    :goto_b3
    move v4, v8

    :goto_b4
    packed-switch v4, :pswitch_data_128

    goto :goto_d6

    .line 418
    :pswitch_b8
    invoke-interface {v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(I)J

    move-result-wide v12

    goto :goto_d6

    .line 415
    :pswitch_bd
    invoke-interface {v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(I)D

    move-result-wide v10

    .line 416
    goto :goto_d6

    .line 412
    :pswitch_c2
    invoke-interface {v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    .line 413
    goto :goto_d6

    .line 409
    :pswitch_c7
    invoke-interface {v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v15

    .line 410
    goto :goto_d6

    .line 406
    :pswitch_cc
    invoke-interface {v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v14

    .line 407
    goto :goto_d6

    .line 403
    :pswitch_d1
    invoke-interface {v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v7

    .line 404
    nop

    .line 400
    :goto_d6
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x3

    const/4 v6, 0x1

    goto :goto_61

    .line 422
    :cond_db
    invoke-static {v1}, Landroid/os/PowerComponents$Builder;->-$$Nest$fgetmData(Landroid/os/PowerComponents$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v2

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v2, v7, v14, v15, v3}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v2

    .line 424
    invoke-virtual {v1, v2, v10, v11}, Landroid/os/PowerComponents$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/PowerComponents$Builder;

    .line 425
    invoke-virtual {v1, v2, v12, v13}, Landroid/os/PowerComponents$Builder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;

    .line 426
    nop

    .line 430
    :cond_ec
    :goto_ec
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    goto/16 :goto_18

    .line 432
    :cond_f3
    return-void

    .line 384
    :cond_f4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Invalid XML parser state"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_fc
    .sparse-switch
        -0x5370e303 -> :sswitch_42
        -0x1a183651 -> :sswitch_38
    .end sparse-switch

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_52
        :pswitch_52
    .end packed-switch

    :sswitch_data_10e
    .sparse-switch
        -0x76bbb26c -> :sswitch_a9
        -0x4fa21902 -> :sswitch_9e
        0xd1b -> :sswitch_94
        0x65e8905 -> :sswitch_89
        0x2eba18d7 -> :sswitch_7e
        0x633976c1 -> :sswitch_73
    .end sparse-switch

    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_cc
        :pswitch_c7
        :pswitch_c2
        :pswitch_bd
        :pswitch_b8
    .end packed-switch
.end method

.method private blacklist writePowerComponentUsage(Landroid/util/proto/ProtoOutputStream;JIJJ)V
    .registers 11

    .line 321
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 322
    const-wide v0, 0x10500000001L

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 326
    const-wide v0, 0x10300000002L

    invoke-virtual {p1, v0, v1, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 330
    const-wide p4, 0x10300000003L

    invoke-virtual {p1, p4, p5, p7, p8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 334
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 335
    return-void
.end method

.method private blacklist writePowerUsageSlice(Landroid/util/proto/ProtoOutputStream;IJJI)V
    .registers 20

    .line 283
    move/from16 v0, p7

    .line 284
    const-wide v1, 0x20b00000003L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 285
    const-wide v5, 0x10b00000001L

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v3 .. v11}, Landroid/os/PowerComponents;->writePowerComponentUsage(Landroid/util/proto/ProtoOutputStream;JIJJ)V

    .line 291
    packed-switch v0, :pswitch_data_4c

    .line 309
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown process state: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 305
    :pswitch_35
    nop

    .line 307
    const/4 p2, 0x4

    goto :goto_40

    .line 301
    :pswitch_38
    nop

    .line 303
    const/4 p2, 0x3

    goto :goto_40

    .line 297
    :pswitch_3b
    nop

    .line 299
    const/4 p2, 0x2

    goto :goto_40

    .line 293
    :pswitch_3e
    nop

    .line 295
    const/4 p2, 0x1

    .line 312
    :goto_40
    const-wide v5, 0x10e00000002L

    invoke-virtual {p1, v5, v6, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 315
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 316
    return-void

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
    .end packed-switch
.end method

.method private blacklist writeStatsProtoImpl(Landroid/util/proto/ProtoOutputStream;)Z
    .registers 20

    .line 245
    move-object/from16 v0, p0

    .line 247
    iget-object v1, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v9, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    array-length v10, v9

    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v10, :cond_74

    aget v2, v9, v12

    .line 248
    iget-object v3, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v3, v2}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v13

    .line 249
    array-length v14, v13

    const/4 v15, 0x0

    :goto_19
    if-ge v15, v14, :cond_6f

    aget-object v3, v13, v15

    .line 250
    iget v4, v3, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget v5, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v6, v3, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v7, v3, Landroid/os/BatteryConsumer$Key;->powerState:I

    .line 251
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/os/PowerComponents;->getConsumedPower(IIII)D

    move-result-wide v4

    .line 250
    invoke-static {v4, v5}, Landroid/os/BatteryConsumer;->convertMahToDeciCoulombs(D)J

    move-result-wide v5

    .line 253
    iget v4, v3, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget v7, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v8, v3, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v11, v3, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-virtual {v0, v4, v7, v8, v11}, Landroid/os/PowerComponents;->getUsageDurationMillis(IIII)J

    move-result-wide v7

    .line 256
    const-wide/16 v16, 0x0

    cmp-long v4, v5, v16

    if-nez v4, :cond_45

    cmp-long v4, v7, v16

    if-nez v4, :cond_45

    .line 258
    move v4, v2

    goto :goto_69

    .line 261
    :cond_45
    nop

    .line 262
    const/4 v11, 0x1

    if-nez p1, :cond_4a

    .line 265
    return v11

    .line 268
    :cond_4a
    iget v1, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v1, :cond_5a

    .line 269
    move v4, v2

    const-wide v2, 0x20b00000002L

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/os/PowerComponents;->writePowerComponentUsage(Landroid/util/proto/ProtoOutputStream;JIJJ)V

    goto :goto_68

    .line 273
    :cond_5a
    move v4, v2

    iget v0, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    move-object/from16 v1, p1

    move-wide v3, v5

    move-wide v5, v7

    move v7, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/os/PowerComponents;->writePowerUsageSlice(Landroid/util/proto/ProtoOutputStream;IJJI)V

    move v4, v2

    .line 249
    :goto_68
    move v1, v11

    :goto_69
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move v2, v4

    goto :goto_19

    .line 247
    :cond_6f
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_b

    .line 278
    :cond_74
    return v1
.end method


# virtual methods
.method blacklist dump(Ljava/io/PrintWriter;IIZ)V
    .registers 16

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v7, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    array-length v8, v7

    const/4 v9, 0x0

    move v10, v9

    :goto_e
    if-ge v10, v8, :cond_3e

    aget v2, v7, v10

    .line 178
    const/16 v0, 0x12

    if-ne v2, v0, :cond_1a

    .line 179
    move v4, p2

    move v5, p3

    move v6, p4

    goto :goto_38

    .line 182
    :cond_1a
    const/4 v3, -0x1

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/PowerComponents;->dump(Ljava/lang/StringBuilder;IIIIZ)V

    .line 183
    iget-object p2, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object p2, p2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean p2, p2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    if-eqz p2, :cond_38

    .line 184
    move v3, v9

    :goto_2b
    const/4 p2, 0x5

    if-ge v3, p2, :cond_38

    .line 186
    if-nez v3, :cond_31

    .line 187
    goto :goto_34

    .line 189
    :cond_31
    invoke-direct/range {v0 .. v6}, Landroid/os/PowerComponents;->dump(Ljava/lang/StringBuilder;IIIIZ)V

    .line 185
    :goto_34
    add-int/lit8 v3, v3, 0x1

    move-object v0, p0

    goto :goto_2b

    .line 177
    :cond_38
    :goto_38
    add-int/lit8 v10, v10, 0x1

    move p2, v4

    move p3, v5

    move p4, v6

    goto :goto_e

    .line 195
    :cond_3e
    :goto_3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5e

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p2

    if-eqz p2, :cond_5e

    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3e

    .line 199
    :cond_5e
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method public blacklist getConsumedPower(IIII)D
    .registers 13

    .line 74
    const/4 v0, -0x1

    if-ne p1, v0, :cond_16

    if-ne p2, v0, :cond_16

    if-nez p3, :cond_16

    if-nez p4, :cond_16

    .line 76
    iget-object p1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object p2, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object p2, p2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget p2, p2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->totalConsumedPowerColumnIndex:I

    invoke-virtual {p1, p2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide p1

    return-wide p1

    .line 79
    :cond_16
    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    const-wide/16 v2, 0x0

    if-nez v1, :cond_25

    if-eqz p2, :cond_25

    if-eq p2, v0, :cond_25

    .line 81
    return-wide v2

    .line 84
    :cond_25
    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 85
    iget-object v4, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_36

    if-eq p2, v0, :cond_36

    .line 86
    move v0, p2

    goto :goto_37

    :cond_36
    move v0, v5

    .line 87
    :goto_37
    iget-object v4, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->screenStateDataIncluded:Z

    if-eqz v4, :cond_43

    if-eqz p3, :cond_43

    .line 88
    move v4, p3

    goto :goto_44

    :cond_43
    move v4, v5

    .line 89
    :goto_44
    iget-object v6, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v6, v6, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v6, v6, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerStateDataIncluded:Z

    if-eqz v6, :cond_50

    if-eqz p4, :cond_50

    .line 90
    move v6, p4

    goto :goto_51

    :cond_50
    move v6, v5

    .line 84
    :goto_51
    invoke-virtual {v1, p1, v0, v4, v6}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_6a

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v4, v0, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v1, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 92
    iget-object p1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget p2, v0, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {p1, p2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide p1

    return-wide p1

    .line 95
    :cond_6a
    nop

    .line 96
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v1, v0

    :goto_72
    if-ge v5, v1, :cond_88

    aget-object v4, v0, v5

    .line 97
    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$Key;->matches(IIII)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 98
    iget-object v6, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v4, v4, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v6, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 96
    :cond_85
    add-int/lit8 v5, v5, 0x1

    goto :goto_72

    .line 101
    :cond_88
    return-wide v2
.end method

.method public blacklist getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D
    .registers 5

    .line 63
    iget v0, p1, Landroid/os/BatteryConsumer$Dimensions;->powerComponentId:I

    iget v1, p1, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    iget v2, p1, Landroid/os/BatteryConsumer$Dimensions;->screenState:I

    iget p1, p1, Landroid/os/BatteryConsumer$Dimensions;->powerState:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/PowerComponents;->getConsumedPower(IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getConsumedPower(Landroid/os/BatteryConsumer$Key;)D
    .registers 5

    .line 147
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 148
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget p1, p1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v0, p1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v0

    return-wide v0

    .line 150
    :cond_13
    iget v0, p1, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v2, p1, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget p1, p1, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/PowerComponents;->getConsumedPower(IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCustomPowerComponentName(I)Ljava/lang/String;
    .registers 3

    .line 155
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v0, p1}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getPowerComponentName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getUsageDurationMillis(IIII)J
    .registers 12

    .line 119
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 120
    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    const/4 v1, -0x1

    if-eq p2, v1, :cond_12

    .line 121
    move v1, p2

    goto :goto_13

    :cond_12
    move v1, v2

    .line 122
    :goto_13
    iget-object v3, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->screenStateDataIncluded:Z

    if-eqz v3, :cond_1f

    if-eqz p3, :cond_1f

    .line 123
    move v3, p3

    goto :goto_20

    :cond_1f
    move v3, v2

    .line 124
    :goto_20
    iget-object v4, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerStateDataIncluded:Z

    if-eqz v4, :cond_2c

    if-eqz p4, :cond_2c

    .line 125
    move v4, p4

    goto :goto_2d

    :cond_2c
    move v4, v2

    .line 119
    :goto_2d
    invoke-virtual {v0, p1, v1, v3, v4}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_46

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v3, v0, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v1, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 127
    iget-object p1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget p2, v0, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {p1, p2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide p1

    return-wide p1

    .line 130
    :cond_46
    nop

    .line 131
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v1, v0

    const-wide/16 v3, 0x0

    :goto_50
    if-ge v2, v1, :cond_66

    aget-object v5, v0, v2

    .line 132
    invoke-virtual {v5, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$Key;->matches(IIII)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 133
    iget-object v6, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v5, v5, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v6, v5}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 131
    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 136
    :cond_66
    return-wide v3
.end method

.method public blacklist getUsageDurationMillis(Landroid/os/BatteryConsumer$Dimensions;)J
    .registers 5

    .line 108
    iget v0, p1, Landroid/os/BatteryConsumer$Dimensions;->powerComponentId:I

    iget v1, p1, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    iget v2, p1, Landroid/os/BatteryConsumer$Dimensions;->screenState:I

    iget p1, p1, Landroid/os/BatteryConsumer$Dimensions;->powerState:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/PowerComponents;->getUsageDurationMillis(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J
    .registers 5

    .line 166
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 167
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget p1, p1, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v0, p1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 170
    :cond_13
    iget v0, p1, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v2, p1, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget p1, p1, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/PowerComponents;->getUsageDurationMillis(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist hasStatsProtoData()Z
    .registers 2

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/PowerComponents;->writeStatsProtoImpl(Landroid/util/proto/ProtoOutputStream;)Z

    move-result v0

    return v0
.end method

.method blacklist writeStatsProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    .line 237
    invoke-direct {p0, p1}, Landroid/os/PowerComponents;->writeStatsProtoImpl(Landroid/util/proto/ProtoOutputStream;)Z

    .line 238
    return-void
.end method

.method blacklist writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const-string/jumbo v3, "power_components"

    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    iget-object v4, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v5, :cond_8a

    aget-object v7, v4, v6

    .line 340
    iget-object v8, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v9, v7, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v8, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v8

    if-nez v8, :cond_2c

    iget-object v8, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v9, v7, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    .line 341
    invoke-virtual {v8, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v8

    if-nez v8, :cond_2c

    .line 342
    goto :goto_87

    .line 345
    :cond_2c
    invoke-virtual {v0, v7}, Landroid/os/PowerComponents;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v8

    .line 346
    invoke-virtual {v0, v7}, Landroid/os/PowerComponents;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J

    move-result-wide v10

    .line 347
    const-wide/16 v12, 0x0

    cmpl-double v12, v8, v12

    const-wide/16 v13, 0x0

    if-nez v12, :cond_41

    cmp-long v15, v10, v13

    if-nez v15, :cond_41

    .line 348
    goto :goto_87

    .line 351
    :cond_41
    const-string v15, "component"

    invoke-interface {v1, v2, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 352
    move-wide/from16 v16, v13

    const-string v13, "id"

    iget v14, v7, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    invoke-interface {v1, v2, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    iget v13, v7, Landroid/os/BatteryConsumer$Key;->processState:I

    if-eqz v13, :cond_5b

    .line 354
    const-string/jumbo v13, "process_state"

    iget v14, v7, Landroid/os/BatteryConsumer$Key;->processState:I

    invoke-interface {v1, v2, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    :cond_5b
    iget v13, v7, Landroid/os/BatteryConsumer$Key;->screenState:I

    if-eqz v13, :cond_67

    .line 358
    const-string/jumbo v13, "screen_state"

    iget v14, v7, Landroid/os/BatteryConsumer$Key;->screenState:I

    invoke-interface {v1, v2, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    :cond_67
    iget v13, v7, Landroid/os/BatteryConsumer$Key;->powerState:I

    if-eqz v13, :cond_73

    .line 362
    const-string/jumbo v13, "power_state"

    iget v7, v7, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-interface {v1, v2, v13, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    :cond_73
    if-eqz v12, :cond_7b

    .line 366
    const-string/jumbo v7, "power"

    invoke-interface {v1, v2, v7, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    :cond_7b
    cmp-long v7, v10, v16

    if-eqz v7, :cond_84

    .line 369
    const-string v7, "duration"

    invoke-interface {v1, v2, v7, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 371
    :cond_84
    invoke-interface {v1, v2, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    :goto_87
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 373
    :cond_8a
    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 374
    return-void
.end method
