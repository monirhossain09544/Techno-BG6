.class public final Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE;
.super Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;
.source "AndroidKeyStoreECDSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NONE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;-><init>(I)V

    .line 51
    return-void
.end method


# virtual methods
.method protected blacklist createMainDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;
    .registers 5

    .line 61
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;

    .line 62
    invoke-super {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi;->createMainDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE;->getGroupSizeBits()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi$NONE$TruncateToFieldSizeMessageStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;ILandroid/security/keystore2/AndroidKeyStoreECDSASignatureSpi-IA;)V

    .line 61
    return-object v0
.end method

.method protected blacklist getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 55
    const-string v0, "NONEwithECDSA"

    return-object v0
.end method
