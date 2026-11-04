.class public Lcom/android/internal/compat/ChangeReporter;
.super Ljava/lang/Object;
.source "ChangeReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/ChangeReporter$ChangeReport;,
        Lcom/android/internal/compat/ChangeReporter$Source;,
        Lcom/android/internal/compat/ChangeReporter$State;
    }
.end annotation


# static fields
.field private static final blacklist NEW_CHANGE_REPORT_SET:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/internal/compat/ChangeReporter$ChangeReport;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final blacklist SOURCE_APP_PROCESS:I = 0x1

.field public static final blacklist SOURCE_SYSTEM_SERVER:I = 0x2

.field public static final blacklist SOURCE_UNKNOWN_SOURCE:I = 0x0

.field public static final blacklist STATE_DISABLED:I = 0x2

.field public static final blacklist STATE_ENABLED:I = 0x1

.field public static final blacklist STATE_LOGGED:I = 0x3

.field public static final blacklist STATE_UNKNOWN_STATE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "CompatChangeReporter"


# instance fields
.field private blacklist mDebugLogAll:Z

.field private final blacklist mReportedChanges:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/internal/compat/ChangeReporter$ChangeReport;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mSource:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/android/internal/compat/ChangeReporter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/compat/ChangeReporter$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/compat/ChangeReporter;->NEW_CHANGE_REPORT_SET:Ljava/util/function/Function;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lcom/android/internal/compat/ChangeReporter;->mSource:I

    .line 84
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/compat/ChangeReporter;->mReportedChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/compat/ChangeReporter;->mDebugLogAll:Z

    .line 86
    return-void
.end method

.method private blacklist checkAndSetIsAlreadyReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)Z
    .registers 4

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/android/internal/compat/ChangeReporter;->isAlreadyReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)Z

    move-result v0

    .line 199
    if-nez v0, :cond_9

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/internal/compat/ChangeReporter;->markAsReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)V

    .line 202
    :cond_9
    return v0
.end method

.method private blacklist debugLog(IJI)V
    .registers 5

    .line 239
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 240
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Lcom/android/internal/compat/ChangeReporter;->stateToString(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 239
    const-string p2, "Compat change id reported: %d; UID %d; state: %s"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 241
    iget p2, p0, Lcom/android/internal/compat/ChangeReporter;->mSource:I

    const/4 p3, 0x2

    const-string p4, "CompatChangeReporter"

    if-ne p2, p3, :cond_21

    .line 242
    invoke-static {p4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 244
    :cond_21
    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_24
    return-void
.end method

.method private blacklist isAlreadyReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)Z
    .registers 5

    .line 206
    iget-object v0, p0, Lcom/android/internal/compat/ChangeReporter;->mReportedChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/Integer;)Ljava/util/Set;
    .registers 1

    .line 49
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private blacklist markAsReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)V
    .registers 5

    .line 223
    iget-object v0, p0, Lcom/android/internal/compat/ChangeReporter;->mReportedChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/android/internal/compat/ChangeReporter;->NEW_CHANGE_REPORT_SET:Ljava/util/function/Function;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method private blacklist shouldWriteToDebug(ZI)Z
    .registers 6

    .line 161
    iget-boolean v0, p0, Lcom/android/internal/compat/ChangeReporter;->mDebugLogAll:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 163
    :cond_6
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    return v0

    .line 168
    :cond_a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/compat/flags/Flags;->skipOldAndDisabledCompatLogging()Z

    move-result p1

    .line 169
    if-eqz p1, :cond_20

    const-string p1, "CompatChangeReporter"

    const/4 v2, 0x3

    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_20

    .line 172
    :cond_1a
    const/4 p1, 0x2

    if-eq p2, p1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v0

    :goto_1f
    return v1

    .line 169
    :cond_20
    :goto_20
    return v1
.end method

.method private static blacklist stateToString(I)Ljava/lang/String;
    .registers 1

    .line 255
    packed-switch p0, :pswitch_data_10

    .line 263
    const-string p0, "UNKNOWN"

    return-object p0

    .line 257
    :pswitch_6
    const-string p0, "LOGGED"

    return-object p0

    .line 261
    :pswitch_9
    const-string p0, "DISABLED"

    return-object p0

    .line 259
    :pswitch_c
    const-string p0, "ENABLED"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public blacklist isAlreadyReported(IJI)Z
    .registers 6

    .line 219
    new-instance v0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/compat/ChangeReporter$ChangeReport;-><init>(JI)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/compat/ChangeReporter;->isAlreadyReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)Z

    move-result p1

    return p1
.end method

.method public blacklist reportChange(IJIZ)V
    .registers 6

    .line 122
    return-void
.end method

.method public blacklist reportChange(IJIZZ)V
    .registers 14

    .line 101
    new-instance v0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/compat/ChangeReporter$ChangeReport;-><init>(JI)V

    .line 102
    invoke-direct {p0, p1, v0}, Lcom/android/internal/compat/ChangeReporter;->checkAndSetIsAlreadyReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)Z

    move-result v0

    .line 103
    if-eqz p6, :cond_1c

    invoke-virtual {p0, p5, v0}, Lcom/android/internal/compat/ChangeReporter;->shouldWriteToStatsLog(ZZ)Z

    move-result p5

    if-eqz p5, :cond_1c

    .line 104
    const/16 v1, 0xe4

    iget v6, p0, Lcom/android/internal/compat/ChangeReporter;->mSource:I

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJII)V

    goto :goto_1f

    .line 103
    :cond_1c
    move v2, p1

    move-wide v3, p2

    move v5, p4

    .line 107
    :goto_1f
    invoke-direct {p0, v0, v5}, Lcom/android/internal/compat/ChangeReporter;->shouldWriteToDebug(ZI)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 108
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/internal/compat/ChangeReporter;->debugLog(IJI)V

    .line 110
    :cond_28
    return-void
.end method

.method public blacklist resetReportedChanges(I)V
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/android/internal/compat/ChangeReporter;->mReportedChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void
.end method

.method public blacklist shouldWriteToDebug(IJI)Z
    .registers 6

    .line 185
    new-instance v0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/compat/ChangeReporter$ChangeReport;-><init>(JI)V

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/android/internal/compat/ChangeReporter;->isAlreadyReported(ILcom/android/internal/compat/ChangeReporter$ChangeReport;)Z

    move-result p1

    .line 185
    invoke-direct {p0, p1, p4}, Lcom/android/internal/compat/ChangeReporter;->shouldWriteToDebug(ZI)Z

    move-result p1

    return p1
.end method

.method public blacklist shouldWriteToStatsLog(ZZ)Z
    .registers 3

    .line 149
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public blacklist startDebugLogAll()V
    .registers 2

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/compat/ChangeReporter;->mDebugLogAll:Z

    .line 129
    return-void
.end method

.method public blacklist stopDebugLogAll()V
    .registers 2

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/compat/ChangeReporter;->mDebugLogAll:Z

    .line 136
    return-void
.end method
