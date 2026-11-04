.class public final Landroid/security/net/config/NetworkSecurityConfig$Builder;
.super Ljava/lang/Object;
.source "NetworkSecurityConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/net/config/NetworkSecurityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCertificateTransparencyVerificationRequired:Z

.field private blacklist mCertificateTransparencyVerificationRequiredSet:Z

.field private greylist-max-o mCertificatesEntryRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCleartextTrafficPermitted:Z

.field private greylist-max-o mCleartextTrafficPermittedSet:Z

.field private greylist-max-o mHstsEnforced:Z

.field private greylist-max-o mHstsEnforcedSet:Z

.field private greylist-max-o mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

.field private greylist-max-o mPinSet:Landroid/security/net/config/PinSet;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermitted:Z

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforced:Z

    .line 268
    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermittedSet:Z

    .line 269
    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforcedSet:Z

    .line 270
    nop

    .line 271
    invoke-static {}, Landroid/security/net/config/NetworkSecurityConfig;->certificateTransparencyVerificationRequiredDefault()Z

    move-result v1

    iput-boolean v1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificateTransparencyVerificationRequired:Z

    .line 272
    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificateTransparencyVerificationRequiredSet:Z

    return-void
.end method

.method private blacklist getCertificateTransparencyVerificationRequired()Z
    .registers 3

    .line 385
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificateTransparencyVerificationRequiredSet:Z

    if-eqz v0, :cond_7

    .line 386
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificateTransparencyVerificationRequired:Z

    return v0

    .line 391
    :cond_7
    invoke-virtual {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->hasCertificatesEntryRefs()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 392
    invoke-virtual {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getCertificatesEntryRefs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/net/config/CertificatesEntryRef;

    .line 393
    invoke-virtual {v1}, Landroid/security/net/config/CertificatesEntryRef;->disableCT()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 394
    const/4 v0, 0x0

    return v0

    .line 396
    :cond_29
    goto :goto_15

    .line 398
    :cond_2a
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_35

    .line 399
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getCertificateTransparencyVerificationRequired()Z

    move-result v0

    return v0

    .line 401
    :cond_35
    invoke-static {}, Landroid/security/net/config/NetworkSecurityConfig;->certificateTransparencyVerificationRequiredDefault()Z

    move-result v0

    return v0
.end method

.method private greylist-max-o getEffectiveCertificatesEntryRefs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 362
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    return-object v0

    .line 364
    :cond_7
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_12

    .line 365
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCertificatesEntryRefs()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 367
    :cond_12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getEffectiveCleartextTrafficPermitted()Z
    .registers 2

    .line 319
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermittedSet:Z

    if-eqz v0, :cond_7

    .line 320
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermitted:Z

    return v0

    .line 322
    :cond_7
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_12

    .line 323
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCleartextTrafficPermitted()Z

    move-result v0

    return v0

    .line 325
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o getEffectiveHstsEnforced()Z
    .registers 2

    .line 335
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforcedSet:Z

    if-eqz v0, :cond_7

    .line 336
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforced:Z

    return v0

    .line 338
    :cond_7
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_12

    .line 339
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveHstsEnforced()Z

    move-result v0

    return v0

    .line 341
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o getEffectivePinSet()Landroid/security/net/config/PinSet;
    .registers 2

    .line 303
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mPinSet:Landroid/security/net/config/PinSet;

    if-eqz v0, :cond_7

    .line 304
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mPinSet:Landroid/security/net/config/PinSet;

    return-object v0

    .line 306
    :cond_7
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_12

    .line 307
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectivePinSet()Landroid/security/net/config/PinSet;

    move-result-object v0

    return-object v0

    .line 309
    :cond_12
    sget-object v0, Landroid/security/net/config/PinSet;->EMPTY_PINSET:Landroid/security/net/config/PinSet;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 3

    .line 345
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    if-nez v0, :cond_b

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    .line 348
    :cond_b
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    return-object p0
.end method

.method public greylist-max-o addCertificatesEntryRefs(Ljava/util/Collection;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;)",
            "Landroid/security/net/config/NetworkSecurityConfig$Builder;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    if-nez v0, :cond_b

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    .line 356
    :cond_b
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 357
    return-object p0
.end method

.method public greylist-max-o build()Landroid/security/net/config/NetworkSecurityConfig;
    .registers 8

    .line 405
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCleartextTrafficPermitted()Z

    move-result v1

    .line 406
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveHstsEnforced()Z

    move-result v2

    .line 407
    nop

    .line 408
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getCertificateTransparencyVerificationRequired()Z

    move-result v3

    .line 409
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectivePinSet()Landroid/security/net/config/PinSet;

    move-result-object v4

    .line 410
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCertificatesEntryRefs()Ljava/util/List;

    move-result-object v5

    .line 411
    new-instance v0, Landroid/security/net/config/NetworkSecurityConfig;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/security/net/config/NetworkSecurityConfig;-><init>(ZZZLandroid/security/net/config/PinSet;Ljava/util/List;Landroid/security/net/config/NetworkSecurityConfig-IA;)V

    return-object v0
.end method

.method greylist-max-o getCertificatesEntryRefs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getParent()Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 2

    .line 294
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    return-object v0
.end method

.method public greylist-max-o hasCertificatesEntryRefs()Z
    .registers 2

    .line 371
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method blacklist setCertificateTransparencyVerificationRequired(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 2

    .line 379
    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificateTransparencyVerificationRequired:Z

    .line 380
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificateTransparencyVerificationRequiredSet:Z

    .line 381
    return-object p0
.end method

.method public greylist-max-o setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 2

    .line 313
    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermitted:Z

    .line 314
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermittedSet:Z

    .line 315
    return-object p0
.end method

.method public greylist-max-o setHstsEnforced(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 2

    .line 329
    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforced:Z

    .line 330
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforcedSet:Z

    .line 331
    return-object p0
.end method

.method public greylist-max-o setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 3

    .line 282
    move-object v0, p1

    .line 283
    :goto_1
    if-eqz v0, :cond_12

    .line 284
    if-eq v0, p0, :cond_a

    .line 287
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getParent()Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v0

    goto :goto_1

    .line 285
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Loops are not allowed in Builder parents"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 289
    :cond_12
    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 290
    return-object p0
.end method

.method public greylist-max-o setPinSet(Landroid/security/net/config/PinSet;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 2

    .line 298
    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mPinSet:Landroid/security/net/config/PinSet;

    .line 299
    return-object p0
.end method
