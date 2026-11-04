.class Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;
.super Ljava/lang/Object;
.source "BaseBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AEADGenericBlockCipher"
.end annotation


# static fields
.field private static final blacklist aeadBadTagConstructor:Ljava/lang/reflect/Constructor;


# instance fields
.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcipher(Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1543
    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;

    const-string v1, "javax.crypto.AEADBadTagException"

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1544
    if-eqz v0, :cond_11

    .line 1546
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->findExceptionConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aeadBadTagConstructor:Ljava/lang/reflect/Constructor;

    goto :goto_14

    .line 1550
    :cond_11
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aeadBadTagConstructor:Ljava/lang/reflect/Constructor;

    .line 1552
    :goto_14
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;)V
    .registers 2

    .line 1569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1570
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    .line 1571
    return-void
.end method

.method private static blacklist findExceptionConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 4

    .line 1558
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    return-object p0

    .line 1560
    :catch_d
    move-exception p0

    .line 1562
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 1636
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;->doFinal([BI)I

    move-result p1
    :try_end_6
    .catch Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1638
    :catch_7
    move-exception p1

    .line 1640
    sget-object p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aeadBadTagConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p2, :cond_23

    .line 1642
    nop

    .line 1645
    :try_start_d
    sget-object p2, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aeadBadTagConstructor:Ljava/lang/reflect/Constructor;

    .line 1646
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/crypto/BadPaddingException;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1d} :catch_1e

    .line 1651
    goto :goto_20

    .line 1648
    :catch_1e
    move-exception p2

    const/4 p2, 0x0

    .line 1652
    :goto_20
    if-eqz p2, :cond_23

    .line 1654
    throw p2

    .line 1657
    :cond_23
    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 1581
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_13

    .line 1583
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1586
    :cond_13
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOutputSize(I)I
    .registers 3

    .line 1606
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;->getOutputSize(I)I

    move-result p1

    return p1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .line 1596
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v0, :cond_f

    .line 1598
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    return-object v0

    .line 1601
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 3

    .line 1611
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;->getUpdateOutputSize(I)I

    move-result p1

    return p1
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1576
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 1577
    return-void
.end method

.method public blacklist processByte(B[BI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 1622
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;->processByte(B[BI)I

    move-result p1

    return p1
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 1628
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;->processBytes([BII[BI)I

    move-result p1

    return p1
.end method

.method public blacklist updateAAD([BII)V
    .registers 5

    .line 1616
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/AEADCipher;->processAADBytes([BII)V

    .line 1617
    return-void
.end method

.method public blacklist wrapOnNoPadding()Z
    .registers 2

    .line 1591
    const/4 v0, 0x0

    return v0
.end method
