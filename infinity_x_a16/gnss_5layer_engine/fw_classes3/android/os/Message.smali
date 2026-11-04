.class public final Landroid/os/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Message$MatchHandlerWhatAndObject;,
        Landroid/os/Message$MatchHandlerWhatAndObjectEquals;,
        Landroid/os/Message$MatchHandlerRunnableAndObject;,
        Landroid/os/Message$MatchHandler;,
        Landroid/os/Message$MatchHandlerRunnableAndObjectEquals;,
        Landroid/os/Message$MatchHandlerAndObject;,
        Landroid/os/Message$MatchHandlerAndObjectEquals;,
        Landroid/os/Message$MatchAllMessages;,
        Landroid/os/Message$MatchAllFutureMessages;,
        Landroid/os/Message$MatchDeliverableMessages;,
        Landroid/os/Message$MatchBarrierToken;,
        Landroid/os/Message$MessageCompare;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o FLAGS_TO_CLEAR_ON_COPY_FROM:I = 0x5

.field static final greylist-max-o FLAG_ASYNCHRONOUS:I = 0x2

.field static final greylist-max-o FLAG_IN_USE:I = 0x1

.field static final blacklist FLAG_REMOVED:I = 0x4

.field private static final greylist-max-o MAX_POOL_SIZE:I = 0x32

.field private static final blacklist NULL_OBJECT:Ljava/lang/Object;

.field private static final blacklist NULL_RUNNABLE:Ljava/lang/Runnable;

.field public static final blacklist UID_NONE:I = -0x1

.field static final blacklist sFlags:Ljava/lang/invoke/VarHandle;

.field static final blacklist sMatchAllFutureMessages:Landroid/os/Message$MatchAllFutureMessages;

.field static final blacklist sMatchAllMessages:Landroid/os/Message$MatchAllMessages;

.field static final blacklist sMatchDeliverableMessages:Landroid/os/Message$MatchDeliverableMessages;

.field static final blacklist sMatchHandler:Landroid/os/Message$MatchHandler;

.field static final blacklist sMatchHandlerAndObject:Landroid/os/Message$MatchHandlerAndObject;

.field static final blacklist sMatchHandlerAndObjectEquals:Landroid/os/Message$MatchHandlerAndObjectEquals;

.field static final blacklist sMatchHandlerRunnableAndObject:Landroid/os/Message$MatchHandlerRunnableAndObject;

.field static final blacklist sMatchHandlerRunnableAndObjectEquals:Landroid/os/Message$MatchHandlerRunnableAndObjectEquals;

.field public static final blacklist sMatchHandlerWhatAndObject:Landroid/os/Message$MatchHandlerWhatAndObject;

.field static final blacklist sMatchHandlerWhatAndObjectEquals:Landroid/os/Message$MatchHandlerWhatAndObjectEquals;

.field private static greylist-max-o sPool:Landroid/os/Message;

.field private static greylist-max-o sPoolSize:I

.field public static final greylist-max-o sPoolSync:Ljava/lang/Object;


# instance fields
.field public whitelist arg1:I

.field public whitelist arg2:I

.field greylist callback:Ljava/lang/Runnable;

.field greylist-max-o data:Landroid/os/Bundle;

.field volatile blacklist eventId:J

.field volatile greylist flags:I

.field public blacklist heapIndex:I

.field public blacklist insertSeq:J

.field greylist next:Landroid/os/Message;

.field blacklist nextFree:Landroid/os/Message;

.field public whitelist obj:Ljava/lang/Object;

.field blacklist prev:Landroid/os/Message;

.field public whitelist replyTo:Landroid/os/Messenger;

.field blacklist sendingThreadName:Ljava/lang/String;

.field public whitelist sendingUid:I

.field greylist target:Landroid/os/Handler;

.field public whitelist what:I

.field public greylist when:J

.field public blacklist workSourceUid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreadFromParcel(Landroid/os/Message;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Message;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 142
    :try_start_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 143
    const-class v1, Landroid/os/Message;

    const-string v2, "flags"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Landroid/os/Message;->sFlags:Ljava/lang/invoke/VarHandle;
    :try_end_10
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_10} :catch_77

    .line 146
    nop

    .line 212
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    .line 214
    const/4 v0, 0x0

    sput v0, Landroid/os/Message;->sPoolSize:I

    .line 424
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Message;->NULL_OBJECT:Ljava/lang/Object;

    .line 425
    new-instance v0, Landroid/os/Message$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/Message$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/os/Message;->NULL_RUNNABLE:Ljava/lang/Runnable;

    .line 722
    new-instance v0, Landroid/os/Message$1;

    invoke-direct {v0}, Landroid/os/Message$1;-><init>()V

    sput-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 805
    new-instance v0, Landroid/os/Message$MatchHandlerWhatAndObject;

    invoke-direct {v0}, Landroid/os/Message$MatchHandlerWhatAndObject;-><init>()V

    sput-object v0, Landroid/os/Message;->sMatchHandlerWhatAndObject:Landroid/os/Message$MatchHandlerWhatAndObject;

    .line 822
    new-instance v0, Landroid/os/Message$MatchHandlerWhatAndObjectEquals;

    invoke-direct {v0}, Landroid/os/Message$MatchHandlerWhatAndObjectEquals;-><init>()V

    sput-object v0, Landroid/os/Message;->sMatchHandlerWhatAndObjectEquals:Landroid/os/Message$MatchHandlerWhatAndObjectEquals;

    .line 838
    new-instance v0, Landroid/os/Message$MatchHandlerRunnableAndObject;

    invoke-direct {v0}, Landroid/os/Message$MatchHandlerRunnableAndObject;-><init>()V

    sput-object v0, Landroid/os/Message;->sMatchHandlerRunnableAndObject:Landroid/os/Message$MatchHandlerRunnableAndObject;

    .line 851
    new-instance v0, Landroid/os/Message$MatchHandler;

    invoke-direct {v0}, Landroid/os/Message$MatchHandler;-><init>()V

    sput-object v0, Landroid/os/Message;->sMatchHandler:Landroid/os/Message$MatchHandler;

    .line 866
    new-instance v0, Landroid/os/Message$MatchHandlerRunnableAndObjectEquals;

    invoke-direct {v0}, Landroid/os/Message$MatchHandlerRunnableAndObjectEquals;-><init>()V

    sput-object v0, Landroid/os/Message;->sMatchHandlerRunnableAndObjectEquals:Landroid/os/Message$MatchHandlerRunnableAndObjectEquals;

    .line 882
    new-instance v0, Landroid/os/Message$MatchHandlerAndObject;

    invoke-direct {v0}, Landroid/os/Message$MatchHandlerAndObject;-><init>()V

    sput-object v0, Landroid/os/Message;->sMatchHandlerAndObject:Landroid/os/Message$MatchHandlerAndObject;

    .line 897
    new-instance v0, Landroid/os/Message$MatchHandlerAndObjectEquals;

    invoke-direct {v0}, Landroid/os/Message$MatchHandlerAndObjectEquals;-><init>()V

    sput-object v0, Landroid/os/Message;->sMatchHandlerAndObjectEquals:Landroid/os/Message$MatchHandlerAndObjectEquals;

    .line 910
    new-instance v0, Landroid/os/Message$MatchAllMessages;

    invoke-direct {v0}, Landroid/os/Message$MatchAllMessages;-><init>()V

    sput-object v0, Landroid/os/Message;->sMatchAllMessages:Landroid/os/Message$MatchAllMessages;

    .line 922
    new-instance v0, Landroid/os/Message$MatchAllFutureMessages;

    invoke-direct {v0}, Landroid/os/Message$MatchAllFutureMessages;-><init>()V

    sput-object v0, Landroid/os/Message;->sMatchAllFutureMessages:Landroid/os/Message$MatchAllFutureMessages;

    .line 952
    new-instance v0, Landroid/os/Message$MatchDeliverableMessages;

    invoke-direct {v0}, Landroid/os/Message$MatchDeliverableMessages;-><init>()V

    sput-object v0, Landroid/os/Message;->sMatchDeliverableMessages:Landroid/os/Message$MatchDeliverableMessages;

    return-void

    .line 144
    :catch_77
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/Message;->sendingUid:I

    .line 111
    iput v0, p0, Landroid/os/Message;->workSourceUid:I

    .line 188
    iput v0, p0, Landroid/os/Message;->heapIndex:I

    .line 625
    return-void
.end method

.method static blacklist compareMessages(Landroid/os/Message;Landroid/os/Message;)I
    .registers 8

    .line 629
    iget-wide v0, p0, Landroid/os/Message;->when:J

    .line 630
    iget-wide v2, p1, Landroid/os/Message;->when:J

    .line 631
    iget-wide v4, p0, Landroid/os/Message;->insertSeq:J

    .line 632
    iget-wide p0, p1, Landroid/os/Message;->insertSeq:J

    .line 633
    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    .line 634
    sub-long/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Long;->signum(J)I

    move-result p0

    .line 638
    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method static synthetic blacklist lambda$static$0()V
    .registers 0

    .line 425
    return-void
.end method

.method public static whitelist obtain()Landroid/os/Message;
    .registers 3

    .line 223
    invoke-static {}, Landroid/os/MessageQueue;->getUseConcurrent()Z

    move-result v0

    if-nez v0, :cond_26

    .line 224
    sget-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_9
    sget-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    if-eqz v1, :cond_21

    .line 226
    sget-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 227
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    sput-object v2, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 228
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 229
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->flags:I

    .line 230
    sget v2, Landroid/os/Message;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/os/Message;->sPoolSize:I

    .line 231
    monitor-exit v0

    return-object v1

    .line 233
    :cond_21
    monitor-exit v0

    goto :goto_26

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_23

    throw v1

    .line 235
    :cond_26
    :goto_26
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;)Landroid/os/Message;
    .registers 2

    .line 268
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 269
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 271
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;I)Landroid/os/Message;
    .registers 3

    .line 297
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 298
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 299
    iput p1, v0, Landroid/os/Message;->what:I

    .line 301
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;III)Landroid/os/Message;
    .registers 5

    .line 332
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 333
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 334
    iput p1, v0, Landroid/os/Message;->what:I

    .line 335
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 336
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 338
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6

    .line 354
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 355
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 356
    iput p1, v0, Landroid/os/Message;->what:I

    .line 357
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 358
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 359
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 361
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    .registers 4

    .line 313
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 314
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 315
    iput p1, v0, Landroid/os/Message;->what:I

    .line 316
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 318
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;
    .registers 3

    .line 282
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 283
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 284
    iput-object p1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 286
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Message;)Landroid/os/Message;
    .registers 4

    .line 245
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 246
    iget v1, p0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 247
    iget v1, p0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 248
    iget v1, p0, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 249
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 250
    iget-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 251
    iget v1, p0, Landroid/os/Message;->sendingUid:I

    iput v1, v0, Landroid/os/Message;->sendingUid:I

    .line 252
    iget v1, p0, Landroid/os/Message;->workSourceUid:I

    iput v1, v0, Landroid/os/Message;->workSourceUid:I

    .line 253
    iget-object v1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v1, :cond_2d

    .line 254
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 256
    :cond_2d
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    iput-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 257
    iget-object p0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    iput-object p0, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 259
    return-object v0
.end method

.method private blacklist onClear()V
    .registers 1

    .line 420
    return-void
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 767
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->what:I

    .line 768
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 769
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    .line 771
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 773
    :cond_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Message;->when:J

    .line 774
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 775
    invoke-static {p1}, Landroid/os/Messenger;->readMessengerOrNullFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 776
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->sendingUid:I

    .line 777
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/os/Message;->workSourceUid:I

    .line 778
    return-void
.end method


# virtual methods
.method blacklist clear()V
    .registers 4

    .line 403
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/Message;->what:I

    .line 405
    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 406
    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 408
    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 409
    const/4 v1, -0x1

    iput v1, p0, Landroid/os/Message;->sendingUid:I

    .line 410
    iput v1, p0, Landroid/os/Message;->workSourceUid:I

    .line 411
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/os/Message;->when:J

    .line 412
    iput-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 413
    iput-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 414
    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 415
    invoke-direct {p0}, Landroid/os/Message;->onClear()V

    .line 416
    return-void
.end method

.method blacklist clearReferenceFields()V
    .registers 2

    .line 434
    sget-object v0, Landroid/os/Message;->NULL_OBJECT:Ljava/lang/Object;

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 436
    iput-object v0, p0, Landroid/os/Message;->sendingThreadName:Ljava/lang/String;

    .line 437
    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 438
    sget-object v0, Landroid/os/Message;->NULL_RUNNABLE:Ljava/lang/Runnable;

    iput-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 439
    return-void
.end method

.method public whitelist copyFrom(Landroid/os/Message;)V
    .registers 3

    .line 447
    iget v0, p1, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, -0x6

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 448
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/Message;->what:I

    .line 449
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 450
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 451
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 452
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 453
    iget v0, p1, Landroid/os/Message;->sendingUid:I

    iput v0, p0, Landroid/os/Message;->sendingUid:I

    .line 454
    iget v0, p1, Landroid/os/Message;->workSourceUid:I

    iput v0, p0, Landroid/os/Message;->workSourceUid:I

    .line 456
    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_31

    .line 457
    iget-object p1, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    goto :goto_34

    .line 459
    :cond_31
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 461
    :goto_34
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 736
    const/4 v0, 0x0

    return v0
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 692
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 693
    const-wide v0, 0x10300000001L

    iget-wide v2, p0, Landroid/os/Message;->when:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 695
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v0, :cond_74

    .line 696
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_29

    .line 697
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_33

    .line 699
    :cond_29
    const-wide v0, 0x10500000003L

    iget v2, p0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 702
    :goto_33
    iget v0, p0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_41

    .line 703
    const-wide v0, 0x10500000004L

    iget v2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 706
    :cond_41
    iget v0, p0, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_4f

    .line 707
    const-wide v0, 0x10500000005L

    iget v2, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 710
    :cond_4f
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_61

    .line 711
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 714
    :cond_61
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000007L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_7e

    .line 716
    :cond_74
    const-wide v0, 0x10500000008L

    iget v2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 719
    :goto_7e
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 720
    return-void
.end method

.method public whitelist getCallback()Ljava/lang/Runnable;
    .registers 3

    .line 496
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 497
    sget-object v1, Landroid/os/Message;->NULL_RUNNABLE:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    :cond_7
    return-object v0
.end method

.method public whitelist getData()Landroid/os/Bundle;
    .registers 2

    .line 519
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 520
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 523
    :cond_b
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getTarget()Landroid/os/Handler;
    .registers 2

    .line 483
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    return-object v0
.end method

.method public whitelist getWhen()J
    .registers 3

    .line 467
    iget-wide v0, p0, Landroid/os/Message;->when:J

    return-wide v0
.end method

.method public whitelist isAsynchronous()Z
    .registers 2

    .line 576
    iget v0, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method greylist-max-o isInUse()Z
    .registers 3

    .line 614
    iget v0, p0, Landroid/os/Message;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method blacklist isRemoved()Z
    .registers 2

    .line 172
    iget v0, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method greylist markInUse()V
    .registers 2

    .line 619
    iget v0, p0, Landroid/os/Message;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 620
    return-void
.end method

.method public blacklist markRemoved()Z
    .registers 4

    .line 163
    nop

    :cond_1
    iget v0, p0, Landroid/os/Message;->flags:I

    .line 164
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_9

    .line 165
    const/4 v0, 0x0

    return v0

    .line 167
    :cond_9
    sget-object v1, Landroid/os/Message;->sFlags:Ljava/lang/invoke/VarHandle;

    or-int/lit8 v2, v0, 0x4

    invoke-polymorphic {v1, p0, v0, v2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Landroid/os/Message;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist peekData()Landroid/os/Bundle;
    .registers 2

    .line 535
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist recycle()V
    .registers 3

    .line 373
    invoke-virtual {p0}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-nez v0, :cond_a

    .line 377
    invoke-virtual {p0}, Landroid/os/Message;->recycleUnchecked()V

    .line 378
    return-void

    .line 374
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This message cannot be recycled because it is still in use."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist recycleUnchecked()V
    .registers 4

    .line 386
    invoke-virtual {p0}, Landroid/os/Message;->clear()V

    .line 387
    invoke-static {}, Landroid/os/MessageQueue;->getUseConcurrent()Z

    move-result v0

    if-nez v0, :cond_23

    .line 388
    sget-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_c
    sget v1, Landroid/os/Message;->sPoolSize:I

    const/16 v2, 0x32

    if-ge v1, v2, :cond_1e

    .line 390
    sget-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    iput-object v1, p0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 391
    sput-object p0, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 392
    sget v1, Landroid/os/Message;->sPoolSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/os/Message;->sPoolSize:I

    .line 394
    :cond_1e
    monitor-exit v0

    goto :goto_23

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_20

    throw v1

    .line 396
    :cond_23
    :goto_23
    return-void
.end method

.method public whitelist sendToTarget()V
    .registers 2

    .line 564
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 565
    return-void
.end method

.method public whitelist setAsynchronous(Z)V
    .registers 2

    .line 606
    if-eqz p1, :cond_9

    .line 607
    iget p1, p0, Landroid/os/Message;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/os/Message;->flags:I

    goto :goto_f

    .line 609
    :cond_9
    iget p1, p0, Landroid/os/Message;->flags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Landroid/os/Message;->flags:I

    .line 611
    :goto_f
    return-void
.end method

.method public greylist setCallback(Ljava/lang/Runnable;)Landroid/os/Message;
    .registers 2

    .line 503
    iput-object p1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 504
    return-object p0
.end method

.method public whitelist setData(Landroid/os/Bundle;)V
    .registers 2

    .line 545
    iput-object p1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 546
    return-void
.end method

.method public whitelist setTarget(Landroid/os/Handler;)V
    .registers 2

    .line 471
    iput-object p1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 472
    return-void
.end method

.method public greylist-max-o setWhat(I)Landroid/os/Message;
    .registers 2

    .line 554
    iput p1, p0, Landroid/os/Message;->what:I

    .line 555
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 643
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist toString(J)Ljava/lang/String;
    .registers 6

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    const-string/jumbo v1, "{ when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    iget-wide v1, p0, Landroid/os/Message;->when:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 652
    iget-object p1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz p1, :cond_73

    .line 653
    iget-object p1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz p1, :cond_2c

    .line 654
    const-string p1, " callback="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    iget-object p1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 657
    :cond_2c
    const-string p1, " what="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    iget p1, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 661
    :goto_36
    iget p1, p0, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_44

    .line 662
    const-string p1, " arg1="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    iget p1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 666
    :cond_44
    iget p1, p0, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_52

    .line 667
    const-string p1, " arg2="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    iget p1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 671
    :cond_52
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_60

    .line 672
    const-string p1, " obj="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 676
    :cond_60
    const-string p1, " target="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    iget-object p1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 679
    :cond_73
    const-string p1, " barrier="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    iget p1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 683
    :goto_7d
    const-string p1, " async="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {p0}, Landroid/os/Message;->isAsynchronous()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 685
    const-string p1, " heapIndex="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    iget p1, p0, Landroid/os/Message;->heapIndex:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 687
    const-string p1, " }"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 740
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-nez v0, :cond_4a

    .line 744
    iget v0, p0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    iget v0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2c

    .line 749
    :try_start_17
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    .line 750
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_22
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_22} :catch_23

    .line 755
    goto :goto_30

    .line 752
    :catch_23
    move-exception p1

    .line 753
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t marshal non-Parcelable objects across processes."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 757
    :cond_2c
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    :goto_30
    iget-wide v0, p0, Landroid/os/Message;->when:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 760
    iget-object p2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 761
    iget-object p2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {p2, p1}, Landroid/os/Messenger;->writeMessengerOrNullToParcel(Landroid/os/Messenger;Landroid/os/Parcel;)V

    .line 762
    iget p2, p0, Landroid/os/Message;->sendingUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    iget p2, p0, Landroid/os/Message;->workSourceUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    return-void

    .line 741
    :cond_4a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t marshal callbacks across processes."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
