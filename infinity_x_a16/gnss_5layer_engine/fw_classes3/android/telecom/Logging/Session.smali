.class public Landroid/telecom/Logging/Session;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/Session$Info;
    }
.end annotation


# static fields
.field public static final blacklist CONTINUE_SUBSESSION:Ljava/lang/String; = "CONTINUE_SUBSESSION"

.field public static final blacklist CREATE_SUBSESSION:Ljava/lang/String; = "CREATE_SUBSESSION"

.field public static final blacklist END_SESSION:Ljava/lang/String; = "END_SESSION"

.field public static final blacklist END_SUBSESSION:Ljava/lang/String; = "END_SUBSESSION"

.field public static final blacklist EXTERNAL_INDICATOR:Ljava/lang/String; = "E-"

.field public static final blacklist LOG_TAG:Ljava/lang/String; = "Session"

.field private static final blacklist SESSION_RECURSION_LIMIT:I = 0x19

.field public static final blacklist SESSION_SEPARATION_CHAR_CHILD:Ljava/lang/String; = "_"

.field public static final blacklist START_EXTERNAL_SESSION:Ljava/lang/String; = "START_EXTERNAL_SESSION"

.field public static final blacklist START_SESSION:Ljava/lang/String; = "START_SESSION"

.field public static final blacklist SUBSESSION_SEPARATION_CHAR:Ljava/lang/String; = "->"

.field public static final blacklist TRUNCATE_STRING:Ljava/lang/String; = "..."

.field public static final blacklist UNDEFINED:J = -0x1L


# instance fields
.field private final blacklist mChildCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mChildSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telecom/Logging/Session;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExecutionEndTimeMs:J

.field private blacklist mExecutionStartTimeMs:J

.field private volatile blacklist mFullMethodPathCache:Ljava/lang/String;

.field private blacklist mIsCompleted:Z

.field private final blacklist mIsExternal:Z

.field private final blacklist mIsStartedFromActiveSession:Z

.field private final blacklist mOwnerInfo:Ljava/lang/String;

.field private volatile blacklist mParentSession:Landroid/telecom/Logging/Session;

.field private final blacklist mSessionId:Ljava/lang/String;

.field private volatile blacklist mShortMethodName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetFullSessionId(Landroid/telecom/Logging/Session;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/telecom/Logging/Session;->getFullSessionId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSessionExternal(Landroid/telecom/Logging/Session;)Z
    .registers 1

    invoke-direct {p0}, Landroid/telecom/Logging/Session;->isSessionExternal()Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V
    .registers 10

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    .line 144
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/telecom/Logging/Session;->mChildCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 160
    if-eqz p1, :cond_1c

    goto :goto_1e

    :cond_1c
    const-string p1, "???"

    :goto_1e
    iput-object p1, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    .line 161
    invoke-virtual {p0, p2}, Landroid/telecom/Logging/Session;->setShortMethodName(Ljava/lang/String;)V

    .line 162
    iput-wide p3, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    .line 163
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    .line 164
    iput-boolean p5, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    .line 165
    iput-boolean p6, p0, Landroid/telecom/Logging/Session;->mIsExternal:Z

    .line 166
    iput-object p7, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    .line 167
    return-void
.end method

.method private blacklist getFullSessionId()Ljava/lang/String;
    .registers 7

    .line 266
    nop

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    const/4 v1, 0x0

    move-object v2, p0

    move v3, v1

    .line 269
    :goto_9
    if-eqz v2, :cond_4a

    .line 270
    invoke-virtual {v2}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v4

    .line 271
    if-eqz v4, :cond_3e

    .line 272
    const/16 v5, 0x19

    if-lt v3, v5, :cond_2d

    .line 273
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v2, "..."

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, "Session"

    const-string v2, "getFullSessionId: Hit iteration limit!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 278
    :cond_2d
    sget-boolean v5, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v5, :cond_45

    .line 279
    invoke-virtual {v2}, Landroid/telecom/Logging/Session;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 283
    :cond_3e
    invoke-virtual {v2}, Landroid/telecom/Logging/Session;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_45
    :goto_45
    nop

    .line 286
    add-int/lit8 v3, v3, 0x1

    .line 287
    move-object v2, v4

    goto :goto_9

    .line 288
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getRootSession(Ljava/lang/String;)Landroid/telecom/Logging/Session;
    .registers 7

    .line 291
    nop

    .line 292
    nop

    .line 293
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move-object v1, p0

    .line 294
    :goto_9
    if-eqz v0, :cond_33

    .line 295
    const/16 v3, 0x19

    if-lt v2, v3, :cond_28

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRootSession: Hit iteration limit from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Session"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    goto :goto_33

    .line 303
    :cond_28
    nop

    .line 304
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v1

    .line 305
    add-int/lit8 v2, v2, 0x1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_9

    .line 307
    :cond_33
    :goto_33
    return-object v1
.end method

.method private blacklist isSessionExternal()Z
    .registers 2

    .line 453
    const-string v0, "isSessionExternal"

    invoke-direct {p0, v0}, Landroid/telecom/Logging/Session;->getRootSession(Ljava/lang/String;)Landroid/telecom/Logging/Session;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v0

    return v0
.end method

.method private blacklist printSessionTree()Ljava/lang/String;
    .registers 9

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 352
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 355
    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 356
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 358
    :goto_1a
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7d

    .line 360
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 361
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 364
    const-string v5, "\t"

    invoke-virtual {v5, v4}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const/16 v7, 0x19

    if-lt v4, v7, :cond_5b

    .line 370
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    goto :goto_1a

    .line 376
    :cond_5b
    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->getChildSessions()Ljava/util/ArrayList;

    move-result-object v3

    .line 380
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_65
    if-ltz v5, :cond_7c

    .line 381
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Logging/Session;

    invoke-virtual {v1, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 382
    add-int/lit8 v6, v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 380
    add-int/lit8 v5, v5, -0x1

    goto :goto_65

    .line 384
    :cond_7c
    goto :goto_1a

    .line 386
    :cond_7d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist printSessionTreeLegacy()Ljava/lang/String;
    .registers 6

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    nop

    .line 322
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 323
    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 324
    :goto_f
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_64

    .line 325
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 326
    const-string v4, "\t"

    invoke-virtual {v4, v2}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const/16 v4, 0x19

    if-lt v2, v4, :cond_3c

    .line 330
    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    add-int/lit8 v2, v2, -0x1

    .line 332
    goto :goto_f

    .line 334
    :cond_3c
    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->getChildSessions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->reversed()Ljava/util/List;

    move-result-object v3

    .line 335
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_61

    .line 336
    add-int/lit8 v2, v2, 0x1

    .line 337
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/Session;

    .line 338
    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 339
    goto :goto_50

    :cond_60
    goto :goto_63

    .line 341
    :cond_61
    add-int/lit8 v2, v2, -0x1

    .line 343
    :goto_63
    goto :goto_f

    .line 344
    :cond_64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist addChild(Landroid/telecom/Logging/Session;)V
    .registers 4

    .line 189
    if-nez p1, :cond_3

    return-void

    .line 190
    :cond_3
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    monitor-enter v0

    .line 191
    :try_start_6
    iget-object v1, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    monitor-exit v0

    .line 193
    return-void

    .line 192
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 473
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 474
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_78

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_78

    .line 476
    :cond_12
    check-cast p1, Landroid/telecom/Logging/Session;

    .line 478
    iget-wide v1, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    iget-wide v3, p1, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1d

    return v0

    .line 479
    :cond_1d
    iget-wide v1, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    iget-wide v3, p1, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_26

    return v0

    .line 480
    :cond_26
    iget-boolean v1, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    iget-boolean v2, p1, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    if-eq v1, v2, :cond_2d

    return v0

    .line 481
    :cond_2d
    iget-object v1, p0, Landroid/telecom/Logging/Session;->mChildCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p1, Landroid/telecom/Logging/Session;->mChildCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq v1, v2, :cond_3c

    return v0

    .line 482
    :cond_3c
    iget-boolean v1, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    iget-boolean v2, p1, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    if-eq v1, v2, :cond_43

    return v0

    .line 483
    :cond_43
    iget-object v1, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    iget-object v2, p1, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v0

    .line 484
    :cond_4e
    iget-object v1, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    iget-object v2, p1, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v0

    .line 485
    :cond_59
    iget-object v1, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    iget-object v2, p1, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v0

    .line 486
    :cond_64
    iget-object v1, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v0

    .line 487
    :cond_6f
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    iget-object p1, p1, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 474
    :cond_78
    :goto_78
    return v0
.end method

.method public blacklist getChildSessions()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telecom/Logging/Session;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    monitor-enter v0

    .line 216
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 217
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist getExecutionStartTimeMilliseconds()J
    .registers 3

    .line 203
    iget-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    return-wide v0
.end method

.method public blacklist getExternalInfo(Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;
    .registers 2

    .line 233
    invoke-static {p0, p1}, Landroid/telecom/Logging/Session$Info;->getExternalInfo(Landroid/telecom/Logging/Session;Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getFullMethodPath(Z)Ljava/lang/String;
    .registers 10

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v1

    .line 401
    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 402
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_1d

    :cond_1b
    move v1, v2

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    .line 403
    :goto_1e
    nop

    .line 404
    move-object v3, p0

    move v4, v2

    .line 405
    :goto_21
    if-eqz v3, :cond_7f

    .line 406
    iget-object v5, v3, Landroid/telecom/Logging/Session;->mFullMethodPathCache:Ljava/lang/String;

    .line 409
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_35

    if-nez p1, :cond_35

    .line 410
    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 414
    :cond_35
    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v5

    .line 417
    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v6

    const-string v7, "..."

    if-eqz v6, :cond_59

    .line 418
    if-eqz p1, :cond_47

    .line 419
    invoke-virtual {v0, v2, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    .line 421
    :cond_47
    const-string v6, ")"

    invoke-virtual {v0, v2, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string v3, "("

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    .line 426
    :cond_59
    invoke-virtual {v3}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :goto_60
    if-eqz v5, :cond_67

    .line 429
    const-string v3, "->"

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_67
    const/16 v3, 0x19

    if-lt v4, v3, :cond_7a

    .line 436
    const-string p1, "Session"

    const-string v1, "getFullMethodPath: Hit iteration limit!"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {v0, v2, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 440
    :cond_7a
    nop

    .line 441
    add-int/lit8 v4, v4, 0x1

    .line 442
    move-object v3, v5

    goto :goto_21

    .line 443
    :cond_7f
    if-eqz v1, :cond_89

    if-nez p1, :cond_89

    .line 446
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telecom/Logging/Session;->mFullMethodPathCache:Ljava/lang/String;

    .line 448
    :cond_89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getInfo()Landroid/telecom/Logging/Session$Info;
    .registers 2

    .line 229
    invoke-static {p0}, Landroid/telecom/Logging/Session$Info;->getInfo(Landroid/telecom/Logging/Session;)Landroid/telecom/Logging/Session$Info;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLocalExecutionTime()J
    .registers 5

    .line 253
    iget-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 254
    return-wide v2

    .line 256
    :cond_9
    iget-wide v0, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    iget-wide v2, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getNextChildId()Ljava/lang/String;
    .registers 2

    .line 260
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOwnerInfo()Ljava/lang/String;
    .registers 2

    .line 237
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getParentSession()Landroid/telecom/Logging/Session;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    return-object v0
.end method

.method public blacklist getSessionId()Ljava/lang/String;
    .registers 2

    .line 242
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getShortMethodName()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 458
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 459
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 460
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 461
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 462
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->hashCode()I

    move-result v1

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    add-int/2addr v0, v1

    .line 463
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 464
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    add-int/2addr v0, v1

    .line 465
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mChildCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 466
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    add-int/2addr v0, v1

    .line 467
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    if-eqz v1, :cond_59

    iget-object v1, p0, Landroid/telecom/Logging/Session;->mOwnerInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_59
    add-int/2addr v0, v2

    .line 468
    return v0
.end method

.method public blacklist isExternal()Z
    .registers 2

    .line 181
    iget-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsExternal:Z

    return v0
.end method

.method public blacklist isSessionCompleted()Z
    .registers 2

    .line 221
    iget-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    return v0
.end method

.method public blacklist isStartedFromActiveSession()Z
    .registers 2

    .line 225
    iget-boolean v0, p0, Landroid/telecom/Logging/Session;->mIsStartedFromActiveSession:Z

    return v0
.end method

.method public blacklist markSessionCompleted(J)V
    .registers 3

    .line 248
    iput-wide p1, p0, Landroid/telecom/Logging/Session;->mExecutionEndTimeMs:J

    .line 249
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/telecom/Logging/Session;->mIsCompleted:Z

    .line 250
    return-void
.end method

.method public blacklist printFullSessionTree()Ljava/lang/String;
    .registers 3

    .line 312
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/Flags;->fixSessionTreeLogging()Z

    move-result v0

    const-string/jumbo v1, "printFullSessionTree"

    if-eqz v0, :cond_12

    .line 313
    invoke-direct {p0, v1}, Landroid/telecom/Logging/Session;->getRootSession(Ljava/lang/String;)Landroid/telecom/Logging/Session;

    move-result-object v0

    invoke-direct {v0}, Landroid/telecom/Logging/Session;->printSessionTree()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 315
    :cond_12
    invoke-direct {p0, v1}, Landroid/telecom/Logging/Session;->getRootSession(Ljava/lang/String;)Landroid/telecom/Logging/Session;

    move-result-object v0

    invoke-direct {v0}, Landroid/telecom/Logging/Session;->printSessionTreeLegacy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removeChild(Landroid/telecom/Logging/Session;)V
    .registers 4

    .line 196
    if-nez p1, :cond_3

    return-void

    .line 197
    :cond_3
    iget-object v0, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    monitor-enter v0

    .line 198
    :try_start_6
    iget-object v1, p0, Landroid/telecom/Logging/Session;->mChildSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public blacklist setExecutionStartTimeMs(J)V
    .registers 3

    .line 207
    iput-wide p1, p0, Landroid/telecom/Logging/Session;->mExecutionStartTimeMs:J

    .line 208
    return-void
.end method

.method public blacklist setParentSession(Landroid/telecom/Logging/Session;)V
    .registers 2

    .line 185
    iput-object p1, p0, Landroid/telecom/Logging/Session;->mParentSession:Landroid/telecom/Logging/Session;

    .line 186
    return-void
.end method

.method public blacklist setShortMethodName(Ljava/lang/String;)V
    .registers 2

    .line 174
    if-nez p1, :cond_4

    .line 175
    const-string p1, ""

    .line 177
    :cond_4
    iput-object p1, p0, Landroid/telecom/Logging/Session;->mShortMethodName:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 492
    nop

    .line 493
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 496
    const-string/jumbo v0, "toString"

    invoke-direct {p0, v0}, Landroid/telecom/Logging/Session;->getRootSession(Ljava/lang/String;)Landroid/telecom/Logging/Session;

    move-result-object v0

    goto :goto_16

    .line 498
    :cond_15
    move-object v0, p0

    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/telecom/Logging/Session;->getFullMethodPath(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_44

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_44

    .line 501
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {v0}, Landroid/telecom/Logging/Session;->getFullSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
