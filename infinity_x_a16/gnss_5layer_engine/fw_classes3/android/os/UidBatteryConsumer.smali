.class public final Landroid/os/UidBatteryConsumer;
.super Landroid/os/BatteryConsumer;
.source "UidBatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UidBatteryConsumer$Builder;,
        Landroid/os/UidBatteryConsumer$State;
    }
.end annotation


# static fields
.field static final blacklist COLUMN_COUNT:I = 0x3

.field static final blacklist COLUMN_INDEX_PACKAGE_WITH_HIGHEST_DRAIN:I = 0x2

.field static final blacklist COLUMN_INDEX_UID:I = 0x1

.field static final blacklist CONSUMER_TYPE_UID:I = 0x1

.field public static final blacklist STATE_BACKGROUND:I = 0x1

.field public static final blacklist STATE_FOREGROUND:I


# direct methods
.method constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Landroid/os/BatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    .line 77
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/UidBatteryConsumer$Builder;)V
    .registers 3

    .line 80
    iget-object v0, p1, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object p1, p1, Landroid/os/UidBatteryConsumer$Builder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {p1}, Landroid/os/PowerComponents$Builder;->build()Landroid/os/PowerComponents;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/os/BatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/PowerComponents;)V

    .line 81
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/UidBatteryConsumer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/UidBatteryConsumer;-><init>(Landroid/os/UidBatteryConsumer$Builder;)V

    return-void
.end method

.method private blacklist appendProcessStateData(Ljava/lang/StringBuilder;IZ)V
    .registers 13

    .line 182
    new-instance v0, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p2}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    .line 183
    iget-object v1, p0, Landroid/os/UidBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    invoke-virtual {v1, v0}, Landroid/os/PowerComponents;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v0

    .line 185
    const/16 v2, 0x12

    invoke-virtual {p0, v2, p2}, Landroid/os/UidBatteryConsumer;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v2

    .line 186
    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1d

    iget-object v5, p0, Landroid/os/UidBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    invoke-virtual {v5, v2}, Landroid/os/PowerComponents;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J

    move-result-wide v5

    goto :goto_1e

    :cond_1d
    move-wide v5, v3

    .line 187
    :goto_1e
    const-wide/16 v7, 0x0

    cmpl-double v2, v0, v7

    if-nez v2, :cond_2b

    cmp-long v2, v5, v3

    if-nez v2, :cond_2b

    if-eqz p3, :cond_2b

    .line 188
    return-void

    .line 191
    :cond_2b
    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Landroid/os/UidBatteryConsumer;->processStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 192
    invoke-static {v0, v1}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    cmp-long p2, v5, v3

    if-eqz p2, :cond_57

    .line 194
    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {p1, v5, v6}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 196
    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_57
    return-void
.end method

.method static blacklist createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/BatteryUsageStats$Builder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    const/4 v0, 0x0

    const-string/jumbo v1, "uid"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 221
    nop

    .line 222
    invoke-virtual {p1, v2}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUidBatteryConsumerBuilder(I)Landroid/os/UidBatteryConsumer$Builder;

    move-result-object p1

    .line 224
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v2

    .line 225
    const/4 v3, 0x2

    if-ne v2, v3, :cond_52

    .line 226
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 230
    nop

    .line 231
    const-string v4, "highest_drain_package"

    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {p1, v0}, Landroid/os/UidBatteryConsumer$Builder;->setPackageWithHighestDrain(Ljava/lang/String;)Landroid/os/UidBatteryConsumer$Builder;

    .line 232
    :goto_28
    const/4 v0, 0x3

    if-ne v2, v0, :cond_35

    .line 233
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    :cond_35
    const/4 v0, 0x1

    if-eq v2, v0, :cond_51

    .line 235
    if-ne v2, v3, :cond_4c

    .line 236
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "power_components"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 237
    iget-object v0, p1, Landroid/os/UidBatteryConsumer$Builder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-static {p0, v0}, Landroid/os/PowerComponents;->parseXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/PowerComponents$Builder;)V

    .line 240
    :cond_4c
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    goto :goto_28

    .line 242
    :cond_51
    return-void

    .line 227
    :cond_52
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Invalid XML parser state"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Z)V
    .registers 11

    .line 123
    const-string v0, "UID "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 125
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Landroid/os/UidBatteryConsumer;->appendProcessStateData(Ljava/lang/StringBuilder;IZ)V

    .line 131
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p2}, Landroid/os/UidBatteryConsumer;->appendProcessStateData(Ljava/lang/StringBuilder;IZ)V

    .line 133
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p2}, Landroid/os/UidBatteryConsumer;->appendProcessStateData(Ljava/lang/StringBuilder;IZ)V

    .line 135
    const/4 v2, 0x4

    invoke-direct {p0, v0, v2, p2}, Landroid/os/UidBatteryConsumer;->appendProcessStateData(Ljava/lang/StringBuilder;IZ)V

    .line 137
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 139
    const-string v0, "      "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Landroid/os/UidBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, p2}, Landroid/os/PowerComponents;->dump(Ljava/io/PrintWriter;IIZ)V

    .line 142
    iget-object v0, p0, Landroid/os/UidBatteryConsumer;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerStateDataIncluded:Z

    if-nez v0, :cond_4f

    iget-object v0, p0, Landroid/os/UidBatteryConsumer;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->screenStateDataIncluded:Z

    if-eqz v0, :cond_ad

    .line 143
    :cond_4f
    move v0, v2

    :goto_50
    if-ge v0, v1, :cond_ad

    .line 144
    iget-object v3, p0, Landroid/os/UidBatteryConsumer;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerStateDataIncluded:Z

    if-eqz v3, :cond_5d

    if-nez v0, :cond_5d

    .line 145
    goto :goto_aa

    .line 148
    :cond_5d
    move v3, v2

    :goto_5e
    if-ge v3, v1, :cond_aa

    .line 149
    iget-object v4, p0, Landroid/os/UidBatteryConsumer;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->screenStateDataIncluded:Z

    if-eqz v4, :cond_6b

    if-nez v3, :cond_6b

    .line 151
    goto :goto_a7

    .line 154
    :cond_6b
    iget-object v4, p0, Landroid/os/UidBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v5, v3, v0}, Landroid/os/PowerComponents;->getConsumedPower(IIII)D

    move-result-wide v4

    .line 157
    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_79

    .line 158
    goto :goto_a7

    .line 161
    :cond_79
    const-string v4, "      ("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    if-eqz v0, :cond_87

    .line 163
    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    :cond_87
    if-eqz v3, :cond_9d

    .line 166
    if-eqz v0, :cond_90

    .line 167
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    :cond_90
    const-string/jumbo v4, "screen "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    invoke-static {v3}, Landroid/os/BatteryConsumer;->screenStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    :cond_9d
    const-string v4, ") "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    iget-object v4, p0, Landroid/os/UidBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    invoke-virtual {v4, p1, v3, v0, p2}, Landroid/os/PowerComponents;->dump(Ljava/io/PrintWriter;IIZ)V

    .line 148
    :goto_a7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 143
    :cond_aa
    :goto_aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 178
    :cond_ad
    return-void
.end method

.method public blacklist getPackageWithHighestDrain()Ljava/lang/String;
    .registers 3

    .line 89
    iget-object v0, p0, Landroid/os/UidBatteryConsumer;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTimeInProcessStateMs(I)J
    .registers 4

    .line 112
    if-eqz p1, :cond_f

    .line 113
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Landroid/os/UidBatteryConsumer;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object p1

    .line 114
    if-eqz p1, :cond_f

    .line 115
    invoke-virtual {p0, p1}, Landroid/os/UidBatteryConsumer;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J

    move-result-wide v0

    return-wide v0

    .line 118
    :cond_f
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getTimeInStateMs(I)J
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    packed-switch p1, :pswitch_data_18

    .line 105
    const-wide/16 v0, 0x0

    return-wide v0

    .line 100
    :pswitch_6
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/UidBatteryConsumer;->getTimeInProcessStateMs(I)J

    move-result-wide v0

    .line 101
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/UidBatteryConsumer;->getTimeInProcessStateMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 100
    return-wide v0

    .line 103
    :pswitch_12
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/UidBatteryConsumer;->getTimeInProcessStateMs(I)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_12
        :pswitch_6
    .end packed-switch
.end method

.method public blacklist getUid()I
    .registers 3

    .line 84
    iget-object v0, p0, Landroid/os/UidBatteryConsumer;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v0

    return v0
.end method

.method blacklist writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_b

    .line 203
    return-void

    .line 206
    :cond_b
    const/4 v0, 0x0

    const-string/jumbo v1, "uid"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    invoke-virtual {p0}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    invoke-virtual {p0}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 210
    const-string v3, "highest_drain_package"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    :cond_28
    iget-object v2, p0, Landroid/os/UidBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    invoke-virtual {v2, p1}, Landroid/os/PowerComponents;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 214
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    return-void
.end method
