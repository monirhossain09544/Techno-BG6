.class public final Landroid/service/notification/SystemZenRules;
.super Ljava/lang/Object;
.source "SystemZenRules.java"


# static fields
.field public static final blacklist PACKAGE_ANDROID:Ljava/lang/String; = "android"

.field private static final blacklist TAG:Ljava/lang/String; = "SystemZenRules"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDaysOfWeekForLocale(Ljava/util/Calendar;)[I
    .registers 5

    .line 260
    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 261
    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p0

    .line 262
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_14

    .line 263
    const/4 v3, 0x1

    if-le p0, v0, :cond_e

    move p0, v3

    .line 264
    :cond_e
    aput p0, v1, v2

    .line 265
    add-int/2addr p0, v3

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 267
    :cond_14
    return-object v1
.end method

.method public static blacklist getDaysOfWeekFull(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .registers 5

    .line 149
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 150
    invoke-static {p0}, Landroid/service/notification/SystemZenRules;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    const-string v2, "EEEE"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 149
    const v1, 0x1040b62

    invoke-static {p0, v1, v0, p1}, Landroid/service/notification/SystemZenRules;->getDaysSummary(Landroid/content/Context;ILjava/text/SimpleDateFormat;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDaysOfWeekShort(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .registers 5

    .line 138
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 139
    invoke-static {p0}, Landroid/service/notification/SystemZenRules;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    const-string v2, "EEE"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 138
    const v1, 0x1040b61

    invoke-static {p0, v1, v0, p1}, Landroid/service/notification/SystemZenRules;->getDaysSummary(Landroid/content/Context;ILjava/text/SimpleDateFormat;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getDaysSummary(Landroid/content/Context;ILjava/text/SimpleDateFormat;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .registers 20

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 164
    if-eqz v2, :cond_b7

    array-length v3, v2

    if-lez v3, :cond_b7

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    invoke-static {v0}, Landroid/service/notification/SystemZenRules;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    .line 167
    invoke-static {v0}, Landroid/service/notification/SystemZenRules;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    .line 168
    invoke-static {v4}, Landroid/service/notification/SystemZenRules;->getDaysOfWeekForLocale(Ljava/util/Calendar;)[I

    move-result-object v6

    .line 172
    nop

    .line 173
    nop

    .line 174
    const/high16 v7, -0x80000000

    move v9, v7

    const/4 v10, 0x0

    :goto_2c
    array-length v11, v6

    if-ge v10, v11, :cond_ac

    .line 175
    aget v11, v6, v10

    .line 181
    add-int/lit8 v12, v7, 0x1

    const/4 v13, 0x1

    if-ne v10, v12, :cond_38

    move v14, v13

    goto :goto_39

    :cond_38
    const/4 v14, 0x0

    .line 182
    :goto_39
    const/4 v15, 0x0

    :goto_3a
    array-length v8, v2

    if-ge v15, v8, :cond_54

    .line 183
    aget v8, v2, v15

    if-ne v11, v8, :cond_51

    .line 185
    if-ne v10, v12, :cond_46

    .line 188
    nop

    .line 189
    const/4 v14, 0x0

    goto :goto_48

    .line 193
    :cond_46
    nop

    .line 194
    move v9, v10

    .line 200
    :goto_48
    array-length v7, v6

    sub-int/2addr v7, v13

    if-ne v10, v7, :cond_4e

    .line 201
    move v7, v10

    goto :goto_55

    .line 200
    :cond_4e
    move v7, v10

    move v13, v14

    goto :goto_55

    .line 182
    :cond_51
    add-int/lit8 v15, v15, 0x1

    goto :goto_3a

    :cond_54
    move v13, v14

    .line 210
    :goto_55
    if-eqz v13, :cond_a7

    .line 213
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_68

    .line 214
    nop

    .line 215
    const v8, 0x1040b60

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 214
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_68
    const/4 v8, 0x7

    if-ne v9, v7, :cond_7e

    .line 220
    aget v11, v6, v9

    invoke-virtual {v4, v8, v11}, Ljava/util/Calendar;->set(II)V

    .line 221
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p1

    goto :goto_a9

    .line 224
    :cond_7e
    aget v11, v6, v9

    invoke-virtual {v4, v8, v11}, Ljava/util/Calendar;->set(II)V

    .line 225
    aget v11, v6, v7

    invoke-virtual {v5, v8, v11}, Ljava/util/Calendar;->set(II)V

    .line 226
    nop

    .line 228
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 229
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v8, v11}, [Ljava/lang/Object;

    move-result-object v8

    .line 226
    move/from16 v11, p1

    invoke-virtual {v0, v11, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a9

    .line 210
    :cond_a7
    move/from16 v11, p1

    .line 174
    :goto_a9
    add-int/lit8 v10, v10, 0x1

    goto :goto_2c

    .line 234
    :cond_ac
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_b7

    .line 235
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 238
    :cond_b7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getLocale(Landroid/content/Context;)Ljava/util/Locale;
    .registers 2

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getTimeSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .registers 4

    .line 243
    iget v0, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 245
    invoke-static {p0, v0, v1}, Landroid/service/notification/SystemZenRules;->timeString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 246
    invoke-static {p0, v1, p1}, Landroid/service/notification/SystemZenRules;->timeString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 243
    const v0, 0x1040b61

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getTriggerDescriptionForScheduleEvent(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .registers 3

    .line 280
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 281
    iget-object p0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    return-object p0

    .line 283
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1040b5e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getTriggerDescriptionForScheduleTime(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .registers 3

    .line 119
    invoke-static {p0, p1}, Landroid/service/notification/SystemZenRules;->getDaysOfWeekShort(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object v0

    .line 120
    if-nez v0, :cond_8

    .line 122
    const/4 p0, 0x0

    return-object p0

    .line 124
    :cond_8
    nop

    .line 127
    invoke-static {p0, p1}, Landroid/service/notification/SystemZenRules;->getTimeSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 124
    const v0, 0x1040b5f

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist isSystemOwnedRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 2

    .line 64
    const-string v0, "android"

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist maybeUpgradeRules(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V
    .registers 5

    .line 49
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 50
    invoke-static {v0}, Landroid/service/notification/SystemZenRules;->isSystemOwnedRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 51
    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_24

    .line 52
    invoke-static {p0, v0}, Landroid/service/notification/SystemZenRules;->upgradeSystemProviderRule(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 54
    :cond_24
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 56
    :cond_27
    goto :goto_a

    .line 57
    :cond_28
    return-void
.end method

.method private static blacklist timeString(Landroid/content/Context;II)Ljava/lang/String;
    .registers 5

    .line 253
    invoke-static {p0}, Landroid/service/notification/SystemZenRules;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 254
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 255
    const/16 p1, 0xc

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 256
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist updateTriggerDescription(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 3

    .line 90
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_12

    .line 92
    nop

    .line 93
    invoke-static {p0, v0}, Landroid/service/notification/SystemZenRules;->getTriggerDescriptionForScheduleTime(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-static {p1, p0}, Landroid/service/notification/SystemZenRules;->updateTriggerDescription(Landroid/service/notification/ZenModeConfig$ZenRule;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 95
    :cond_12
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_24

    .line 97
    nop

    .line 98
    invoke-static {p0, v0}, Landroid/service/notification/SystemZenRules;->getTriggerDescriptionForScheduleEvent(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-static {p1, p0}, Landroid/service/notification/SystemZenRules;->updateTriggerDescription(Landroid/service/notification/ZenModeConfig$ZenRule;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 100
    :cond_24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t determine type of system-owned ZenRule "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemZenRules"

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist updateTriggerDescription(Landroid/service/notification/ZenModeConfig$ZenRule;Ljava/lang/String;)Z
    .registers 3

    .line 105
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 106
    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 107
    const/4 p0, 0x1

    return p0

    .line 109
    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist upgradeSystemProviderRule(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .registers 4

    .line 68
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_12

    .line 70
    const/4 v1, 0x1

    iput v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 71
    invoke-static {p0, v0}, Landroid/service/notification/SystemZenRules;->getTriggerDescriptionForScheduleTime(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 72
    return-void

    .line 74
    :cond_12
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_24

    .line 76
    const/4 v1, 0x2

    iput v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 77
    invoke-static {p0, v0}, Landroid/service/notification/SystemZenRules;->getTriggerDescriptionForScheduleEvent(Landroid/content/Context;Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 78
    return-void

    .line 80
    :cond_24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t determine type of system-owned ZenRule "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemZenRules"

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method
