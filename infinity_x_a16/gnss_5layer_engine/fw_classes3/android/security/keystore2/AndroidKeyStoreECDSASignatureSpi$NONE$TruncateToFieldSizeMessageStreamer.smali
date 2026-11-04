.class Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;
.super Ljava/lang/Object;
.source "AndroidKeyStoreECDSASignatureSpi.java"

# interfaces
.implements Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TruncateToFieldSizeMessageStreamer"
.end annotation


# instance fields
.field private blacklist mConsumedInputSizeBytes:J

.field private final blacklist mDelegate:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

.field private final blacklist mGroupSizeBits:I

.field private final blacklist mInputBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method private constructor blacklist <init>(Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;I)V
    .registers 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    .line 81
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mDelegate:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 82
    iput p2, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mGroupSizeBits:I

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;ILandroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;I)V

    return-void
.end method


# virtual methods
.method public blacklist doFinal([BII[B)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 98
    if-lez p3, :cond_d

    .line 99
    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    .line 100
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 103
    :cond_d
    iget-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 104
    iget-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 106
    iget-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mDelegate:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    array-length p3, p1

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mGroupSizeBits:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 108
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 106
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3, p4}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->doFinal([BII[B)[B

    move-result-object p1

    return-object p1
.end method

.method public blacklist getConsumedInputSizeBytes()J
    .registers 3

    .line 114
    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    return-wide v0
.end method

.method public blacklist getProducedOutputSizeBytes()J
    .registers 3

    .line 119
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mDelegate:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->getProducedOutputSizeBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist update([BII)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 88
    if-lez p3, :cond_d

    .line 89
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mInputBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 90
    iget-wide p1, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;->mConsumedInputSizeBytes:J

    .line 92
    :cond_d
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    return-object p1
.end method
