.class public final Landroid/os/Parcel;
.super Ljava/lang/Object;
.source "Parcel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Parcel$ReadWriteHelper;,
        Landroid/os/Parcel$LazyValue;,
        Landroid/os/Parcel$SquashReadHelper;,
        Landroid/os/Parcel$ClassLoaderProvider;,
        Landroid/os/Parcel$ParcelFlags;
    }
.end annotation


# static fields
.field private static final blacklist ARRAY_ALLOCATION_LIMIT:I = 0xf4240

.field private static final greylist-max-o DEBUG_ARRAY_MAP:Z = false

.field private static final greylist-max-o DEBUG_RECYCLE:Z = false

.field private static final greylist-max-o EX_BAD_PARCELABLE:I = -0x2

.field public static final blacklist EX_HAS_NOTED_APPOPS_REPLY_HEADER:I = -0x7f

.field private static final blacklist EX_HAS_STRICTMODE_REPLY_HEADER:I = -0x80

.field private static final greylist-max-o EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final greylist-max-o EX_ILLEGAL_STATE:I = -0x5

.field private static final greylist-max-o EX_NETWORK_MAIN_THREAD:I = -0x6

.field private static final greylist-max-o EX_NULL_POINTER:I = -0x4

.field private static final greylist-max-o EX_PARCELABLE:I = -0x9

.field private static final greylist-max-o EX_SECURITY:I = -0x1

.field private static final greylist-max-o EX_SERVICE_SPECIFIC:I = -0x8

.field private static final greylist-max-o EX_TRANSACTION_FAILED:I = -0x81

.field private static final greylist-max-o EX_UNSUPPORTED_OPERATION:I = -0x7

.field public static final blacklist FLAG_IS_REPLY_FROM_BLOCKING_ALLOWED_OBJECT:I = 0x1

.field public static final blacklist FLAG_PROPAGATE_ALLOW_BLOCKING:I = 0x2

.field private static final blacklist OK:I = 0x0

.field private static final greylist-max-o POOL_SIZE:I = 0x20

.field private static final blacklist SIZE_BOOLEAN:I = 0x4

.field private static final blacklist SIZE_BYTE:I = 0x1

.field private static final blacklist SIZE_CHAR:I = 0x2

.field private static final blacklist SIZE_COMPLEX_TYPE:I = 0x1

.field private static final blacklist SIZE_DOUBLE:I = 0x8

.field private static final blacklist SIZE_FLOAT:I = 0x4

.field private static final blacklist SIZE_INT:I = 0x4

.field private static final blacklist SIZE_LONG:I = 0x8

.field private static final blacklist SIZE_SHORT:I = 0x2

.field public static final whitelist STRING_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Parcel"

.field private static final greylist-max-o VAL_BOOLEAN:I = 0x9

.field private static final greylist-max-o VAL_BOOLEANARRAY:I = 0x17

.field private static final greylist-max-o VAL_BUNDLE:I = 0x3

.field private static final greylist-max-o VAL_BYTE:I = 0x14

.field private static final greylist-max-o VAL_BYTEARRAY:I = 0xd

.field private static final blacklist VAL_CHAR:I = 0x1d

.field private static final blacklist VAL_CHARARRAY:I = 0x1f

.field private static final greylist-max-o VAL_CHARSEQUENCE:I = 0xa

.field private static final greylist-max-o VAL_CHARSEQUENCEARRAY:I = 0x18

.field private static final greylist-max-o VAL_DOUBLE:I = 0x8

.field private static final greylist-max-o VAL_DOUBLEARRAY:I = 0x1c

.field private static final greylist-max-o VAL_FLOAT:I = 0x7

.field private static final blacklist VAL_FLOATARRAY:I = 0x20

.field private static final greylist-max-o VAL_IBINDER:I = 0xf

.field private static final greylist-max-o VAL_INTARRAY:I = 0x12

.field private static final greylist-max-o VAL_INTEGER:I = 0x1

.field private static final greylist-max-o VAL_LIST:I = 0xb

.field private static final greylist-max-o VAL_LONG:I = 0x6

.field private static final greylist-max-o VAL_LONGARRAY:I = 0x13

.field private static final greylist-max-o VAL_MAP:I = 0x2

.field private static final greylist-max-o VAL_NULL:I = -0x1

.field private static final greylist-max-o VAL_OBJECTARRAY:I = 0x11

.field private static final greylist-max-o VAL_PARCELABLE:I = 0x4

.field private static final greylist-max-o VAL_PARCELABLEARRAY:I = 0x10

.field private static final greylist-max-o VAL_PERSISTABLEBUNDLE:I = 0x19

.field private static final greylist-max-o VAL_SERIALIZABLE:I = 0x15

.field private static final greylist-max-o VAL_SHORT:I = 0x5

.field private static final blacklist VAL_SHORTARRAY:I = 0x1e

.field private static final greylist-max-o VAL_SIZE:I = 0x1a

.field private static final greylist-max-o VAL_SIZEF:I = 0x1b

.field private static final greylist-max-o VAL_SPARSEARRAY:I = 0xc

.field private static final greylist-max-o VAL_SPARSEBOOLEANARRAY:I = 0x16

.field private static final greylist-max-o VAL_STRING:I = 0x0

.field private static final greylist-max-o VAL_STRINGARRAY:I = 0xe

.field private static final greylist-max-o WRITE_EXCEPTION_STACK_TRACE_THRESHOLD_MS:I = 0x3e8

.field private static final greylist-max-p mCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static blacklist sHolderPool:Landroid/os/Parcel;

.field private static blacklist sHolderPoolSize:I

.field private static volatile greylist-max-o sLastWriteExceptionStackTrace:J

.field private static blacklist sOwnedPool:Landroid/os/Parcel;

.field private static blacklist sOwnedPoolSize:I

.field private static final blacklist sPairedCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/os/Parcelable$Creator<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;>;>;"
        }
    .end annotation
.end field

.field private static greylist-max-o sParcelExceptionStackTrace:Z

.field private static final blacklist sPoolSync:Ljava/lang/Object;


# instance fields
.field private blacklist mAllowSquashing:Z

.field private greylist-max-o mClassCookies:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFlags:I

.field private greylist mNativePtr:J

.field private greylist-max-o mNativeSize:J

.field private greylist-max-o mOwnsNativeParcelObject:Z

.field private blacklist mPoolNext:Landroid/os/Parcel;

.field private blacklist mReadSquashableParcelables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

.field private blacklist mRecycled:Z

.field private greylist-max-o mStack:Ljava/lang/RuntimeException;

.field private blacklist mWrittenSquashableParcelables:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/Parcelable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreadValue(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalueTypeToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/os/Parcel;->valueTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 291
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Parcel;->sPoolSync:Ljava/lang/Object;

    .line 306
    const/4 v0, 0x0

    sput v0, Landroid/os/Parcel;->sOwnedPoolSize:I

    .line 309
    sput v0, Landroid/os/Parcel;->sHolderPoolSize:I

    .line 505
    new-instance v0, Landroid/os/Parcel$1;

    invoke-direct {v0}, Landroid/os/Parcel$1;-><init>()V

    sput-object v0, Landroid/os/Parcel;->STRING_CREATOR:Landroid/os/Parcelable$Creator;

    .line 5581
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    .line 5587
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/Parcel;->sPairedCreators:Ljava/util/HashMap;

    return-void
.end method

.method private constructor greylist-max-o <init>(J)V
    .registers 5

    .line 5620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Parcel;->mRecycled:Z

    .line 553
    sget-object v1, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    iput-object v1, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    .line 2909
    iput-boolean v0, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    .line 5625
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->init(J)V

    .line 5626
    return-void
.end method

.method private blacklist assertNotRecycled()V
    .registers 2

    .line 656
    iget-boolean v0, p0, Landroid/os/Parcel;->mRecycled:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/os/Parcel;->errorUsedWhileRecycling()V

    .line 657
    :cond_7
    return-void
.end method

.method private blacklist checkArrayTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 5178
    if-eqz p1, :cond_2f

    .line 5180
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 5181
    if-eqz v0, :cond_c

    .line 5187
    invoke-direct {p0, v0, p2}, Landroid/os/Parcel;->checkTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_2f

    .line 5182
    :cond_c
    new-instance p2, Landroid/os/BadTypeParcelableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "About to unparcel an array but type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5184
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " required by caller is not an array."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5189
    :cond_2f
    :goto_2f
    return-void
.end method

.method private blacklist checkTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 5196
    if-eqz p1, :cond_3a

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3a

    .line 5197
    :cond_9
    new-instance v0, Landroid/os/BadTypeParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "About to unparcel a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5198
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", which is not a subtype of type "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 5199
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " required by caller."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5202
    :cond_3a
    :goto_3a
    return-void
.end method

.method public static blacklist compareData(Landroid/os/Parcel;ILandroid/os/Parcel;II)Z
    .registers 12

    .line 927
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    iget-wide v3, p2, Landroid/os/Parcel;->mNativePtr:J

    move v2, p1

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/os/Parcel;->nativeCompareDataInRange(JIJII)Z

    move-result p0

    return p0
.end method

.method private greylist-max-o createException(ILjava/lang/String;)Ljava/lang/Exception;
    .registers 6

    .line 3357
    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->createExceptionOrNull(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    .line 3358
    if-eqz v0, :cond_7

    .line 3359
    goto :goto_29

    .line 3360
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown exception code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " msg "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3358
    :goto_29
    return-object v0
.end method

.method private blacklist ensureClassHasExpectedDimensions(Ljava/lang/Class;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 4475
    if-lez p2, :cond_4b

    .line 4479
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p2, :cond_2b

    .line 4480
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4484
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 4479
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 4481
    :cond_12
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array has fewer dimensions than expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4486
    :cond_2b
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-nez p1, :cond_32

    .line 4490
    return-void

    .line 4487
    :cond_32
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array has more dimensions than expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4476
    :cond_4b
    new-instance p1, Landroid/os/BadParcelableException;

    const-string p2, "Fixed-size array should have dimensions."

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist ensureReadSquashableParcelables()V
    .registers 2

    .line 2962
    iget-object v0, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2963
    return-void

    .line 2965
    :cond_5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    .line 2966
    return-void
.end method

.method private blacklist ensureWithinMemoryLimit(II)V
    .registers 7

    .line 1752
    const-string v0, "Parcel"

    .line 1754
    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/Math;->multiplyExact(II)I

    move-result p1
    :try_end_6
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_6} :catch_7

    .line 1761
    goto :goto_4e

    .line 1755
    :catch_7
    move-exception v1

    .line 1756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ArithmeticException occurred while multiplying values "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1758
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Estimated allocation size is too large. typeSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " length: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 1760
    invoke-static {v1}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 1763
    :goto_4e
    invoke-static {}, Landroid/os/Binder;->isDirectlyHandlingTransaction()Z

    move-result p2

    .line 1764
    if-eqz p2, :cond_9a

    const v1, 0xf4240

    if-le p1, v1, :cond_9a

    .line 1765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to Allocate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " memory, In Binder Transaction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    new-instance p2, Landroid/os/BadParcelableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allocation of size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is above allowed limit of 1MB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 1769
    invoke-static {p2}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 1771
    :cond_9a
    return-void
.end method

.method private varargs blacklist ensureWithinMemoryLimit(I[I)V
    .registers 7

    .line 1737
    nop

    .line 1739
    const/4 v0, 0x1

    :try_start_2
    array-length v1, p2

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_f

    aget v3, p2, v2

    .line 1740
    invoke-static {v0, v3}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_c} :catch_10

    .line 1739
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1747
    :cond_f
    goto :goto_37

    .line 1742
    :catch_10
    move-exception v1

    .line 1743
    const-string v2, "Parcel"

    const-string v3, "ArithmeticException occurred while multiplying dimensions"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1744
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Estimated array length is too large. Array Dimensions:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1745
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 1746
    invoke-static {v1}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 1748
    :goto_37
    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 1749
    return-void
.end method

.method private blacklist ensureWrittenSquashableParcelables()V
    .registers 2

    .line 2903
    iget-object v0, p0, Landroid/os/Parcel;->mWrittenSquashableParcelables:Landroid/util/ArrayMap;

    if-eqz v0, :cond_5

    .line 2904
    return-void

    .line 2906
    :cond_5
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/Parcel;->mWrittenSquashableParcelables:Landroid/util/ArrayMap;

    .line 2907
    return-void
.end method

.method private blacklist errorUsedWhileRecycling()V
    .registers 3
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parcel used while recycled. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 647
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Original recycle call (if DEBUG_RECYCLE): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    const-string v1, "Parcel"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    new-instance v1, Landroid/os/BadParcelableException;

    invoke-direct {v1, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o freeBuffer()V
    .registers 3

    .line 5639
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/Parcel;->mFlags:I

    .line 5640
    invoke-direct {p0}, Landroid/os/Parcel;->resetSqaushingState()V

    .line 5641
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v0, :cond_f

    .line 5642
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeFreeBuffer(J)V

    .line 5644
    :cond_f
    sget-object v0, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    iput-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    .line 5645
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    .line 5646
    return-void
.end method

.method private static blacklist getClassLoader(Landroid/os/Parcel$ClassLoaderProvider;)Ljava/lang/ClassLoader;
    .registers 1

    .line 4806
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Landroid/os/Parcel$ClassLoaderProvider;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method public static blacklist getExceptionCode(Ljava/lang/Throwable;)I
    .registers 3

    .line 3183
    nop

    .line 3184
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_18

    .line 3185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/Parcelable;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_18

    .line 3188
    const/16 p0, -0x9

    goto :goto_49

    .line 3189
    :cond_18
    instance-of v0, p0, Ljava/lang/SecurityException;

    if-eqz v0, :cond_1e

    .line 3190
    const/4 p0, -0x1

    goto :goto_49

    .line 3191
    :cond_1e
    instance-of v0, p0, Landroid/os/BadParcelableException;

    if-eqz v0, :cond_24

    .line 3192
    const/4 p0, -0x2

    goto :goto_49

    .line 3193
    :cond_24
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_2a

    .line 3194
    const/4 p0, -0x3

    goto :goto_49

    .line 3195
    :cond_2a
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_30

    .line 3196
    const/4 p0, -0x4

    goto :goto_49

    .line 3197
    :cond_30
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_36

    .line 3198
    const/4 p0, -0x5

    goto :goto_49

    .line 3199
    :cond_36
    instance-of v0, p0, Landroid/os/NetworkOnMainThreadException;

    if-eqz v0, :cond_3c

    .line 3200
    const/4 p0, -0x6

    goto :goto_49

    .line 3201
    :cond_3c
    instance-of v0, p0, Ljava/lang/UnsupportedOperationException;

    if-eqz v0, :cond_42

    .line 3202
    const/4 p0, -0x7

    goto :goto_49

    .line 3203
    :cond_42
    instance-of p0, p0, Landroid/os/ServiceSpecificException;

    if-eqz p0, :cond_48

    .line 3204
    const/4 p0, -0x8

    goto :goto_49

    .line 3203
    :cond_48
    const/4 p0, 0x0

    .line 3206
    :goto_49
    return p0
.end method

.method public static native greylist-max-r getGlobalAllocCount()J
.end method

.method public static native greylist-max-r getGlobalAllocSize()J
.end method

.method private static blacklist getItemTypeSize(Ljava/lang/Class;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)I"
        }
    .end annotation

    .line 1713
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 1715
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x4

    if-ne p0, v0, :cond_a

    .line 1716
    return v1

    .line 1717
    :cond_a
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    if-ne p0, v0, :cond_10

    .line 1718
    return v2

    .line 1719
    :cond_10
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_16

    .line 1720
    const/4 p0, 0x2

    return p0

    .line 1721
    :cond_16
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1b

    .line 1722
    return v1

    .line 1723
    :cond_1b
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v3, 0x8

    if-ne p0, v0, :cond_22

    .line 1724
    return v3

    .line 1725
    :cond_22
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_27

    .line 1726
    return v1

    .line 1727
    :cond_27
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2c

    .line 1728
    return v3

    .line 1731
    :cond_2c
    return v2
.end method

.method public static blacklist getValueType(Ljava/lang/Object;)I
    .registers 4

    .line 2672
    if-nez p0, :cond_4

    .line 2673
    const/4 p0, -0x1

    return p0

    .line 2674
    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 2675
    const/4 p0, 0x0

    return p0

    .line 2676
    :cond_a
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_10

    .line 2677
    const/4 p0, 0x1

    return p0

    .line 2678
    :cond_10
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_16

    .line 2679
    const/4 p0, 0x2

    return p0

    .line 2680
    :cond_16
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_1c

    .line 2682
    const/4 p0, 0x3

    return p0

    .line 2683
    :cond_1c
    instance-of v0, p0, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_23

    .line 2685
    const/16 p0, 0x19

    return p0

    .line 2686
    :cond_23
    instance-of v0, p0, Landroid/util/SizeF;

    if-eqz v0, :cond_2a

    .line 2688
    const/16 p0, 0x1b

    return p0

    .line 2689
    :cond_2a
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_30

    .line 2693
    const/4 p0, 0x4

    return p0

    .line 2694
    :cond_30
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_36

    .line 2695
    const/4 p0, 0x5

    return p0

    .line 2696
    :cond_36
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3c

    .line 2697
    const/4 p0, 0x6

    return p0

    .line 2698
    :cond_3c
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_42

    .line 2699
    const/4 p0, 0x7

    return p0

    .line 2700
    :cond_42
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_49

    .line 2701
    const/16 p0, 0x8

    return p0

    .line 2702
    :cond_49
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_50

    .line 2703
    const/16 p0, 0x9

    return p0

    .line 2704
    :cond_50
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_57

    .line 2706
    const/16 p0, 0xa

    return p0

    .line 2707
    :cond_57
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_5e

    .line 2708
    const/16 p0, 0xb

    return p0

    .line 2709
    :cond_5e
    instance-of v0, p0, Landroid/util/SparseArray;

    if-eqz v0, :cond_65

    .line 2710
    const/16 p0, 0xc

    return p0

    .line 2711
    :cond_65
    instance-of v0, p0, [Z

    if-eqz v0, :cond_6c

    .line 2712
    const/16 p0, 0x17

    return p0

    .line 2713
    :cond_6c
    instance-of v0, p0, [B

    if-eqz v0, :cond_73

    .line 2714
    const/16 p0, 0xd

    return p0

    .line 2715
    :cond_73
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_7a

    .line 2716
    const/16 p0, 0xe

    return p0

    .line 2717
    :cond_7a
    instance-of v0, p0, [Ljava/lang/CharSequence;

    if-eqz v0, :cond_81

    .line 2719
    const/16 p0, 0x18

    return p0

    .line 2720
    :cond_81
    instance-of v0, p0, Landroid/os/IBinder;

    if-eqz v0, :cond_88

    .line 2721
    const/16 p0, 0xf

    return p0

    .line 2722
    :cond_88
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-eqz v0, :cond_8f

    .line 2723
    const/16 p0, 0x10

    return p0

    .line 2724
    :cond_8f
    instance-of v0, p0, [I

    if-eqz v0, :cond_96

    .line 2725
    const/16 p0, 0x12

    return p0

    .line 2726
    :cond_96
    instance-of v0, p0, [J

    if-eqz v0, :cond_9d

    .line 2727
    const/16 p0, 0x13

    return p0

    .line 2728
    :cond_9d
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_a4

    .line 2729
    const/16 p0, 0x14

    return p0

    .line 2730
    :cond_a4
    instance-of v0, p0, Landroid/util/Size;

    if-eqz v0, :cond_ab

    .line 2731
    const/16 p0, 0x1a

    return p0

    .line 2732
    :cond_ab
    instance-of v0, p0, [D

    if-eqz v0, :cond_b2

    .line 2733
    const/16 p0, 0x1c

    return p0

    .line 2734
    :cond_b2
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_b9

    .line 2735
    const/16 p0, 0x1d

    return p0

    .line 2736
    :cond_b9
    instance-of v0, p0, [S

    if-eqz v0, :cond_c0

    .line 2737
    const/16 p0, 0x1e

    return p0

    .line 2738
    :cond_c0
    instance-of v0, p0, [C

    if-eqz v0, :cond_c7

    .line 2739
    const/16 p0, 0x1f

    return p0

    .line 2740
    :cond_c7
    instance-of v0, p0, [F

    if-eqz v0, :cond_ce

    .line 2741
    const/16 p0, 0x20

    return p0

    .line 2743
    :cond_ce
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2744
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_e3

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_e3

    .line 2747
    const/16 p0, 0x11

    return p0

    .line 2748
    :cond_e3
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_ea

    .line 2750
    const/16 p0, 0x15

    return p0

    .line 2752
    :cond_ea
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcel: unknown type for value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist hasFileDescriptors(Ljava/lang/Object;)Z
    .registers 6

    .line 1042
    instance-of v0, p0, Landroid/os/Parcel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 1043
    check-cast p0, Landroid/os/Parcel;

    .line 1044
    invoke-virtual {p0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 1045
    return v2

    .line 1047
    :cond_f
    goto/16 :goto_dc

    :cond_11
    instance-of v0, p0, Landroid/os/Parcel$LazyValue;

    if-eqz v0, :cond_20

    .line 1048
    check-cast p0, Landroid/os/Parcel$LazyValue;

    .line 1049
    invoke-virtual {p0}, Landroid/os/Parcel$LazyValue;->hasFileDescriptors()Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 1050
    return v2

    .line 1052
    :cond_1e
    goto/16 :goto_dc

    :cond_20
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_30

    .line 1053
    check-cast p0, Landroid/os/Parcelable;

    .line 1054
    invoke-interface {p0}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    and-int/2addr p0, v2

    if-eqz p0, :cond_2e

    .line 1055
    return v2

    .line 1057
    :cond_2e
    goto/16 :goto_dc

    :cond_30
    instance-of v0, p0, Landroid/util/ArrayMap;

    if-eqz v0, :cond_58

    .line 1058
    check-cast p0, Landroid/util/ArrayMap;

    .line 1059
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v3, v1

    :goto_3b
    if-ge v3, v0, :cond_56

    .line 1060
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 1061
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    goto :goto_55

    .line 1059
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 1062
    :cond_55
    :goto_55
    return v2

    .line 1065
    :cond_56
    goto/16 :goto_dc

    :cond_58
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_8a

    .line 1066
    check-cast p0, Ljava/util/Map;

    .line 1067
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_66
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1068
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    .line 1069
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    goto :goto_88

    .line 1072
    :cond_87
    goto :goto_66

    .line 1070
    :cond_88
    :goto_88
    return v2

    .line 1073
    :cond_89
    goto :goto_dc

    :cond_8a
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_a6

    .line 1074
    check-cast p0, Ljava/util/List;

    .line 1075
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v1

    :goto_95
    if-ge v3, v0, :cond_a5

    .line 1076
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 1077
    return v2

    .line 1075
    :cond_a2
    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    .line 1080
    :cond_a5
    goto :goto_dc

    :cond_a6
    instance-of v0, p0, Landroid/util/SparseArray;

    if-eqz v0, :cond_c2

    .line 1081
    check-cast p0, Landroid/util/SparseArray;

    .line 1082
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v3, v1

    :goto_b1
    if-ge v3, v0, :cond_c1

    .line 1083
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_be

    .line 1084
    return v2

    .line 1082
    :cond_be
    add-int/lit8 v3, v3, 0x1

    goto :goto_b1

    .line 1087
    :cond_c1
    goto :goto_dc

    :cond_c2
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_d9

    .line 1088
    check-cast p0, [Ljava/lang/Object;

    .line 1089
    array-length v0, p0

    move v3, v1

    :goto_ca
    if-ge v3, v0, :cond_d8

    .line 1090
    aget-object v4, p0, v3

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 1091
    return v2

    .line 1089
    :cond_d5
    add-int/lit8 v3, v3, 0x1

    goto :goto_ca

    .line 1094
    :cond_d8
    goto :goto_dc

    .line 1095
    :cond_d9
    invoke-static {p0}, Landroid/os/Parcel;->getValueType(Ljava/lang/Object;)I

    .line 1097
    :goto_dc
    return v1
.end method

.method private blacklist hasFlags(I)Z
    .registers 3

    .line 739
    iget v0, p0, Landroid/os/Parcel;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method private greylist-max-o init(J)V
    .registers 5

    .line 5629
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_c

    .line 5630
    iput-wide p1, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 5631
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    goto :goto_15

    .line 5633
    :cond_c
    invoke-static {}, Landroid/os/Parcel;->nativeCreate()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 5634
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    .line 5636
    :goto_15
    return-void
.end method

.method private blacklist isLengthPrefixed(I)Z
    .registers 2

    .line 5158
    sparse-switch p1, :sswitch_data_8

    .line 5168
    const/4 p1, 0x0

    return p1

    .line 5166
    :sswitch_5
    const/4 p1, 0x1

    return p1

    nop

    :sswitch_data_8
    .sparse-switch
        0x2 -> :sswitch_5
        0x4 -> :sswitch_5
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x15 -> :sswitch_5
    .end sparse-switch
.end method

.method static synthetic blacklist lambda$createFixedArray$0(Ljava/lang/Class;I)[Landroid/os/IInterface;
    .registers 2

    .line 4596
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/IInterface;

    return-object p0
.end method

.method private blacklist markForBinder(Landroid/os/IBinder;)V
    .registers 4

    .line 708
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeMarkForBinder(JLandroid/os/IBinder;)V

    .line 709
    return-void
.end method

.method private static native blacklist nativeAppendFrom(JJII)V
.end method

.method private static native greylist-max-o nativeCompareData(JJ)I
.end method

.method private static native blacklist nativeCompareDataInRange(JIJII)Z
.end method

.method private static native greylist-max-o nativeCreate()J
.end method

.method private static native greylist-max-o nativeCreateByteArray(J)[B
.end method

.method private static native greylist-max-o nativeDataAvail(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeDataCapacity(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeDataPosition(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeDataSize(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeDestroy(J)V
.end method

.method private static native greylist-max-o nativeEnforceInterface(JLjava/lang/String;)V
.end method

.method private static native blacklist nativeFreeBuffer(J)V
.end method

.method private static native blacklist nativeGetOpenAshmemSize(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeHasBinders(J)Z
.end method

.method private static native blacklist nativeHasBindersInRange(JII)Z
.end method

.method private static native greylist-max-o nativeHasFileDescriptors(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeHasFileDescriptorsInRange(JII)Z
.end method

.method private static native blacklist nativeIsForRpc(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeMarkForBinder(JLandroid/os/IBinder;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeMarkSensitive(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeMarshall(J)[B
.end method

.method private static native blacklist nativeMarshallArray(J[BII)I
.end method

.method private static native blacklist nativeMarshallBuffer(JLjava/nio/ByteBuffer;II)I
.end method

.method private static native greylist-max-o nativePushAllowFds(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadBlob(J)[B
.end method

.method private static native greylist-max-o nativeReadByteArray(J[BI)Z
.end method

.method private static native blacklist nativeReadCallingWorkSourceUid(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadDouble(J)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadFloat(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadInt(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadLong(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeReadString16(J)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeReadString8(J)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadStrongBinder(J)Landroid/os/IBinder;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeReplaceCallingWorkSourceUid(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeRestoreAllowFds(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetDataCapacity(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetDataPosition(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSetDataSize(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeSignalExceptionForError(I)V
.end method

.method private static native blacklist nativeUnmarshall(J[BII)V
.end method

.method private static native blacklist nativeUnmarshallBuffer(JLjava/nio/ByteBuffer;II)V
.end method

.method private static native greylist-max-o nativeWriteBlob(J[BII)V
.end method

.method private static native greylist-max-o nativeWriteByteArray(J[BII)V
.end method

.method private static native blacklist nativeWriteDouble(JD)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteFloat(JF)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteInt(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeWriteInterfaceToken(JLjava/lang/String;)V
.end method

.method private static native blacklist nativeWriteLong(JJ)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteString16(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteString8(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeWriteStrongBinder(JLandroid/os/IBinder;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist obtain()Landroid/os/Parcel;
    .registers 5

    .line 560
    nop

    .line 561
    sget-object v0, Landroid/os/Parcel;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_4
    sget-object v1, Landroid/os/Parcel;->sOwnedPool:Landroid/os/Parcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 563
    sget-object v1, Landroid/os/Parcel;->sOwnedPool:Landroid/os/Parcel;

    .line 564
    iget-object v3, v1, Landroid/os/Parcel;->mPoolNext:Landroid/os/Parcel;

    sput-object v3, Landroid/os/Parcel;->sOwnedPool:Landroid/os/Parcel;

    .line 565
    iput-object v2, v1, Landroid/os/Parcel;->mPoolNext:Landroid/os/Parcel;

    .line 566
    sget v2, Landroid/os/Parcel;->sOwnedPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/os/Parcel;->sOwnedPoolSize:I

    move-object v2, v1

    .line 568
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_38

    .line 572
    const-wide/16 v0, 0x0

    if-nez v2, :cond_23

    .line 573
    new-instance v2, Landroid/os/Parcel;

    invoke-direct {v2, v0, v1}, Landroid/os/Parcel;-><init>(J)V

    goto :goto_2a

    .line 575
    :cond_23
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/os/Parcel;->mRecycled:Z

    .line 579
    sget-object v3, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    iput-object v3, v2, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    .line 582
    :goto_2a
    iget-wide v3, v2, Landroid/os/Parcel;->mNativePtr:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_37

    .line 583
    const-string v0, "Parcel"

    const-string v1, "Obtained Parcel object has null native pointer. Invalid state."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_37
    return-object v2

    .line 568
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method protected static final greylist-max-o obtain(I)Landroid/os/Parcel;
    .registers 1

    .line 5591
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method protected static final greylist-max-o obtain(J)Landroid/os/Parcel;
    .registers 6

    .line 5596
    nop

    .line 5597
    sget-object v0, Landroid/os/Parcel;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 5598
    :try_start_4
    sget-object v1, Landroid/os/Parcel;->sHolderPool:Landroid/os/Parcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 5599
    sget-object v1, Landroid/os/Parcel;->sHolderPool:Landroid/os/Parcel;

    .line 5600
    iget-object v3, v1, Landroid/os/Parcel;->mPoolNext:Landroid/os/Parcel;

    sput-object v3, Landroid/os/Parcel;->sHolderPool:Landroid/os/Parcel;

    .line 5601
    iput-object v2, v1, Landroid/os/Parcel;->mPoolNext:Landroid/os/Parcel;

    .line 5602
    sget v2, Landroid/os/Parcel;->sHolderPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/os/Parcel;->sHolderPoolSize:I

    move-object v2, v1

    .line 5604
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_28

    .line 5608
    if-nez v2, :cond_21

    .line 5609
    new-instance v2, Landroid/os/Parcel;

    invoke-direct {v2, p0, p1}, Landroid/os/Parcel;-><init>(J)V

    goto :goto_27

    .line 5611
    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, v2, Landroid/os/Parcel;->mRecycled:Z

    .line 5615
    invoke-direct {v2, p0, p1}, Landroid/os/Parcel;->init(J)V

    .line 5617
    :goto_27
    return-object v2

    .line 5604
    :catchall_28
    move-exception p0

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public static whitelist obtain(Landroid/os/IBinder;)Landroid/os/Parcel;
    .registers 2

    .line 599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 600
    invoke-direct {v0, p0}, Landroid/os/Parcel;->markForBinder(Landroid/os/IBinder;)V

    .line 601
    return-object v0
.end method

.method private greylist-max-o readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V
    .registers 8

    .line 5830
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_10

    .line 5831
    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Class;

    invoke-direct {p0, p3, v2, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 5832
    aput-object v2, p1, v1

    .line 5830
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5834
    :cond_10
    return-void
.end method

.method private blacklist readArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 5842
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5843
    if-gez v0, :cond_8

    .line 5844
    const/4 p1, 0x0

    return-object p1

    .line 5846
    :cond_8
    if-nez p2, :cond_d

    new-array v1, v0, [Ljava/lang/Object;

    goto :goto_11

    :cond_d
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    :goto_11
    check-cast v1, [Ljava/lang/Object;

    .line 5848
    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v0, :cond_22

    .line 5849
    new-array v4, v2, [Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 5850
    aput-object v4, v1, v3

    .line 5848
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 5852
    :cond_22
    return-object v1
.end method

.method private blacklist readArrayListInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 5814
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5815
    if-gez v0, :cond_8

    .line 5816
    const/4 p1, 0x0

    return-object p1

    .line 5818
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 5819
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5820
    invoke-direct {p0, v1, v0, p1, p2}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 5821
    return-object v1
.end method

.method private blacklist readArrayMapInternal(Landroid/util/ArrayMap;ILandroid/os/Parcel$ClassLoaderProvider;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Landroid/os/Parcel$ClassLoaderProvider;",
            ")V"
        }
    .end annotation

    .line 5714
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/os/Parcel;->readArrayMap(Landroid/util/ArrayMap;IZZLandroid/os/Parcel$ClassLoaderProvider;[I)V

    .line 5715
    return-void
.end method

.method private blacklist readHashMapInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TK;>;",
            "Ljava/lang/Class<",
            "+TV;>;)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 5682
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5683
    if-gez v2, :cond_8

    .line 5684
    const/4 p1, 0x0

    return-object p1

    .line 5686
    :cond_8
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 5687
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 5688
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 5689
    return-object v1
.end method

.method private blacklist readLazyValue(Landroid/os/Parcel$ClassLoaderProvider;)Ljava/lang/Object;
    .registers 8

    .line 4788
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 4789
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4790
    invoke-direct {p0, v4}, Landroid/os/Parcel;->isLengthPrefixed(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 4791
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4792
    if-gez v0, :cond_16

    .line 4793
    return-object v1

    .line 4795
    :cond_16
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-static {v1, v0}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result v0

    .line 4796
    sub-int v3, v0, v2

    .line 4797
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4798
    new-instance v0, Landroid/os/Parcel$LazyValue;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/Parcel$LazyValue;-><init>(Landroid/os/Parcel;IIILandroid/os/Parcel$ClassLoaderProvider;)V

    return-object v0

    .line 4800
    :cond_2b
    move-object v5, p1

    move-object p1, p0

    invoke-static {v5}, Landroid/os/Parcel;->getClassLoader(Landroid/os/Parcel$ClassLoaderProvider;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v4, v0, v1}, Landroid/os/Parcel;->readValue(ILjava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V
    .registers 5

    .line 5789
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 5790
    return-void
.end method

.method private blacklist readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "-TT;>;I",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 5797
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 5799
    :goto_4
    if-lez p2, :cond_13

    .line 5800
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-direct {p0, p3, p4, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 5802
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5803
    add-int/lit8 p2, p2, -0x1

    .line 5804
    goto :goto_4

    .line 5805
    :cond_13
    return-void
.end method

.method private blacklist readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;-TV;>;I",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 5702
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 5704
    :goto_4
    if-lez p2, :cond_19

    .line 5705
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-direct {p0, p3, p4, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 5706
    new-array v0, v0, [Ljava/lang/Class;

    invoke-direct {p0, p3, p5, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 5707
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5708
    add-int/lit8 p2, p2, -0x1

    .line 5709
    goto :goto_4

    .line 5710
    :cond_19
    return-void
.end method

.method private blacklist readMapInternal(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;-TV;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 5695
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5696
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 5697
    return-void
.end method

.method private blacklist readParcelableArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 5467
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5468
    if-gez v0, :cond_8

    .line 5469
    const/4 p1, 0x0

    return-object p1

    .line 5471
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 5472
    if-nez p2, :cond_11

    new-array v1, v0, [Landroid/os/Parcelable;

    goto :goto_15

    :cond_11
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    :goto_15
    check-cast v1, [Ljava/lang/Object;

    .line 5473
    const/4 v2, 0x0

    :goto_18
    if-ge v2, v0, :cond_23

    .line 5474
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 5473
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 5476
    :cond_23
    return-object v1
.end method

.method private blacklist readParcelableCreatorInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable$Creator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;"
        }
    .end annotation

    .line 5329
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5330
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 5331
    return-object v1

    .line 5335
    :cond_8
    sget-object v2, Landroid/os/Parcel;->sPairedCreators:Ljava/util/HashMap;

    monitor-enter v2

    .line 5336
    :try_start_b
    sget-object v3, Landroid/os/Parcel;->sPairedCreators:Ljava/util/HashMap;

    .line 5337
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 5338
    if-nez v3, :cond_2b

    .line 5339
    sget-object v3, Landroid/os/Parcel;->sPairedCreators:Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5340
    sget-object v3, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5341
    move-object v3, v1

    goto :goto_31

    .line 5343
    :cond_2b
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 5345
    :goto_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_1ef

    .line 5347
    if-eqz v3, :cond_73

    .line 5348
    iget-object p1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/os/Parcelable$Creator;

    .line 5349
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    .line 5350
    if-eqz p2, :cond_72

    .line 5351
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_45

    goto :goto_72

    .line 5352
    :cond_45
    new-instance p1, Landroid/os/BadTypeParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcelable creator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a subclass of required class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5353
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " provided in the parameter"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5358
    :cond_72
    :goto_72
    return-object p1

    .line 5367
    :cond_73
    if-nez p1, :cond_87

    :try_start_75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_88

    .line 5406
    :catch_7e
    move-exception p1

    goto/16 :goto_174

    .line 5402
    :catch_81
    move-exception p1

    goto/16 :goto_18d

    .line 5398
    :catch_84
    move-exception p1

    goto/16 :goto_1be

    .line 5367
    :cond_87
    move-object v2, p1

    .line 5370
    :goto_88
    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 5372
    const-class v3, Landroid/os/Parcelable;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_15b

    .line 5376
    if-eqz p2, :cond_cb

    .line 5377
    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_9e

    goto :goto_cb

    .line 5378
    :cond_9e
    new-instance p1, Landroid/os/BadTypeParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcelable creator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a subclass of required class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5379
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " provided in the parameter"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5384
    :cond_cb
    :goto_cb
    const-string p2, "CREATOR"

    invoke-virtual {v2, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 5385
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_142

    .line 5389
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 5390
    const-class v4, Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_129

    .line 5397
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable$Creator;
    :try_end_eb
    .catch Ljava/lang/IllegalAccessException; {:try_start_75 .. :try_end_eb} :catch_84
    .catch Ljava/lang/ClassNotFoundException; {:try_start_75 .. :try_end_eb} :catch_81
    .catch Ljava/lang/NoSuchFieldException; {:try_start_75 .. :try_end_eb} :catch_7e

    .line 5410
    nop

    .line 5411
    if-eqz p2, :cond_110

    .line 5417
    sget-object v1, Landroid/os/Parcel;->sPairedCreators:Ljava/util/HashMap;

    monitor-enter v1

    .line 5418
    :try_start_f1
    sget-object v3, Landroid/os/Parcel;->sPairedCreators:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {p2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5419
    sget-object v2, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5420
    monitor-exit v1

    .line 5422
    return-object p2

    .line 5420
    :catchall_10d
    move-exception p1

    monitor-exit v1
    :try_end_10f
    .catchall {:try_start_f1 .. :try_end_10f} :catchall_10d

    throw p1

    .line 5412
    :cond_110
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parcelable protocol requires a non-null Parcelable.Creator object called CREATOR on class "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5393
    :cond_129
    :try_start_129
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parcelable protocol requires a Parcelable.Creator object called CREATOR on class "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5386
    :cond_142
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parcelable protocol requires the CREATOR object to be static on class "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5373
    :cond_15b
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parcelable protocol requires subclassing from Parcelable on class "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_174
    .catch Ljava/lang/IllegalAccessException; {:try_start_129 .. :try_end_174} :catch_84
    .catch Ljava/lang/ClassNotFoundException; {:try_start_129 .. :try_end_174} :catch_81
    .catch Ljava/lang/NoSuchFieldException; {:try_start_129 .. :try_end_174} :catch_7e

    .line 5407
    :goto_174
    new-instance p2, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcelable protocol requires a Parcelable.Creator object called CREATOR on class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 5403
    :goto_18d
    const-string p2, "Parcel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class not found when unmarshalling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5404
    new-instance p2, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClassNotFoundException when unmarshalling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 5399
    :goto_1be
    const-string p2, "Parcel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal access when unmarshalling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5400
    new-instance p2, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalAccessException when unmarshalling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 5345
    :catchall_1ef
    move-exception p1

    :try_start_1f0
    monitor-exit v2
    :try_end_1f1
    .catchall {:try_start_1f0 .. :try_end_1f1} :catchall_1ef

    throw p1
.end method

.method private blacklist readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 5252
    invoke-direct {p0}, Landroid/os/Parcel;->assertNotRecycled()V

    .line 5253
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readParcelableCreatorInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object p2

    .line 5254
    if-nez p2, :cond_b

    .line 5255
    const/4 p1, 0x0

    return-object p1

    .line 5257
    :cond_b
    instance-of v0, p2, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v0, :cond_16

    .line 5258
    check-cast p2, Landroid/os/Parcelable$ClassLoaderCreator;

    .line 5260
    invoke-interface {p2, p0, p1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5262
    :cond_16
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private blacklist readParcelableListInternal(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 4285
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4286
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 4287
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4288
    return-object p1

    .line 4290
    :cond_b
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4292
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 4293
    const/4 v2, 0x0

    .line 4294
    :goto_14
    if-ge v2, v1, :cond_22

    if-ge v2, v0, :cond_22

    .line 4295
    invoke-direct {p0, p2, p3}, Landroid/os/Parcel;->readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4294
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 4297
    :cond_22
    :goto_22
    if-ge v2, v0, :cond_2e

    .line 4298
    invoke-direct {p0, p2, p3}, Landroid/os/Parcel;->readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4297
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 4300
    :cond_2e
    :goto_2e
    if-ge v2, v1, :cond_36

    .line 4301
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4300
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 4303
    :cond_36
    return-object p1
.end method

.method private blacklist readSerializableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 5520
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5521
    if-nez v0, :cond_8

    .line 5525
    const/4 p1, 0x0

    return-object p1

    .line 5529
    :cond_8
    const-string v1, " provided in the parameter"

    const-string v2, " is not a subclass of required class "

    const-string v3, "Serializable object "

    const-string v4, ")"

    if-eqz p2, :cond_4b

    if-eqz p1, :cond_4b

    .line 5533
    const/4 v5, 0x0

    :try_start_15
    invoke-static {v0, v5, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 5534
    invoke-virtual {p2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_20

    goto :goto_4b

    .line 5535
    :cond_20
    new-instance p1, Landroid/os/BadTypeParcelableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5536
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5537
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5540
    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 5541
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5542
    new-instance v5, Landroid/os/Parcel$2;

    invoke-direct {v5, p0, v6, p1}, Landroid/os/Parcel$2;-><init>(Landroid/os/Parcel;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    .line 5554
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 5555
    if-eqz p2, :cond_9b

    if-nez p1, :cond_9b

    .line 5559
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_6c

    goto :goto_9b

    .line 5560
    :cond_6c
    new-instance p1, Landroid/os/BadTypeParcelableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5561
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5562
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_9b} :catch_ba
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_9b} :catch_9c

    .line 5565
    :cond_9b
    :goto_9b
    return-object v5

    .line 5570
    :catch_9c
    move-exception p1

    .line 5571
    new-instance p2, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcelable encountered ClassNotFoundException reading a Serializable object (name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 5566
    :catch_ba
    move-exception p1

    .line 5567
    new-instance p2, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private blacklist readSparseArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 5876
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5877
    if-gez v0, :cond_8

    .line 5878
    const/4 p1, 0x0

    return-object p1

    .line 5880
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 5881
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 5883
    :goto_11
    if-lez v0, :cond_24

    .line 5884
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5885
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 5886
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 5887
    add-int/lit8 v0, v0, -0x1

    .line 5888
    goto :goto_11

    .line 5889
    :cond_24
    return-object v1
.end method

.method private greylist-max-o readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V
    .registers 6

    .line 5861
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 5862
    :goto_4
    if-lez p2, :cond_14

    .line 5863
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5864
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 5865
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 5866
    add-int/lit8 p2, p2, -0x1

    .line 5867
    goto :goto_4

    .line 5868
    :cond_14
    return-void
.end method

.method private greylist-max-o readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V
    .registers 6

    .line 5894
    nop

    :goto_1
    if-lez p2, :cond_16

    .line 5895
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5896
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 5898
    :goto_10
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 5899
    add-int/lit8 p2, p2, -0x1

    .line 5900
    goto :goto_1

    .line 5901
    :cond_16
    return-void
.end method

.method private greylist-max-o readSparseIntArrayInternal(Landroid/util/SparseIntArray;I)V
    .registers 5

    .line 5904
    nop

    :goto_1
    if-lez p2, :cond_11

    .line 5905
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5906
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5907
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 5908
    add-int/lit8 p2, p2, -0x1

    .line 5909
    goto :goto_1

    .line 5910
    :cond_11
    return-void
.end method

.method private blacklist readValue(ILjava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4973
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/os/Parcel;->readValue(ILjava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private varargs blacklist readValue(ILjava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 4990
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1ae

    .line 5140
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    add-int/lit8 p2, p2, -0x4

    .line 5141
    new-instance p3, Landroid/os/BadParcelableException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parcel "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, ": Unmarshalling unknown type code "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " at offset "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 5136
    :pswitch_38
    invoke-virtual {p0}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    .line 5137
    goto/16 :goto_174

    .line 5132
    :pswitch_3e
    invoke-virtual {p0}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object p1

    .line 5133
    goto/16 :goto_174

    .line 5128
    :pswitch_44
    invoke-virtual {p0}, Landroid/os/Parcel;->createShortArray()[S

    move-result-object p1

    .line 5129
    goto/16 :goto_174

    .line 5124
    :pswitch_4a
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    .line 5125
    goto/16 :goto_174

    .line 5120
    :pswitch_55
    invoke-virtual {p0}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object p1

    .line 5121
    goto/16 :goto_174

    .line 5116
    :pswitch_5b
    invoke-virtual {p0}, Landroid/os/Parcel;->readSizeF()Landroid/util/SizeF;

    move-result-object p1

    .line 5117
    goto/16 :goto_174

    .line 5112
    :pswitch_61
    invoke-virtual {p0}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object p1

    .line 5113
    goto/16 :goto_174

    .line 5108
    :pswitch_67
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 5109
    goto/16 :goto_174

    .line 5058
    :pswitch_6d
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object p1

    .line 5059
    goto/16 :goto_174

    .line 5046
    :pswitch_73
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object p1

    .line 5047
    goto/16 :goto_174

    .line 5100
    :pswitch_79
    invoke-virtual {p0}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 5101
    goto/16 :goto_174

    .line 5084
    :pswitch_7f
    invoke-direct {p0, p2, p3}, Landroid/os/Parcel;->readSerializableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 5085
    goto/16 :goto_174

    .line 5080
    :pswitch_85
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    .line 5081
    goto/16 :goto_174

    .line 5076
    :pswitch_8f
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    .line 5077
    goto/16 :goto_174

    .line 5072
    :pswitch_95
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 5073
    goto/16 :goto_174

    .line 5066
    :pswitch_9b
    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 5067
    if-eqz p1, :cond_a5

    move-object p4, p1

    goto :goto_a7

    :cond_a5
    const-class p4, Ljava/lang/Object;

    :goto_a7
    invoke-direct {p0, p3, p4}, Landroid/os/Parcel;->checkArrayTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 5068
    invoke-direct {p0, p2, p1}, Landroid/os/Parcel;->readArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 5069
    goto/16 :goto_174

    .line 5088
    :pswitch_b0
    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 5089
    if-eqz p1, :cond_ba

    move-object p4, p1

    goto :goto_bc

    :cond_ba
    const-class p4, Landroid/os/Parcelable;

    :goto_bc
    invoke-direct {p0, p3, p4}, Landroid/os/Parcel;->checkArrayTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 5090
    invoke-direct {p0, p2, p1}, Landroid/os/Parcel;->readParcelableArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 5091
    goto/16 :goto_174

    .line 5062
    :pswitch_c5
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 5063
    goto/16 :goto_174

    .line 5054
    :pswitch_cb
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 5055
    goto/16 :goto_174

    .line 5050
    :pswitch_d1
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 5051
    goto/16 :goto_174

    .line 5094
    :pswitch_d7
    const-class p1, Landroid/util/SparseArray;

    invoke-direct {p0, p3, p1}, Landroid/os/Parcel;->checkTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 5095
    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 5096
    invoke-direct {p0, p2, p1}, Landroid/os/Parcel;->readSparseArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object p1

    .line 5097
    goto/16 :goto_174

    .line 5040
    :pswitch_e8
    const-class p1, Ljava/util/ArrayList;

    invoke-direct {p0, p3, p1}, Landroid/os/Parcel;->checkTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 5041
    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 5042
    invoke-direct {p0, p2, p1}, Landroid/os/Parcel;->readArrayListInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 5043
    goto/16 :goto_174

    .line 5036
    :pswitch_f9
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object p1

    .line 5037
    goto/16 :goto_174

    .line 5032
    :pswitch_ff
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v0, :cond_106

    goto :goto_107

    :cond_106
    move v0, v1

    :goto_107
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 5033
    goto/16 :goto_174

    .line 5028
    :pswitch_10d
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 5029
    goto/16 :goto_174

    .line 5024
    :pswitch_117
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 5025
    goto :goto_174

    .line 5020
    :pswitch_120
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 5021
    goto :goto_174

    .line 5016
    :pswitch_129
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    .line 5017
    goto :goto_174

    .line 5012
    :pswitch_133
    invoke-direct {p0, p2, p3}, Landroid/os/Parcel;->readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 5013
    goto :goto_174

    .line 5104
    :pswitch_138
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    .line 5105
    goto :goto_174

    .line 5004
    :pswitch_13d
    const-class p1, Ljava/util/HashMap;

    invoke-direct {p0, p3, p1}, Landroid/os/Parcel;->checkTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 5005
    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 5006
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Class;

    .line 5007
    if-nez p1, :cond_152

    move v2, v0

    goto :goto_153

    :cond_152
    move v2, v1

    :goto_153
    if-nez p4, :cond_157

    move v3, v0

    goto :goto_158

    :cond_157
    move v3, v1

    :goto_158
    if-ne v2, v3, :cond_15b

    goto :goto_15c

    :cond_15b
    move v0, v1

    :goto_15c
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 5008
    invoke-direct {p0, p2, p1, p4}, Landroid/os/Parcel;->readHashMapInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p1

    .line 5009
    goto :goto_174

    .line 5000
    :pswitch_164
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 5001
    goto :goto_174

    .line 4996
    :pswitch_16d
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4997
    goto :goto_174

    .line 4992
    :pswitch_172
    nop

    .line 4993
    const/4 p1, 0x0

    .line 5145
    :goto_174
    if-eqz p1, :cond_1ac

    if-eqz p3, :cond_1ac

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17f

    goto :goto_1ac

    .line 5146
    :cond_17f
    new-instance p2, Landroid/os/BadTypeParcelableException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unparcelled object "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " is not an instance of required class "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5147
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " provided in the parameter"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5150
    :cond_1ac
    :goto_1ac
    return-object p1

    nop

    :pswitch_data_1ae
    .packed-switch -0x1
        :pswitch_172
        :pswitch_16d
        :pswitch_164
        :pswitch_13d
        :pswitch_138
        :pswitch_133
        :pswitch_129
        :pswitch_120
        :pswitch_117
        :pswitch_10d
        :pswitch_ff
        :pswitch_f9
        :pswitch_e8
        :pswitch_d7
        :pswitch_d1
        :pswitch_cb
        :pswitch_c5
        :pswitch_b0
        :pswitch_9b
        :pswitch_95
        :pswitch_8f
        :pswitch_85
        :pswitch_7f
        :pswitch_79
        :pswitch_73
        :pswitch_6d
        :pswitch_67
        :pswitch_61
        :pswitch_5b
        :pswitch_55
        :pswitch_4a
        :pswitch_44
        :pswitch_3e
        :pswitch_38
    .end packed-switch
.end method

.method private varargs blacklist readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 4738
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4740
    invoke-direct {p0, v0}, Landroid/os/Parcel;->isLengthPrefixed(I)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 4741
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4742
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 4743
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/os/Parcel;->readValue(ILjava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 4744
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int/2addr p2, v2

    .line 4745
    if-eq p2, v1, :cond_75

    .line 4746
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->failOnParcelSizeMismatch()Z

    move-result p3

    .line 4747
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unparcelling of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/os/Parcel;->valueTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  consumed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " bytes, but "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " expected."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4749
    if-eqz p3, :cond_5d

    const-string v0, " [throwing]"

    goto :goto_5f

    :cond_5d
    const-string v0, " [ignored]"

    :goto_5f
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4750
    const-string v0, "Parcel"

    invoke-static {v0, p2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 4751
    if-nez p3, :cond_6f

    goto :goto_75

    .line 4752
    :cond_6f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4755
    :cond_75
    :goto_75
    goto :goto_7a

    .line 4756
    :cond_76
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/os/Parcel;->readValue(ILjava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 4758
    :goto_7a
    return-object p1
.end method

.method private blacklist resetSqaushingState()V
    .registers 3

    .line 2947
    iget-boolean v0, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    if-eqz v0, :cond_b

    .line 2948
    const-string v0, "Parcel"

    const-string v1, "allowSquashing wasn\'t restored."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Parcel;->mWrittenSquashableParcelables:Landroid/util/ArrayMap;

    .line 2951
    iput-object v0, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    .line 2952
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    .line 2953
    return-void
.end method

.method public static greylist-max-o setStackTraceParceling(Z)V
    .registers 1

    .line 3102
    sput-boolean p0, Landroid/os/Parcel;->sParcelExceptionStackTrace:Z

    .line 3103
    return-void
.end method

.method private static blacklist valueTypeToString(I)Ljava/lang/String;
    .registers 3

    .line 5920
    packed-switch p0, :pswitch_data_7e

    .line 5953
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5950
    :pswitch_1d
    const-string p0, "VAL_FLOATARRAY"

    return-object p0

    .line 5949
    :pswitch_20
    const-string p0, "VAL_CHARARRAY"

    return-object p0

    .line 5948
    :pswitch_23
    const-string p0, "VAL_SHORTARRAY"

    return-object p0

    .line 5947
    :pswitch_26
    const-string p0, "VAL_CHAR"

    return-object p0

    .line 5946
    :pswitch_29
    const-string p0, "VAL_DOUBLEARRAY"

    return-object p0

    .line 5945
    :pswitch_2c
    const-string p0, "VAL_SIZEF"

    return-object p0

    .line 5944
    :pswitch_2f
    const-string p0, "VAL_SIZE"

    return-object p0

    .line 5925
    :pswitch_32
    const-string p0, "VAL_PERSISTABLEBUNDLE"

    return-object p0

    .line 5938
    :pswitch_35
    const-string p0, "VAL_CHARSEQUENCEARRAY"

    return-object p0

    .line 5935
    :pswitch_38
    const-string p0, "VAL_BOOLEANARRAY"

    return-object p0

    .line 5952
    :pswitch_3b
    const-string p0, "VAL_SERIALIZABLE"

    return-object p0

    .line 5943
    :pswitch_3e
    const-string p0, "VAL_BYTE"

    return-object p0

    .line 5942
    :pswitch_41
    const-string p0, "VAL_LONGARRAY"

    return-object p0

    .line 5941
    :pswitch_44
    const-string p0, "VAL_INTARRAY"

    return-object p0

    .line 5951
    :pswitch_47
    const-string p0, "VAL_OBJECTARRAY"

    return-object p0

    .line 5940
    :pswitch_4a
    const-string p0, "VAL_PARCELABLEARRAY"

    return-object p0

    .line 5939
    :pswitch_4d
    const-string p0, "VAL_IBINDER"

    return-object p0

    .line 5937
    :pswitch_50
    const-string p0, "VAL_STRINGARRAY"

    return-object p0

    .line 5936
    :pswitch_53
    const-string p0, "VAL_BYTEARRAY"

    return-object p0

    .line 5934
    :pswitch_56
    const-string p0, "VAL_SPARSEARRAY"

    return-object p0

    .line 5933
    :pswitch_59
    const-string p0, "VAL_LIST"

    return-object p0

    .line 5932
    :pswitch_5c
    const-string p0, "VAL_CHARSEQUENCE"

    return-object p0

    .line 5931
    :pswitch_5f
    const-string p0, "VAL_BOOLEAN"

    return-object p0

    .line 5930
    :pswitch_62
    const-string p0, "VAL_DOUBLE"

    return-object p0

    .line 5929
    :pswitch_65
    const-string p0, "VAL_FLOAT"

    return-object p0

    .line 5928
    :pswitch_68
    const-string p0, "VAL_LONG"

    return-object p0

    .line 5927
    :pswitch_6b
    const-string p0, "VAL_SHORT"

    return-object p0

    .line 5926
    :pswitch_6e
    const-string p0, "VAL_PARCELABLE"

    return-object p0

    .line 5924
    :pswitch_71
    const-string p0, "VAL_BUNDLE"

    return-object p0

    .line 5923
    :pswitch_74
    const-string p0, "VAL_MAP"

    return-object p0

    .line 5922
    :pswitch_77
    const-string p0, "VAL_INTEGER"

    return-object p0

    .line 5921
    :pswitch_7a
    const-string p0, "VAL_NULL"

    return-object p0

    nop

    :pswitch_data_7e
    .packed-switch -0x1
        :pswitch_7a
        :pswitch_3
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_3
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private blacklist writeException$ravenwood(Ljava/lang/Exception;)V
    .registers 3

    .line 3169
    invoke-static {p1}, Landroid/os/Parcel;->getExceptionCode(Ljava/lang/Throwable;)I

    move-result v0

    .line 3170
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3171
    if-nez v0, :cond_16

    .line 3172
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_10

    .line 3173
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 3175
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 3177
    :cond_16
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3178
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3179
    return-void
.end method

.method private blacklist writeFixedArrayInternal(Ljava/lang/Object;II[I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;II[I)V"
        }
    .end annotation

    .line 2544
    array-length v0, p4

    if-ge p3, v0, :cond_12f

    .line 2549
    aget v0, p4, p3

    .line 2552
    if-eqz p1, :cond_127

    .line 2555
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_10e

    .line 2558
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v0, :cond_e7

    .line 2566
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 2567
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_45

    add-int/lit8 v2, p3, 0x1

    array-length v3, p4

    if-ne v2, v3, :cond_2b

    goto :goto_45

    .line 2568
    :cond_2b
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Array has fewer dimensions than expected: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2571
    :cond_45
    :goto_45
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_50

    .line 2572
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_cc

    .line 2573
    :cond_50
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_5b

    .line 2574
    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_cc

    .line 2575
    :cond_5b
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_66

    .line 2576
    check-cast p1, [C

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharArray([C)V

    goto/16 :goto_cc

    .line 2577
    :cond_66
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_70

    .line 2578
    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_cc

    .line 2579
    :cond_70
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_7a

    .line 2580
    check-cast p1, [J

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_cc

    .line 2581
    :cond_7a
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_84

    .line 2582
    check-cast p1, [F

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_cc

    .line 2583
    :cond_84
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_8e

    .line 2584
    check-cast p1, [D

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto :goto_cc

    .line 2585
    :cond_8e
    const-class v2, Landroid/os/IBinder;

    if-ne v1, v2, :cond_98

    .line 2586
    check-cast p1, [Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBinderArray([Landroid/os/IBinder;)V

    goto :goto_cc

    .line 2587
    :cond_98
    const-class v2, Landroid/os/IInterface;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 2588
    check-cast p1, [Landroid/os/IInterface;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInterfaceArray([Landroid/os/IInterface;)V

    goto :goto_cc

    .line 2589
    :cond_a6
    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 2590
    check-cast p1, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_cc

    .line 2591
    :cond_b4
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 2592
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2593
    const/4 v1, 0x0

    :goto_be
    if-ge v1, v0, :cond_cc

    .line 2594
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, v2, p2, v3, p4}, Landroid/os/Parcel;->writeFixedArrayInternal(Ljava/lang/Object;II[I)V

    .line 2593
    add-int/lit8 v1, v1, 0x1

    goto :goto_be

    .line 2600
    :cond_cc
    :goto_cc
    return-void

    .line 2598
    :cond_cd
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown type for fixed-size array: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2559
    :cond_e7
    new-instance p2, Landroid/os/BadParcelableException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bad length: expected "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", but got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 2560
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2556
    :cond_10e
    new-instance p2, Landroid/os/BadParcelableException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Not an array: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2553
    :cond_127
    new-instance p1, Landroid/os/BadParcelableException;

    const-string p2, "Non-null array shouldn\'t have a null array."

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2545
    :cond_12f
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Array has more dimensions than expected: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist writeNoException$ravenwood()V
    .registers 2

    .line 3266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3267
    return-void
.end method


# virtual methods
.method public blacklist addFlags(I)V
    .registers 3

    .line 734
    iget v0, p0, Landroid/os/Parcel;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/os/Parcel;->mFlags:I

    .line 735
    return-void
.end method

.method public final greylist-max-o adoptClassCookies(Landroid/os/Parcel;)V
    .registers 2

    .line 968
    iget-object p1, p1, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    .line 969
    return-void
.end method

.method public blacklist allowSquashing()Z
    .registers 3

    .line 2929
    iget-boolean v0, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    .line 2930
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    .line 2931
    return v0
.end method

.method public final whitelist appendFrom(Landroid/os/Parcel;II)V
    .registers 10

    .line 917
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    iget-wide v2, p1, Landroid/os/Parcel;->mNativePtr:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/os/Parcel;->nativeAppendFrom(JJII)V

    .line 918
    return-void
.end method

.method public greylist-max-o compareData(Landroid/os/Parcel;)I
    .registers 6

    .line 922
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    iget-wide v2, p1, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/os/Parcel;->nativeCompareData(JJ)I

    move-result p1

    return p1
.end method

.method public greylist-max-o copyClassCookies()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 973
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    return-object v0
.end method

.method public final whitelist createBinderArray()[Landroid/os/IBinder;
    .registers 5

    .line 2217
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2218
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 2219
    if-ltz v0, :cond_19

    .line 2220
    new-array v1, v0, [Landroid/os/IBinder;

    .line 2221
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_18

    .line 2222
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2221
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2224
    :cond_18
    return-object v1

    .line 2226
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist createBinderArrayList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 4129
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4130
    if-gez v0, :cond_8

    .line 4131
    const/4 v0, 0x0

    return-object v0

    .line 4133
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4135
    :goto_11
    if-lez v0, :cond_1d

    .line 4136
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4137
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 4139
    :cond_1d
    return-object v1
.end method

.method public final whitelist createBooleanArray()[Z
    .registers 6

    .line 1775
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1776
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 1780
    if-ltz v0, :cond_27

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_27

    .line 1781
    new-array v1, v0, [Z

    .line 1782
    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v0, :cond_26

    .line 1783
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    move v4, v2

    :goto_21
    aput-boolean v4, v1, v3

    .line 1782
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1785
    :cond_26
    return-object v1

    .line 1787
    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist createByteArray()[B
    .registers 3

    .line 3747
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeCreateByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createCharArray()[C
    .registers 5

    .line 1857
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1858
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 1859
    if-ltz v0, :cond_22

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    shr-int/lit8 v1, v2, 0x2

    if-gt v0, v1, :cond_22

    .line 1860
    new-array v1, v0, [C

    .line 1861
    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_21

    .line 1862
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 1861
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1864
    :cond_21
    return-object v1

    .line 1866
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist createDoubleArray()[D
    .registers 6

    .line 2011
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2012
    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 2014
    if-ltz v0, :cond_22

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_22

    .line 2015
    new-array v1, v0, [D

    .line 2016
    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_21

    .line 2017
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 2016
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 2019
    :cond_21
    return-object v1

    .line 2021
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createExceptionOrNull(ILjava/lang/String;)Ljava/lang/Exception;
    .registers 4

    .line 3365
    packed-switch p1, :pswitch_data_68

    .line 3389
    const/4 p1, 0x0

    return-object p1

    .line 3373
    :pswitch_5
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 3375
    :pswitch_b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 3377
    :pswitch_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 3379
    :pswitch_17
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 3381
    :pswitch_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 3383
    :pswitch_23
    new-instance p1, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {p1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    return-object p1

    .line 3385
    :pswitch_29
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 3387
    :pswitch_2f
    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p1, v0, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 3367
    :pswitch_39
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-lez p1, :cond_4e

    .line 3368
    const-class p1, Landroid/os/Parcelable;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-class p2, Ljava/lang/Exception;

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    return-object p1

    .line 3370
    :cond_4e
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " [missing Parcelable]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_68
    .packed-switch -0x9
        :pswitch_39
        :pswitch_2f
        :pswitch_29
        :pswitch_23
        :pswitch_1d
        :pswitch_17
        :pswitch_11
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method

.method public varargs whitelist createFixedArray(Ljava/lang/Class;Landroid/os/Parcelable$Creator;[I)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Parcelable$Creator<",
            "TS;>;[I)TT;"
        }
    .end annotation

    .line 4651
    array-length v0, p3

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->ensureClassHasExpectedDimensions(Ljava/lang/Class;I)V

    .line 4653
    nop

    .line 4654
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 4655
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, ", but got "

    const-string v2, "Bad length: expected "

    const/4 v3, 0x0

    if-eqz v0, :cond_4b

    .line 4656
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    .line 4688
    if-eqz p1, :cond_4a

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p2

    aget v0, p3, v3

    if-ne p2, v0, :cond_25

    goto :goto_4a

    .line 4689
    :cond_25
    new-instance p2, Landroid/os/BadParcelableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget p3, p3, v3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 4690
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4692
    :cond_4a
    :goto_4a
    return-object p1

    .line 4657
    :cond_4b
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 4658
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4659
    if-gez v0, :cond_59

    .line 4660
    const/4 p1, 0x0

    return-object p1

    .line 4662
    :cond_59
    aget v4, p3, v3

    if-ne v0, v4, :cond_85

    .line 4668
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 4669
    :goto_61
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 4670
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_61

    .line 4673
    :cond_6c
    invoke-static {p1}, Landroid/os/Parcel;->getItemTypeSize(Ljava/lang/Class;)I

    move-result v1

    .line 4674
    invoke-direct {p0, v1, p3}, Landroid/os/Parcel;->ensureWithinMemoryLimit(I[I)V

    .line 4676
    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    .line 4677
    nop

    :goto_78
    if-ge v3, v0, :cond_84

    .line 4678
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Landroid/os/Parcel;->readFixedArray(Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 4677
    add-int/lit8 v3, v3, 0x1

    goto :goto_78

    .line 4680
    :cond_84
    return-object p1

    .line 4663
    :cond_85
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget p3, p3, v3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4682
    :cond_a6
    new-instance p2, Landroid/os/BadParcelableException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type for fixed-size array: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs whitelist createFixedArray(Ljava/lang/Class;Ljava/util/function/Function;[I)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TS;>;[I)TT;"
        }
    .end annotation

    .line 4591
    array-length v0, p3

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->ensureClassHasExpectedDimensions(Ljava/lang/Class;I)V

    .line 4593
    nop

    .line 4594
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 4595
    const-class v0, Landroid/os/IInterface;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, ", but got "

    const-string v2, "Bad length: expected "

    const/4 v3, 0x0

    if-eqz v0, :cond_50

    .line 4596
    new-instance v0, Landroid/os/Parcel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/os/Parcel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p2}, Landroid/os/Parcel;->createInterfaceArray(Ljava/util/function/IntFunction;Ljava/util/function/Function;)[Landroid/os/IInterface;

    move-result-object p1

    .line 4629
    if-eqz p1, :cond_4f

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p2

    aget v0, p3, v3

    if-ne p2, v0, :cond_2a

    goto :goto_4f

    .line 4630
    :cond_2a
    new-instance p2, Landroid/os/BadParcelableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget p3, p3, v3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 4631
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4633
    :cond_4f
    :goto_4f
    return-object p1

    .line 4598
    :cond_50
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 4599
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4600
    if-gez v0, :cond_5e

    .line 4601
    const/4 p1, 0x0

    return-object p1

    .line 4603
    :cond_5e
    aget v4, p3, v3

    if-ne v0, v4, :cond_8a

    .line 4609
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 4610
    :goto_66
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 4611
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_66

    .line 4614
    :cond_71
    invoke-static {p1}, Landroid/os/Parcel;->getItemTypeSize(Ljava/lang/Class;)I

    move-result v1

    .line 4615
    invoke-direct {p0, v1, p3}, Landroid/os/Parcel;->ensureWithinMemoryLimit(I[I)V

    .line 4617
    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    .line 4618
    nop

    :goto_7d
    if-ge v3, v0, :cond_89

    .line 4619
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Landroid/os/Parcel;->readFixedArray(Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 4618
    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    .line 4621
    :cond_89
    return-object p1

    .line 4604
    :cond_8a
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget p3, p3, v3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4623
    :cond_ab
    new-instance p2, Landroid/os/BadParcelableException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type for fixed-size array: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs whitelist createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[I)TT;"
        }
    .end annotation

    .line 4518
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->ensureClassHasExpectedDimensions(Ljava/lang/Class;I)V

    .line 4520
    nop

    .line 4521
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 4522
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v1, ", but got "

    const-string v2, "Bad length: expected "

    const/4 v3, 0x0

    if-ne p1, v0, :cond_17

    .line 4523
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object p1

    goto :goto_55

    .line 4524
    :cond_17
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_20

    .line 4525
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    goto :goto_55

    .line 4526
    :cond_20
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_29

    .line 4527
    invoke-virtual {p0}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object p1

    goto :goto_55

    .line 4528
    :cond_29
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_32

    .line 4529
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    goto :goto_55

    .line 4530
    :cond_32
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3b

    .line 4531
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    goto :goto_55

    .line 4532
    :cond_3b
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_44

    .line 4533
    invoke-virtual {p0}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    goto :goto_55

    .line 4534
    :cond_44
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4d

    .line 4535
    invoke-virtual {p0}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object p1

    goto :goto_55

    .line 4536
    :cond_4d
    const-class v0, Landroid/os/IBinder;

    if-ne p1, v0, :cond_86

    .line 4537
    invoke-virtual {p0}, Landroid/os/Parcel;->createBinderArray()[Landroid/os/IBinder;

    move-result-object p1

    .line 4569
    :goto_55
    if-eqz p1, :cond_85

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    aget v4, p2, v3

    if-ne v0, v4, :cond_60

    goto :goto_85

    .line 4570
    :cond_60
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget p2, p2, v3

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4571
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4573
    :cond_85
    :goto_85
    return-object p1

    .line 4538
    :cond_86
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 4539
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4540
    if-gez v0, :cond_94

    .line 4541
    const/4 p1, 0x0

    return-object p1

    .line 4543
    :cond_94
    aget v4, p2, v3

    if-ne v0, v4, :cond_c0

    .line 4549
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 4550
    :goto_9c
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 4551
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_9c

    .line 4554
    :cond_a7
    invoke-static {p1}, Landroid/os/Parcel;->getItemTypeSize(Ljava/lang/Class;)I

    move-result v1

    .line 4555
    invoke-direct {p0, v1, p2}, Landroid/os/Parcel;->ensureWithinMemoryLimit(I[I)V

    .line 4557
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    .line 4558
    nop

    :goto_b3
    if-ge v3, v0, :cond_bf

    .line 4559
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readFixedArray(Ljava/lang/Object;)V

    .line 4558
    add-int/lit8 v3, v3, 0x1

    goto :goto_b3

    .line 4561
    :cond_bf
    return-object p1

    .line 4544
    :cond_c0
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget p2, p2, v3

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4563
    :cond_e1
    new-instance p2, Landroid/os/BadParcelableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type for fixed-size array: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final whitelist createFloatArray()[F
    .registers 5

    .line 1972
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1973
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 1975
    if-ltz v0, :cond_21

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_21

    .line 1976
    new-array v1, v0, [F

    .line 1977
    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_20

    .line 1978
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    aput v3, v1, v2

    .line 1977
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1980
    :cond_20
    return-object v1

    .line 1982
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist createIntArray()[I
    .registers 5

    .line 1895
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1896
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 1897
    if-ltz v0, :cond_21

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_21

    .line 1898
    new-array v1, v0, [I

    .line 1899
    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_20

    .line 1900
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v1, v2

    .line 1899
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1902
    :cond_20
    return-object v1

    .line 1904
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist createInterfaceArray(Ljava/util/function/IntFunction;Ljava/util/function/Function;)[Landroid/os/IInterface;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 2252
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2253
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 2254
    if-ltz v0, :cond_23

    .line 2255
    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/IInterface;

    .line 2256
    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_22

    .line 2257
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    aput-object v2, p1, v1

    .line 2256
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2259
    :cond_22
    return-object p1

    .line 2261
    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method public final whitelist createInterfaceArrayList(Ljava/util/function/Function;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 4156
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4157
    if-gez v0, :cond_8

    .line 4158
    const/4 p1, 0x0

    return-object p1

    .line 4160
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4162
    :goto_11
    if-lez v0, :cond_23

    .line 4163
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4164
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 4166
    :cond_23
    return-object v1
.end method

.method public final whitelist createLongArray()[J
    .registers 6

    .line 1933
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1934
    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 1936
    if-ltz v0, :cond_22

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_22

    .line 1937
    new-array v1, v0, [J

    .line 1938
    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_21

    .line 1939
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 1938
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1941
    :cond_21
    return-object v1

    .line 1943
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public final greylist-max-o createRawFileDescriptorArray()[Ljava/io/FileDescriptor;
    .registers 5

    .line 3523
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3524
    if-gez v0, :cond_8

    .line 3525
    const/4 v0, 0x0

    return-object v0

    .line 3527
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 3528
    new-array v1, v0, [Ljava/io/FileDescriptor;

    .line 3529
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_1a

    .line 3530
    invoke-virtual {p0}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3529
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 3532
    :cond_1a
    return-object v1
.end method

.method public blacklist createShortArray()[S
    .registers 5

    .line 1818
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1819
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 1820
    if-ltz v0, :cond_22

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    shr-int/lit8 v1, v2, 0x2

    if-gt v0, v1, :cond_22

    .line 1821
    new-array v1, v0, [S

    .line 1822
    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_21

    .line 1823
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 1822
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1825
    :cond_21
    return-object v1

    .line 1827
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public final blacklist createString16Array()[Ljava/lang/String;
    .registers 5

    .line 2124
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2125
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 2126
    if-ltz v0, :cond_19

    .line 2127
    new-array v1, v0, [Ljava/lang/String;

    .line 2128
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_18

    .line 2129
    invoke-virtual {p0}, Landroid/os/Parcel;->readString16()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2128
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2131
    :cond_18
    return-object v1

    .line 2133
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public final blacklist createString8Array()[Ljava/lang/String;
    .registers 5

    .line 2065
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2066
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 2067
    if-ltz v0, :cond_19

    .line 2068
    new-array v1, v0, [Ljava/lang/String;

    .line 2069
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_18

    .line 2070
    invoke-virtual {p0}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2069
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2072
    :cond_18
    return-object v1

    .line 2074
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist createStringArray()[Ljava/lang/String;
    .registers 2

    .line 2042
    invoke-virtual {p0}, Landroid/os/Parcel;->createString16Array()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createStringArrayList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4103
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4104
    if-gez v0, :cond_8

    .line 4105
    const/4 v0, 0x0

    return-object v0

    .line 4107
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4109
    :goto_11
    if-lez v0, :cond_1d

    .line 4110
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4111
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 4113
    :cond_1d
    return-object v1
.end method

.method public final whitelist createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 4320
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4321
    if-gez v0, :cond_8

    .line 4322
    const/4 p1, 0x0

    return-object p1

    .line 4324
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4325
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v1

    .line 4326
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_1c

    .line 4327
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4326
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 4329
    :cond_1c
    return-object v1
.end method

.method public final whitelist createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 3994
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3995
    if-gez v0, :cond_8

    .line 3996
    const/4 p1, 0x0

    return-object p1

    .line 3998
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 3999
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4000
    :goto_11
    if-lez v0, :cond_1d

    .line 4001
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4002
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 4004
    :cond_1d
    return-object v1
.end method

.method public final whitelist createTypedArrayMap(Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 4076
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4077
    if-gez v0, :cond_8

    .line 4078
    const/4 p1, 0x0

    return-object p1

    .line 4080
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4081
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 4082
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_24

    .line 4083
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4084
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 4085
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4082
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 4087
    :cond_24
    return-object v1
.end method

.method public final whitelist createTypedSparseArray(Landroid/os/Parcelable$Creator;)Landroid/util/SparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 4047
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4048
    if-gez v0, :cond_8

    .line 4049
    const/4 p1, 0x0

    return-object p1

    .line 4051
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4052
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 4053
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_24

    .line 4054
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4055
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 4056
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 4053
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 4058
    :cond_24
    return-object v1
.end method

.method public final whitelist dataAvail()I
    .registers 3

    .line 766
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataAvail(J)I

    move-result v0

    return v0
.end method

.method public final whitelist dataCapacity()I
    .registers 3

    .line 784
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataCapacity(J)I

    move-result v0

    return v0
.end method

.method public final whitelist dataPosition()I
    .registers 3

    .line 774
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataPosition(J)I

    move-result v0

    return v0
.end method

.method public whitelist dataSize()I
    .registers 3

    .line 758
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataSize(J)I

    move-result v0

    return v0
.end method

.method public greylist-max-o destroy()V
    .registers 5

    .line 5650
    invoke-direct {p0}, Landroid/os/Parcel;->resetSqaushingState()V

    .line 5651
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 5652
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v0, :cond_14

    .line 5653
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDestroy(J)V

    .line 5655
    :cond_14
    iput-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 5657
    :cond_16
    return-void
.end method

.method public final whitelist enforceInterface(Ljava/lang/String;)V
    .registers 4

    .line 1158
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeEnforceInterface(JLjava/lang/String;)V

    .line 1159
    return-void
.end method

.method public whitelist enforceNoDataAvail()V
    .registers 5

    .line 1168
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    .line 1169
    if-gtz v0, :cond_7

    .line 1172
    return-void

    .line 1170
    :cond_7
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parcel data not fully consumed, unread size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 5667
    invoke-virtual {p0}, Landroid/os/Parcel;->destroy()V

    .line 5668
    return-void
.end method

.method public final greylist-max-o getClassCookie(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    .line 941
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 724
    iget v0, p0, Landroid/os/Parcel;->mFlags:I

    return v0
.end method

.method public blacklist getOpenAshmemSize()J
    .registers 3

    .line 5916
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeGetOpenAshmemSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist hasBinders()Z
    .registers 3

    .line 1115
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeHasBinders(J)Z

    move-result v0

    return v0
.end method

.method public blacklist hasBinders(II)Z
    .registers 5

    .line 1138
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeHasBindersInRange(JII)Z

    move-result p1

    return p1
.end method

.method public blacklist hasClassCookie(Ljava/lang/Class;)Z
    .registers 3

    .line 963
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public whitelist hasFileDescriptors()Z
    .registers 3

    .line 997
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeHasFileDescriptors(J)Z

    move-result v0

    return v0
.end method

.method public whitelist hasFileDescriptors(II)Z
    .registers 5

    .line 1018
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeHasFileDescriptorsInRange(JII)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o hasReadWriteHelper()Z
    .registers 3

    .line 675
    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    sget-object v1, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final blacklist isForRpc()Z
    .registers 3

    .line 717
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeIsForRpc(J)Z

    move-result v0

    return v0
.end method

.method public final blacklist markSensitive()V
    .registers 3

    .line 701
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeMarkSensitive(J)V

    .line 702
    return-void
.end method

.method public final whitelist marshall(Ljava/nio/ByteBuffer;)V
    .registers 8

    .line 860
    if-eqz p1, :cond_44

    .line 863
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 867
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 868
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 870
    nop

    .line 871
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 872
    iget-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v2, v3, p1, v0, v1}, Landroid/os/Parcel;->nativeMarshallBuffer(JLjava/nio/ByteBuffer;II)I

    move-result v1

    goto :goto_33

    .line 873
    :cond_1e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 874
    iget-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 875
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v0

    .line 874
    invoke-static {v2, v3, v4, v5, v1}, Landroid/os/Parcel;->nativeMarshallArray(J[BII)I

    move-result v1

    .line 880
    :goto_33
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 881
    return-void

    .line 877
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 864
    :cond_3e
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1

    .line 861
    :cond_44
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final whitelist marshall()[B
    .registers 3

    .line 840
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeMarshall(J)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist maybeWriteSquashed(Landroid/os/Parcelable;)Z
    .registers 5

    .line 2996
    iget-boolean v0, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 2998
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2999
    return v1

    .line 3001
    :cond_9
    invoke-direct {p0}, Landroid/os/Parcel;->ensureWrittenSquashableParcelables()V

    .line 3002
    iget-object v0, p0, Landroid/os/Parcel;->mWrittenSquashableParcelables:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3003
    if-eqz v0, :cond_26

    .line 3006
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    .line 3009
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3010
    const/4 p1, 0x1

    return p1

    .line 3013
    :cond_26
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3016
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 3017
    iget-object v2, p0, Landroid/os/Parcel;->mWrittenSquashableParcelables:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3020
    return v1
.end method

.method public final greylist-max-o pushAllowFds(Z)Z
    .registers 4

    .line 820
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativePushAllowFds(JZ)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o putClassCookies(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 978
    if-nez p1, :cond_3

    .line 979
    return-void

    .line 981
    :cond_3
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    if-nez v0, :cond_e

    .line 982
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    .line 984
    :cond_e
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 985
    return-void
.end method

.method public whitelist readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3880
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist readArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 3901
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3902
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3839
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readArrayListInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public whitelist readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 3861
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3862
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readArrayListInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method blacklist readArrayMap(Landroid/util/ArrayMap;IZZLandroid/os/Parcel$ClassLoaderProvider;[I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;IZZ",
            "Landroid/os/Parcel$ClassLoaderProvider;",
            "[I)V"
        }
    .end annotation

    .line 5729
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 5730
    :goto_4
    if-lez p2, :cond_2f

    .line 5731
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5732
    if-eqz p4, :cond_11

    invoke-direct {p0, p5}, Landroid/os/Parcel;->readLazyValue(Landroid/os/Parcel$ClassLoaderProvider;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_19

    .line 5733
    :cond_11
    invoke-static {p5}, Landroid/os/Parcel;->getClassLoader(Landroid/os/Parcel$ClassLoaderProvider;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 5732
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    .line 5734
    :goto_19
    instance-of v3, v2, Landroid/os/Parcel$LazyValue;

    if-eqz v3, :cond_23

    .line 5735
    const/4 v3, 0x0

    aget v4, p6, v3

    add-int/2addr v4, v0

    aput v4, p6, v3

    .line 5737
    :cond_23
    if-eqz p3, :cond_29

    .line 5738
    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2c

    .line 5740
    :cond_29
    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5742
    :goto_2c
    add-int/lit8 p2, p2, -0x1

    .line 5743
    goto :goto_4

    .line 5744
    :cond_2f
    if-eqz p3, :cond_34

    .line 5745
    invoke-virtual {p1}, Landroid/util/ArrayMap;->validate()V

    .line 5747
    :cond_34
    return-void
.end method

.method public greylist-max-r readArrayMap(Landroid/util/ArrayMap;Landroid/os/Parcel$ClassLoaderProvider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Parcel$ClassLoaderProvider;",
            ")V"
        }
    .end annotation

    .line 5755
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5756
    if-gez v0, :cond_7

    .line 5757
    return-void

    .line 5759
    :cond_7
    invoke-direct {p0, p1, v0, p2}, Landroid/os/Parcel;->readArrayMapInternal(Landroid/util/ArrayMap;ILandroid/os/Parcel$ClassLoaderProvider;)V

    .line 5760
    return-void
.end method

.method public greylist readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/util/ArraySet<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 5771
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5772
    if-gez v0, :cond_8

    .line 5773
    const/4 p1, 0x0

    return-object p1

    .line 5775
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 5776
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 5777
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_1e

    .line 5778
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    .line 5779
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    .line 5777
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 5781
    :cond_1e
    return-object v1
.end method

.method public final whitelist readBinderArray([Landroid/os/IBinder;)V
    .registers 5

    .line 2231
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2232
    array-length v1, p1

    if-ne v0, v1, :cond_14

    .line 2233
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_13

    .line 2234
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    aput-object v2, p1, v1

    .line 2233
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2239
    :cond_13
    return-void

    .line 2237
    :cond_14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bad array lengths"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist readBinderList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 4198
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4199
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4200
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4201
    const/4 v2, 0x0

    .line 4202
    :goto_d
    if-ge v2, v0, :cond_1b

    if-ge v2, v1, :cond_1b

    .line 4203
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4202
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 4205
    :cond_1b
    :goto_1b
    if-ge v2, v1, :cond_27

    .line 4206
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4205
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 4208
    :cond_27
    :goto_27
    if-ge v2, v0, :cond_2f

    .line 4209
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4208
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 4211
    :cond_2f
    return-void
.end method

.method public final whitelist readBlob()[B
    .registers 3

    .line 3767
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadBlob(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readBoolean()Z
    .registers 2

    .line 3474
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final whitelist readBooleanArray([Z)V
    .registers 6

    .line 1792
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1793
    array-length v1, p1

    if-ne v0, v1, :cond_1a

    .line 1794
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_19

    .line 1795
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    goto :goto_14

    :cond_13
    move v3, v1

    :goto_14
    aput-boolean v3, p1, v2

    .line 1794
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1800
    :cond_19
    return-void

    .line 1798
    :cond_1a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bad array lengths"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist readBundle()Landroid/os/Bundle;
    .registers 2

    .line 3667
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .registers 4

    .line 3678
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3679
    if-gez v0, :cond_8

    .line 3681
    const/4 p1, 0x0

    return-object p1

    .line 3684
    :cond_8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p0, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Parcel;I)V

    .line 3685
    if-eqz p1, :cond_12

    .line 3686
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3688
    :cond_12
    return-object v1
.end method

.method public final whitelist readByte()B
    .registers 2

    .line 3556
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public final whitelist readByteArray([B)V
    .registers 5

    .line 3755
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    if-eqz p1, :cond_6

    array-length v2, p1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    invoke-static {v0, v1, p1, v2}, Landroid/os/Parcel;->nativeReadByteArray(J[BI)Z

    move-result p1

    .line 3756
    if-eqz p1, :cond_e

    .line 3759
    return-void

    .line 3757
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bad array lengths"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist readCallingWorkSourceUid()I
    .registers 3

    .line 1200
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadCallingWorkSourceUid(J)I

    move-result v0

    return v0
.end method

.method public final whitelist readCharArray([C)V
    .registers 5

    .line 1871
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1872
    array-length v1, p1

    if-ne v0, v1, :cond_15

    .line 1873
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 1874
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p1, v1

    .line 1873
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1879
    :cond_14
    return-void

    .line 1877
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bad array lengths"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final greylist readCharSequence()Ljava/lang/CharSequence;
    .registers 2

    .line 3484
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final greylist-max-o readCharSequenceArray()[Ljava/lang/CharSequence;
    .registers 5

    .line 3786
    nop

    .line 3788
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3789
    if-ltz v0, :cond_19

    .line 3791
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 3792
    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 3794
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_1a

    .line 3796
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3794
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 3789
    :cond_19
    const/4 v1, 0x0

    .line 3800
    :cond_1a
    return-object v1
.end method

.method public final greylist-max-o readCharSequenceList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 3809
    nop

    .line 3811
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3812
    if-ltz v0, :cond_1d

    .line 3813
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 3814
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3816
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_1e

    .line 3817
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3816
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 3812
    :cond_1d
    const/4 v1, 0x0

    .line 3821
    :cond_1e
    return-object v1
.end method

.method public final greylist readCreator(Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .line 5271
    instance-of v0, p1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v0, :cond_d

    .line 5272
    check-cast p1, Landroid/os/Parcelable$ClassLoaderCreator;

    .line 5274
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    return-object p1

    .line 5276
    :cond_d
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    return-object p1
.end method

.method public final whitelist readDouble()D
    .registers 3

    .line 3420
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist readDoubleArray([D)V
    .registers 6

    .line 2026
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2027
    array-length v1, p1

    if-ne v0, v1, :cond_14

    .line 2028
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_13

    .line 2029
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 2028
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2034
    :cond_13
    return-void

    .line 2032
    :cond_14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bad array lengths"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist readException()V
    .registers 3

    .line 3279
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 3280
    if-eqz v0, :cond_d

    .line 3281
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3282
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 3284
    :cond_d
    return-void
.end method

.method public final whitelist readException(ILjava/lang/String;)V
    .registers 7

    .line 3335
    nop

    .line 3336
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3337
    const/4 v1, 0x0

    if-lez v0, :cond_d

    .line 3338
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 3337
    :cond_d
    move-object v0, v1

    .line 3340
    :goto_e
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->createException(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object p1

    .line 3342
    if-eqz v0, :cond_30

    .line 3343
    new-instance p2, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote stack trace:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 3345
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->appendCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3347
    :cond_30
    invoke-static {p1}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 3348
    return-void
.end method

.method public final greylist readExceptionCode()I
    .registers 3

    .line 3302
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3303
    const/16 v1, -0x7f

    if-ne v0, v1, :cond_f

    .line 3304
    invoke-static {p0}, Landroid/app/AppOpsManager;->readAndLogNotedAppops(Landroid/os/Parcel;)V

    .line 3306
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3309
    :cond_f
    const/16 v1, -0x80

    if-ne v0, v1, :cond_26

    .line 3310
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3311
    if-nez v0, :cond_21

    .line 3312
    const-string v0, "Parcel"

    const-string v1, "Unexpected zero-sized Parcel reply header."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 3318
    :cond_21
    invoke-static {p0}, Landroid/os/StrictMode;->readAndHandleBinderCallViolations(Landroid/os/Parcel;)V

    .line 3322
    :goto_24
    const/4 v0, 0x0

    return v0

    .line 3324
    :cond_26
    return v0
.end method

.method public final whitelist readFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 3506
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 3507
    if-eqz v0, :cond_e

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return-object v1
.end method

.method public whitelist readFixedArray(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 4391
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 4392
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_13

    .line 4393
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    goto/16 :goto_77

    .line 4394
    :cond_13
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1d

    .line 4395
    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_77

    .line 4396
    :cond_1d
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_27

    .line 4397
    check-cast p1, [C

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readCharArray([C)V

    goto :goto_77

    .line 4398
    :cond_27
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_31

    .line 4399
    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_77

    .line 4400
    :cond_31
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3b

    .line 4401
    check-cast p1, [J

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readLongArray([J)V

    goto :goto_77

    .line 4402
    :cond_3b
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_45

    .line 4403
    check-cast p1, [F

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readFloatArray([F)V

    goto :goto_77

    .line 4404
    :cond_45
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4f

    .line 4405
    check-cast p1, [D

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readDoubleArray([D)V

    goto :goto_77

    .line 4406
    :cond_4f
    const-class v1, Landroid/os/IBinder;

    if-ne v0, v1, :cond_59

    .line 4407
    check-cast p1, [Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBinderArray([Landroid/os/IBinder;)V

    goto :goto_77

    .line 4408
    :cond_59
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 4409
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4410
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_78

    .line 4414
    const/4 v1, 0x0

    :goto_6a
    if-ge v1, v0, :cond_76

    .line 4415
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readFixedArray(Ljava/lang/Object;)V

    .line 4414
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 4417
    :cond_76
    nop

    .line 4420
    :goto_77
    return-void

    .line 4411
    :cond_78
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad length: expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", but got "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4418
    :cond_9f
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type for fixed-size array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist readFixedArray(Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Landroid/os/Parcelable;",
            ">(TT;",
            "Landroid/os/Parcelable$Creator<",
            "TS;>;)V"
        }
    .end annotation

    .line 4457
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 4458
    const-class v1, Landroid/os/Parcelable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4459
    check-cast p1, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    goto :goto_34

    .line 4460
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 4461
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4462
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_35

    .line 4466
    const/4 v1, 0x0

    :goto_27
    if-ge v1, v0, :cond_33

    .line 4467
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->readFixedArray(Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 4466
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 4469
    :cond_33
    nop

    .line 4472
    :goto_34
    return-void

    .line 4463
    :cond_35
    new-instance p2, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad length: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", but got "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4470
    :cond_5c
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type for fixed-size array: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist readFixedArray(Ljava/lang/Object;Ljava/util/function/Function;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Landroid/os/IInterface;",
            ">(TT;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TS;>;)V"
        }
    .end annotation

    .line 4431
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 4432
    const-class v1, Landroid/os/IInterface;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4433
    check-cast p1, [Landroid/os/IInterface;

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->readInterfaceArray([Landroid/os/IInterface;Ljava/util/function/Function;)V

    goto :goto_34

    .line 4434
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 4435
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4436
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_35

    .line 4440
    const/4 v1, 0x0

    :goto_27
    if-ge v1, v0, :cond_33

    .line 4441
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->readFixedArray(Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 4440
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 4443
    :cond_33
    nop

    .line 4446
    :goto_34
    return-void

    .line 4437
    :cond_35
    new-instance p2, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad length: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", but got "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4444
    :cond_5c
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type for fixed-size array: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist readFloat()F
    .registers 3

    .line 3412
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFloat(J)F

    move-result v0

    return v0
.end method

.method public final whitelist readFloatArray([F)V
    .registers 5

    .line 1987
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1988
    array-length v1, p1

    if-ne v0, v1, :cond_14

    .line 1989
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_13

    .line 1990
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    aput v2, p1, v1

    .line 1989
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1995
    :cond_13
    return-void

    .line 1993
    :cond_14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bad array lengths"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3641
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/os/Parcel;->readHashMapInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public whitelist readHashMap(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TK;>;",
            "Ljava/lang/Class<",
            "+TV;>;)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3655
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3656
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3657
    invoke-direct {p0, p1, p2, p3}, Landroid/os/Parcel;->readHashMapInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist readInt()I
    .registers 3

    .line 3397
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadInt(J)I

    move-result v0

    return v0
.end method

.method public final whitelist readIntArray([I)V
    .registers 5

    .line 1909
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1910
    array-length v1, p1

    if-ne v0, v1, :cond_14

    .line 1911
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_13

    .line 1912
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, p1, v1

    .line 1911
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1917
    :cond_13
    return-void

    .line 1915
    :cond_14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bad array lengths"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist readInterfaceArray([Landroid/os/IInterface;Ljava/util/function/Function;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">([TT;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)V"
        }
    .end annotation

    .line 2276
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2277
    array-length v1, p1

    if-ne v0, v1, :cond_1a

    .line 2278
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_19

    .line 2279
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    aput-object v2, p1, v1

    .line 2278
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2284
    :cond_19
    return-void

    .line 2282
    :cond_1a
    new-instance p1, Landroid/os/BadParcelableException;

    const-string p2, "bad array lengths"

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist readInterfaceList(Ljava/util/List;Ljava/util/function/Function;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)V"
        }
    .end annotation

    .line 4221
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4222
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4223
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4224
    const/4 v2, 0x0

    .line 4225
    :goto_d
    if-ge v2, v0, :cond_21

    if-ge v2, v1, :cond_21

    .line 4226
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IInterface;

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4225
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 4228
    :cond_21
    :goto_21
    if-ge v2, v1, :cond_33

    .line 4229
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IInterface;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4228
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 4231
    :cond_33
    :goto_33
    if-ge v2, v0, :cond_3b

    .line 4232
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4231
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 4234
    :cond_3b
    return-void
.end method

.method public final whitelist readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3601
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3602
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 3603
    return-void
.end method

.method public whitelist readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "-TT;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 3622
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3623
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3624
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 3625
    return-void
.end method

.method public final whitelist readLong()J
    .registers 3

    .line 3404
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist readLongArray([J)V
    .registers 6

    .line 1948
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1949
    array-length v1, p1

    if-ne v0, v1, :cond_14

    .line 1950
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_13

    .line 1951
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 1950
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1956
    :cond_13
    return-void

    .line 1954
    :cond_14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bad array lengths"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3570
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 3571
    return-void
.end method

.method public whitelist readMap(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;-TV;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 3583
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3584
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3585
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 3586
    return-void
.end method

.method greylist-max-o readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V
    .registers 10

    .line 5676
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 5677
    return-void
.end method

.method public final whitelist readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5223
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    return-object p1
.end method

.method public whitelist readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 5242
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5243
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5440
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readParcelableArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    return-object p1
.end method

.method public whitelist readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 5460
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readParcelableArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5298
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readParcelableCreatorInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object p1

    return-object p1
.end method

.method public whitelist readParcelableCreator(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable$Creator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;"
        }
    .end annotation

    .line 5318
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5319
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readParcelableCreatorInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4253
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/os/Parcel;->readParcelableListInternal(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 4274
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4275
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4276
    invoke-direct {p0, p1, p2, p3}, Landroid/os/Parcel;->readParcelableListInternal(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist readPersistableBundle()Landroid/os/PersistableBundle;
    .registers 2

    .line 3698
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;
    .registers 4

    .line 3709
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3710
    if-gez v0, :cond_8

    .line 3712
    const/4 p1, 0x0

    return-object p1

    .line 3715
    :cond_8
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1, p0, v0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Parcel;I)V

    .line 3716
    if-eqz p1, :cond_12

    .line 3717
    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3719
    :cond_12
    return-object v1
.end method

.method public final greylist readRawFileDescriptor()Ljava/io/FileDescriptor;
    .registers 3

    .line 3513
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o readRawFileDescriptorArray([Ljava/io/FileDescriptor;)V
    .registers 5

    .line 3542
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3543
    array-length v1, p1

    if-ne v0, v1, :cond_14

    .line 3544
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_13

    .line 3545
    invoke-virtual {p0}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    aput-object v2, p1, v1

    .line 3544
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3550
    :cond_13
    return-void

    .line 3548
    :cond_14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bad array lengths"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist readSerializable()Ljava/io/Serializable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5493
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/os/Parcel;->readSerializableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public whitelist readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 5509
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5510
    nop

    .line 5511
    if-nez p1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 5510
    :cond_e
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readSerializableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist readShortArray([S)V
    .registers 5

    .line 1833
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1834
    array-length v1, p1

    if-ne v0, v1, :cond_15

    .line 1835
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 1836
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    aput-short v2, p1, v1

    .line 1835
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1841
    :cond_14
    return-void

    .line 1839
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bad array lengths"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist readSize()Landroid/util/Size;
    .registers 4

    .line 3727
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3728
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3729
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method public final whitelist readSizeF()Landroid/util/SizeF;
    .registers 4

    .line 3737
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 3738
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 3739
    new-instance v2, Landroid/util/SizeF;

    invoke-direct {v2, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    return-object v2
.end method

.method public whitelist readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3920
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readSparseArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method public whitelist readSparseArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 3941
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3942
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readSparseArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist readSparseBooleanArray()Landroid/util/SparseBooleanArray;
    .registers 3

    .line 3952
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3953
    if-gez v0, :cond_8

    .line 3954
    const/4 v0, 0x0

    return-object v0

    .line 3956
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 3957
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 3958
    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V

    .line 3959
    return-object v1
.end method

.method public final greylist-max-o readSparseIntArray()Landroid/util/SparseIntArray;
    .registers 3

    .line 3969
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3970
    if-gez v0, :cond_8

    .line 3971
    const/4 v0, 0x0

    return-object v0

    .line 3973
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 3974
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 3975
    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->readSparseIntArrayInternal(Landroid/util/SparseIntArray;I)V

    .line 3976
    return-object v1
.end method

.method public blacklist readSquashed(Landroid/os/Parcel$SquashReadHelper;)Landroid/os/Parcelable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel$SquashReadHelper<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3046
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3047
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 3049
    if-nez v0, :cond_19

    .line 3051
    invoke-interface {p1, p0}, Landroid/os/Parcel$SquashReadHelper;->readRawParceled(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    .line 3052
    invoke-direct {p0}, Landroid/os/Parcel;->ensureReadSquashableParcelables()V

    .line 3053
    iget-object v0, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3054
    return-object p1

    .line 3057
    :cond_19
    sub-int/2addr v1, v0

    .line 3059
    iget-object p1, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    .line 3060
    if-nez p1, :cond_6a

    .line 3061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3062
    const/4 v2, 0x0

    :goto_2a
    iget-object v3, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 3063
    iget-object v3, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3062
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 3065
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Map doesn\'t contain offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : contains="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3067
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3065
    const-string v1, "Parcel"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    :cond_6a
    return-object p1
.end method

.method public final whitelist readString()Ljava/lang/String;
    .registers 2

    .line 3428
    invoke-virtual {p0}, Landroid/os/Parcel;->readString16()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist readString16()Ljava/lang/String;
    .registers 2

    .line 3438
    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    invoke-virtual {v0, p0}, Landroid/os/Parcel$ReadWriteHelper;->readString16(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist readString16Array([Ljava/lang/String;)V
    .registers 5

    .line 2139
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2140
    array-length v1, p1

    if-ne v0, v1, :cond_14

    .line 2141
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_13

    .line 2142
    invoke-virtual {p0}, Landroid/os/Parcel;->readString16()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 2141
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2147
    :cond_13
    return-void

    .line 2145
    :cond_14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bad array lengths"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist readString16NoHelper()Ljava/lang/String;
    .registers 4

    .line 3463
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->parcelStringCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3464
    sget-object v0, Lcom/android/internal/util/StringCache;->INSTANCE:Lcom/android/internal/util/StringCache;

    iget-wide v1, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/os/Parcel;->nativeReadString16(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StringCache;->cache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3466
    :cond_13
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadString16(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist readString8()Ljava/lang/String;
    .registers 2

    .line 3433
    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    invoke-virtual {v0, p0}, Landroid/os/Parcel$ReadWriteHelper;->readString8(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist readString8Array([Ljava/lang/String;)V
    .registers 5

    .line 2080
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2081
    array-length v1, p1

    if-ne v0, v1, :cond_14

    .line 2082
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_13

    .line 2083
    invoke-virtual {p0}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 2082
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2088
    :cond_13
    return-void

    .line 2086
    :cond_14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bad array lengths"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist readString8NoHelper()Ljava/lang/String;
    .registers 4

    .line 3454
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->parcelStringCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3455
    sget-object v0, Lcom/android/internal/util/StringCache;->INSTANCE:Lcom/android/internal/util/StringCache;

    iget-wide v1, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/os/Parcel;->nativeReadString8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StringCache;->cache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3457
    :cond_13
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadString8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readStringArray([Ljava/lang/String;)V
    .registers 2

    .line 2046
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readString16Array([Ljava/lang/String;)V

    .line 2047
    return-void
.end method

.method public final greylist readStringArray()[Ljava/lang/String;
    .registers 2

    .line 3777
    invoke-virtual {p0}, Landroid/os/Parcel;->createString16Array()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readStringList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4176
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4177
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4178
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4179
    const/4 v2, 0x0

    .line 4180
    :goto_d
    if-ge v2, v0, :cond_1b

    if-ge v2, v1, :cond_1b

    .line 4181
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4180
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 4183
    :cond_1b
    :goto_1b
    if-ge v2, v1, :cond_27

    .line 4184
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4183
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 4186
    :cond_27
    :goto_27
    if-ge v2, v0, :cond_2f

    .line 4187
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4186
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 4189
    :cond_2f
    return-void
.end method

.method public greylist-max-o readStringNoHelper()Ljava/lang/String;
    .registers 2

    .line 3449
    invoke-virtual {p0}, Landroid/os/Parcel;->readString16NoHelper()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readStrongBinder()Landroid/os/IBinder;
    .registers 3

    .line 3491
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadStrongBinder(J)Landroid/os/IBinder;

    move-result-object v0

    .line 3495
    if-eqz v0, :cond_12

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/os/Parcel;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3497
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 3499
    :cond_12
    return-object v0
.end method

.method public final whitelist readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)V"
        }
    .end annotation

    .line 4333
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4334
    array-length v1, p1

    if-ne v0, v1, :cond_14

    .line 4335
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_13

    .line 4336
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    .line 4335
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4341
    :cond_13
    return-void

    .line 4339
    :cond_14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "bad array lengths"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final greylist-max-o readTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4349
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)V"
        }
    .end annotation

    .line 4017
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4018
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4019
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4020
    const/4 v2, 0x0

    .line 4021
    :goto_d
    if-ge v2, v0, :cond_1b

    if-ge v2, v1, :cond_1b

    .line 4022
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4021
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 4024
    :cond_1b
    :goto_1b
    if-ge v2, v1, :cond_27

    .line 4025
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4024
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 4027
    :cond_27
    :goto_27
    if-ge v2, v0, :cond_2f

    .line 4028
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4027
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 4030
    :cond_2f
    return-void
.end method

.method public final whitelist readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4365
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 4366
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4368
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public final whitelist readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 4

    .line 4728
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist recycle()V
    .registers 6

    .line 609
    iget-boolean v0, p0, Landroid/os/Parcel;->mRecycled:Z

    if-nez v0, :cond_42

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Parcel;->mRecycled:Z

    .line 622
    invoke-direct {p0}, Landroid/os/Parcel;->freeBuffer()V

    .line 624
    iget-boolean v1, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    const/16 v2, 0x20

    if-eqz v1, :cond_27

    .line 625
    sget-object v1, Landroid/os/Parcel;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 626
    :try_start_13
    sget v3, Landroid/os/Parcel;->sOwnedPoolSize:I

    if-ge v3, v2, :cond_22

    .line 627
    sget-object v2, Landroid/os/Parcel;->sOwnedPool:Landroid/os/Parcel;

    iput-object v2, p0, Landroid/os/Parcel;->mPoolNext:Landroid/os/Parcel;

    .line 628
    sput-object p0, Landroid/os/Parcel;->sOwnedPool:Landroid/os/Parcel;

    .line 629
    sget v2, Landroid/os/Parcel;->sOwnedPoolSize:I

    add-int/2addr v2, v0

    sput v2, Landroid/os/Parcel;->sOwnedPoolSize:I

    .line 631
    :cond_22
    monitor-exit v1

    goto :goto_3e

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_24

    throw v0

    .line 633
    :cond_27
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 634
    sget-object v1, Landroid/os/Parcel;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 635
    :try_start_2e
    sget v3, Landroid/os/Parcel;->sHolderPoolSize:I

    if-ge v3, v2, :cond_3d

    .line 636
    sget-object v2, Landroid/os/Parcel;->sHolderPool:Landroid/os/Parcel;

    iput-object v2, p0, Landroid/os/Parcel;->mPoolNext:Landroid/os/Parcel;

    .line 637
    sput-object p0, Landroid/os/Parcel;->sHolderPool:Landroid/os/Parcel;

    .line 638
    sget v2, Landroid/os/Parcel;->sHolderPoolSize:I

    add-int/2addr v2, v0

    sput v2, Landroid/os/Parcel;->sHolderPoolSize:I

    .line 640
    :cond_3d
    monitor-exit v1

    .line 642
    :goto_3e
    return-void

    .line 640
    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_2e .. :try_end_41} :catchall_3f

    throw v0

    .line 610
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recycle called on unowned Parcel. (recycle twice?) Here: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 611
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Original recycle call (if DEBUG_RECYCLE): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    const-string v1, "Parcel"

    iget-object v2, p0, Landroid/os/Parcel;->mStack:Ljava/lang/RuntimeException;

    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Landroid/os/Parcel;->mStack:Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist removeClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 8

    .line 946
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    const-string v1, " (with key="

    const-string v2, "Expected to remove "

    const-string v3, "Parcel"

    if-eqz v0, :cond_39

    .line 947
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 948
    if-eq v0, p2, :cond_38

    .line 949
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") but instead removed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_38
    goto :goto_5b

    .line 953
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") but no cookies were present"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :goto_5b
    return-void
.end method

.method public blacklist replaceCallingWorkSourceUid(I)Z
    .registers 4

    .line 1184
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeReplaceCallingWorkSourceUid(JI)Z

    move-result p1

    return p1
.end method

.method public final greylist-max-o restoreAllowFds(Z)V
    .registers 4

    .line 825
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeRestoreAllowFds(JZ)V

    .line 826
    return-void
.end method

.method public blacklist restoreAllowSquashing(Z)V
    .registers 2

    .line 2940
    iput-boolean p1, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    .line 2941
    iget-boolean p1, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    if-nez p1, :cond_9

    .line 2942
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/Parcel;->mWrittenSquashableParcelables:Landroid/util/ArrayMap;

    .line 2944
    :cond_9
    return-void
.end method

.method public final greylist-max-o setClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4

    .line 932
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 933
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    .line 935
    :cond_b
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    return-void
.end method

.method public final whitelist setDataCapacity(I)V
    .registers 4

    .line 815
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataCapacity(JI)V

    .line 816
    return-void
.end method

.method public final whitelist setDataPosition(I)V
    .registers 4

    .line 804
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataPosition(JI)V

    .line 805
    return-void
.end method

.method public final whitelist setDataSize(I)V
    .registers 4

    .line 795
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataSize(JI)V

    .line 796
    return-void
.end method

.method public blacklist setFlags(I)V
    .registers 2

    .line 729
    iput p1, p0, Landroid/os/Parcel;->mFlags:I

    .line 730
    return-void
.end method

.method public whitelist setPropagateAllowBlocking()V
    .registers 2

    .line 751
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->addFlags(I)V

    .line 752
    return-void
.end method

.method public greylist-max-o setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V
    .registers 2

    .line 666
    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    sget-object p1, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    :goto_5
    iput-object p1, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    .line 667
    return-void
.end method

.method public final whitelist unmarshall(Ljava/nio/ByteBuffer;)V
    .registers 8

    .line 897
    if-eqz p1, :cond_35

    .line 901
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 902
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 904
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 905
    iget-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v2, v3, p1, v0, v1}, Landroid/os/Parcel;->nativeUnmarshallBuffer(JLjava/nio/ByteBuffer;II)V

    goto :goto_2a

    .line 906
    :cond_16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 907
    iget-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 908
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v0

    .line 907
    invoke-static {v2, v3, v4, v5, v1}, Landroid/os/Parcel;->nativeUnmarshall(J[BII)V

    .line 913
    :goto_2a
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 914
    return-void

    .line 910
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 898
    :cond_35
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final whitelist unmarshall([BII)V
    .registers 6

    .line 887
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeUnmarshall(J[BII)V

    .line 888
    return-void
.end method

.method public final whitelist writeArray([Ljava/lang/Object;)V
    .registers 5

    .line 1633
    if-nez p1, :cond_7

    .line 1634
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1635
    return-void

    .line 1637
    :cond_7
    array-length v0, p1

    .line 1638
    nop

    .line 1639
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .line 1640
    :goto_d
    if-ge v1, v0, :cond_17

    .line 1641
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1642
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1644
    :cond_17
    return-void
.end method

.method public greylist-max-r writeArrayMap(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1518
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    .line 1519
    return-void
.end method

.method greylist-max-o writeArrayMapInternal(Landroid/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1489
    if-nez p1, :cond_7

    .line 1490
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1491
    return-void

    .line 1495
    :cond_7
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1496
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1502
    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_24

    .line 1504
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1505
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1502
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1511
    :cond_24
    return-void
.end method

.method public greylist-max-r writeArraySet(Landroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1557
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    .line 1558
    :goto_8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1559
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_18

    .line 1560
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1559
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1562
    :cond_18
    return-void
.end method

.method public final whitelist writeBinderArray([Landroid/os/IBinder;)V
    .registers 5

    .line 2150
    if-eqz p1, :cond_12

    .line 2151
    array-length v0, p1

    .line 2152
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2153
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    .line 2154
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2153
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2156
    :cond_11
    goto :goto_16

    .line 2157
    :cond_12
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2159
    :goto_16
    return-void
.end method

.method public final whitelist writeBinderList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 2399
    if-nez p1, :cond_7

    .line 2400
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2401
    return-void

    .line 2403
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2404
    nop

    .line 2405
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .line 2406
    :goto_10
    if-ge v1, v0, :cond_1e

    .line 2407
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2408
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2410
    :cond_1e
    return-void
.end method

.method public final whitelist writeBlob([B)V
    .registers 4

    .line 1241
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    array-length v1, p1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Parcel;->writeBlob([BII)V

    .line 1242
    return-void
.end method

.method public final whitelist writeBlob([BII)V
    .registers 6

    .line 1259
    if-nez p1, :cond_7

    .line 1260
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1261
    return-void

    .line 1263
    :cond_7
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/internal/util/ArrayUtils;->throwsIfOutOfBounds(III)V

    .line 1264
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeWriteBlob(J[BII)V

    .line 1265
    return-void
.end method

.method public final whitelist writeBoolean(Z)V
    .registers 2

    .line 1363
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1364
    return-void
.end method

.method public final whitelist writeBooleanArray([Z)V
    .registers 5

    .line 1701
    if-eqz p1, :cond_12

    .line 1702
    array-length v0, p1

    .line 1703
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1704
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    .line 1705
    aget-boolean v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1704
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1707
    :cond_11
    goto :goto_16

    .line 1708
    :cond_12
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1710
    :goto_16
    return-void
.end method

.method public final whitelist writeBundle(Landroid/os/Bundle;)V
    .registers 3

    .line 1569
    if-nez p1, :cond_7

    .line 1570
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1571
    return-void

    .line 1574
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1575
    return-void
.end method

.method public final whitelist writeByte(B)V
    .registers 2

    .line 1441
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1442
    return-void
.end method

.method public final whitelist writeByteArray([B)V
    .registers 4

    .line 1209
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    array-length v1, p1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 1210
    return-void
.end method

.method public final whitelist writeByteArray([BII)V
    .registers 6

    .line 1220
    if-nez p1, :cond_7

    .line 1221
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    return-void

    .line 1224
    :cond_7
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/internal/util/ArrayUtils;->throwsIfOutOfBounds(III)V

    .line 1225
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeWriteByteArray(J[BII)V

    .line 1226
    return-void
.end method

.method public final whitelist writeCharArray([C)V
    .registers 5

    .line 1844
    if-eqz p1, :cond_12

    .line 1845
    array-length v0, p1

    .line 1846
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1847
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    .line 1848
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1847
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1850
    :cond_11
    goto :goto_16

    .line 1851
    :cond_12
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1853
    :goto_16
    return-void
.end method

.method public final greylist writeCharSequence(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1374
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1375
    return-void
.end method

.method public final greylist-max-o writeCharSequenceArray([Ljava/lang/CharSequence;)V
    .registers 5

    .line 2189
    if-eqz p1, :cond_12

    .line 2190
    array-length v0, p1

    .line 2191
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2192
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    .line 2193
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2192
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2195
    :cond_11
    goto :goto_16

    .line 2196
    :cond_12
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2198
    :goto_16
    return-void
.end method

.method public final greylist-max-o writeCharSequenceList(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 2204
    if-eqz p1, :cond_19

    .line 2205
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2206
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2207
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_18

    .line 2208
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2207
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2210
    :cond_18
    goto :goto_1d

    .line 2211
    :cond_19
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2213
    :goto_1d
    return-void
.end method

.method public final whitelist writeDouble(D)V
    .registers 5

    .line 1310
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeWriteDouble(JD)I

    move-result p1

    .line 1311
    if-eqz p1, :cond_b

    .line 1312
    invoke-static {p1}, Landroid/os/Parcel;->nativeSignalExceptionForError(I)V

    .line 1314
    :cond_b
    return-void
.end method

.method public final whitelist writeDoubleArray([D)V
    .registers 6

    .line 1998
    if-eqz p1, :cond_12

    .line 1999
    array-length v0, p1

    .line 2000
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2001
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    .line 2002
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2001
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2004
    :cond_11
    goto :goto_16

    .line 2005
    :cond_12
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2007
    :goto_16
    return-void
.end method

.method public final whitelist writeException(Ljava/lang/Exception;)V
    .registers 11

    .line 3131
    invoke-static {p0}, Landroid/app/AppOpsManager;->prefixParcelWithAppOpsIfNeeded(Landroid/os/Parcel;)V

    .line 3133
    invoke-static {p1}, Landroid/os/Parcel;->getExceptionCode(Ljava/lang/Throwable;)I

    move-result v0

    .line 3134
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3135
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 3136
    if-nez v0, :cond_1c

    .line 3137
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_16

    .line 3138
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 3140
    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 3142
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3143
    sget-boolean v1, Landroid/os/Parcel;->sParcelExceptionStackTrace:Z

    if-eqz v1, :cond_2c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    goto :goto_2e

    :cond_2c
    const-wide/16 v1, 0x0

    .line 3144
    :goto_2e
    sget-boolean v3, Landroid/os/Parcel;->sParcelExceptionStackTrace:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_43

    sget-wide v5, Landroid/os/Parcel;->sLastWriteExceptionStackTrace:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x3e8

    cmp-long v3, v5, v7

    if-lez v3, :cond_43

    .line 3146
    sput-wide v1, Landroid/os/Parcel;->sLastWriteExceptionStackTrace:J

    .line 3147
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStackTrace(Ljava/lang/Throwable;)V

    goto :goto_46

    .line 3149
    :cond_43
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3151
    :goto_46
    packed-switch v0, :pswitch_data_70

    goto :goto_6e

    .line 3153
    :pswitch_4a
    check-cast p1, Landroid/os/ServiceSpecificException;

    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3154
    goto :goto_6e

    .line 3157
    :pswitch_52
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 3158
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3159
    check-cast p1, Landroid/os/Parcelable;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3160
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    .line 3161
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3162
    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3163
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3166
    :goto_6e
    return-void

    nop

    :pswitch_data_70
    .packed-switch -0x9
        :pswitch_52
        :pswitch_4a
    .end packed-switch
.end method

.method public final whitelist writeFileDescriptor(Ljava/io/FileDescriptor;)V
    .registers 4

    .line 1404
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)V

    .line 1405
    return-void
.end method

.method public varargs whitelist writeFixedArray(Ljava/lang/Object;I[I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I[I)V"
        }
    .end annotation

    .line 2535
    if-nez p1, :cond_7

    .line 2536
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2537
    return-void

    .line 2539
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/os/Parcel;->writeFixedArrayInternal(Ljava/lang/Object;II[I)V

    .line 2540
    return-void
.end method

.method public final whitelist writeFloat(F)V
    .registers 4

    .line 1299
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFloat(JF)I

    move-result p1

    .line 1300
    if-eqz p1, :cond_b

    .line 1301
    invoke-static {p1}, Landroid/os/Parcel;->nativeSignalExceptionForError(I)V

    .line 1303
    :cond_b
    return-void
.end method

.method public final whitelist writeFloatArray([F)V
    .registers 5

    .line 1959
    if-eqz p1, :cond_12

    .line 1960
    array-length v0, p1

    .line 1961
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1962
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    .line 1963
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1962
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1965
    :cond_11
    goto :goto_16

    .line 1966
    :cond_12
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1968
    :goto_16
    return-void
.end method

.method public final whitelist writeInt(I)V
    .registers 4

    .line 1277
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteInt(JI)I

    move-result p1

    .line 1278
    if-eqz p1, :cond_b

    .line 1279
    invoke-static {p1}, Landroid/os/Parcel;->nativeSignalExceptionForError(I)V

    .line 1281
    :cond_b
    return-void
.end method

.method public final whitelist writeIntArray([I)V
    .registers 5

    .line 1882
    if-eqz p1, :cond_12

    .line 1883
    array-length v0, p1

    .line 1884
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1885
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    .line 1886
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1885
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1888
    :cond_11
    goto :goto_16

    .line 1889
    :cond_12
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1891
    :goto_16
    return-void
.end method

.method public final whitelist writeInterfaceArray([Landroid/os/IInterface;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">([TT;)V"
        }
    .end annotation

    .line 2174
    if-eqz p1, :cond_12

    .line 2175
    array-length v0, p1

    .line 2176
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2177
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    .line 2178
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2177
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2180
    :cond_11
    goto :goto_16

    .line 2181
    :cond_12
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2183
    :goto_16
    return-void
.end method

.method public final whitelist writeInterfaceList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 2421
    if-nez p1, :cond_7

    .line 2422
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2423
    return-void

    .line 2425
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2426
    nop

    .line 2427
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .line 2428
    :goto_10
    if-ge v1, v0, :cond_1e

    .line 2429
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2430
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2432
    :cond_1e
    return-void
.end method

.method public final whitelist writeInterfaceToken(Ljava/lang/String;)V
    .registers 4

    .line 1148
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteInterfaceToken(JLjava/lang/String;)V

    .line 1149
    return-void
.end method

.method public final whitelist writeList(Ljava/util/List;)V
    .registers 5

    .line 1614
    if-nez p1, :cond_7

    .line 1615
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1616
    return-void

    .line 1618
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1619
    nop

    .line 1620
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .line 1621
    :goto_10
    if-ge v1, v0, :cond_1c

    .line 1622
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1623
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1625
    :cond_1c
    return-void
.end method

.method public final whitelist writeLong(J)V
    .registers 5

    .line 1288
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeWriteLong(JJ)I

    move-result p1

    .line 1289
    if-eqz p1, :cond_b

    .line 1290
    invoke-static {p1}, Landroid/os/Parcel;->nativeSignalExceptionForError(I)V

    .line 1292
    :cond_b
    return-void
.end method

.method public final whitelist writeLongArray([J)V
    .registers 6

    .line 1920
    if-eqz p1, :cond_12

    .line 1921
    array-length v0, p1

    .line 1922
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1923
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    .line 1924
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1923
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1926
    :cond_11
    goto :goto_16

    .line 1927
    :cond_12
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1929
    :goto_16
    return-void
.end method

.method public final whitelist writeMap(Ljava/util/Map;)V
    .registers 2

    .line 1456
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    .line 1457
    return-void
.end method

.method greylist-max-o writeMapInternal(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1464
    if-nez p1, :cond_7

    .line 1465
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1466
    return-void

    .line 1468
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 1469
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    .line 1470
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1472
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1473
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1474
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1475
    add-int/lit8 v0, v0, -0x1

    .line 1476
    goto :goto_16

    .line 1478
    :cond_33
    if-nez v0, :cond_36

    .line 1482
    return-void

    .line 1479
    :cond_36
    new-instance p1, Landroid/os/BadParcelableException;

    const-string v0, "Map size does not match number of entries!"

    invoke-direct {p1, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist writeNoException()V
    .registers 3

    .line 3236
    invoke-static {p0}, Landroid/app/AppOpsManager;->prefixParcelWithAppOpsIfNeeded(Landroid/os/Parcel;)V

    .line 3251
    invoke-static {}, Landroid/os/StrictMode;->hasGatheredViolations()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 3252
    const/16 v0, -0x80

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3253
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 3254
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3255
    invoke-static {p0}, Landroid/os/StrictMode;->writeGatheredViolationsToParcel(Landroid/os/Parcel;)V

    .line 3256
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 3257
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3258
    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3259
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3260
    goto :goto_2c

    .line 3261
    :cond_29
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3263
    :goto_2c
    return-void
.end method

.method public final whitelist writeParcelable(Landroid/os/Parcelable;I)V
    .registers 3

    .line 2876
    if-nez p1, :cond_7

    .line 2877
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2878
    return-void

    .line 2880
    :cond_7
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeParcelableCreator(Landroid/os/Parcelable;)V

    .line 2881
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2882
    return-void
.end method

.method public final whitelist writeParcelableArray([Landroid/os/Parcelable;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .line 4710
    if-eqz p1, :cond_12

    .line 4711
    array-length v0, p1

    .line 4712
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4713
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    .line 4714
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4713
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4716
    :cond_11
    goto :goto_16

    .line 4717
    :cond_12
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4719
    :goto_16
    return-void
.end method

.method public final whitelist writeParcelableCreator(Landroid/os/Parcelable;)V
    .registers 2

    .line 2891
    invoke-interface {p1}, Landroid/os/Parcelable;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2892
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2893
    return-void
.end method

.method public final whitelist writeParcelableList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 2442
    if-nez p1, :cond_7

    .line 2443
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2444
    return-void

    .line 2447
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2448
    nop

    .line 2449
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .line 2450
    :goto_10
    if-ge v1, v0, :cond_1e

    .line 2451
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2452
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2454
    :cond_1e
    return-void
.end method

.method public final whitelist writePersistableBundle(Landroid/os/PersistableBundle;)V
    .registers 3

    .line 1582
    if-nez p1, :cond_7

    .line 1583
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1584
    return-void

    .line 1587
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1588
    return-void
.end method

.method public final greylist-max-o writeRawFileDescriptor(Ljava/io/FileDescriptor;)V
    .registers 4

    .line 1412
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)V

    .line 1413
    return-void
.end method

.method public final greylist-max-o writeRawFileDescriptorArray([Ljava/io/FileDescriptor;)V
    .registers 5

    .line 1422
    if-eqz p1, :cond_12

    .line 1423
    array-length v0, p1

    .line 1424
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1425
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    .line 1426
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1425
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1428
    :cond_11
    goto :goto_16

    .line 1429
    :cond_12
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1431
    :goto_16
    return-void
.end method

.method public final whitelist writeSerializable(Ljava/io/Serializable;)V
    .registers 6

    .line 3079
    if-nez p1, :cond_7

    .line 3080
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3081
    return-void

    .line 3083
    :cond_7
    invoke-interface {p1}, Ljava/io/Serializable;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3084
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3086
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3088
    :try_start_17
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3089
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3090
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 3092
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_2b

    .line 3097
    nop

    .line 3098
    return-void

    .line 3093
    :catch_2b
    move-exception p1

    .line 3094
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist writeShortArray([S)V
    .registers 5

    .line 1804
    if-eqz p1, :cond_12

    .line 1805
    array-length v0, p1

    .line 1806
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1807
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    .line 1808
    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1807
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1810
    :cond_11
    goto :goto_16

    .line 1811
    :cond_12
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1813
    :goto_16
    return-void
.end method

.method public final whitelist writeSize(Landroid/util/Size;)V
    .registers 3

    .line 1595
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1596
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1597
    return-void
.end method

.method public final whitelist writeSizeF(Landroid/util/SizeF;)V
    .registers 3

    .line 1604
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1605
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1606
    return-void
.end method

.method public final whitelist writeSparseArray(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;)V"
        }
    .end annotation

    .line 1653
    if-nez p1, :cond_7

    .line 1654
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1655
    return-void

    .line 1657
    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1658
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1659
    const/4 v1, 0x0

    .line 1660
    :goto_f
    if-ge v1, v0, :cond_22

    .line 1661
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1662
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1663
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1665
    :cond_22
    return-void
.end method

.method public final whitelist writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V
    .registers 5

    .line 1668
    if-nez p1, :cond_7

    .line 1669
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1670
    return-void

    .line 1672
    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 1673
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1674
    const/4 v1, 0x0

    .line 1675
    :goto_f
    if-ge v1, v0, :cond_23

    .line 1676
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1677
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1678
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1680
    :cond_23
    return-void
.end method

.method public final greylist-max-o writeSparseIntArray(Landroid/util/SparseIntArray;)V
    .registers 5

    .line 1686
    if-nez p1, :cond_7

    .line 1687
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1688
    return-void

    .line 1690
    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 1691
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1692
    const/4 v1, 0x0

    .line 1693
    :goto_f
    if-ge v1, v0, :cond_22

    .line 1694
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1695
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1696
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1698
    :cond_22
    return-void
.end method

.method public blacklist writeStackTrace(Ljava/lang/Throwable;)V
    .registers 8

    .line 3211
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 3212
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3213
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 3214
    array-length v2, p1

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3216
    nop

    :goto_18
    if-ge v1, v2, :cond_2e

    .line 3217
    const-string v4, "\tat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3216
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 3219
    :cond_2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3220
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    .line 3221
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3223
    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3224
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3225
    return-void
.end method

.method public final whitelist writeString(Ljava/lang/String;)V
    .registers 2

    .line 1321
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString16(Ljava/lang/String;)V

    .line 1322
    return-void
.end method

.method public final blacklist writeString16(Ljava/lang/String;)V
    .registers 3

    .line 1331
    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    invoke-virtual {v0, p0, p1}, Landroid/os/Parcel$ReadWriteHelper;->writeString16(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1332
    return-void
.end method

.method public final blacklist writeString16Array([Ljava/lang/String;)V
    .registers 8

    .line 2092
    if-eqz p1, :cond_45

    .line 2093
    array-length v0, p1

    .line 2095
    nop

    .line 2096
    const/4 v1, 0x0

    const/4 v2, 0x4

    move v3, v1

    move v4, v2

    :goto_8
    if-ge v3, v0, :cond_24

    .line 2097
    aget-object v5, p1, v3

    if-nez v5, :cond_11

    .line 2098
    add-int/lit8 v4, v4, 0x4

    goto :goto_21

    .line 2105
    :cond_11
    aget-object v5, p1, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x3

    and-int/lit8 v5, v5, -0x4

    add-int/2addr v5, v2

    add-int/2addr v4, v5

    .line 2096
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2108
    :cond_24
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    add-int/2addr v4, v2

    .line 2110
    invoke-virtual {p0}, Landroid/os/Parcel;->dataCapacity()I

    move-result v2

    if-ge v2, v4, :cond_36

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 2112
    :cond_36
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2113
    nop

    :goto_3a
    if-ge v1, v0, :cond_44

    .line 2114
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString16(Ljava/lang/String;)V

    .line 2113
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 2116
    :cond_44
    goto :goto_49

    .line 2117
    :cond_45
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2119
    :goto_49
    return-void
.end method

.method public blacklist writeString16NoHelper(Ljava/lang/String;)V
    .registers 4

    .line 1352
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteString16(JLjava/lang/String;)V

    .line 1353
    return-void
.end method

.method public final blacklist writeString8(Ljava/lang/String;)V
    .registers 3

    .line 1326
    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    invoke-virtual {v0, p0, p1}, Landroid/os/Parcel$ReadWriteHelper;->writeString8(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1327
    return-void
.end method

.method public final blacklist writeString8Array([Ljava/lang/String;)V
    .registers 5

    .line 2051
    if-eqz p1, :cond_12

    .line 2052
    array-length v0, p1

    .line 2053
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2054
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    .line 2055
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2054
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2057
    :cond_11
    goto :goto_16

    .line 2058
    :cond_12
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2060
    :goto_16
    return-void
.end method

.method public blacklist writeString8NoHelper(Ljava/lang/String;)V
    .registers 4

    .line 1347
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteString8(JLjava/lang/String;)V

    .line 1348
    return-void
.end method

.method public final whitelist writeStringArray([Ljava/lang/String;)V
    .registers 2

    .line 2037
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString16Array([Ljava/lang/String;)V

    .line 2038
    return-void
.end method

.method public final whitelist writeStringList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2374
    if-nez p1, :cond_7

    .line 2375
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2376
    return-void

    .line 2378
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2379
    nop

    .line 2380
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .line 2381
    :goto_10
    if-ge v1, v0, :cond_1e

    .line 2382
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2383
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2385
    :cond_1e
    return-void
.end method

.method public greylist-max-o writeStringNoHelper(Ljava/lang/String;)V
    .registers 2

    .line 1342
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString16NoHelper(Ljava/lang/String;)V

    .line 1343
    return-void
.end method

.method public final whitelist writeStrongBinder(Landroid/os/IBinder;)V
    .registers 4

    .line 1382
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteStrongBinder(JLandroid/os/IBinder;)V

    .line 1383
    return-void
.end method

.method public final whitelist writeStrongInterface(Landroid/os/IInterface;)V
    .registers 2

    .line 1390
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    :goto_8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1391
    return-void
.end method

.method public final whitelist writeTypedArray([Landroid/os/Parcelable;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .line 2476
    if-eqz p1, :cond_12

    .line 2477
    array-length v0, p1

    .line 2478
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2479
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    .line 2480
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2479
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2482
    :cond_11
    goto :goto_16

    .line 2483
    :cond_12
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2485
    :goto_16
    return-void
.end method

.method public whitelist writeTypedArrayMap(Landroid/util/ArrayMap;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;I)V"
        }
    .end annotation

    .line 1536
    if-nez p1, :cond_7

    .line 1537
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1538
    return-void

    .line 1540
    :cond_7
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1541
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1542
    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_26

    .line 1543
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1544
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1542
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1546
    :cond_26
    return-void
.end method

.method public final whitelist writeTypedList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 2301
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2302
    return-void
.end method

.method public whitelist writeTypedList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 2349
    if-nez p1, :cond_7

    .line 2350
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2351
    return-void

    .line 2353
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2354
    nop

    .line 2355
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .line 2356
    :goto_10
    if-ge v1, v0, :cond_1e

    .line 2357
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2358
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2360
    :cond_1e
    return-void
.end method

.method public final whitelist writeTypedObject(Landroid/os/Parcelable;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;I)V"
        }
    .end annotation

    .line 2498
    if-eqz p1, :cond_a

    .line 2499
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2500
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 2502
    :cond_a
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2504
    :goto_e
    return-void
.end method

.method public final whitelist writeTypedSparseArray(Landroid/util/SparseArray;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;I)V"
        }
    .end annotation

    .line 2320
    if-nez p1, :cond_7

    .line 2321
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2322
    return-void

    .line 2324
    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2325
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2326
    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_24

    .line 2327
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2328
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2326
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2330
    :cond_24
    return-void
.end method

.method public blacklist writeValue(ILjava/lang/Object;)V
    .registers 5

    .line 2763
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_112

    .line 2863
    :pswitch_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parcel: unable to marshal value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2854
    :pswitch_1d
    check-cast p2, [F

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2855
    goto/16 :goto_111

    .line 2851
    :pswitch_24
    check-cast p2, [C

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeCharArray([C)V

    .line 2852
    goto/16 :goto_111

    .line 2848
    :pswitch_2b
    check-cast p2, [S

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeShortArray([S)V

    .line 2849
    goto/16 :goto_111

    .line 2845
    :pswitch_32
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2846
    goto/16 :goto_111

    .line 2842
    :pswitch_3d
    check-cast p2, [D

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 2843
    goto/16 :goto_111

    .line 2839
    :pswitch_44
    check-cast p2, Landroid/util/SizeF;

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeSizeF(Landroid/util/SizeF;)V

    .line 2840
    goto/16 :goto_111

    .line 2836
    :pswitch_4b
    check-cast p2, Landroid/util/Size;

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    .line 2837
    goto/16 :goto_111

    .line 2779
    :pswitch_52
    check-cast p2, Landroid/os/PersistableBundle;

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 2780
    goto/16 :goto_111

    .line 2818
    :pswitch_59
    check-cast p2, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 2819
    goto/16 :goto_111

    .line 2809
    :pswitch_60
    check-cast p2, [Z

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 2810
    goto/16 :goto_111

    .line 2860
    :pswitch_67
    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 2861
    goto/16 :goto_111

    .line 2833
    :pswitch_6e
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2834
    goto/16 :goto_111

    .line 2830
    :pswitch_79
    check-cast p2, [J

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2831
    goto/16 :goto_111

    .line 2827
    :pswitch_80
    check-cast p2, [I

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2828
    goto/16 :goto_111

    .line 2857
    :pswitch_87
    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 2858
    goto/16 :goto_111

    .line 2824
    :pswitch_8e
    check-cast p2, [Landroid/os/Parcelable;

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 2825
    goto/16 :goto_111

    .line 2821
    :pswitch_95
    check-cast p2, Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2822
    goto/16 :goto_111

    .line 2815
    :pswitch_9c
    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2816
    goto/16 :goto_111

    .line 2812
    :pswitch_a3
    check-cast p2, [B

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2813
    goto/16 :goto_111

    .line 2806
    :pswitch_aa
    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 2807
    goto :goto_111

    .line 2803
    :pswitch_b0
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2804
    goto :goto_111

    .line 2800
    :pswitch_b6
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2801
    goto :goto_111

    .line 2797
    :pswitch_bc
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2798
    goto :goto_111

    .line 2794
    :pswitch_c6
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2795
    goto :goto_111

    .line 2791
    :pswitch_d0
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2792
    goto :goto_111

    .line 2788
    :pswitch_da
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2789
    goto :goto_111

    .line 2785
    :pswitch_e4
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2786
    goto :goto_111

    .line 2782
    :pswitch_ee
    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2783
    goto :goto_111

    .line 2776
    :pswitch_f4
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2777
    goto :goto_111

    .line 2773
    :pswitch_fa
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 2774
    goto :goto_111

    .line 2770
    :pswitch_100
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2771
    goto :goto_111

    .line 2767
    :pswitch_10a
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2768
    goto :goto_111

    .line 2765
    :pswitch_110
    nop

    .line 2865
    :goto_111
    return-void

    :pswitch_data_112
    .packed-switch -0x1
        :pswitch_110
        :pswitch_10a
        :pswitch_100
        :pswitch_fa
        :pswitch_f4
        :pswitch_ee
        :pswitch_e4
        :pswitch_da
        :pswitch_d0
        :pswitch_c6
        :pswitch_bc
        :pswitch_b6
        :pswitch_b0
        :pswitch_aa
        :pswitch_a3
        :pswitch_9c
        :pswitch_95
        :pswitch_8e
        :pswitch_87
        :pswitch_80
        :pswitch_79
        :pswitch_6e
        :pswitch_67
        :pswitch_4
        :pswitch_60
        :pswitch_59
        :pswitch_52
        :pswitch_4b
        :pswitch_44
        :pswitch_3d
        :pswitch_32
        :pswitch_2b
        :pswitch_24
        :pswitch_1d
    .end packed-switch
.end method

.method public final whitelist writeValue(Ljava/lang/Object;)V
    .registers 5

    .line 2646
    instance-of v0, p1, Landroid/os/Parcel$LazyValue;

    if-eqz v0, :cond_a

    .line 2647
    check-cast p1, Landroid/os/Parcel$LazyValue;

    .line 2648
    invoke-virtual {p1, p0}, Landroid/os/Parcel$LazyValue;->writeToParcel(Landroid/os/Parcel;)V

    .line 2649
    return-void

    .line 2651
    :cond_a
    invoke-static {p1}, Landroid/os/Parcel;->getValueType(Ljava/lang/Object;)I

    move-result v0

    .line 2652
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2653
    invoke-direct {p0, v0}, Landroid/os/Parcel;->isLengthPrefixed(I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 2655
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 2656
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2658
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 2659
    invoke-virtual {p0, v0, p1}, Landroid/os/Parcel;->writeValue(ILjava/lang/Object;)V

    .line 2660
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    .line 2662
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2663
    sub-int v0, p1, v2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2664
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2665
    goto :goto_39

    .line 2666
    :cond_36
    invoke-virtual {p0, v0, p1}, Landroid/os/Parcel;->writeValue(ILjava/lang/Object;)V

    .line 2668
    :goto_39
    return-void
.end method
