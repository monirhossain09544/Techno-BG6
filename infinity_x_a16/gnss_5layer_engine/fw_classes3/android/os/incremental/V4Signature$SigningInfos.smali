.class public Landroid/os/incremental/V4Signature$SigningInfos;
.super Ljava/lang/Object;
.source "V4Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/V4Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SigningInfos"
.end annotation


# instance fields
.field public final blacklist signingInfo:Landroid/os/incremental/V4Signature$SigningInfo;

.field public final blacklist signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;


# direct methods
.method public constructor blacklist <init>(Landroid/os/incremental/V4Signature$SigningInfo;)V
    .registers 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfo:Landroid/os/incremental/V4Signature$SigningInfo;

    .line 150
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/os/incremental/V4Signature$SigningInfoBlock;

    iput-object p1, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;

    .line 151
    return-void
.end method

.method public varargs constructor blacklist <init>(Landroid/os/incremental/V4Signature$SigningInfo;[Landroid/os/incremental/V4Signature$SigningInfoBlock;)V
    .registers 3

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfo:Landroid/os/incremental/V4Signature$SigningInfo;

    .line 155
    iput-object p2, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;

    .line 156
    return-void
.end method

.method public static blacklist fromByteArray([B)Landroid/os/incremental/V4Signature$SigningInfos;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 163
    invoke-static {p0}, Landroid/os/incremental/V4Signature$SigningInfo;->fromByteBuffer(Ljava/nio/ByteBuffer;)Landroid/os/incremental/V4Signature$SigningInfo;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 165
    new-instance p0, Landroid/os/incremental/V4Signature$SigningInfos;

    invoke-direct {p0, v0}, Landroid/os/incremental/V4Signature$SigningInfos;-><init>(Landroid/os/incremental/V4Signature$SigningInfo;)V

    return-object p0

    .line 167
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    :goto_20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 169
    invoke-static {p0}, Landroid/os/incremental/V4Signature$SigningInfoBlock;->fromByteBuffer(Ljava/nio/ByteBuffer;)Landroid/os/incremental/V4Signature$SigningInfoBlock;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 171
    :cond_2e
    new-instance p0, Landroid/os/incremental/V4Signature$SigningInfos;

    .line 172
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/incremental/V4Signature$SigningInfoBlock;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/incremental/V4Signature$SigningInfoBlock;

    invoke-direct {p0, v0, v1}, Landroid/os/incremental/V4Signature$SigningInfos;-><init>(Landroid/os/incremental/V4Signature$SigningInfo;[Landroid/os/incremental/V4Signature$SigningInfoBlock;)V

    .line 171
    return-object p0
.end method
