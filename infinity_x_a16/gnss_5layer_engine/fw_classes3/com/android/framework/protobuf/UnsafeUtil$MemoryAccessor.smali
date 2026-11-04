.class abstract Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MemoryAccessor"
.end annotation


# instance fields
.field blacklist unsafe:Lsun/misc/Unsafe;


# direct methods
.method constructor blacklist <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p1, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 462
    return-void
.end method


# virtual methods
.method public final blacklist arrayBaseOffset(Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public final blacklist arrayIndexScale(Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public abstract blacklist copyMemory(J[BJJ)V
.end method

.method public abstract blacklist copyMemory([BJJJ)V
.end method

.method public abstract blacklist getBoolean(Ljava/lang/Object;J)Z
.end method

.method public abstract blacklist getByte(J)B
.end method

.method public abstract blacklist getByte(Ljava/lang/Object;J)B
.end method

.method public abstract blacklist getDouble(Ljava/lang/Object;J)D
.end method

.method public abstract blacklist getFloat(Ljava/lang/Object;J)F
.end method

.method public abstract blacklist getInt(J)I
.end method

.method public final blacklist getInt(Ljava/lang/Object;J)I
    .registers 5

    .line 510
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    return p1
.end method

.method public abstract blacklist getLong(J)J
.end method

.method public final blacklist getLong(Ljava/lang/Object;J)J
    .registers 5

    .line 518
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final blacklist getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 5

    .line 538
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
.end method

.method public final blacklist objectFieldOffset(Ljava/lang/reflect/Field;)J
    .registers 4

    .line 465
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract blacklist putBoolean(Ljava/lang/Object;JZ)V
.end method

.method public abstract blacklist putByte(JB)V
.end method

.method public abstract blacklist putByte(Ljava/lang/Object;JB)V
.end method

.method public abstract blacklist putDouble(Ljava/lang/Object;JD)V
.end method

.method public abstract blacklist putFloat(Ljava/lang/Object;JF)V
.end method

.method public abstract blacklist putInt(JI)V
.end method

.method public final blacklist putInt(Ljava/lang/Object;JI)V
    .registers 6

    .line 514
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 515
    return-void
.end method

.method public abstract blacklist putLong(JJ)V
.end method

.method public final blacklist putLong(Ljava/lang/Object;JJ)V
    .registers 7

    .line 522
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 523
    return-void
.end method

.method public final blacklist putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 6

    .line 542
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 543
    return-void
.end method

.method public blacklist supportsUnsafeArrayOperations()Z
    .registers 9

    .line 483
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 484
    return v1

    .line 487
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 488
    const-string/jumbo v2, "objectFieldOffset"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 489
    const-string v2, "arrayBaseOffset"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 490
    const-string v2, "arrayIndexScale"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 491
    const-string v2, "getInt"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 492
    const-string/jumbo v2, "putInt"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 493
    const-string v2, "getLong"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 494
    const-string/jumbo v2, "putLong"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 495
    const-string v2, "getObject"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 496
    const-string/jumbo v2, "putObject"

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v4

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_9a
    .catchall {:try_start_6 .. :try_end_9a} :catchall_9b

    .line 498
    return v3

    .line 499
    :catchall_9b
    move-exception v0

    .line 500
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->logMissingMethod(Ljava/lang/Throwable;)V
    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->access$000(Ljava/lang/Throwable;)V

    .line 502
    return v1
.end method

.method public blacklist supportsUnsafeByteBufferOperations()Z
    .registers 7

    .line 550
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 551
    return v1

    .line 554
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 556
    const-string/jumbo v2, "objectFieldOffset"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 557
    const-string v2, "getLong"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 559
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->bufferAddressField()Ljava/lang/reflect/Field;
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->access$100()Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_31

    if-nez v0, :cond_30

    .line 560
    return v1

    .line 563
    :cond_30
    return v3

    .line 564
    :catchall_31
    move-exception v0

    .line 565
    # invokes: Lcom/android/framework/protobuf/UnsafeUtil;->logMissingMethod(Ljava/lang/Throwable;)V
    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->access$000(Ljava/lang/Throwable;)V

    .line 567
    return v1
.end method
