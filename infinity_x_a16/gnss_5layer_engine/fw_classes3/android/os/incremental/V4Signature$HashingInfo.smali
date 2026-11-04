.class public Landroid/os/incremental/V4Signature$HashingInfo;
.super Ljava/lang/Object;
.source "V4Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/V4Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashingInfo"
.end annotation


# instance fields
.field public final blacklist hashAlgorithm:I

.field public final blacklist log2BlockSize:B

.field public final blacklist rawRootHash:[B

.field public final blacklist salt:[B


# direct methods
.method constructor blacklist <init>(IB[B[B)V
    .registers 5

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    .line 58
    iput-byte p2, p0, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    .line 59
    iput-object p3, p0, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    .line 60
    iput-object p4, p0, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    .line 61
    return-void
.end method

.method public static blacklist fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 70
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 71
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->-$$Nest$smreadBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 72
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->-$$Nest$smreadBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    .line 73
    new-instance v3, Landroid/os/incremental/V4Signature$HashingInfo;

    invoke-direct {v3, v0, v1, v2, p0}, Landroid/os/incremental/V4Signature$HashingInfo;-><init>(IB[B[B)V

    return-object v3
.end method
