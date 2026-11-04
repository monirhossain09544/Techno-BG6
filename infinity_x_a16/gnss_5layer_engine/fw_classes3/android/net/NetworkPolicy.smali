.class public Landroid/net/NetworkPolicy;
.super Ljava/lang/Object;
.source "NetworkPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/net/NetworkPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o CYCLE_NONE:I = -0x1

.field private static final greylist-max-o DEFAULT_MTU:J = 0x5dcL

.field public static final greylist-max-o LIMIT_DISABLED:J = -0x1L

.field public static final greylist-max-o SNOOZE_NEVER:J = -0x1L

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist TEMPLATE_BACKUP_VERSION_1_INIT:I = 0x1

.field private static final blacklist TEMPLATE_BACKUP_VERSION_2_UNSUPPORTED:I = 0x2

.field private static final blacklist TEMPLATE_BACKUP_VERSION_3_SUPPORT_CARRIER_TEMPLATE:I = 0x3

.field private static final blacklist TEMPLATE_BACKUP_VERSION_LATEST:I = 0x3

.field private static final greylist-max-o VERSION_INIT:I = 0x1

.field private static final greylist-max-o VERSION_RAPID:I = 0x3

.field private static final greylist-max-o VERSION_RULE:I = 0x2

.field public static final greylist-max-o WARNING_DISABLED:J = -0x1L


# instance fields
.field public greylist-max-o cycleRule:Landroid/util/RecurrenceRule;

.field public greylist inferred:Z

.field public greylist-max-o lastLimitSnooze:J

.field public greylist-max-o lastRapidSnooze:J

.field public greylist-max-o lastWarningSnooze:J

.field public greylist limitBytes:J

.field public greylist metered:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public greylist template:Landroid/net/NetworkTemplate;

.field public greylist warningBytes:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    const-class v0, Landroid/net/NetworkPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/NetworkPolicy;->TAG:Ljava/lang/String;

    .line 284
    new-instance v0, Landroid/net/NetworkPolicy$1;

    invoke-direct {v0}, Landroid/net/NetworkPolicy$1;-><init>()V

    sput-object v0, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V
    .registers 28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    invoke-static/range {p3 .. p3}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    move/from16 v1, p2

    invoke-static {v1, v0}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v1 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    .line 136
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJZ)V
    .registers 23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    const-wide/16 v10, -0x1

    const/4 v13, 0x0

    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v12, p8

    invoke-direct/range {v0 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 127
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJJZZ)V
    .registers 17

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 86
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 88
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 89
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 90
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/NetworkPolicy;->metered:Z

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 149
    const-string v0, "missing NetworkTemplate"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkTemplate;

    iput-object p1, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 150
    const-string p1, "missing RecurrenceRule"

    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/RecurrenceRule;

    iput-object p1, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 151
    iput-wide p3, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 152
    iput-wide p5, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 153
    iput-wide p7, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 154
    iput-wide p9, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 155
    iput-wide p11, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 156
    iput-boolean p13, p0, Landroid/net/NetworkPolicy;->metered:Z

    .line 157
    move/from16 p1, p14

    iput-boolean p1, p0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 158
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V
    .registers 28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    const-wide/16 v11, -0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJJZZ)V

    .line 144
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 86
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 88
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 89
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 90
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/NetworkPolicy;->metered:Z

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 161
    const-class v2, Landroid/net/NetworkTemplate;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    iput-object v2, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 162
    const-class v2, Landroid/util/RecurrenceRule;

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/RecurrenceRule;

    iput-object v2, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_50

    move v2, v0

    goto :goto_51

    :cond_50
    move v2, v1

    :goto_51
    iput-boolean v2, p0, Landroid/net/NetworkPolicy;->metered:Z

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5a

    goto :goto_5b

    :cond_5a
    move v0, v1

    :goto_5b
    iput-boolean v0, p0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 170
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/NetworkPolicy-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/NetworkPolicy;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist buildDailyRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;
    .registers 3

    .line 115
    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    .line 116
    invoke-static {p0, p1}, Landroid/util/RecurrenceRule;->buildRecurringDaily(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object p0

    return-object p0

    .line 118
    :cond_8
    invoke-static {}, Landroid/util/RecurrenceRule;->buildNever()Landroid/util/RecurrenceRule;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;
    .registers 3

    .line 99
    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    .line 100
    invoke-static {p0, p1}, Landroid/util/RecurrenceRule;->buildRecurringMonthly(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object p0

    return-object p0

    .line 102
    :cond_8
    invoke-static {}, Landroid/util/RecurrenceRule;->buildNever()Landroid/util/RecurrenceRule;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist buildWeeklyRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;
    .registers 3

    .line 107
    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    .line 108
    invoke-static {p0, p1}, Landroid/util/RecurrenceRule;->buildRecurringWeekly(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object p0

    return-object p0

    .line 110
    :cond_8
    invoke-static {}, Landroid/util/RecurrenceRule;->buildNever()Landroid/util/RecurrenceRule;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getNetworkPolicyFromBackup(Ljava/io/DataInputStream;)Landroid/net/NetworkPolicy;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/BackupUtils$BadVersionException;
        }
    .end annotation

    .line 315
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 316
    const/4 v1, 0x1

    if-lt v0, v1, :cond_62

    const/4 v2, 0x3

    if-gt v0, v2, :cond_62

    .line 320
    invoke-static/range {p0 .. p0}, Landroid/net/NetworkPolicy;->getNetworkTemplateFromBackup(Ljava/io/DataInputStream;)Landroid/net/NetworkTemplate;

    move-result-object v4

    .line 322
    const/4 v3, 0x2

    if-lt v0, v3, :cond_19

    .line 323
    new-instance v3, Landroid/util/RecurrenceRule;

    move-object/from16 v5, p0

    invoke-direct {v3, v5}, Landroid/util/RecurrenceRule;-><init>(Ljava/io/DataInputStream;)V

    goto :goto_2b

    .line 325
    :cond_19
    move-object/from16 v5, p0

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 326
    invoke-static {v5}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    .line 327
    invoke-static {v6}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v3

    .line 329
    :goto_2b
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 330
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 331
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    .line 332
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    .line 334
    if-lt v0, v2, :cond_42

    .line 335
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    goto :goto_44

    .line 337
    :cond_42
    const-wide/16 v14, -0x1

    .line 339
    :goto_44
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4e

    move/from16 v16, v1

    goto :goto_50

    :cond_4e
    move/from16 v16, v2

    .line 340
    :goto_50
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_59

    move/from16 v17, v1

    goto :goto_5b

    :cond_59
    move/from16 v17, v2

    .line 341
    :goto_5b
    move-object v5, v3

    new-instance v3, Landroid/net/NetworkPolicy;

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJJZZ)V

    return-object v3

    .line 317
    :cond_62
    new-instance v1, Landroid/util/BackupUtils$BadVersionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown backup version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/util/BackupUtils$BadVersionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getNetworkTemplateBytesForBackup()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v0}, Landroid/net/NetworkPolicy;->isTemplatePersistable(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 348
    sget-object v0, Landroid/net/NetworkPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to backup non-persistable template: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_20
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 352
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 354
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 356
    iget-object v2, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 357
    iget-object v2, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v2

    .line 358
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_46

    .line 359
    move-object v2, v4

    goto :goto_50

    :cond_46
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 358
    :goto_50
    invoke-static {v1, v2}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 361
    goto :goto_71

    :cond_60
    iget-object v2, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 360
    :goto_71
    invoke-static {v1, v4}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 362
    iget-object v2, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMeteredness()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 364
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getNetworkTemplateFromBackup(Ljava/io/DataInputStream;)Landroid/net/NetworkTemplate;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/BackupUtils$BadVersionException;
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 371
    const/4 v1, 0x1

    if-lt v0, v1, :cond_65

    const/4 v2, 0x3

    if-gt v0, v2, :cond_65

    const/4 v3, 0x2

    if-eq v0, v3, :cond_65

    .line 376
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 377
    invoke-static {p0}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 378
    invoke-static {p0}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    .line 381
    if-lt v0, v2, :cond_20

    .line 382
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    goto :goto_2b

    .line 385
    :cond_20
    if-eq v3, v1, :cond_29

    const/16 p0, 0xa

    if-ne v3, p0, :cond_27

    goto :goto_29

    .line 386
    :cond_27
    const/4 v1, -0x1

    goto :goto_2a

    :cond_29
    :goto_29
    nop

    :goto_2a
    move p0, v1

    .line 390
    :goto_2b
    :try_start_2b
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v0, v3}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 391
    invoke-virtual {v0, p0}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object p0

    .line 392
    if-eqz v4, :cond_3d

    .line 393
    invoke-static {v4}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 395
    :cond_3d
    if-eqz v5, :cond_46

    .line 396
    invoke-static {v5}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkTemplate$Builder;->setWifiNetworkKeys(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 398
    :cond_46
    invoke-virtual {p0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p0
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_4a} :catch_4b

    return-object p0

    .line 399
    :catch_4b
    move-exception p0

    .line 400
    new-instance v0, Landroid/util/BackupUtils$BadVersionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored network template contains unknown match rule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/util/BackupUtils$BadVersionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 373
    :cond_65
    new-instance p0, Landroid/util/BackupUtils$BadVersionException;

    const-string v0, "Unknown Backup Serialization Version"

    invoke-direct {p0, v0}, Landroid/util/BackupUtils$BadVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist isTemplatePersistable(Landroid/net/NetworkTemplate;)Z
    .registers 4

    .line 409
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_36

    .line 426
    return v1

    .line 412
    :sswitch_a
    return v2

    .line 418
    :sswitch_b
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getWifiNetworkKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 419
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_20

    .line 420
    return v1

    .line 422
    :cond_20
    return v2

    .line 415
    :sswitch_21
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 416
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMeteredness()I

    move-result p0

    if-ne p0, v2, :cond_33

    move v1, v2

    goto :goto_34

    :cond_33
    nop

    .line 415
    :goto_34
    return v1

    nop

    :sswitch_data_36
    .sparse-switch
        0x1 -> :sswitch_21
        0x4 -> :sswitch_b
        0x5 -> :sswitch_a
        0x8 -> :sswitch_a
        0xa -> :sswitch_21
    .end sparse-switch
.end method


# virtual methods
.method public greylist clearSnooze()V
    .registers 3

    .line 219
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 220
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 221
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 222
    return-void
.end method

.method public greylist compareTo(Landroid/net/NetworkPolicy;)I
    .registers 6

    .line 234
    if-eqz p1, :cond_1e

    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    goto :goto_1e

    .line 238
    :cond_b
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_1a

    goto :goto_1c

    .line 242
    :cond_1a
    const/4 p1, 0x0

    return p1

    .line 240
    :cond_1c
    :goto_1c
    const/4 p1, 0x1

    return p1

    .line 236
    :cond_1e
    :goto_1e
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    check-cast p1, Landroid/net/NetworkPolicy;

    invoke-virtual {p0, p1}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o cycleIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/util/Range<",
            "Ljava/time/ZonedDateTime;",
            ">;>;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v0}, Landroid/util/RecurrenceRule;->cycleIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 253
    instance-of v0, p1, Landroid/net/NetworkPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 254
    check-cast p1, Landroid/net/NetworkPolicy;

    .line 255
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    iget-wide v4, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_51

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v4, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_51

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    iget-wide v4, p1, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_51

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    iget-wide v4, p1, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_51

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    iget-wide v4, p1, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_51

    iget-boolean v0, p0, Landroid/net/NetworkPolicy;->metered:Z

    iget-boolean v2, p1, Landroid/net/NetworkPolicy;->metered:Z

    if-ne v0, v2, :cond_51

    iget-boolean v0, p0, Landroid/net/NetworkPolicy;->inferred:Z

    iget-boolean v2, p1, Landroid/net/NetworkPolicy;->inferred:Z

    if-ne v0, v2, :cond_51

    iget-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v2, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 262
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object p1, p1, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 263
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    const/4 v1, 0x1

    goto :goto_52

    :cond_51
    nop

    .line 255
    :goto_52
    return v1

    .line 265
    :cond_53
    return v1
.end method

.method public greylist-max-o getBytesForBackup()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 298
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 300
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 301
    invoke-direct {p0}, Landroid/net/NetworkPolicy;->getNetworkTemplateBytesForBackup()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 302
    iget-object v2, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v2, v1}, Landroid/util/RecurrenceRule;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 303
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 304
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 305
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 306
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 307
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 308
    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 309
    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 310
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o hasCycle()Z
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v0}, Landroid/util/RecurrenceRule;->cycleIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 247
    iget-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v1, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 248
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v8, p0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 247
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist isOverLimit(J)Z
    .registers 7

    .line 210
    const-wide/16 v0, 0xbb8

    add-long/2addr p1, v0

    .line 211
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    iget-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method public greylist isOverWarning(J)Z
    .registers 7

    .line 199
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    iget-wide v0, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkPolicy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    const-string/jumbo v1, "template="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    const-string v1, " cycleRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    const-string v1, " warningBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 274
    const-string v1, " limitBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 275
    const-string v1, " lastWarningSnooze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 276
    const-string v1, " lastLimitSnooze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    const-string v1, " lastRapidSnooze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 278
    const-string v1, " metered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    const-string v1, " inferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 280
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 174
    iget-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 175
    iget-object v0, p0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 176
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 177
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 178
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 179
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 180
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    iget-boolean p2, p0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-boolean p2, p0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    return-void
.end method
