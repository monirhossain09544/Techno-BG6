.class public final Lcom/android/framework/protobuf/UnsafeByteOperations;
.super Ljava/lang/Object;
.source "UnsafeByteOperations.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist unsafeWrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/ByteString;
    .registers 1

    .line 75
    invoke-static {p0}, Lcom/android/framework/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist unsafeWrap([B)Lcom/android/framework/protobuf/ByteString;
    .registers 1

    .line 52
    invoke-static {p0}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist unsafeWrap([BII)Lcom/android/framework/protobuf/ByteString;
    .registers 3

    .line 65
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/ByteString;->wrap([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist unsafeWriteTo(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteOutput;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/ByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    .line 96
    return-void
.end method
