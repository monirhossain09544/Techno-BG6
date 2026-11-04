.class abstract Lcom/android/framework/protobuf/BinaryReader;
.super Ljava/lang/Object;
.source "BinaryReader.java"

# interfaces
.implements Lcom/android/framework/protobuf/Reader;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;
    }
.end annotation


# static fields
.field private static final blacklist FIXED32_MULTIPLE_MASK:I = 0x3

.field private static final blacklist FIXED64_MULTIPLE_MASK:I = 0x7


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/BinaryReader$1;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader;-><init>()V

    return-void
.end method

.method public static blacklist newInstance(Ljava/nio/ByteBuffer;Z)Lcom/android/framework/protobuf/BinaryReader;
    .registers 3

    .line 46
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 48
    new-instance v0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-object v0

    .line 51
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Direct buffers not yet supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract blacklist getTotalBytesRead()I
.end method

.method public blacklist shouldDiscardUnknownFields()Z
    .registers 2

    .line 62
    const/4 v0, 0x0

    return v0
.end method
