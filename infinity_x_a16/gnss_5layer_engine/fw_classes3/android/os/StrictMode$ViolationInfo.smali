.class public final Landroid/os/StrictMode$ViolationInfo;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViolationInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist broadcastIntentAction:Ljava/lang/String;

.field public blacklist durationMillis:I

.field private final greylist-max-o mBinderStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPenaltyMask:I

.field private greylist-max-o mStackTrace:Ljava/lang/String;

.field private final greylist-max-o mViolation:Landroid/os/strictmode/Violation;

.field public blacklist numAnimationsRunning:I

.field public blacklist numInstances:J

.field public blacklist tags:[Ljava/lang/String;

.field public blacklist violationNumThisLoop:I

.field public blacklist violationUptimeMillis:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPenaltyMask(Landroid/os/StrictMode$ViolationInfo;)I
    .registers 1

    iget p0, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViolation(Landroid/os/StrictMode$ViolationInfo;)Landroid/os/strictmode/Violation;
    .registers 1

    iget-object p0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3383
    new-instance v0, Landroid/os/StrictMode$ViolationInfo$1;

    invoke-direct {v0}, Landroid/os/StrictMode$ViolationInfo$1;-><init>()V

    sput-object v0, Landroid/os/StrictMode$ViolationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 3265
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    .line 3266
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;Z)V
    .registers 14

    .line 3274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3122
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    .line 3131
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 3134
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 3156
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 3275
    const-class v1, Landroid/os/strictmode/Violation;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/os/strictmode/Violation;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/strictmode/Violation;

    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    .line 3276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3277
    move v2, v0

    :goto_29
    if-ge v2, v1, :cond_56

    .line 3278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v4, v3, [Ljava/lang/StackTraceElement;

    .line 3279
    move v5, v0

    :goto_32
    if-ge v5, v3, :cond_4e

    .line 3280
    new-instance v6, Ljava/lang/StackTraceElement;

    .line 3282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3286
    aput-object v6, v4, v5

    .line 3279
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 3288
    :cond_4e
    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-interface {v3, v4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 3277
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 3290
    :cond_56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3291
    if-eqz p2, :cond_63

    .line 3292
    const p2, 0x7fffffff

    and-int/2addr p2, v0

    iput p2, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    goto :goto_65

    .line 3294
    :cond_63
    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    .line 3296
    :goto_65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 3297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    .line 3298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 3299
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 3300
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 3301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    .line 3302
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .line 3303
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/strictmode/Violation;I)V
    .registers 7

    .line 3159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3122
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    .line 3131
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 3134
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 3156
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 3160
    iput-object p1, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    .line 3161
    iput p2, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    .line 3162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 3163
    invoke-static {}, Landroid/animation/ValueAnimator;->getCurrentAnimationsCount()I

    move-result p2

    iput p2, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 3164
    invoke-static {}, Landroid/app/ActivityThread;->getIntentBeingBroadcast()Landroid/content/Intent;

    move-result-object p2

    .line 3165
    if-eqz p2, :cond_30

    .line 3166
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    .line 3168
    :cond_30
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetsThisThreadSpanState()Ljava/lang/ThreadLocal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/StrictMode$ThreadSpanState;

    .line 3169
    instance-of v1, p1, Landroid/os/strictmode/InstanceCountViolation;

    if-eqz v1, :cond_46

    .line 3170
    check-cast p1, Landroid/os/strictmode/InstanceCountViolation;

    invoke-virtual {p1}, Landroid/os/strictmode/InstanceCountViolation;->getNumberOfInstances()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 3172
    :cond_46
    monitor-enter p2

    .line 3173
    :try_start_47
    iget p1, p2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 3174
    const/16 v1, 0x14

    if-le p1, v1, :cond_4e

    .line 3175
    move p1, v1

    .line 3177
    :cond_4e
    if-eqz p1, :cond_6a

    .line 3178
    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .line 3179
    iget-object v1, p2, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    .line 3180
    nop

    .line 3181
    :goto_57
    if-eqz v1, :cond_6a

    if-ge v0, p1, :cond_6a

    .line 3182
    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/StrictMode$Span;->-$$Nest$fgetmName(Landroid/os/StrictMode$Span;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3183
    add-int/lit8 v0, v0, 0x1

    .line 3184
    invoke-static {v1}, Landroid/os/StrictMode$Span;->-$$Nest$fgetmNext(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v1

    goto :goto_57

    .line 3187
    :cond_6a
    monitor-exit p2

    .line 3188
    return-void

    .line 3187
    :catchall_6c
    move-exception p1

    monitor-exit p2
    :try_end_6e
    .catchall {:try_start_47 .. :try_end_6e} :catchall_6c

    throw p1
.end method


# virtual methods
.method greylist-max-o addLocalStack(Ljava/lang/Throwable;)V
    .registers 3

    .line 3239
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 3240
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 3380
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 10

    .line 3352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stackTrace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/StrictMode$ViolationInfo;->getStackTrace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "penalty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3354
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5d

    .line 3355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "durationMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3357
    :cond_5d
    iget-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_82

    .line 3358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "numInstances: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3360
    :cond_82
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    if-eqz v0, :cond_a3

    .line 3361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "violationNumThisLoop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3363
    :cond_a3
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    if-eqz v0, :cond_c4

    .line 3364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "numAnimationsRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3366
    :cond_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "violationUptimeMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3367
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    if-eqz v0, :cond_101

    .line 3368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "broadcastIntentAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3370
    :cond_101
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    if-eqz v0, :cond_13a

    .line 3371
    nop

    .line 3372
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_10b
    if-ge v2, v1, :cond_13a

    aget-object v4, v0, v2

    .line 3373
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "tag["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3372
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_10b

    .line 3376
    :cond_13a
    return-void
.end method

.method public blacklist getStackTrace()Ljava/lang/String;
    .registers 10

    .line 3195
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mStackTrace:Ljava/lang/String;

    if-nez v0, :cond_54

    .line 3196
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 3197
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/16 v2, 0x100

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 3198
    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {v2, v1}, Landroid/os/strictmode/Violation;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 3199
    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    .line 3200
    const-string v5, "# via Binder call with stack:\n"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3201
    array-length v5, v4

    move v6, v3

    :goto_2f
    if-ge v6, v5, :cond_47

    aget-object v7, v4, v6

    .line 3202
    const-string v8, "\tat "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3203
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3204
    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 3201
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 3206
    :cond_47
    goto :goto_1c

    .line 3207
    :cond_48
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 3208
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 3209
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mStackTrace:Ljava/lang/String;

    .line 3211
    :cond_54
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mStackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getViolationClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/strictmode/Violation;",
            ">;"
        }
    .end annotation

    .line 3215
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getViolationDetails()Ljava/lang/String;
    .registers 2

    .line 3225
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {v0}, Landroid/os/strictmode/Violation;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 3244
    nop

    .line 3245
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    if-eqz v0, :cond_f

    .line 3246
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {v0}, Landroid/os/strictmode/Violation;->hashCode()I

    move-result v0

    const/16 v1, 0x275

    add-int/2addr v1, v0

    goto :goto_11

    .line 3245
    :cond_f
    const/16 v1, 0x11

    .line 3248
    :goto_11
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    if-eqz v0, :cond_17

    .line 3249
    mul-int/lit8 v1, v1, 0x25

    .line 3251
    :cond_17
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 3252
    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3254
    :cond_24
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    if-eqz v0, :cond_3a

    .line 3255
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v2, :cond_3a

    aget-object v4, v0, v3

    .line 3256
    mul-int/lit8 v1, v1, 0x25

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v1, v4

    .line 3255
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 3259
    :cond_3a
    return v1
.end method

.method greylist-max-o penaltyEnabled(I)Z
    .registers 3

    .line 3229
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 3308
    iget-object p2, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 3309
    iget-object p2, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3310
    iget-object p2, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 3311
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3312
    array-length v1, v0

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v1, :cond_49

    aget-object v3, v0, v2

    .line 3313
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3314
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3315
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3316
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3312
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 3318
    :cond_49
    goto :goto_14

    .line 3319
    :cond_4a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 3320
    iget p2, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3321
    iget p2, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3322
    iget p2, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3323
    iget p2, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3324
    iget-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3325
    iget-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3326
    iget-object p2, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3327
    iget-object p2, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3328
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 3348
    return-void
.end method
