.class final Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;
.super Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Android32MemoryAccessor"
.end annotation


# static fields
.field private static final blacklist SMALL_ADDRESS_MASK:J = -0x1L


# direct methods
.method constructor blacklist <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 855
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    .line 856
    return-void
.end method

.method private static blacklist smallAddress(J)I
    .registers 4

    .line 851
    const-wide/16 v0, -0x1

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public blacklist copyMemory(J[BJJ)V
    .registers 8

    .line 960
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist copyMemory([BJJJ)V
    .registers 8

    .line 965
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist getBoolean(Ljava/lang/Object;J)Z
    .registers 5

    .line 887
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_9

    .line 888
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->getBooleanBigEndian(Ljava/lang/Object;J)Z
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->access$600(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 890
    :cond_9
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->getBooleanLittleEndian(Ljava/lang/Object;J)Z
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->access$700(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public blacklist getByte(J)B
    .registers 3

    .line 930
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist getByte(Ljava/lang/Object;J)B
    .registers 5

    .line 869
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_9

    .line 870
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->getByteBigEndian(Ljava/lang/Object;J)B
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->access$200(Ljava/lang/Object;J)B

    move-result p1

    return p1

    .line 872
    :cond_9
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->getByteLittleEndian(Ljava/lang/Object;J)B
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->access$300(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public blacklist getDouble(Ljava/lang/Object;J)D
    .registers 4

    .line 915
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public blacklist getFloat(Ljava/lang/Object;J)F
    .registers 4

    .line 905
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public blacklist getInt(J)I
    .registers 3

    .line 940
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist getLong(J)J
    .registers 3

    .line 950
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 3

    .line 861
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p1

    .line 862
    :catch_6
    move-exception p1

    .line 863
    return-object v0
.end method

.method public blacklist putBoolean(Ljava/lang/Object;JZ)V
    .registers 6

    .line 896
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_8

    .line 897
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->putBooleanBigEndian(Ljava/lang/Object;JZ)V
    invoke-static {p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->access$800(Ljava/lang/Object;JZ)V

    goto :goto_b

    .line 899
    :cond_8
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->putBooleanLittleEndian(Ljava/lang/Object;JZ)V
    invoke-static {p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->access$900(Ljava/lang/Object;JZ)V

    .line 901
    :goto_b
    return-void
.end method

.method public blacklist putByte(JB)V
    .registers 4

    .line 935
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist putByte(Ljava/lang/Object;JB)V
    .registers 6

    .line 878
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_8

    .line 879
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V
    invoke-static {p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->access$400(Ljava/lang/Object;JB)V

    goto :goto_b

    .line 881
    :cond_8
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V
    invoke-static {p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->access$500(Ljava/lang/Object;JB)V

    .line 883
    :goto_b
    return-void
.end method

.method public blacklist putDouble(Ljava/lang/Object;JD)V
    .registers 12

    .line 920
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;->putLong(Ljava/lang/Object;JJ)V

    .line 921
    return-void
.end method

.method public blacklist putFloat(Ljava/lang/Object;JF)V
    .registers 5

    .line 910
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil$Android32MemoryAccessor;->putInt(Ljava/lang/Object;JI)V

    .line 911
    return-void
.end method

.method public blacklist putInt(JI)V
    .registers 4

    .line 945
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist putLong(JJ)V
    .registers 5

    .line 955
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist supportsUnsafeByteBufferOperations()Z
    .registers 2

    .line 925
    const/4 v0, 0x0

    return v0
.end method
