.class public final Landroid/os/PerfettoTrackEventExtra$Builder;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfettoTrackEventExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgBool;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgDouble;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgInt64;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$ArgString;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCategory:Landroid/os/PerfettoTrace$Category;

.field private final blacklist mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

.field private final blacklist mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

.field private final blacklist mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$CounterTrack;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

.field private blacklist mEventName:Ljava/lang/String;

.field private final blacklist mExtra:Landroid/os/PerfettoTrackEventExtra;

.field private final blacklist mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldDouble;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldInt64;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldNested;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$Pool<",
            "Landroid/os/PerfettoTrackEventExtra$FieldString;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

.field private blacklist mIsBuilt:Z

.field private final blacklist mIsCategoryEnabled:Z

.field private final blacklist mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/PerfettoTrackEventExtra$RingBuffer<",
            "Landroid/os/PerfettoTrackEventExtra$NamedTrack;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

.field private final blacklist mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

.field private final blacklist mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

.field private blacklist mTraceType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$minitInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$Builder;->initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 178
    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsTrackEventExtra()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/PerfettoTrackEventExtra$Builder;-><init>(Landroid/os/PerfettoTrackEventExtra;Z)V

    .line 179
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/PerfettoTrackEventExtra-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra$Builder;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PerfettoTrackEventExtra;Z)V
    .registers 3

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-boolean p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    .line 183
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    .line 184
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    const/4 p2, 0x0

    if-nez p1, :cond_e

    move-object p1, p2

    goto :goto_14

    :cond_e
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmNamedTrackCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object p1

    :goto_14
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 185
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez p1, :cond_1c

    move-object p1, p2

    goto :goto_22

    :cond_1c
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmCounterTrackCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object p1

    :goto_22
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 186
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez p1, :cond_2a

    move-object p1, p2

    goto :goto_30

    :cond_2a
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmArgInt64Cache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object p1

    :goto_30
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 187
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez p1, :cond_38

    move-object p1, p2

    goto :goto_3e

    :cond_38
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmArgDoubleCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object p1

    :goto_3e
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 188
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez p1, :cond_46

    move-object p1, p2

    goto :goto_4c

    :cond_46
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmArgBoolCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object p1

    :goto_4c
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 189
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez p1, :cond_54

    move-object p1, p2

    goto :goto_5a

    :cond_54
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmArgStringCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    move-result-object p1

    :goto_5a
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    .line 190
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez p1, :cond_62

    move-object p1, p2

    goto :goto_68

    :cond_62
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmFieldInt64Cache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object p1

    :goto_68
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 191
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez p1, :cond_70

    move-object p1, p2

    goto :goto_76

    :cond_70
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmFieldDoubleCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object p1

    :goto_76
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 192
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez p1, :cond_7e

    move-object p1, p2

    goto :goto_84

    :cond_7e
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmFieldStringCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object p1

    :goto_84
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 193
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez p1, :cond_8c

    move-object p1, p2

    goto :goto_92

    :cond_8c
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmFieldNestedCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object p1

    :goto_92
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 194
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez p1, :cond_9a

    move-object p1, p2

    goto :goto_a0

    :cond_9a
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$fgetmBuilderCache(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Pool;

    move-result-object p1

    :goto_a0
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    .line 196
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez p1, :cond_a8

    move-object p1, p2

    goto :goto_ae

    :cond_a8
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetCounterInt64(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    move-result-object p1

    :goto_ae
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    .line 197
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez p1, :cond_b6

    move-object p1, p2

    goto :goto_bc

    :cond_b6
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetCounterDouble(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    move-result-object p1

    :goto_bc
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    .line 198
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez p1, :cond_c4

    move-object p1, p2

    goto :goto_ca

    :cond_c4
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetProto(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Proto;

    move-result-object p1

    :goto_ca
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    .line 199
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez p1, :cond_d2

    move-object p1, p2

    goto :goto_d8

    :cond_d2
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetFlow(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Flow;

    move-result-object p1

    :goto_d8
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    .line 200
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    if-nez p1, :cond_df

    goto :goto_e5

    :cond_df
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$mgetTerminatingFlow(Landroid/os/PerfettoTrackEventExtra;)Landroid/os/PerfettoTrackEventExtra$Flow;

    move-result-object p2

    :goto_e5
    iput-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    .line 201
    return-void
.end method

.method private blacklist checkContainer()V
    .registers 3

    .line 610
    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->checkState()V

    .line 611
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    if-eqz v0, :cond_8

    .line 615
    return-void

    .line 612
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Field operations must be within beginProto/endProto block"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkParent()V
    .registers 3

    .line 603
    invoke-direct {p0}, Landroid/os/PerfettoTrackEventExtra$Builder;->checkState()V

    .line 604
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 607
    return-void

    .line 605
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation not supported for proto"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkState()V
    .registers 3

    .line 595
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsBuilt:Z

    if-nez v0, :cond_5

    .line 600
    return-void

    .line 596
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This builder has already been used. Create a new builder for another event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 3

    .line 587
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    .line 588
    iput-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    .line 589
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsBuilt:Z

    .line 591
    return-object p0
.end method


# virtual methods
.method public blacklist addArg(Ljava/lang/String;D)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 6

    .line 292
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 293
    return-object p0

    .line 298
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;

    .line 299
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 300
    :cond_1d
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;

    invoke-direct {v0, p1}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;-><init>(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgDoubleCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    .line 303
    :cond_2b
    invoke-virtual {v0, p2, p3}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->setValue(D)V

    .line 304
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {p1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 305
    return-object p0
.end method

.method public blacklist addArg(Ljava/lang/String;J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 6

    .line 252
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 253
    return-object p0

    .line 258
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$ArgInt64;

    .line 259
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 260
    :cond_1d
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$ArgInt64;

    invoke-direct {v0, p1}, Landroid/os/PerfettoTrackEventExtra$ArgInt64;-><init>(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgInt64Cache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    .line 263
    :cond_2b
    invoke-virtual {v0, p2, p3}, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->setValue(J)V

    .line 264
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {p1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 265
    return-object p0
.end method

.method public blacklist addArg(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 5

    .line 312
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 313
    return-object p0

    .line 318
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$ArgString;

    .line 319
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$ArgString;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 320
    :cond_1d
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$ArgString;

    invoke-direct {v0, p1}, Landroid/os/PerfettoTrackEventExtra$ArgString;-><init>(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgStringCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    .line 323
    :cond_2b
    invoke-virtual {v0, p2}, Landroid/os/PerfettoTrackEventExtra$ArgString;->setValue(Ljava/lang/String;)V

    .line 324
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {p1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 325
    return-object p0
.end method

.method public blacklist addArg(Ljava/lang/String;Z)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 5

    .line 272
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 273
    return-object p0

    .line 278
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$ArgBool;

    .line 279
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$ArgBool;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 280
    :cond_1d
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$ArgBool;

    invoke-direct {v0, p1}, Landroid/os/PerfettoTrackEventExtra$ArgBool;-><init>(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mArgBoolCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    .line 283
    :cond_2b
    invoke-virtual {v0, p2}, Landroid/os/PerfettoTrackEventExtra$ArgBool;->setValue(Z)V

    .line 284
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {p1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 285
    return-object p0
.end method

.method public blacklist addField(JD)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 7

    .line 494
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 495
    return-object p0

    .line 500
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsFieldDoubleSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$FieldDouble;

    .line 501
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PerfettoTrackEventExtra$FieldDouble;->setValue(JD)V

    .line 502
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    invoke-virtual {p1, p2, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$FieldContainer;Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 503
    return-object p0
.end method

.method public blacklist addField(JJ)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 7

    .line 478
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 479
    return-object p0

    .line 484
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsFieldInt64Supplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$FieldInt64;

    .line 485
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PerfettoTrackEventExtra$FieldInt64;->setValue(JJ)V

    .line 486
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    invoke-virtual {p1, p2, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$FieldContainer;Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 487
    return-object p0
.end method

.method public blacklist addField(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 6

    .line 510
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 511
    return-object p0

    .line 516
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsFieldStringSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$FieldString;

    .line 517
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PerfettoTrackEventExtra$FieldString;->setValue(JLjava/lang/String;)V

    .line 518
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    invoke-virtual {p1, p2, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$FieldContainer;Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 519
    return-object p0
.end method

.method public blacklist beginNested(J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 5

    .line 561
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 562
    return-object p0

    .line 567
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsFieldNestedSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$FieldNested;

    .line 568
    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$FieldNested;->setId(J)V

    .line 569
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    invoke-virtual {p1, p2, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$FieldContainer;Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 570
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsBuilderSupplier()Ljava/util/function/Supplier;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PerfettoTrackEventExtra$Builder;

    invoke-direct {p1, p0, v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist beginProto()Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 3

    .line 531
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 532
    return-object p0

    .line 537
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Proto;->clearFields()V

    .line 538
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 539
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$sfgetsBuilderSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$Builder;

    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mProto:Landroid/os/PerfettoTrackEventExtra$Proto;

    invoke-direct {v0, p0, v1}, Landroid/os/PerfettoTrackEventExtra$Builder;->initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist emit()V
    .registers 8

    .line 207
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 208
    return-void

    .line 214
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsBuilt:Z

    .line 215
    iget v1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTraceType:I

    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCategory:Landroid/os/PerfettoTrace$Category;

    invoke-virtual {v0}, Landroid/os/PerfettoTrace$Category;->getPtr()J

    move-result-wide v2

    iget-object v4, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mEventName:Ljava/lang/String;

    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra;->getPtr()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Landroid/os/PerfettoTrackEventExtra;->-$$Nest$smnative_emit(IJLjava/lang/String;J)V

    .line 216
    return-void
.end method

.method public blacklist endNested()Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 3

    .line 577
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 578
    return-object p0

    .line 580
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    if-eqz v0, :cond_10

    .line 583
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    return-object v0

    .line 581
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No nested field to end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist endProto()Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 3

    .line 546
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 547
    return-object p0

    .line 549
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCurrentContainer:Landroid/os/PerfettoTrackEventExtra$FieldContainer;

    if-eqz v0, :cond_10

    .line 552
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mParent:Landroid/os/PerfettoTrackEventExtra$Builder;

    return-object v0

    .line 550
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No proto to end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist init(ILandroid/os/PerfettoTrace$Category;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 4

    .line 222
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 223
    return-object p0

    .line 226
    :cond_5
    iput p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTraceType:I

    .line 227
    iput-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCategory:Landroid/os/PerfettoTrace$Category;

    .line 228
    const-string p1, ""

    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mEventName:Ljava/lang/String;

    .line 229
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldInt64Cache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {p1}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    .line 230
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldDoubleCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {p1}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    .line 231
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldStringCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {p1}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    .line 232
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFieldNestedCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {p1}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    .line 233
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mBuilderCache:Landroid/os/PerfettoTrackEventExtra$Pool;

    invoke-virtual {p1}, Landroid/os/PerfettoTrackEventExtra$Pool;->reset()V

    .line 235
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {p1}, Landroid/os/PerfettoTrackEventExtra;->reset()V

    .line 237
    const/4 p1, 0x0

    invoke-direct {p0, p0, p1}, Landroid/os/PerfettoTrackEventExtra$Builder;->initInternal(Landroid/os/PerfettoTrackEventExtra$Builder;Landroid/os/PerfettoTrackEventExtra$FieldContainer;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setCounter(D)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 4

    .line 463
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 464
    return-object p0

    .line 469
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$CounterDouble;->setValue(D)V

    .line 470
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterDouble:Landroid/os/PerfettoTrackEventExtra$CounterDouble;

    invoke-virtual {p1, p2}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 471
    return-object p0
.end method

.method public blacklist setCounter(J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 4

    .line 448
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 449
    return-object p0

    .line 454
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$CounterInt64;->setValue(J)V

    .line 455
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterInt64:Landroid/os/PerfettoTrackEventExtra$CounterInt64;

    invoke-virtual {p1, p2}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 456
    return-object p0
.end method

.method public blacklist setEventName(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 2

    .line 244
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mEventName:Ljava/lang/String;

    .line 245
    return-object p0
.end method

.method public blacklist setFlow(J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 4

    .line 332
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 333
    return-object p0

    .line 338
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$Flow;->setProcessFlow(J)V

    .line 339
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-virtual {p1, p2}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 340
    return-object p0
.end method

.method public blacklist setTerminatingFlow(J)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 4

    .line 347
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 348
    return-object p0

    .line 353
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-virtual {v0, p1, p2}, Landroid/os/PerfettoTrackEventExtra$Flow;->setProcessTerminatingFlow(J)V

    .line 354
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    iget-object p2, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mTerminatingFlow:Landroid/os/PerfettoTrackEventExtra$Flow;

    invoke-virtual {p1, p2}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 355
    return-object p0
.end method

.method public blacklist usingCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 6

    .line 406
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 407
    return-object p0

    .line 413
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$CounterTrack;

    .line 414
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$CounterTrack;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 415
    :cond_1d
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$CounterTrack;

    invoke-direct {v0, p3, p1, p2}, Landroid/os/PerfettoTrackEventExtra$CounterTrack;-><init>(Ljava/lang/String;J)V

    .line 416
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mCounterTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    .line 418
    :cond_2b
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {p1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 419
    return-object p0
.end method

.method public blacklist usingNamedTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 6

    .line 363
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 364
    return-object p0

    .line 370
    :cond_5
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PerfettoTrackEventExtra$NamedTrack;

    .line 371
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$NamedTrack;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 372
    :cond_1d
    new-instance v0, Landroid/os/PerfettoTrackEventExtra$NamedTrack;

    invoke-direct {v0, p3, p1, p2}, Landroid/os/PerfettoTrackEventExtra$NamedTrack;-><init>(Ljava/lang/String;J)V

    .line 373
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mNamedTrackCache:Landroid/os/PerfettoTrackEventExtra$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->put(ILjava/lang/Object;)V

    .line 375
    :cond_2b
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mExtra:Landroid/os/PerfettoTrackEventExtra;

    invoke-virtual {p1, v0}, Landroid/os/PerfettoTrackEventExtra;->addPerfettoPointer(Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 376
    return-object p0
.end method

.method public blacklist usingProcessCounterTrack(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 4

    .line 427
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 428
    return-object p0

    .line 430
    :cond_5
    invoke-static {}, Landroid/os/PerfettoTrace;->getProcessTrackUuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist usingProcessNamedTrack(Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 4

    .line 384
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 385
    return-object p0

    .line 387
    :cond_5
    invoke-static {}, Landroid/os/PerfettoTrace;->getProcessTrackUuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingNamedTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist usingThreadCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 5

    .line 438
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 439
    return-object p0

    .line 441
    :cond_5
    invoke-static {p1, p2}, Landroid/os/PerfettoTrace;->getThreadTrackUuid(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingCounterTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist usingThreadNamedTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;
    .registers 5

    .line 395
    iget-boolean v0, p0, Landroid/os/PerfettoTrackEventExtra$Builder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 396
    return-object p0

    .line 398
    :cond_5
    invoke-static {p1, p2}, Landroid/os/PerfettoTrace;->getThreadTrackUuid(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/PerfettoTrackEventExtra$Builder;->usingNamedTrack(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object p1

    return-object p1
.end method
