.class public Lcom/android/internal/util/VibrationStatsWriter;
.super Ljava/lang/Object;
.source "VibrationStatsWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/VibrationStatsWriter$VibrationPatternEventType;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "VibrationStatsWriter"

.field public static final blacklist VIBRATION_PATTERN_PLAYED:I = 0x2

.field public static final blacklist VIBRATION_PATTERN_SAVED:I = 0x1

.field private static blacklist sVibrationStatsWriter:Lcom/android/internal/util/VibrationStatsWriter;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mInitialized:Z

.field private final blacklist mNotificationVibrationPatternIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRingtoneVibrationPatternIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/VibrationStatsWriter;->mRingtoneVibrationPatternIdMap:Ljava/util/Map;

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/VibrationStatsWriter;->mNotificationVibrationPatternIdMap:Ljava/util/Map;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/VibrationStatsWriter;->mContext:Landroid/content/Context;

    .line 80
    :try_start_17
    iget-object p1, p0, Lcom/android/internal/util/VibrationStatsWriter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/util/VibrationStatsWriter;->mRingtoneVibrationPatternIdMap:Ljava/util/Map;

    const v1, 0x10700c4

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/VibrationStatsWriter;->loadVibrationPatternsIntoMap(Landroid/content/Context;ILjava/util/Map;)V

    .line 83
    iget-object p1, p0, Lcom/android/internal/util/VibrationStatsWriter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/util/VibrationStatsWriter;->mNotificationVibrationPatternIdMap:Ljava/util/Map;

    const v1, 0x10700b0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/VibrationStatsWriter;->loadVibrationPatternsIntoMap(Landroid/content/Context;ILjava/util/Map;)V
    :try_end_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_2b} :catch_2e
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_17 .. :try_end_2b} :catch_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_2b} :catch_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_2b} :catch_2e

    .line 86
    nop

    .line 93
    const/4 p1, 0x1

    goto :goto_41

    .line 87
    :catch_2e
    move-exception p1

    .line 89
    const-string v0, "VibrationStatsWriter"

    const-string v1, "Failed to init ringtone/notification vibration ID map"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    iget-object p1, p0, Lcom/android/internal/util/VibrationStatsWriter;->mRingtoneVibrationPatternIdMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 91
    iget-object p1, p0, Lcom/android/internal/util/VibrationStatsWriter;->mNotificationVibrationPatternIdMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 92
    const/4 p1, 0x0

    .line 94
    :goto_41
    iput-boolean p1, p0, Lcom/android/internal/util/VibrationStatsWriter;->mInitialized:Z

    .line 95
    return-void
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/util/VibrationStatsWriter;
    .registers 3

    const-class v0, Lcom/android/internal/util/VibrationStatsWriter;

    monitor-enter v0

    .line 103
    :try_start_3
    sget-object v1, Lcom/android/internal/util/VibrationStatsWriter;->sVibrationStatsWriter:Lcom/android/internal/util/VibrationStatsWriter;

    if-nez v1, :cond_e

    .line 104
    new-instance v1, Lcom/android/internal/util/VibrationStatsWriter;

    invoke-direct {v1, p0}, Lcom/android/internal/util/VibrationStatsWriter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/util/VibrationStatsWriter;->sVibrationStatsWriter:Lcom/android/internal/util/VibrationStatsWriter;

    .line 106
    :cond_e
    sget-object p0, Lcom/android/internal/util/VibrationStatsWriter;->sVibrationStatsWriter:Lcom/android/internal/util/VibrationStatsWriter;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 102
    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private static blacklist loadVibrationPatternsIntoMap(Landroid/content/Context;ILjava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 201
    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, p1, :cond_47

    aget-object v2, p0, v1

    .line 202
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 203
    if-eqz v2, :cond_2a

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 207
    aget-object v3, v2, v0

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 204
    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Missing pattern or ID info, patternIdPair: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 205
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 209
    :cond_47
    return-void
.end method

.method public static blacklist setInstance(Lcom/android/internal/util/VibrationStatsWriter;)V
    .registers 1

    .line 111
    sput-object p0, Lcom/android/internal/util/VibrationStatsWriter;->sVibrationStatsWriter:Lcom/android/internal/util/VibrationStatsWriter;

    .line 112
    return-void
.end method

.method private blacklist toVibrationPatternId(ILjava/lang/String;)I
    .registers 5

    .line 186
    const/4 v0, -0x1

    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 186
    if-nez p2, :cond_8

    .line 187
    return v0

    .line 189
    :cond_8
    packed-switch p1, :pswitch_data_28

    .line 194
    goto :goto_26

    .line 193
    :pswitch_c
    iget-object p1, p0, Lcom/android/internal/util/VibrationStatsWriter;->mNotificationVibrationPatternIdMap:Ljava/util/Map;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_26

    .line 190
    :pswitch_19
    iget-object p1, p0, Lcom/android/internal/util/VibrationStatsWriter;->mRingtoneVibrationPatternIdMap:Ljava/util/Map;

    .line 191
    nop

    .line 190
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 189
    :goto_26
    return v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_19
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public blacklist logCustomVibrationPatternEvent(IIIIZ)V
    .registers 7

    .line 181
    const/16 v0, 0x495

    move p0, v0

    invoke-static/range {p0 .. p5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIZ)V

    .line 183
    return-void
.end method

.method public blacklist logCustomVibrationPatternEventIfNeeded(IILandroid/net/Uri;)V
    .registers 13

    .line 130
    iget-boolean v0, p0, Lcom/android/internal/util/VibrationStatsWriter;->mInitialized:Z

    if-nez v0, :cond_5

    .line 131
    return-void

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/android/internal/util/VibrationStatsWriter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/Utils;->isRingtoneVibrationSettingsSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7d

    if-eqz p3, :cond_7d

    .line 134
    nop

    .line 135
    nop

    .line 136
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 138
    iget-object p3, p0, Lcom/android/internal/util/VibrationStatsWriter;->mContext:Landroid/content/Context;

    invoke-static {p3, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p3

    .line 140
    :cond_21
    if-eqz p3, :cond_7d

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logCustomVibrationPatternEventIfNeeded, actual uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibrationStatsWriter"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v2, 0x0

    :try_start_3c
    invoke-static {p3}, Landroid/media/Utils;->getVibrationUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_40} :catch_41

    .line 146
    goto :goto_48

    .line 144
    :catch_41
    move-exception v0

    .line 145
    const-string v3, "Failed to get vibration URI"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 147
    :goto_48
    if-eqz v0, :cond_4e

    .line 148
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 150
    :cond_4e
    iget-object v1, p0, Lcom/android/internal/util/VibrationStatsWriter;->mContext:Landroid/content/Context;

    const-class v3, Landroid/media/AudioManager;

    .line 151
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 150
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 151
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 152
    if-nez v0, :cond_6c

    .line 153
    invoke-static {p3}, Landroid/media/RingtoneManager;->hasHapticChannels(Landroid/net/Uri;)Z

    move-result p3

    if-eqz p3, :cond_6c

    const/4 p3, 0x1

    goto :goto_6d

    :cond_6c
    const/4 p3, 0x0

    :goto_6d
    move v8, p3

    .line 154
    if-nez v0, :cond_72

    if-eqz v8, :cond_7d

    .line 155
    :cond_72
    nop

    .line 157
    invoke-direct {p0, p2, v2}, Lcom/android/internal/util/VibrationStatsWriter;->toVibrationPatternId(ILjava/lang/String;)I

    move-result v6

    .line 155
    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/util/VibrationStatsWriter;->logCustomVibrationPatternEvent(IIIIZ)V

    .line 163
    :cond_7d
    return-void
.end method
