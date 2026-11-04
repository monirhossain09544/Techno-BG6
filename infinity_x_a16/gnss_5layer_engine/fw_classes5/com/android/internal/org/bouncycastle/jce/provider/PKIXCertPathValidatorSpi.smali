.class public Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidatorSpi.java"


# instance fields
.field private final blacklist helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private final blacklist isForCRLCheck:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;-><init>(Z)V

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    .line 48
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 58
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isForCRLCheck:Z

    .line 59
    return-void
.end method

.method static blacklist checkCertificate(Ljava/security/cert/X509Certificate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 527
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    :try_end_7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_7} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_9

    .line 536
    nop

    .line 537
    return-void

    .line 533
    :catch_9
    move-exception p0

    .line 535
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :catch_14
    move-exception p0

    .line 531
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v1, "unable to process TBSCertificate"

    invoke-direct {v0, v1, p0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 68
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Ljava/security/cert/PKIXParameters;

    if-eqz v3, :cond_2b

    .line 70
    new-instance v3, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object v4, v2

    check-cast v4, Ljava/security/cert/PKIXParameters;

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 72
    instance-of v4, v2, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v4, :cond_26

    .line 74
    check-cast v2, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;

    .line 76
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setUseDeltasEnabled(Z)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 77
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setValidityModel(I)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 80
    :cond_26
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v2

    .line 81
    goto :goto_3c

    .line 82
    :cond_2b
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    if-eqz v3, :cond_36

    .line 84
    check-cast v2, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v2

    goto :goto_3c

    .line 86
    :cond_36
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    if-eqz v3, :cond_3bc

    .line 88
    check-cast v2, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 95
    :goto_3c
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_3b4

    .line 108
    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v10

    .line 109
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 111
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v12, 0x0

    if-nez v3, :cond_3ab

    .line 119
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 120
    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidityDate(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    .line 125
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v13

    .line 133
    const/4 v14, 0x1

    :try_start_60
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v14

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 134
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v7

    .line 133
    invoke-static {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v15

    .line 136
    if-eqz v15, :cond_387

    .line 141
    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->checkCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_80
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_60 .. :try_end_80} :catch_394

    .line 146
    nop

    .line 149
    new-instance v5, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v5, v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v5, v15}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v2

    .line 155
    nop

    .line 166
    add-int/lit8 v5, v11, 0x1

    new-array v6, v5, [Ljava/util/ArrayList;

    .line 167
    const/4 v7, 0x0

    move v8, v7

    :goto_95
    if-ge v8, v5, :cond_a1

    .line 169
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    aput-object v9, v6, v8

    .line 167
    add-int/lit8 v8, v8, 0x1

    goto :goto_95

    .line 172
    :cond_a1
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 174
    const-string v9, "2.5.29.32.0"

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v16, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    const-string v22, "2.5.29.32.0"

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v8

    invoke-direct/range {v16 .. v23}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 179
    move-object/from16 v8, v16

    aget-object v9, v6, v7

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v9, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct {v9}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    .line 189
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 191
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v17

    if-eqz v17, :cond_de

    .line 193
    move/from16 v17, v7

    goto :goto_e0

    .line 197
    :cond_de
    move/from16 v17, v5

    .line 205
    :goto_e0
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isAnyPolicyInhibited()Z

    move-result v18

    if-eqz v18, :cond_e9

    .line 207
    move/from16 v18, v7

    goto :goto_eb

    .line 211
    :cond_e9
    move/from16 v18, v5

    .line 219
    :goto_eb
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isPolicyMappingInhibited()Z

    move-result v19

    if-eqz v19, :cond_f3

    .line 221
    move v5, v7

    goto :goto_f4

    .line 225
    :cond_f3
    nop

    .line 234
    :goto_f4
    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v19

    .line 237
    if-eqz v19, :cond_103

    .line 239
    :try_start_fa
    invoke-static/range {v19 .. v19}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v20

    .line 240
    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v21

    goto :goto_10b

    .line 244
    :cond_103
    invoke-static {v15}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getCA(Ljava/security/cert/TrustAnchor;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v20

    .line 245
    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v21
    :try_end_10b
    .catch Ljava/lang/RuntimeException; {:try_start_fa .. :try_end_10b} :catch_37e

    .line 252
    :goto_10b
    nop

    .line 254
    nop

    .line 257
    :try_start_10d
    invoke-static/range {v21 .. v21}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4
    :try_end_111
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_10d .. :try_end_111} :catch_375

    .line 263
    nop

    .line 264
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 265
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 270
    nop

    .line 276
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v4

    if-eqz v4, :cond_13c

    .line 277
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v4

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move/from16 p2, v14

    move-object/from16 v14, v22

    check-cast v14, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v14}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v4

    if-eqz v4, :cond_134

    goto :goto_13e

    .line 279
    :cond_134
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Target certificate in certification path does not match targetConstraints."

    invoke-direct {v0, v2, v12, v1, v7}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 276
    :cond_13c
    move/from16 p2, v14

    .line 286
    :goto_13e
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v14

    .line 287
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 288
    :goto_146
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_159

    .line 290
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v12, v22

    check-cast v12, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v12, v7}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    const/4 v12, 0x0

    goto :goto_146

    .line 297
    :cond_159
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    move-result v4

    if-eqz v4, :cond_167

    .line 299
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v4, v12}, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    goto :goto_168

    .line 303
    :cond_167
    const/4 v4, 0x0

    .line 306
    :goto_168
    nop

    .line 308
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move/from16 v22, v12

    move v12, v5

    move/from16 v5, v22

    move-object/from16 v24, v13

    move/from16 v22, v17

    move-object/from16 v17, v8

    move v13, v11

    const/4 v8, 0x0

    :goto_17c
    if-ltz v5, :cond_2e8

    .line 315
    sub-int v8, v11, v5

    .line 323
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v10

    move-object/from16 v10, v25

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 324
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v7, v25, -0x1

    if-ne v5, v7, :cond_195

    move/from16 v7, p2

    goto :goto_196

    :cond_195
    const/4 v7, 0x0

    .line 328
    :goto_196
    :try_start_196
    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->checkCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_199
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_196 .. :try_end_199} :catch_2d8

    .line 333
    nop

    .line 339
    move-object/from16 v27, v19

    move-object/from16 v19, v6

    move-object/from16 v6, v21

    move-object/from16 v21, v14

    move/from16 v14, v22

    move/from16 v22, v13

    move v13, v8

    move-object/from16 v8, v20

    move-object/from16 v20, v15

    move-object v15, v9

    move-object/from16 v9, v27

    const/16 v27, 0x0

    invoke-static/range {v1 .. v9}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationChecker;ILjava/security/PublicKey;ZLcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;)V

    .line 342
    move-object/from16 v30, v4

    move-object/from16 v25, v6

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object v9, v2

    move-object v8, v3

    move v2, v5

    iget-boolean v3, v0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isForCRLCheck:Z

    invoke-static {v1, v2, v15, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;Z)V

    .line 344
    iget-boolean v7, v0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isForCRLCheck:Z

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v6, v18

    move-object/from16 v5, v19

    invoke-static/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;IZ)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v4

    .line 347
    invoke-static {v1, v2, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v4

    .line 349
    invoke-static {v1, v2, v4, v14}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V

    .line 354
    if-eq v13, v11, :cond_2af

    .line 356
    if-eqz v10, :cond_201

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v7

    move-object/from16 v16, v3

    move/from16 v3, p2

    if-ne v7, v3, :cond_203

    .line 359
    if-ne v13, v3, :cond_1f8

    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f8

    .line 361
    move-object/from16 v3, v21

    move/from16 v13, v22

    goto/16 :goto_2b5

    .line 363
    :cond_1f8
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Version 1 certificates can\'t be used as CA ones."

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 356
    :cond_201
    move-object/from16 v16, v3

    .line 367
    :cond_203
    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    .line 369
    invoke-static {v1, v2, v5, v4, v12}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v3

    .line 372
    invoke-static {v1, v2, v15}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    .line 375
    invoke-static {v1, v2, v14}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v4

    .line 376
    invoke-static {v1, v2, v12}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v7

    .line 377
    invoke-static {v1, v2, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v6

    .line 382
    invoke-static {v1, v2, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v4

    .line 383
    invoke-static {v1, v2, v7}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v7

    .line 386
    invoke-static {v1, v2, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v6

    .line 389
    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    .line 392
    move/from16 v13, v22

    invoke-static {v1, v2, v13}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v12

    .line 395
    invoke-static {v1, v2, v12}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v13

    .line 398
    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    .line 400
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v12

    .line 401
    if-eqz v12, :cond_273

    .line 403
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 406
    sget-object v12, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v14, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 407
    sget-object v12, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v14, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 408
    sget-object v12, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v14, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 409
    sget-object v12, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v14, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 410
    sget-object v12, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v14, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 411
    sget-object v12, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v14, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 412
    sget-object v12, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v14, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 413
    sget-object v12, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v14, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 414
    sget-object v12, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v14, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 415
    sget-object v12, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v14, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_278

    .line 419
    :cond_273
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 423
    :goto_278
    move-object/from16 v12, v21

    invoke-static {v1, v2, v14, v12}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    .line 426
    nop

    .line 429
    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v14

    .line 434
    move-object/from16 v17, v3

    :try_start_284
    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    move/from16 v18, v4

    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-static {v3, v2, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_290
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_284 .. :try_end_290} :catch_2a6

    .line 439
    nop

    .line 441
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 443
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 445
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-object/from16 v21, v3

    move-object/from16 v19, v10

    move-object v3, v12

    move/from16 v22, v18

    move v12, v7

    move/from16 v18, v6

    goto :goto_2c1

    .line 436
    :catch_2a6
    move-exception v0

    .line 438
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Next working key could not be retrieved."

    invoke-direct {v3, v4, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 354
    :cond_2af
    move-object/from16 v16, v3

    move-object/from16 v3, v21

    move/from16 v13, v22

    .line 308
    :goto_2b5
    move-object/from16 v17, v4

    move/from16 v22, v14

    move-object/from16 v21, v25

    move-object/from16 v14, v28

    move-object/from16 v19, v29

    move/from16 v18, v6

    :goto_2c1
    add-int/lit8 v2, v2, -0x1

    move-object v6, v5

    move/from16 v7, v27

    move-object/from16 v4, v30

    const/16 p2, 0x1

    move v5, v2

    move-object v2, v9

    move-object v9, v15

    move-object/from16 v15, v20

    move-object/from16 v20, v14

    move-object v14, v3

    move-object v3, v8

    move-object v8, v10

    move-object/from16 v10, v26

    goto/16 :goto_17c

    .line 330
    :catch_2d8
    move-exception v0

    move v2, v5

    .line 332
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v3, v4, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 453
    :cond_2e8
    move-object v9, v2

    move v2, v5

    move-object v5, v6

    move-object v3, v14

    move-object/from16 v20, v15

    move-object/from16 v4, v17

    move/from16 v14, v22

    invoke-static {v14, v8}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v0

    .line 455
    move-object v6, v4

    add-int/lit8 v4, v2, 0x1

    invoke-static {v1, v4, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v0

    .line 464
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v7

    .line 466
    if-eqz v7, :cond_349

    .line 468
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 470
    sget-object v7, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v10, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 471
    sget-object v7, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v10, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 472
    sget-object v7, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v10, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 473
    sget-object v7, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v10, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 474
    sget-object v7, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v10, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 475
    sget-object v7, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v10, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 476
    sget-object v7, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v10, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 477
    sget-object v7, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v10, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 478
    sget-object v7, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v10, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 479
    sget-object v7, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v10, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 480
    sget-object v7, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-interface {v10, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 481
    sget-object v7, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_34e

    .line 485
    :cond_349
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 488
    :goto_34e
    invoke-static {v1, v4, v3, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    .line 490
    move v12, v2

    move-object v2, v9

    move-object/from16 v7, v16

    move-object/from16 v3, v24

    invoke-static/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    .line 493
    if-gtz v0, :cond_369

    if-eqz v2, :cond_360

    goto :goto_369

    .line 498
    :cond_360
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Path processing failed on policy."

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v1, v12}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 495
    :cond_369
    :goto_369
    new-instance v0, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-direct {v0, v3, v2, v1}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v0

    .line 259
    :catch_375
    move-exception v0

    .line 261
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Algorithm identifier of public key of trust anchor could not be read."

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 248
    :catch_37e
    move-exception v0

    .line 250
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Subject of trust anchor could not be (re)encoded."

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 138
    :cond_387
    move-object/from16 v26, v10

    :try_start_389
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Trust anchor for certification path not found."

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
    :try_end_392
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_389 .. :try_end_392} :catch_392

    .line 143
    :catch_392
    move-exception v0

    goto :goto_397

    :catch_394
    move-exception v0

    move-object/from16 v26, v10

    .line 145
    :goto_397
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v0, v1, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 113
    :cond_3ab
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Certification path is empty."

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 97
    :cond_3b4
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3bc
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameters must be a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
