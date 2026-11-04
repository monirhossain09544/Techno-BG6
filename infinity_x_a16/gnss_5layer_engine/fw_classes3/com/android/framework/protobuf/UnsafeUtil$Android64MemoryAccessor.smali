.class final Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;
.super Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Android64MemoryAccessor"
.end annotation


# direct methods
.method constructor blacklist <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 730
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    .line 731
    return-void
.end method


# virtual methods
.method public blacklist copyMemory(J[BJJ)V
    .registers 8

    .line 835
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist copyMemory([BJJJ)V
    .registers 8

    .line 840
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist getBoolean(Ljava/lang/Object;J)Z
    .registers 5

    .line 762
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_9

    .line 763
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->getBooleanBigEndian(Ljava/lang/Object;J)Z
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->access$600(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 765
    :cond_9
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->getBooleanLittleEndian(Ljava/lang/Object;J)Z
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->access$700(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public blacklist getByte(J)B
    .registers 3

    .line 805
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist getByte(Ljava/lang/Object;J)B
    .registers 5

    .line 744
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_9

    .line 745
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->getByteBigEndian(Ljava/lang/Object;J)B
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->access$200(Ljava/lang/Object;J)B

    move-result p1

    return p1

    .line 747
    :cond_9
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->getByteLittleEndian(Ljava/lang/Object;J)B
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->access$300(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public blacklist getDouble(Ljava/lang/Object;J)D
    .registers 4

    .line 790
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public blacklist getFloat(Ljava/lang/Object;J)F
    .registers 4

    .line 780
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public blacklist getInt(J)I
    .registers 3

    .line 815
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist getLong(J)J
    .registers 3

    .line 825
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 3

    .line 736
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p1

    .line 737
    :catch_6
    move-exception p1

    .line 738
    return-object v0
.end method

.method public blacklist putBoolean(Ljava/lang/Object;JZ)V
    .registers 6

    .line 771
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_8

    .line 772
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->putBooleanBigEndian(Ljava/lang/Object;JZ)V
    invoke-static {p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->access$800(Ljava/lang/Object;JZ)V

    goto :goto_b

    .line 774
    :cond_8
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->putBooleanLittleEndian(Ljava/lang/Object;JZ)V
    invoke-static {p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->access$900(Ljava/lang/Object;JZ)V

    .line 776
    :goto_b
    return-void
.end method

.method public blacklist putByte(JB)V
    .registers 4

    .line 810
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist putByte(Ljava/lang/Object;JB)V
    .registers 6

    .line 753
    sget-boolean v0, Lcom/android/framework/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_8

    .line 754
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V
    invoke-static {p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->access$400(Ljava/lang/Object;JB)V

    goto :goto_b

    .line 756
    :cond_8
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V
    invoke-static {p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->access$500(Ljava/lang/Object;JB)V

    .line 758
    :goto_b
    return-void
.end method

.method public blacklist putDouble(Ljava/lang/Object;JD)V
    .registers 12

    .line 795
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;->putLong(Ljava/lang/Object;JJ)V

    .line 796
    return-void
.end method

.method public blacklist putFloat(Ljava/lang/Object;JF)V
    .registers 5

    .line 785
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil$Android64MemoryAccessor;->putInt(Ljava/lang/Object;JI)V

    .line 786
    return-void
.end method

.method public blacklist putInt(JI)V
    .registers 4

    .line 820
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist putLong(JJ)V
    .registers 5

    .line 830
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist supportsUnsafeByteBufferOperations()Z
    .registers 2

    .line 800
    const/4 v0, 0x0

    return v0
.end method
