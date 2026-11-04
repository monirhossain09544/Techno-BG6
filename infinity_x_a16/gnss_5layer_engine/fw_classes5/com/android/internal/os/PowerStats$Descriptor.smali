.class public Lcom/android/internal/os/PowerStats$Descriptor;
.super Ljava/lang/Object;
.source "PowerStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/PowerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Descriptor"
.end annotation


# static fields
.field public static final blacklist EXTRA_DEVICE_STATS_FORMAT:Ljava/lang/String; = "format-device"

.field public static final blacklist EXTRA_STATE_STATS_FORMAT:Ljava/lang/String; = "format-state"

.field public static final blacklist EXTRA_UID_STATS_FORMAT:Ljava/lang/String; = "format-uid"

.field private static final blacklist XML_ATTR_ID:Ljava/lang/String; = "id"

.field private static final blacklist XML_ATTR_NAME:Ljava/lang/String; = "name"

.field private static final blacklist XML_ATTR_STATE_KEY:Ljava/lang/String; = "key"

.field private static final blacklist XML_ATTR_STATE_LABEL:Ljava/lang/String; = "label"

.field private static final blacklist XML_ATTR_STATE_STATS_ARRAY_LENGTH:Ljava/lang/String; = "state-stats-array-length"

.field private static final blacklist XML_ATTR_STATS_ARRAY_LENGTH:Ljava/lang/String; = "stats-array-length"

.field private static final blacklist XML_ATTR_UID_STATS_ARRAY_LENGTH:Ljava/lang/String; = "uid-stats-array-length"

.field public static final blacklist XML_TAG_DESCRIPTOR:Ljava/lang/String; = "descriptor"

.field private static final blacklist XML_TAG_EXTRAS:Ljava/lang/String; = "extras"

.field private static final blacklist XML_TAG_STATE:Ljava/lang/String; = "state"


# instance fields
.field public final blacklist extras:Landroid/os/PersistableBundle;

.field private blacklist mDeviceStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

.field private blacklist mStateStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

.field private blacklist mUidStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

.field public final blacklist name:Ljava/lang/String;

.field public final blacklist powerComponentId:I

.field public final blacklist stateLabels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist stateStatsArrayLength:I

.field public final blacklist statsArrayLength:I

.field public final blacklist uidStatsArrayLength:I


# direct methods
.method public constructor blacklist <init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;II",
            "Landroid/os/PersistableBundle;",
            ")V"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(ILjava/lang/String;ILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 145
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;ILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;II",
            "Landroid/os/PersistableBundle;",
            ")V"
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    sget v0, Lcom/android/internal/os/PowerStats;->MAX_STATS_ARRAY_LENGTH:I

    if-gt p3, v0, :cond_5c

    .line 155
    sget v0, Lcom/android/internal/os/PowerStats;->MAX_STATE_STATS_ARRAY_LENGTH:I

    if-gt p5, v0, :cond_41

    .line 159
    sget v0, Lcom/android/internal/os/PowerStats;->MAX_UID_STATS_ARRAY_LENGTH:I

    if-gt p6, v0, :cond_26

    .line 163
    iput p1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    .line 164
    iput-object p2, p0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    .line 165
    iput p3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    .line 166
    if-eqz p4, :cond_18

    goto :goto_1d

    :cond_18
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    :goto_1d
    iput-object p4, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    .line 167
    iput p5, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    .line 168
    iput p6, p0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    .line 169
    iput-object p7, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 170
    return-void

    .line 160
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "uidStatsArrayLength is too high. Max = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget p3, Lcom/android/internal/os/PowerStats;->MAX_UID_STATS_ARRAY_LENGTH:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "stateStatsArrayLength is too high. Max = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget p3, Lcom/android/internal/os/PowerStats;->MAX_STATE_STATS_ARRAY_LENGTH:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_5c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "statsArrayLength is too high. Max = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget p3, Lcom/android/internal/os/PowerStats;->MAX_STATS_ARRAY_LENGTH:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/os/PowerStats$Descriptor;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    nop

    .line 343
    nop

    .line 344
    nop

    .line 345
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 346
    nop

    .line 347
    nop

    .line 348
    nop

    .line 349
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v8, v1

    move-object v7, v2

    move-object v9, v7

    move v5, v4

    move v6, v5

    move v10, v6

    move-object v4, v3

    move v3, v10

    .line 350
    :goto_1a
    const/4 v11, 0x1

    if-eq v0, v11, :cond_94

    const/4 v12, 0x3

    const-string v13, "descriptor"

    if-ne v0, v12, :cond_2c

    .line 352
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_94

    .line 353
    :cond_2c
    const/4 v12, 0x2

    if-ne v0, v12, :cond_8f

    .line 354
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_ca

    :cond_3a
    goto :goto_56

    :sswitch_3b
    const-string v12, "state"

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_57

    :sswitch_44
    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    move v11, v10

    goto :goto_57

    :sswitch_4c
    const-string v11, "extras"

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    move v11, v12

    goto :goto_57

    :goto_56
    move v11, v8

    :goto_57
    packed-switch v11, :pswitch_data_d8

    goto :goto_8f

    .line 371
    :pswitch_5b
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v7

    goto :goto_8f

    .line 366
    :pswitch_60
    const-string v0, "key"

    invoke-interface {p0, v9, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 367
    const-string v11, "label"

    invoke-interface {p0, v9, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 368
    invoke-virtual {v4, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    goto :goto_8f

    .line 356
    :pswitch_70
    const-string v0, "id"

    invoke-interface {p0, v9, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 357
    const-string v0, "name"

    invoke-interface {p0, v9, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    const-string v0, "stats-array-length"

    invoke-interface {p0, v9, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 360
    const-string v0, "state-stats-array-length"

    invoke-interface {p0, v9, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 362
    const-string v0, "uid-stats-array-length"

    invoke-interface {p0, v9, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 364
    nop

    .line 375
    :cond_8f
    :goto_8f
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    goto :goto_1a

    .line 377
    :cond_94
    if-ne v1, v8, :cond_97

    .line 378
    return-object v9

    .line 379
    :cond_97
    const/16 p0, 0x3e8

    if-lt v1, p0, :cond_a1

    .line 380
    new-instance v0, Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(ILjava/lang/String;ILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    return-object v0

    .line 382
    :cond_a1
    move v2, v3

    const/16 p0, 0x13

    if-ge v1, p0, :cond_b0

    .line 383
    new-instance v0, Lcom/android/internal/os/PowerStats$Descriptor;

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    return-object v0

    .line 386
    :cond_b0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized power component: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PowerStats"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-object v9

    nop

    :sswitch_data_ca
    .sparse-switch
        -0x4cd5119d -> :sswitch_4c
        -0x2c9b2c91 -> :sswitch_44
        0x68ac491 -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_70
        :pswitch_60
        :pswitch_5b
    .end packed-switch
.end method

.method public static blacklist readSummaryFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/PowerStats$Descriptor;
    .registers 12

    .line 246
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    and-int/lit8 v1, v0, 0x3f

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetPARCEL_FORMAT_VERSION_SHIFT()I

    move-result v2

    ushr-int/2addr v1, v2

    .line 248
    const/4 v2, 0x3

    if-eq v1, v2, :cond_32

    .line 249
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot read PowerStats from Parcel - the parcel format version has changed from "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PowerStats"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 p0, 0x0

    return-object p0

    .line 253
    :cond_32
    const v1, 0xffc0

    and-int/2addr v1, v0

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetSTATS_ARRAY_LENGTH_SHIFT()I

    move-result v2

    ushr-int v6, v1, v2

    .line 255
    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetSTATE_STATS_ARRAY_LENGTH_SHIFT()I

    move-result v2

    ushr-int v8, v1, v2

    .line 257
    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetUID_STATS_ARRAY_LENGTH_SHIFT()I

    move-result v1

    ushr-int v9, v0, v1

    .line 259
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 260
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 262
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 263
    nop

    :goto_60
    if-lez v0, :cond_70

    .line 264
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 265
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-virtual {v7, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    add-int/lit8 v0, v0, -0x1

    goto :goto_60

    .line 268
    :cond_70
    invoke-virtual {p0}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v10

    .line 269
    new-instance v3, Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(ILjava/lang/String;ILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    return-object v3
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 276
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 277
    :cond_4
    instance-of v1, p1, Lcom/android/internal/os/PowerStats$Descriptor;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 278
    :cond_a
    check-cast p1, Lcom/android/internal/os/PowerStats$Descriptor;

    .line 279
    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    iget v3, p1, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    if-ne v1, v3, :cond_7e

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    iget v3, p1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    if-ne v1, v3, :cond_7e

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    .line 281
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v1

    if-eqz v1, :cond_7e

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    iget v3, p1, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    if-ne v1, v3, :cond_7e

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    iget v3, p1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    if-ne v1, v3, :cond_7e

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    .line 284
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_7e

    .line 289
    :cond_39
    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->size()I

    move-result v1

    iget-object v3, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v3}, Landroid/os/PersistableBundle;->size()I

    move-result v3

    if-eq v1, v3, :cond_48

    .line 290
    return v2

    .line 293
    :cond_48
    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    iget-object v3, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-static {v1, v3}, Landroid/os/Bundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 294
    return v0

    .line 302
    :cond_53
    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 303
    iget-object v4, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v4, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v5, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    .line 304
    return v2

    .line 306
    :cond_7c
    goto :goto_5d

    .line 307
    :cond_7d
    return v0

    .line 285
    :cond_7e
    :goto_7e
    return v2
.end method

.method public blacklist getDeviceStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;
    .registers 4

    .line 176
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mDeviceStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    if-nez v0, :cond_13

    .line 177
    new-instance v0, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 178
    const-string v2, "format-device"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mDeviceStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    .line 180
    :cond_13
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mDeviceStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    return-object v0
.end method

.method public blacklist getStateLabel(I)Ljava/lang/String;
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    if-eqz v0, :cond_b

    .line 212
    return-object v0

    .line 214
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getStateStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mStateStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    if-nez v0, :cond_13

    .line 188
    new-instance v0, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 189
    const-string v2, "format-state"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mStateStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    .line 191
    :cond_13
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mStateStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    return-object v0
.end method

.method public blacklist getUidStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mUidStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    if-nez v0, :cond_13

    .line 199
    new-instance v0, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 200
    const-string v2, "format-uid"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mUidStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    .line 202
    :cond_13
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mUidStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 393
    iget v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_9

    .line 399
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->size()I

    .line 401
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerStats.Descriptor{powerComponentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statsArrayLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stateStatsArrayLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stateLabels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uidStatsArrayLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeSummaryToParcel(Landroid/os/Parcel;)V
    .registers 6

    .line 221
    const/4 v0, 0x3

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetPARCEL_FORMAT_VERSION_SHIFT()I

    move-result v1

    shl-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3f

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetSTATS_ARRAY_LENGTH_SHIFT()I

    move-result v2

    shl-int/2addr v1, v2

    const v2, 0xffc0

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetSTATE_STATS_ARRAY_LENGTH_SHIFT()I

    move-result v2

    shl-int/2addr v1, v2

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetUID_STATS_ARRAY_LENGTH_SHIFT()I

    move-result v2

    shl-int/2addr v1, v2

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 229
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_48
    if-ge v2, v0, :cond_61

    .line 234
    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 237
    :cond_61
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, v1}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 238
    return-void
.end method

.method public blacklist writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    const-string v0, "extras"

    const/4 v1, 0x0

    const-string v2, "descriptor"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    const-string v3, "id"

    iget v4, p0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    const-string v3, "name"

    iget-object v4, p0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 317
    const-string v3, "stats-array-length"

    iget v4, p0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    const-string v3, "state-stats-array-length"

    iget v4, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 319
    const-string v3, "uid-stats-array-length"

    iget v4, p0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 320
    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_33
    if-ltz v3, :cond_58

    .line 321
    const-string v4, "state"

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    iget-object v5, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    const-string v6, "key"

    invoke-interface {p1, v1, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    iget-object v5, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "label"

    invoke-interface {p1, v1, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 320
    add-int/lit8 v3, v3, -0x1

    goto :goto_33

    .line 327
    :cond_58
    :try_start_58
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 329
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_63} :catch_68

    .line 332
    nop

    .line 333
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    return-void

    .line 330
    :catch_68
    move-exception p1

    .line 331
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
