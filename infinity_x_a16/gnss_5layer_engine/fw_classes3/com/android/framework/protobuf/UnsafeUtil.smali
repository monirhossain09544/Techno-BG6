.class final Lcom/android/framework/protobuf/UnsafeUtil;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;,
        Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;,
        Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;,
        Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;
    }
.end annotation


# static fields
.field private static final blacklist BOOLEAN_ARRAY_BASE_OFFSET:J

.field private static final blacklist BOOLEAN_ARRAY_INDEX_SCALE:J

.field private static final blacklist BUFFER_ADDRESS_OFFSET:J

.field private static final blacklist BYTE_ARRAY_ALIGNMENT:I

.field static final blacklist BYTE_ARRAY_BASE_OFFSET:J

.field private static final blacklist DOUBLE_ARRAY_BASE_OFFSET:J

.field private static final blacklist DOUBLE_ARRAY_INDEX_SCALE:J

.field private static final blacklist FLOAT_ARRAY_BASE_OFFSET:J

.field private static final blacklist FLOAT_ARRAY_INDEX_SCALE:J

.field private static final blacklist HAS_UNSAFE_ARRAY_OPERATIONS:Z

.field private static final blacklist HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

.field private static final blacklist INT_ARRAY_BASE_OFFSET:J

.field private static final blacklist INT_ARRAY_INDEX_SCALE:J

.field private static final blacklist IS_ANDROID_32:Z

.field private static final blacklist IS_ANDROID_64:Z

.field static final blacklist IS_BIG_ENDIAN:Z

.field private static final blacklist LONG_ARRAY_BASE_OFFSET:J

.field private static final blacklist LONG_ARRAY_INDEX_SCALE:J

.field private static final blacklist MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

.field private static final blacklist MEMORY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final blacklist OBJECT_ARRAY_BASE_OFFSET:J

.field private static final blacklist OBJECT_ARRAY_INDEX_SCALE:J

.field private static final blacklist STRIDE:I = 0x8

.field private static final blacklist STRIDE_ALIGNMENT_MASK:I = 0x7

.field private static final blacklist UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 21
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    .line 22
    invoke-static {}, Lcom/android/framework/protobuf/Android;->getMemoryClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_CLASS:Ljava/lang/Class;

    .line 23
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_ANDROID_64:Z

    .line 24
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_ANDROID_32:Z

    .line 25
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->getMemoryAccessor()Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    .line 27
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->supportsUnsafeByteBufferOperations()Z

    move-result v0

    sput-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    .line 28
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->supportsUnsafeArrayOperations()Z

    move-result v0

    sput-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    .line 30
    const-class v0, [B

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    .line 34
    const-class v0, [Z

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_BASE_OFFSET:J

    .line 35
    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_INDEX_SCALE:J

    .line 37
    const-class v0, [I

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->INT_ARRAY_BASE_OFFSET:J

    .line 38
    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->INT_ARRAY_INDEX_SCALE:J

    .line 40
    const-class v0, [J

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->LONG_ARRAY_BASE_OFFSET:J

    .line 41
    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->LONG_ARRAY_INDEX_SCALE:J

    .line 43
    const-class v0, [F

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->FLOAT_ARRAY_BASE_OFFSET:J

    .line 44
    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->FLOAT_ARRAY_INDEX_SCALE:J

    .line 46
    const-class v0, [D

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->DOUBLE_ARRAY_BASE_OFFSET:J

    .line 47
    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->DOUBLE_ARRAY_INDEX_SCALE:J

    .line 49
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->OBJECT_ARRAY_BASE_OFFSET:J

    .line 50
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->OBJECT_ARRAY_INDEX_SCALE:J

    .line 52
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->bufferAddressField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->fieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->BUFFER_ADDRESS_OFFSET:J

    .line 56
    sget-wide v0, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_ALIGNMENT:I

    .line 59
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_b5

    const/4 v0, 0x1

    goto :goto_b6

    :cond_b5
    const/4 v0, 0x0

    :goto_b6
    sput-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000(Ljava/lang/Throwable;)V
    .registers 1

    .line 20
    invoke-static {p0}, Lcom/android/framework/protobuf/UnsafeUtil;->logMissingMethod(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist access$100()Ljava/lang/reflect/Field;
    .registers 1

    .line 20
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->bufferAddressField()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/lang/Object;J)B
    .registers 3

    .line 20
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByteBigEndian(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$300(Ljava/lang/Object;J)B
    .registers 3

    .line 20
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByteLittleEndian(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$400(Ljava/lang/Object;JB)V
    .registers 4

    .line 20
    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic blacklist access$500(Ljava/lang/Object;JB)V
    .registers 4

    .line 20
    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic blacklist access$600(Ljava/lang/Object;J)Z
    .registers 3

    .line 20
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getBooleanBigEndian(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$700(Ljava/lang/Object;J)Z
    .registers 3

    .line 20
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getBooleanLittleEndian(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$800(Ljava/lang/Object;JZ)V
    .registers 4

    .line 20
    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->putBooleanBigEndian(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static synthetic blacklist access$900(Ljava/lang/Object;JZ)V
    .registers 4

    .line 20
    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->putBooleanLittleEndian(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static blacklist addressOffset(Ljava/nio/ByteBuffer;)J
    .registers 4

    .line 256
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BUFFER_ADDRESS_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 78
    :try_start_0
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 79
    :catch_7
    move-exception p0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static blacklist arrayBaseOffset(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 89
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, -0x1

    :goto_c
    return p0
.end method

.method private static blacklist arrayIndexScale(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 93
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, -0x1

    :goto_c
    return p0
.end method

.method private static blacklist bufferAddressField()Ljava/lang/reflect/Field;
    .registers 3

    .line 348
    invoke-static {}, Lcom/android/framework/protobuf/Android;->isOnAndroidDevice()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 351
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_11

    .line 353
    return-object v0

    .line 356
    :cond_11
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return-object v0
.end method

.method static blacklist copyMemory(J[BJJ)V
    .registers 15

    .line 223
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->copyMemory(J[BJJ)V

    .line 224
    return-void
.end method

.method static blacklist copyMemory([BJJJ)V
    .registers 15

    .line 219
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->copyMemory([BJJJ)V

    .line 220
    return-void
.end method

.method static blacklist copyMemory([BJ[BJJ)V
    .registers 8

    .line 227
    long-to-int p1, p1

    long-to-int p2, p4

    long-to-int p4, p6

    invoke-static {p0, p1, p3, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    return-void
.end method

.method static blacklist determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 327
    const-class v0, [B

    invoke-static {}, Lcom/android/framework/protobuf/Android;->isOnAndroidDevice()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 328
    return v2

    .line 331
    :cond_a
    :try_start_a
    sget-object v1, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_CLASS:Ljava/lang/Class;

    .line 332
    const-string/jumbo v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 333
    const-string/jumbo v3, "pokeLong"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 334
    const-string/jumbo v3, "pokeInt"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 335
    const-string/jumbo v3, "peekInt"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 336
    const-string/jumbo v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 337
    const-string/jumbo v3, "peekByte"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object p0, v6, v2

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 338
    const-string/jumbo v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v0, v8, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 339
    const-string/jumbo v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v2

    aput-object v0, v6, v7

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v6, v4

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_90
    .catchall {:try_start_a .. :try_end_90} :catchall_91

    .line 340
    return v7

    .line 341
    :catchall_91
    move-exception p0

    .line 342
    return v2
.end method

.method private static blacklist field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 448
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    .line 452
    goto :goto_7

    .line 449
    :catchall_5
    move-exception p0

    .line 451
    const/4 p0, 0x0

    .line 453
    :goto_7
    return-object p0
.end method

.method private static blacklist fieldOffset(Ljava/lang/reflect/Field;)J
    .registers 3

    .line 439
    if-eqz p0, :cond_e

    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    if-nez v0, :cond_7

    goto :goto_e

    :cond_7
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_10

    :cond_e
    :goto_e
    const-wide/16 v0, -0x1

    :goto_10
    return-wide v0
.end method

.method private static blacklist firstDifferingByteIndexNativeEndian(JJ)I
    .registers 5

    .line 369
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_a

    .line 370
    xor-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    goto :goto_f

    .line 371
    :cond_a
    xor-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    .line 372
    :goto_f
    shr-int/lit8 p0, p0, 0x3

    return p0
.end method

.method static blacklist getBoolean(Ljava/lang/Object;J)Z
    .registers 4

    .line 121
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static blacklist getBoolean([ZJ)Z
    .registers 8

    .line 179
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_INDEX_SCALE:J

    mul-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method private static blacklist getBooleanBigEndian(Ljava/lang/Object;J)Z
    .registers 3

    .line 992
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByteBigEndian(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static blacklist getBooleanLittleEndian(Ljava/lang/Object;J)Z
    .registers 3

    .line 996
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByteLittleEndian(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method static blacklist getByte(J)B
    .registers 3

    .line 231
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getByte(J)B

    move-result p0

    return p0
.end method

.method static blacklist getByte(Ljava/lang/Object;J)B
    .registers 4

    .line 97
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getByte(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static blacklist getByte([BJ)B
    .registers 6

    .line 153
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getByte(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method private static blacklist getByteBigEndian(Ljava/lang/Object;J)B
    .registers 5

    .line 970
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method private static blacklist getByteLittleEndian(Ljava/lang/Object;J)B
    .registers 5

    .line 974
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method static blacklist getDouble(Ljava/lang/Object;J)D
    .registers 4

    .line 137
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static blacklist getDouble([DJ)D
    .registers 8

    .line 199
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->DOUBLE_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->DOUBLE_ARRAY_INDEX_SCALE:J

    mul-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static blacklist getFloat(Ljava/lang/Object;J)F
    .registers 4

    .line 129
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method static blacklist getFloat([FJ)F
    .registers 8

    .line 189
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->FLOAT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->FLOAT_ARRAY_INDEX_SCALE:J

    mul-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method static blacklist getInt(J)I
    .registers 3

    .line 239
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getInt(J)I

    move-result p0

    return p0
.end method

.method static blacklist getInt(Ljava/lang/Object;J)I
    .registers 4

    .line 105
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static blacklist getInt([IJ)I
    .registers 8

    .line 161
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->INT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->INT_ARRAY_INDEX_SCALE:J

    mul-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static blacklist getLong(J)J
    .registers 3

    .line 247
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static blacklist getLong(Ljava/lang/Object;J)J
    .registers 4

    .line 113
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static blacklist getLong([JJ)J
    .registers 8

    .line 169
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->LONG_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->LONG_ARRAY_INDEX_SCALE:J

    mul-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static blacklist getMemoryAccessor()Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;
    .registers 2

    .line 296
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 297
    return-object v1

    .line 299
    :cond_6
    invoke-static {}, Lcom/android/framework/protobuf/Android;->isOnAndroidDevice()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 300
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_ANDROID_64:Z

    if-eqz v0, :cond_18

    .line 301
    new-instance v0, Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;

    sget-object v1, Lcom/android/framework/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    return-object v0

    .line 302
    :cond_18
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_ANDROID_32:Z

    if-eqz v0, :cond_24

    .line 303
    new-instance v0, Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;

    sget-object v1, Lcom/android/framework/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    return-object v0

    .line 305
    :cond_24
    return-object v1

    .line 309
    :cond_25
    new-instance v0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;

    sget-object v1, Lcom/android/framework/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    return-object v0
.end method

.method static blacklist getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 145
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static blacklist getObject([Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 8

    .line 209
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->OBJECT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->OBJECT_ARRAY_INDEX_SCALE:J

    mul-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static blacklist getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 2

    .line 260
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static blacklist getUnsafe()Lsun/misc/Unsafe;
    .registers 1

    .line 267
    nop

    .line 269
    :try_start_1
    new-instance v0, Lcom/android/framework/protobuf/UnsafeUtil$1;

    invoke-direct {v0}, Lcom/android/framework/protobuf/UnsafeUtil$1;-><init>()V

    .line 270
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    .line 290
    goto :goto_f

    .line 287
    :catchall_d
    move-exception v0

    const/4 v0, 0x0

    .line 291
    :goto_f
    return-object v0
.end method

.method static blacklist hasUnsafeArrayOperations()Z
    .registers 1

    .line 64
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    return v0
.end method

.method static blacklist hasUnsafeByteBufferOperations()Z
    .registers 1

    .line 68
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    return v0
.end method

.method static blacklist isAndroid64()Z
    .registers 1

    .line 72
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_ANDROID_64:Z

    return v0
.end method

.method private static blacklist logMissingMethod(Ljava/lang/Throwable;)V
    .registers 5

    .line 1008
    const-class v0, Lcom/android/framework/protobuf/UnsafeUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1009
    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1012
    return-void
.end method

.method static blacklist mismatch([BI[BII)I
    .registers 15

    .line 384
    if-ltz p1, :cond_6a

    if-ltz p3, :cond_6a

    if-ltz p4, :cond_6a

    add-int v0, p1, p4

    array-length v1, p0

    if-gt v0, v1, :cond_6a

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_6a

    .line 392
    nop

    .line 393
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    .line 394
    sget v0, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_ALIGNMENT:I

    add-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x7

    .line 401
    :goto_1b
    if-ge v1, p4, :cond_31

    and-int/lit8 v2, v0, 0x7

    if-eqz v2, :cond_31

    .line 403
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    add-int v3, p3, v1

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_2c

    .line 404
    return v1

    .line 402
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 410
    :cond_31
    sub-int v0, p4, v1

    and-int/lit8 v0, v0, -0x8

    add-int/2addr v0, v1

    .line 414
    :goto_36
    if-ge v1, v0, :cond_58

    .line 415
    sget-wide v2, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-static {p0, v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    .line 416
    sget-wide v6, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v8, p3

    add-long/2addr v6, v8

    add-long/2addr v6, v4

    invoke-static {p2, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 417
    cmp-long v6, v2, v4

    if-eqz v6, :cond_55

    .line 419
    invoke-static {v2, v3, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->firstDifferingByteIndexNativeEndian(JJ)I

    move-result p0

    add-int/2addr v1, p0

    return v1

    .line 414
    :cond_55
    add-int/lit8 v1, v1, 0x8

    goto :goto_36

    .line 426
    :cond_58
    :goto_58
    if-ge v1, p4, :cond_68

    .line 427
    add-int v0, p1, v1

    aget-byte v0, p0, v0

    add-int v2, p3, v1

    aget-byte v2, p2, v2

    if-eq v0, v2, :cond_65

    .line 428
    return v1

    .line 426
    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 431
    :cond_68
    const/4 p0, -0x1

    return p0

    .line 389
    :cond_6a
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method static blacklist objectFieldOffset(Ljava/lang/reflect/Field;)J
    .registers 3

    .line 85
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist putBoolean(Ljava/lang/Object;JZ)V
    .registers 5

    .line 125
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    .line 126
    return-void
.end method

.method static blacklist putBoolean([ZJZ)V
    .registers 9

    .line 184
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_INDEX_SCALE:J

    mul-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    .line 186
    return-void
.end method

.method private static blacklist putBooleanBigEndian(Ljava/lang/Object;JZ)V
    .registers 4

    .line 1000
    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V

    .line 1001
    return-void
.end method

.method private static blacklist putBooleanLittleEndian(Ljava/lang/Object;JZ)V
    .registers 4

    .line 1004
    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V

    .line 1005
    return-void
.end method

.method static blacklist putByte(JB)V
    .registers 4

    .line 235
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putByte(JB)V

    .line 236
    return-void
.end method

.method static blacklist putByte(Ljava/lang/Object;JB)V
    .registers 5

    .line 101
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putByte(Ljava/lang/Object;JB)V

    .line 102
    return-void
.end method

.method static blacklist putByte([BJB)V
    .registers 7

    .line 157
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putByte(Ljava/lang/Object;JB)V

    .line 158
    return-void
.end method

.method private static blacklist putByteBigEndian(Ljava/lang/Object;JB)V
    .registers 8

    .line 978
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v2

    .line 979
    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    .line 980
    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 981
    invoke-static {p0, v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 982
    return-void
.end method

.method private static blacklist putByteLittleEndian(Ljava/lang/Object;JB)V
    .registers 8

    .line 985
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v2

    .line 986
    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    .line 987
    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 988
    invoke-static {p0, v0, v1, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 989
    return-void
.end method

.method static blacklist putDouble(Ljava/lang/Object;JD)V
    .registers 11

    .line 141
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    .line 142
    return-void
.end method

.method static blacklist putDouble([DJD)V
    .registers 11

    .line 204
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->DOUBLE_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->DOUBLE_ARRAY_INDEX_SCALE:J

    mul-long/2addr p1, v3

    add-long v2, v1, p1

    move-object v1, p0

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    .line 206
    return-void
.end method

.method static blacklist putFloat(Ljava/lang/Object;JF)V
    .registers 5

    .line 133
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    .line 134
    return-void
.end method

.method static blacklist putFloat([FJF)V
    .registers 9

    .line 194
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->FLOAT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->FLOAT_ARRAY_INDEX_SCALE:J

    mul-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    .line 196
    return-void
.end method

.method static blacklist putInt(JI)V
    .registers 4

    .line 243
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putInt(JI)V

    .line 244
    return-void
.end method

.method static blacklist putInt(Ljava/lang/Object;JI)V
    .registers 5

    .line 109
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putInt(Ljava/lang/Object;JI)V

    .line 110
    return-void
.end method

.method static blacklist putInt([IJI)V
    .registers 9

    .line 165
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->INT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->INT_ARRAY_INDEX_SCALE:J

    mul-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putInt(Ljava/lang/Object;JI)V

    .line 166
    return-void
.end method

.method static blacklist putLong(JJ)V
    .registers 5

    .line 251
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putLong(JJ)V

    .line 252
    return-void
.end method

.method static blacklist putLong(Ljava/lang/Object;JJ)V
    .registers 11

    .line 117
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putLong(Ljava/lang/Object;JJ)V

    .line 118
    return-void
.end method

.method static blacklist putLong([JJJ)V
    .registers 11

    .line 174
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->LONG_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->LONG_ARRAY_INDEX_SCALE:J

    mul-long/2addr p1, v3

    add-long v2, v1, p1

    move-object v1, p0

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putLong(Ljava/lang/Object;JJ)V

    .line 176
    return-void
.end method

.method static blacklist putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5

    .line 149
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 150
    return-void
.end method

.method static blacklist putObject([Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 9

    .line 214
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/android/framework/protobuf/UnsafeUtil;->OBJECT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lcom/android/framework/protobuf/UnsafeUtil;->OBJECT_ARRAY_INDEX_SCALE:J

    mul-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 216
    return-void
.end method

.method private static blacklist supportsUnsafeArrayOperations()Z
    .registers 1

    .line 313
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    if-nez v0, :cond_6

    .line 314
    const/4 v0, 0x0

    return v0

    .line 316
    :cond_6
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->supportsUnsafeArrayOperations()Z

    move-result v0

    return v0
.end method

.method private static blacklist supportsUnsafeByteBufferOperations()Z
    .registers 1

    .line 320
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    if-nez v0, :cond_6

    .line 321
    const/4 v0, 0x0

    return v0

    .line 323
    :cond_6
    sget-object v0, Lcom/android/framework/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->supportsUnsafeByteBufferOperations()Z

    move-result v0

    return v0
.end method
