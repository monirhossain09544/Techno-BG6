.class public final Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
.super Ljava/lang/Object;
.source "PerfettoTrackEventBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;,
        Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_EXTRA_CACHE_SIZE:I = 0x5

.field private static final blacklist DEFAULT_PENDING_POINTERS_LIST_SIZE:I = 0x10

.field private static final blacklist NO_OP_BUILDER:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

.field private static final blacklist sNativeAllocationStats:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$AllocationStats;

.field public static final blacklist sThreadLocalBuilder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist fieldDoubleSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldDouble;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist fieldInt64Supplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldInt64;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist fieldNestedSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist fieldStringSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldString;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCategory:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;

.field private blacklist mChildBuildersCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentContainer:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldContainer;

.field private blacklist mEventName:Ljava/lang/String;

.field private blacklist mExtra:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;

.field private blacklist mIsBuilt:Z

.field private final blacklist mIsCategoryEnabled:Z

.field private blacklist mIsDebug:Z

.field private blacklist mLazyInitObjects:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;

.field private blacklist mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

.field private blacklist mObjectsCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;

.field private blacklist mObjectsPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;

.field private blacklist mParent:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

.field private blacklist mPendingPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTraceType:I

.field private final blacklist perfettoTrackEventBuilderSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist protoSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$3x1jujjEJwrGH0iQ99kbLWI3Dh8(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldString;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->lambda$new$5()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldString;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$RAGp93FSMYfZFwDYPQ1zQE9GBds(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldInt64;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->lambda$new$3()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldInt64;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$UCpG31sJevjNspw9Ty1K6ANbpqs(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldDouble;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->lambda$new$4()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldDouble;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$X3sxmod4iCL7d9I5vQo_29ELJKI(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->lambda$new$1()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$gyP1GngrOCRYr0VxpmOFaOSP0ro(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->lambda$new$0()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$kg1QcbAgNTmNV6ttbZt3SoYWoCs(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->lambda$new$2()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 57
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$AllocationStats;

    invoke-direct {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$AllocationStats;-><init>()V

    sput-object v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->sNativeAllocationStats:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$AllocationStats;

    .line 164
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;-><init>(ZLcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)V

    sput-object v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->NO_OP_BUILDER:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    .line 167
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$$ExternalSyntheticLambda0;-><init>()V

    .line 168
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->sThreadLocalBuilder:Ljava/lang/ThreadLocal;

    .line 167
    return-void
.end method

.method private constructor blacklist <init>(ZLcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)V
    .registers 5

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mTraceType:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mCategory:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;

    .line 49
    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mEventName:Ljava/lang/String;

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsBuilt:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    .line 152
    new-instance v1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)V

    iput-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->perfettoTrackEventBuilderSupplier:Ljava/util/function/Supplier;

    .line 154
    new-instance v1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)V

    iput-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->fieldNestedSupplier:Ljava/util/function/Supplier;

    .line 156
    new-instance v1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)V

    iput-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->protoSupplier:Ljava/util/function/Supplier;

    .line 157
    new-instance v1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)V

    iput-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->fieldInt64Supplier:Ljava/util/function/Supplier;

    .line 159
    new-instance v1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)V

    iput-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->fieldDoubleSupplier:Ljava/util/function/Supplier;

    .line 161
    new-instance v1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)V

    iput-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->fieldStringSupplier:Ljava/util/function/Supplier;

    .line 180
    iput-boolean p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    .line 181
    iget-boolean p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez p1, :cond_41

    .line 183
    return-void

    .line 185
    :cond_41
    if-nez p2, :cond_75

    .line 187
    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mParent:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    .line 188
    new-instance p1, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {p1, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$AllocationStats;)V

    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    .line 189
    new-instance p1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mChildBuildersCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    .line 190
    new-instance p1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;

    invoke-direct {p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;

    .line 191
    new-instance p1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;

    invoke-direct {p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;

    .line 192
    new-instance p1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;

    iget-object p2, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {p1, p2, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder-IA;)V

    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mLazyInitObjects:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;

    .line 193
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mPendingPointers:Ljava/util/ArrayList;

    goto :goto_7e

    .line 196
    :cond_75
    iput-object p2, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mParent:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    .line 197
    iget-object p1, p2, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    .line 198
    invoke-direct {p0, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->readAllCacheFieldsFromParent(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)V

    .line 201
    :goto_7e
    new-instance p1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;

    iget-object p2, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V

    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mExtra:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;

    .line 202
    return-void
.end method

.method private blacklist addFieldToContainer(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V
    .registers 3

    .line 607
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mPendingPointers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mCurrentContainer:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldContainer;

    invoke-interface {v0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldContainer;->addField(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 609
    return-void
.end method

.method private blacklist addPerfettoPointerToExtra(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V
    .registers 3

    .line 614
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mPendingPointers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mExtra:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;

    invoke-virtual {v0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;->addPerfettoPointer(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 616
    return-void
.end method

.method private blacklist checkBuildingProto()V
    .registers 3

    .line 713
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkState()V

    .line 714
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->isBuildingTopLevelExtra()Z

    move-result v0

    if-nez v0, :cond_a

    .line 717
    return-void

    .line 715
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Field operations must be within beginProto/endProto block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkMatchingBeginNested()V
    .registers 3

    .line 720
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkState()V

    .line 721
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->isBuildingNestedProto()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 724
    return-void

    .line 722
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No matching beginNested call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkMatchingBeginProto()V
    .registers 3

    .line 727
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkState()V

    .line 728
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->isBuildingProto()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 731
    return-void

    .line 729
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No matching beginProto call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkNotBuildingProto()V
    .registers 3

    .line 706
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkState()V

    .line 707
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->isBuildingProtoOrNestedProto()Z

    move-result v0

    if-nez v0, :cond_a

    .line 710
    return-void

    .line 708
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation not supported for proto."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkState()V
    .registers 3

    .line 682
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsBuilt:Z

    if-nez v0, :cond_5

    .line 686
    return-void

    .line 683
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This builder has already been used. Create a new builder for another event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getNativeAllocationStats()Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$AllocationStats;
    .registers 1

    .line 620
    sget-object v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->sNativeAllocationStats:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$AllocationStats;

    return-object v0
.end method

.method private blacklist initChildBuilderForProto(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldContainer;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 4

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsBuilt:Z

    .line 244
    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mParent:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    .line 245
    iget-boolean v0, p1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    iput-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    .line 246
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    invoke-direct {p0, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->updateNativeMemoryCleanerForDebug(Z)V

    .line 248
    invoke-direct {p0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->readAllCacheFieldsFromParent(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)V

    .line 250
    iput-object p2, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mCurrentContainer:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldContainer;

    .line 251
    return-object p0
.end method

.method private blacklist initNewEvent(ILcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;Z)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 5

    .line 221
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 222
    return-object p0

    .line 224
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsBuilt:Z

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mParent:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    .line 226
    iput-boolean p3, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    .line 227
    iget-boolean p3, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    invoke-direct {p0, p3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->updateNativeMemoryCleanerForDebug(Z)V

    .line 228
    iput p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mTraceType:I

    .line 229
    iput-object p2, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mCategory:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;

    .line 230
    const-string p1, ""

    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mEventName:Ljava/lang/String;

    .line 232
    iget-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mExtra:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;

    invoke-virtual {p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;->reset()V

    .line 233
    iget-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mChildBuildersCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    invoke-virtual {p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->reset()V

    .line 234
    iget-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;

    invoke-virtual {p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;->reset()V

    .line 235
    iget-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mPendingPointers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 236
    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mCurrentContainer:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldContainer;

    .line 238
    return-object p0
.end method

.method private blacklist isBuildingNestedProto()Z
    .registers 2

    .line 697
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mParent:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mParent:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    invoke-direct {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->isBuildingProtoOrNestedProto()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mCurrentContainer:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldContainer;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private blacklist isBuildingProto()Z
    .registers 2

    .line 693
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mParent:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mParent:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    invoke-direct {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->isBuildingTopLevelExtra()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mCurrentContainer:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldContainer;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private blacklist isBuildingProtoOrNestedProto()Z
    .registers 2

    .line 702
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->isBuildingProto()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->isBuildingNestedProto()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private blacklist isBuildingTopLevelExtra()Z
    .registers 2

    .line 689
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mParent:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mCurrentContainer:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldContainer;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private synthetic blacklist lambda$new$0()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 3

    .line 153
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;-><init>(ZLcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$new$1()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;
    .registers 3

    .line 155
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$new$2()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;
    .registers 3

    .line 156
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$new$3()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldInt64;
    .registers 3

    .line 158
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldInt64;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldInt64;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$new$4()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldDouble;
    .registers 3

    .line 160
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldDouble;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldDouble;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$new$5()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldString;
    .registers 3

    .line 162
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldString;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldString;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$static$6()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 3

    .line 169
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;-><init>(ZLcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)V

    return-object v0
.end method

.method public static blacklist newEvent(ILcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;Z)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 4

    .line 173
    invoke-virtual {p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 174
    sget-object v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->sThreadLocalBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->initNewEvent(ILcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;Z)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p0

    return-object p0

    .line 176
    :cond_19
    sget-object p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->NO_OP_BUILDER:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    return-object p0
.end method

.method private blacklist readAllCacheFieldsFromParent(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;)V
    .registers 3

    .line 275
    iget-object v0, p1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mChildBuildersCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mChildBuildersCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    .line 276
    iget-object v0, p1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;

    .line 277
    iget-object v0, p1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;

    .line 278
    iget-object v0, p1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mLazyInitObjects:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mLazyInitObjects:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;

    .line 279
    iget-object p1, p1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mPendingPointers:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mPendingPointers:Ljava/util/ArrayList;

    .line 280
    return-void
.end method

.method private blacklist updateNativeMemoryCleanerForDebug(Z)V
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;->isReportAllocationStats()Z

    move-result v0

    .line 264
    if-ne v0, p1, :cond_9

    .line 265
    return-void

    .line 267
    :cond_9
    if-eqz p1, :cond_15

    .line 268
    new-instance p1, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    sget-object v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->sNativeAllocationStats:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$AllocationStats;

    invoke-direct {p1, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$AllocationStats;)V

    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    goto :goto_1d

    .line 270
    :cond_15
    new-instance p1, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$AllocationStats;)V

    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    .line 272
    :goto_1d
    return-void
.end method


# virtual methods
.method public blacklist addArg(Ljava/lang/String;D)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 6

    .line 326
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 327
    return-object p0

    .line 329
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    if-eqz v0, :cond_c

    .line 330
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkNotBuildingProto()V

    .line 332
    :cond_c
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;

    iget-object v0, v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;->mArgDoubleCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgDouble;

    .line 333
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgDouble;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 334
    :cond_26
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgDouble;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgDouble;-><init>(Ljava/lang/String;Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V

    .line 335
    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;

    iget-object v1, v1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;->mArgDoubleCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;->put(ILjava/lang/Object;)V

    .line 337
    :cond_38
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgDouble;->setValue(D)V

    .line 338
    invoke-direct {p0, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addPerfettoPointerToExtra(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 339
    return-object p0
.end method

.method public blacklist addArg(Ljava/lang/String;J)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 6

    .line 290
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 291
    return-object p0

    .line 293
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    if-eqz v0, :cond_c

    .line 294
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkNotBuildingProto()V

    .line 296
    :cond_c
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;

    iget-object v0, v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;->mArgInt64Cache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgInt64;

    .line 297
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgInt64;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 298
    :cond_26
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgInt64;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgInt64;-><init>(Ljava/lang/String;Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V

    .line 299
    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;

    iget-object v1, v1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;->mArgInt64Cache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;->put(ILjava/lang/Object;)V

    .line 301
    :cond_38
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgInt64;->setValue(J)V

    .line 302
    invoke-direct {p0, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addPerfettoPointerToExtra(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 303
    return-object p0
.end method

.method public blacklist addArg(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 5

    .line 344
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 345
    return-object p0

    .line 347
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    if-eqz v0, :cond_c

    .line 348
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkNotBuildingProto()V

    .line 350
    :cond_c
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;

    iget-object v0, v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;->mArgStringCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;

    .line 351
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 352
    :cond_26
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;-><init>(Ljava/lang/String;Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V

    .line 353
    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;

    iget-object v1, v1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;->mArgStringCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;->put(ILjava/lang/Object;)V

    .line 355
    :cond_38
    invoke-virtual {v0, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;->setValue(Ljava/lang/String;)V

    .line 356
    invoke-direct {p0, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addPerfettoPointerToExtra(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 357
    return-object p0
.end method

.method public blacklist addArg(Ljava/lang/String;Z)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 5

    .line 308
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 309
    return-object p0

    .line 311
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    if-eqz v0, :cond_c

    .line 312
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkNotBuildingProto()V

    .line 314
    :cond_c
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;

    iget-object v0, v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;->mArgBoolCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;

    .line 315
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 316
    :cond_26
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;-><init>(Ljava/lang/String;Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V

    .line 317
    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;

    iget-object v1, v1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;->mArgBoolCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;->put(ILjava/lang/Object;)V

    .line 319
    :cond_38
    invoke-virtual {v0, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;->setValue(Z)V

    .line 320
    invoke-direct {p0, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addPerfettoPointerToExtra(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 321
    return-object p0
.end method

.method public blacklist addField(JD)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 7

    .line 513
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 514
    return-object p0

    .line 516
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    if-eqz v0, :cond_c

    .line 517
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkBuildingProto()V

    .line 519
    :cond_c
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;

    iget-object v0, v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;->mFieldDoublePool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->fieldDoubleSupplier:Ljava/util/function/Supplier;

    invoke-virtual {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldDouble;

    .line 520
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldDouble;->setValue(JD)V

    .line 521
    invoke-direct {p0, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addFieldToContainer(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 522
    return-object p0
.end method

.method public blacklist addField(JJ)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 7

    .line 499
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 500
    return-object p0

    .line 502
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    if-eqz v0, :cond_c

    .line 503
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkBuildingProto()V

    .line 505
    :cond_c
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;

    iget-object v0, v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;->mFieldInt64Pool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->fieldInt64Supplier:Ljava/util/function/Supplier;

    invoke-virtual {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldInt64;

    .line 506
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldInt64;->setValue(JJ)V

    .line 507
    invoke-direct {p0, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addFieldToContainer(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 508
    return-object p0
.end method

.method public blacklist addField(JLjava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 6

    .line 527
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 528
    return-object p0

    .line 530
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    if-eqz v0, :cond_c

    .line 531
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkBuildingProto()V

    .line 533
    :cond_c
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;

    iget-object v0, v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;->mFieldStringPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->fieldStringSupplier:Ljava/util/function/Supplier;

    invoke-virtual {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldString;

    .line 534
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldString;->setValue(JLjava/lang/String;)V

    .line 535
    invoke-direct {p0, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addFieldToContainer(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 536
    return-object p0
.end method

.method public blacklist beginNested(J)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 5

    .line 577
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 578
    return-object p0

    .line 580
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    if-eqz v0, :cond_c

    .line 581
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkBuildingProto()V

    .line 583
    :cond_c
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;

    iget-object v0, v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;->mFieldNestedPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->fieldNestedSupplier:Ljava/util/function/Supplier;

    invoke-virtual {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;

    .line 584
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;->setId(J)V

    .line 585
    invoke-direct {p0, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addFieldToContainer(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 586
    iget-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mChildBuildersCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    iget-object p2, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->perfettoTrackEventBuilderSupplier:Ljava/util/function/Supplier;

    .line 587
    invoke-virtual {p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    .line 588
    invoke-direct {p1, p0, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->initChildBuilderForProto(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldContainer;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p1

    .line 586
    return-object p1
.end method

.method public blacklist beginProto()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 4

    .line 547
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 548
    return-object p0

    .line 550
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    if-eqz v0, :cond_c

    .line 551
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkNotBuildingProto()V

    .line 553
    :cond_c
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;

    iget-object v0, v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;->mProtoPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->protoSupplier:Ljava/util/function/Supplier;

    invoke-virtual {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;

    .line 554
    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;->clearFields()V

    .line 555
    invoke-direct {p0, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addPerfettoPointerToExtra(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 556
    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mChildBuildersCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    iget-object v2, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->perfettoTrackEventBuilderSupplier:Ljava/util/function/Supplier;

    .line 557
    invoke-virtual {v1, v2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    .line 558
    invoke-direct {v1, p0, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->initChildBuilderForProto(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldContainer;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object v0

    .line 556
    return-object v0
.end method

.method public blacklist emit()V
    .registers 8

    .line 206
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 207
    return-void

    .line 209
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    if-eqz v0, :cond_c

    .line 210
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkNotBuildingProto()V

    .line 213
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsBuilt:Z

    .line 214
    iget v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mTraceType:I

    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mCategory:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;

    .line 215
    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;->getPtr()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mEventName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mExtra:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;->getPtr()J

    move-result-wide v5

    .line 214
    invoke-static/range {v1 .. v6}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra;->native_emit(IJLjava/lang/String;J)V

    .line 216
    return-void
.end method

.method public blacklist endNested()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 2

    .line 593
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 594
    return-object p0

    .line 597
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    if-eqz v0, :cond_c

    .line 598
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkMatchingBeginNested()V

    .line 601
    :cond_c
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mParent:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    return-object v0
.end method

.method public blacklist endProto()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 2

    .line 563
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 564
    return-object p0

    .line 566
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    if-eqz v0, :cond_c

    .line 567
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkMatchingBeginProto()V

    .line 569
    :cond_c
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mParent:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    return-object v0
.end method

.method public blacklist setCounter(D)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 4

    .line 484
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 485
    return-object p0

    .line 487
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    if-eqz v0, :cond_c

    .line 488
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkNotBuildingProto()V

    .line 491
    :cond_c
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mLazyInitObjects:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->getCounterDouble()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;

    move-result-object v0

    .line 492
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;->setValue(D)V

    .line 493
    invoke-direct {p0, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addPerfettoPointerToExtra(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 494
    return-object p0
.end method

.method public blacklist setCounter(J)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 4

    .line 470
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 471
    return-object p0

    .line 473
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    if-eqz v0, :cond_c

    .line 474
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkNotBuildingProto()V

    .line 476
    :cond_c
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mLazyInitObjects:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->getCounterInt64()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterInt64;

    move-result-object v0

    .line 477
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterInt64;->setValue(J)V

    .line 478
    invoke-direct {p0, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addPerfettoPointerToExtra(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 479
    return-object p0
.end method

.method public blacklist setEventName(Ljava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 2

    .line 284
    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mEventName:Ljava/lang/String;

    .line 285
    return-object p0
.end method

.method public blacklist setFlow(J)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 4

    .line 362
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 363
    return-object p0

    .line 365
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    if-eqz v0, :cond_c

    .line 366
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkNotBuildingProto()V

    .line 368
    :cond_c
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mLazyInitObjects:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->getFlow()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;

    move-result-object v0

    .line 369
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;->setProcessFlow(J)V

    .line 370
    invoke-direct {p0, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addPerfettoPointerToExtra(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 371
    return-object p0
.end method

.method public blacklist setTerminatingFlow(J)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 4

    .line 376
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 377
    return-object p0

    .line 379
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    if-eqz v0, :cond_c

    .line 380
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkNotBuildingProto()V

    .line 382
    :cond_c
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mLazyInitObjects:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->getTerminatingFlow()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;

    move-result-object v0

    .line 383
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;->setProcessTerminatingFlow(J)V

    .line 384
    invoke-direct {p0, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addPerfettoPointerToExtra(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 385
    return-object p0
.end method

.method public blacklist usingCounterTrack(JLjava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 6

    .line 430
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 431
    return-object p0

    .line 433
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    if-eqz v0, :cond_c

    .line 434
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkNotBuildingProto()V

    .line 437
    :cond_c
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;

    iget-object v0, v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;->mCounterTrackCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterTrack;

    .line 438
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterTrack;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 439
    :cond_26
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterTrack;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {v0, p3, p1, p2, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterTrack;-><init>(Ljava/lang/String;JLcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V

    .line 440
    iget-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;

    iget-object p1, p1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;->mCounterTrackCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;->put(ILjava/lang/Object;)V

    .line 442
    :cond_38
    invoke-direct {p0, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addPerfettoPointerToExtra(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 443
    return-object p0
.end method

.method public blacklist usingNamedTrack(JLjava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 6

    .line 390
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 391
    return-object p0

    .line 393
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsDebug:Z

    if-eqz v0, :cond_c

    .line 394
    invoke-direct {p0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->checkNotBuildingProto()V

    .line 397
    :cond_c
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;

    iget-object v0, v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;->mNamedTrackCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$NamedTrack;

    .line 398
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$NamedTrack;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 399
    :cond_26
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$NamedTrack;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {v0, p3, p1, p2, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$NamedTrack;-><init>(Ljava/lang/String;JLcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V

    .line 400
    iget-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mObjectsCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;

    iget-object p1, p1, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;->mNamedTrackCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;->put(ILjava/lang/Object;)V

    .line 402
    :cond_38
    invoke-direct {p0, v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addPerfettoPointerToExtra(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$PerfettoPointer;)V

    .line 403
    return-object p0
.end method

.method public blacklist usingProcessCounterTrack(Ljava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 4

    .line 451
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 452
    return-object p0

    .line 454
    :cond_5
    invoke-static {}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->getProcessTrackUuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->usingCounterTrack(JLjava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist usingProcessNamedTrack(Ljava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 4

    .line 411
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 412
    return-object p0

    .line 414
    :cond_5
    invoke-static {}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->getProcessTrackUuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->usingNamedTrack(JLjava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist usingThreadCounterTrack(JLjava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 5

    .line 462
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 463
    return-object p0

    .line 465
    :cond_5
    invoke-static {p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->getThreadTrackUuid(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->usingCounterTrack(JLjava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist usingThreadNamedTrack(JLjava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
    .registers 5

    .line 422
    iget-boolean v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->mIsCategoryEnabled:Z

    if-nez v0, :cond_5

    .line 423
    return-object p0

    .line 425
    :cond_5
    invoke-static {p1, p2}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->getThreadTrackUuid(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->usingNamedTrack(JLjava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object p1

    return-object p1
.end method
