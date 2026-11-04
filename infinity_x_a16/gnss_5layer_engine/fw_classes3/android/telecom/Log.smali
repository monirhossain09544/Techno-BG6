.class public Landroid/telecom/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static greylist-max-o DEBUG:Z = false

.field public static greylist-max-o ERROR:Z = false

.field private static final greylist-max-o EVENTS_TO_CACHE:I = 0xa

.field private static final greylist-max-o EVENTS_TO_CACHE_DEBUG:I = 0x14

.field private static final greylist-max-o EXTENDED_LOGGING_DURATION_MILLIS:J = 0x1b7740L

.field private static final greylist-max-o FORCE_LOGGING:Z = false

.field public static greylist-max-o INFO:Z

.field private static final blacklist NUM_DIALABLE_DIGITS_TO_LOG:I

.field public static greylist-max-o TAG:Ljava/lang/String;

.field private static final greylist-max-o USER_BUILD:Z

.field public static greylist-max-o VERBOSE:Z

.field public static greylist-max-o WARN:Z

.field private static greylist-max-o sEventManager:Landroid/telecom/Logging/EventManager;

.field private static blacklist sIsUnitTestingEnabled:Z

.field private static greylist-max-o sIsUserExtendedLoggingEnabled:Z

.field private static blacklist sLock:Ljava/lang/Object;

.field private static volatile greylist-max-o sSessionManager:Landroid/telecom/Logging/SessionManager;

.field private static final greylist-max-o sSingletonSync:Ljava/lang/Object;

.field private static greylist-max-o sUserExtendedLoggingStopTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 54
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    sput v0, Landroid/telecom/Log;->NUM_DIALABLE_DIGITS_TO_LOG:I

    .line 58
    const-string v0, "TelecomFramework"

    sput-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    .line 62
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->INFO:Z

    .line 63
    invoke-static {v1}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    .line 64
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->WARN:Z

    .line 65
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Log;->ERROR:Z

    .line 68
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    sput-boolean v0, Landroid/telecom/Log;->USER_BUILD:Z

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    .line 74
    const/4 v0, 0x0

    sput-object v0, Landroid/telecom/Log;->sLock:Ljava/lang/Object;

    .line 79
    sput-boolean v2, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    .line 84
    sput-boolean v2, Landroid/telecom/Log;->sIsUnitTestingEnabled:Z

    .line 90
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static greylist-max-o addEvent(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;)V
    .registers 4

    .line 266
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    return-void
.end method

.method public static greylist-max-o addEvent(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 270
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public static varargs blacklist addEvent(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 275
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method public static greylist-max-o addRequestResponsePair(Landroid/telecom/Logging/EventManager$TimedEventPair;)V
    .registers 2

    .line 283
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/EventManager;->addRequestResponsePair(Landroid/telecom/Logging/EventManager$TimedEventPair;)V

    .line 284
    return-void
.end method

.method private static varargs blacklist buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 8

    .line 536
    invoke-static {}, Landroid/telecom/Log;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_e

    move-object v0, v2

    goto :goto_21

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    :goto_21
    if-eqz p2, :cond_53

    :try_start_23
    array-length v1, p2

    if-nez v1, :cond_27

    goto :goto_53

    .line 542
    :cond_27
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_2d
    .catch Ljava/util/IllegalFormatException; {:try_start_23 .. :try_end_2d} :catch_2e

    goto :goto_53

    .line 543
    :catch_2e
    move-exception v1

    .line 544
    sget-object v3, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    array-length p2, p2

    .line 545
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 544
    const-string v4, "Log: IllegalFormatException: formatString=\'%s\' numArgs=%d"

    invoke-static {v3, v1, v4, p2}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " (An error occurred while formatting the message.)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_54

    .line 547
    :cond_53
    :goto_53
    nop

    .line 550
    :goto_54
    sget-object p2, Landroid/telecom/Log;->sLock:Ljava/lang/Object;

    if-eqz p2, :cond_67

    sget-object p2, Landroid/telecom/Log;->sLock:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_64

    const-string/jumbo v2, "\ud83d\udd12"

    goto :goto_67

    :cond_64
    const-string/jumbo v2, "\u2757"

    .line 551
    :cond_67
    :goto_67
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s: %s%s%s"

    filled-new-array {p0, p1, v0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o cancelSubsession(Landroid/telecom/Logging/Session;)V
    .registers 2

    .line 238
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/SessionManager;->cancelSubsession(Landroid/telecom/Logging/Session;)V

    .line 239
    return-void
.end method

.method public static greylist-max-o continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    .registers 3

    .line 242
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Logging/SessionManager;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public static greylist-max-o createSubsession()Landroid/telecom/Logging/Session;
    .registers 1

    .line 220
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Logging/SessionManager;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 105
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_15

    .line 106
    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    .line 107
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 108
    :cond_15
    sget-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 109
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_26
    :goto_26
    return-void
.end method

.method public static varargs blacklist d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 96
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_11

    .line 97
    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    .line 98
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 99
    :cond_11
    sget-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 100
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static greylist-max-o dumpEvents(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3

    .line 289
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_3
    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz v1, :cond_f

    .line 291
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telecom/Logging/EventManager;->dumpEvents(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_14

    .line 293
    :cond_f
    const-string v1, "No Historical Events Logged."

    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 295
    :goto_14
    monitor-exit v0

    .line 296
    return-void

    .line 295
    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public static greylist-max-o dumpEventsTimeline(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3

    .line 306
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_3
    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz v1, :cond_f

    .line 308
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telecom/Logging/EventManager;->dumpEventsTimeline(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_14

    .line 310
    :cond_f
    const-string v1, "No Historical Events Logged."

    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 312
    :goto_14
    monitor-exit v0

    .line 313
    return-void

    .line 312
    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public static varargs blacklist e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 164
    sget-boolean v0, Landroid/telecom/Log;->ERROR:Z

    if-eqz v0, :cond_11

    .line 165
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    :cond_11
    return-void
.end method

.method public static varargs blacklist e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 158
    sget-boolean v0, Landroid/telecom/Log;->ERROR:Z

    if-eqz v0, :cond_d

    .line 159
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :cond_d
    return-void
.end method

.method public static greylist-max-o endSession()V
    .registers 1

    .line 246
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Logging/SessionManager;->endSession()V

    .line 247
    return-void
.end method

.method private static blacklist getDialableCount(Ljava/lang/String;)I
    .registers 5

    .line 509
    nop

    .line 510
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_17

    aget-char v3, p0, v1

    .line 511
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 512
    add-int/lit8 v2, v2, 0x1

    .line 510
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 515
    :cond_17
    return v2
.end method

.method private static greylist-max-o getEventManager()Landroid/telecom/Logging/EventManager;
    .registers 3

    .line 358
    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-nez v0, :cond_20

    .line 359
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_7
    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-nez v1, :cond_1b

    .line 361
    new-instance v1, Landroid/telecom/Logging/EventManager;

    new-instance v2, Landroid/telecom/Log$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/telecom/Log$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v1, v2}, Landroid/telecom/Logging/EventManager;-><init>(Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;)V

    sput-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    .line 362
    sget-object v1, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    monitor-exit v0

    return-object v1

    .line 364
    :cond_1b
    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1

    .line 366
    :cond_20
    :goto_20
    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    return-object v0
.end method

.method public static greylist-max-o getExternalSession()Landroid/telecom/Logging/Session$Info;
    .registers 1

    .line 224
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Logging/SessionManager;->getExternalSession()Landroid/telecom/Logging/Session$Info;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;
    .registers 2

    .line 234
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/SessionManager;->getExternalSession(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getPackageAbbreviation(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 1

    .line 562
    if-nez p0, :cond_5

    .line 563
    const-string p0, ""

    return-object p0

    .line 565
    :cond_5
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telecom/Log;->getPackageAbbreviation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getPackageAbbreviation(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 576
    const-string v0, ""

    if-nez p0, :cond_5

    .line 577
    return-object v0

    .line 579
    :cond_5
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Landroid/telecom/Log$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telecom/Log$$ExternalSyntheticLambda0;-><init>()V

    .line 580
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 581
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 579
    return-object p0
.end method

.method private static greylist-max-o getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    .line 531
    if-nez p0, :cond_5

    const-string p0, "<null>"

    goto :goto_d

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method public static greylist-max-o getSessionId()Ljava/lang/String;
    .registers 2

    .line 256
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    sget-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-eqz v1, :cond_11

    .line 258
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Logging/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 260
    :cond_11
    const-string v1, ""

    monitor-exit v0

    return-object v1

    .line 262
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public static greylist-max-o getSessionManager()Landroid/telecom/Logging/SessionManager;
    .registers 2

    .line 373
    sget-object v0, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-nez v0, :cond_1b

    .line 374
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_7
    sget-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-nez v1, :cond_16

    .line 376
    new-instance v1, Landroid/telecom/Logging/SessionManager;

    invoke-direct {v1}, Landroid/telecom/Logging/SessionManager;-><init>()V

    sput-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    .line 377
    sget-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    monitor-exit v0

    return-object v1

    .line 379
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1

    .line 381
    :cond_1b
    :goto_1b
    sget-object v0, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    return-object v0
.end method

.method public static varargs blacklist i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 121
    sget-boolean v0, Landroid/telecom/Log;->INFO:Z

    if-eqz v0, :cond_11

    .line 122
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_11
    return-void
.end method

.method public static varargs greylist-max-r i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 115
    sget-boolean v0, Landroid/telecom/Log;->INFO:Z

    if-eqz v0, :cond_d

    .line 116
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_d
    return-void
.end method

.method public static greylist-max-o isLoggable(I)Z
    .registers 2

    .line 439
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static blacklist isUnitTestingEnabled()Z
    .registers 1

    .line 352
    sget-boolean v0, Landroid/telecom/Log;->sIsUnitTestingEnabled:Z

    return v0
.end method

.method static synthetic blacklist lambda$getPackageAbbreviation$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 580
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    const-string p0, ""

    goto :goto_f

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method private static greylist-max-o maybeDisableLogging()V
    .registers 4

    .line 428
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-nez v0, :cond_5

    .line 429
    return-void

    .line 432
    :cond_5
    sget-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    .line 433
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    .line 434
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    .line 436
    :cond_16
    return-void
.end method

.method private static blacklist obfuscatePhoneNumber(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 6

    .line 491
    invoke-static {p1}, Landroid/telecom/Log;->getDialableCount(Ljava/lang/String;)I

    move-result v0

    sget v1, Landroid/telecom/Log;->NUM_DIALABLE_DIGITS_TO_LOG:I

    sub-int/2addr v0, v1

    .line 493
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 494
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 495
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    .line 496
    if-eqz v3, :cond_1a

    .line 497
    add-int/lit8 v0, v0, -0x1

    .line 499
    :cond_1a
    if-eqz v3, :cond_21

    if-ltz v0, :cond_21

    const-string v2, "*"

    goto :goto_25

    :cond_21
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    :goto_25
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 501
    :cond_2b
    return-void
.end method

.method public static greylist-max-o pii(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 524
    if-eqz p0, :cond_a

    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_7

    goto :goto_a

    .line 527
    :cond_7
    const-string p0, "***"

    return-object p0

    .line 525
    :cond_a
    :goto_a
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o piiHandle(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .line 449
    if-eqz p0, :cond_73

    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_7

    goto :goto_73

    .line 453
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    instance-of v1, p0, Landroid/net/Uri;

    if-eqz v1, :cond_63

    .line 455
    move-object v1, p0

    check-cast v1, Landroid/net/Uri;

    .line 456
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 459
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :cond_26
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 463
    const-string/jumbo v3, "tel"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 464
    invoke-static {v0, v1}, Landroid/telecom/Log;->obfuscatePhoneNumber(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_6d

    .line 465
    :cond_37
    const-string/jumbo v3, "sip"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 466
    const/4 p0, 0x0

    :goto_41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p0, v2, :cond_6d

    .line 467
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 468
    const/16 v3, 0x40

    if-eq v2, v3, :cond_55

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_55

    .line 469
    const/16 v2, 0x2a

    .line 471
    :cond_55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    add-int/lit8 p0, p0, 0x1

    goto :goto_41

    .line 474
    :cond_5b
    invoke-static {p0}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6d

    .line 476
    :cond_63
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_6d

    .line 477
    check-cast p0, Ljava/lang/String;

    .line 478
    invoke-static {v0, p0}, Landroid/telecom/Log;->obfuscatePhoneNumber(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_6e

    .line 476
    :cond_6d
    :goto_6d
    nop

    .line 481
    :goto_6e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 450
    :cond_73
    :goto_73
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o registerEventListener(Landroid/telecom/Logging/EventManager$EventListener;)V
    .registers 2

    .line 279
    invoke-static {}, Landroid/telecom/Log;->getEventManager()Landroid/telecom/Logging/EventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/EventManager;->registerEventListener(Landroid/telecom/Logging/EventManager$EventListener;)V

    .line 280
    return-void
.end method

.method public static greylist-max-o registerSessionListener(Landroid/telecom/Logging/SessionManager$ISessionListener;)V
    .registers 2

    .line 250
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/SessionManager;->registerSessionListener(Landroid/telecom/Logging/SessionManager$ISessionListener;)V

    .line 251
    return-void
.end method

.method public static greylist-max-o setIsExtendedLoggingEnabled(Z)V
    .registers 5

    .line 323
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-ne v0, p0, :cond_5

    .line 324
    return-void

    .line 327
    :cond_5
    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz v0, :cond_15

    .line 328
    sget-object v0, Landroid/telecom/Log;->sEventManager:Landroid/telecom/Logging/EventManager;

    if-eqz p0, :cond_10

    .line 329
    const/16 v1, 0x14

    goto :goto_12

    :cond_10
    const/16 v1, 0xa

    .line 328
    :goto_12
    invoke-virtual {v0, v1}, Landroid/telecom/Logging/EventManager;->changeEventCacheSize(I)V

    .line 332
    :cond_15
    sput-boolean p0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    .line 333
    sget-boolean p0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz p0, :cond_26

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    goto :goto_2a

    .line 337
    :cond_26
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/telecom/Log;->sUserExtendedLoggingStopTime:J

    .line 339
    :goto_2a
    return-void
.end method

.method public static blacklist setLock(Ljava/lang/Object;)V
    .registers 2

    .line 418
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-nez v0, :cond_6

    .line 419
    sput-object p0, Landroid/telecom/Log;->sLock:Ljava/lang/Object;

    .line 421
    :cond_6
    return-void
.end method

.method public static greylist-max-o setSessionContext(Landroid/content/Context;)V
    .registers 2

    .line 199
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telecom/Logging/SessionManager;->setContext(Landroid/content/Context;)V

    .line 200
    return-void
.end method

.method public static blacklist setSessionManager(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/telecom/Logging/SessionManager;
    .registers 4

    .line 389
    sget-object v0, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-nez v0, :cond_20

    .line 390
    sget-object v0, Landroid/telecom/Log;->sSingletonSync:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_7
    sget-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    if-nez v1, :cond_1b

    .line 392
    new-instance v1, Landroid/telecom/Logging/SessionManager;

    invoke-direct {v1, p1}, Landroid/telecom/Logging/SessionManager;-><init>(Ljava/lang/Runnable;)V

    sput-object v1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    .line 393
    sget-object p1, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    invoke-virtual {p1, p0}, Landroid/telecom/Logging/SessionManager;->setContext(Landroid/content/Context;)V

    .line 394
    sget-object p0, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    monitor-exit v0

    return-object p0

    .line 396
    :cond_1b
    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw p0

    .line 398
    :cond_20
    :goto_20
    sget-object p0, Landroid/telecom/Log;->sSessionManager:Landroid/telecom/Logging/SessionManager;

    return-object p0
.end method

.method public static greylist-max-o setTag(Ljava/lang/String;)V
    .registers 1

    .line 402
    sput-object p0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    .line 403
    const/4 p0, 0x3

    invoke-static {p0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result p0

    sput-boolean p0, Landroid/telecom/Log;->DEBUG:Z

    .line 404
    const/4 p0, 0x4

    invoke-static {p0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result p0

    sput-boolean p0, Landroid/telecom/Log;->INFO:Z

    .line 405
    const/4 p0, 0x2

    invoke-static {p0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result p0

    sput-boolean p0, Landroid/telecom/Log;->VERBOSE:Z

    .line 406
    const/4 p0, 0x5

    invoke-static {p0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result p0

    sput-boolean p0, Landroid/telecom/Log;->WARN:Z

    .line 407
    const/4 p0, 0x6

    invoke-static {p0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result p0

    sput-boolean p0, Landroid/telecom/Log;->ERROR:Z

    .line 408
    return-void
.end method

.method public static blacklist setUnitTestingEnabled(Z)V
    .registers 1

    .line 348
    sput-boolean p0, Landroid/telecom/Log;->sIsUnitTestingEnabled:Z

    .line 349
    return-void
.end method

.method public static greylist-max-o startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V
    .registers 4

    .line 207
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/telecom/Logging/SessionManager;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public static greylist-max-o startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 216
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Logging/SessionManager;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public static greylist-max-o startSession(Ljava/lang/String;)V
    .registers 3

    .line 203
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telecom/Logging/SessionManager;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public static greylist-max-o startSession(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 211
    invoke-static {}, Landroid/telecom/Log;->getSessionManager()Landroid/telecom/Logging/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Logging/SessionManager;->startSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public static varargs blacklist v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 136
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_15

    .line 137
    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    .line 138
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 139
    :cond_15
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_26

    .line 140
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_26
    :goto_26
    return-void
.end method

.method public static varargs blacklist v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 127
    sget-boolean v0, Landroid/telecom/Log;->sIsUserExtendedLoggingEnabled:Z

    if-eqz v0, :cond_11

    .line 128
    invoke-static {}, Landroid/telecom/Log;->maybeDisableLogging()V

    .line 129
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 130
    :cond_11
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_1e

    .line 131
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static varargs blacklist w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 152
    sget-boolean v0, Landroid/telecom/Log;->WARN:Z

    if-eqz v0, :cond_11

    .line 153
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_11
    return-void
.end method

.method public static varargs greylist-max-r w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 146
    sget-boolean v0, Landroid/telecom/Log;->WARN:Z

    if-eqz v0, :cond_d

    .line 147
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_d
    return-void
.end method

.method public static varargs blacklist wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 185
    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 186
    sget-object p1, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    return-void
.end method

.method public static varargs blacklist wtf(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 175
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    return-void
.end method

.method public static varargs blacklist wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 180
    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 181
    sget-object p1, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    return-void
.end method

.method public static varargs blacklist wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 171
    sget-object v0, Landroid/telecom/Log;->TAG:Ljava/lang/String;

    invoke-static {p0, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    return-void
.end method
