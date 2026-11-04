.class public final Landroid/security/net/config/NetworkSecurityConfig;
.super Ljava/lang/Object;
.source "NetworkSecurityConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/NetworkSecurityConfig$Builder;
    }
.end annotation


# static fields
.field public static final greylist-max-o DEFAULT_CLEARTEXT_TRAFFIC_PERMITTED:Z = true

.field static final blacklist DEFAULT_ENABLE_CERTIFICATE_TRANSPARENCY:J = 0x1850dcedL

.field public static final greylist-max-o DEFAULT_HSTS_ENFORCED:Z = false

.field private static final blacklist sCertificateTransparencyVerificationRequiredDefault:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/security/net/config/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mAnchorsLock:Ljava/lang/Object;

.field private final blacklist mCertificateTransparencyVerificationRequired:Z

.field private final greylist-max-o mCertificatesEntryRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCleartextTrafficPermitted:Z

.field private final greylist-max-o mHstsEnforced:Z

.field private final greylist-max-o mPins:Landroid/security/net/config/PinSet;

.field private greylist-max-o mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;

.field private final greylist-max-o mTrustManagerLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/security/net/config/NetworkSecurityConfig;->sCertificateTransparencyVerificationRequiredDefault:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor blacklist <init>(ZZZLandroid/security/net/config/PinSet;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Landroid/security/net/config/PinSet;",
            "Ljava/util/List<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchorsLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManagerLock:Ljava/lang/Object;

    .line 77
    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCleartextTrafficPermitted:Z

    .line 78
    iput-boolean p2, p0, Landroid/security/net/config/NetworkSecurityConfig;->mHstsEnforced:Z

    .line 79
    iput-boolean p3, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificateTransparencyVerificationRequired:Z

    .line 80
    iput-object p4, p0, Landroid/security/net/config/NetworkSecurityConfig;->mPins:Landroid/security/net/config/PinSet;

    .line 81
    iput-object p5, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    .line 85
    iget-object p1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    new-instance p2, Landroid/security/net/config/NetworkSecurityConfig$1;

    invoke-direct {p2, p0}, Landroid/security/net/config/NetworkSecurityConfig$1;-><init>(Landroid/security/net/config/NetworkSecurityConfig;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZZLandroid/security/net/config/PinSet;Ljava/util/List;Landroid/security/net/config/NetworkSecurityConfig-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/security/net/config/NetworkSecurityConfig;-><init>(ZZZLandroid/security/net/config/PinSet;Ljava/util/List;)V

    return-void
.end method

.method public static blacklist certificateTransparencyVerificationRequiredDefault()Z
    .registers 2

    .line 197
    sget-object v0, Landroid/security/net/config/NetworkSecurityConfig;->sCertificateTransparencyVerificationRequiredDefault:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/security/net/config/NetworkSecurityConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/security/net/config/NetworkSecurityConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->updateAndGet(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o getDefaultBuilder(Landroid/content/pm/ApplicationInfo;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 6

    .line 228
    new-instance v0, Landroid/security/net/config/CertificatesEntryRef;

    .line 229
    invoke-static {}, Landroid/security/net/config/SystemCertificateSource;->getInstance()Landroid/security/net/config/SystemCertificateSource;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/security/net/config/CertificatesEntryRef;-><init>(Landroid/security/net/config/CertificateSource;ZZ)V

    .line 230
    new-instance v1, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;-><init>()V

    .line 231
    invoke-virtual {v1, v2}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setHstsEnforced(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v1

    .line 232
    invoke-virtual {v1, v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v0

    .line 233
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1c

    const/4 v4, 0x1

    if-ge v1, v3, :cond_26

    .line 234
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    if-nez v1, :cond_26

    move v1, v4

    goto :goto_27

    :cond_26
    move v1, v2

    .line 235
    :goto_27
    invoke-virtual {v0, v1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 238
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x17

    if-gt v1, v3, :cond_42

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result p0

    if-nez p0, :cond_42

    .line 240
    new-instance p0, Landroid/security/net/config/CertificatesEntryRef;

    .line 241
    invoke-static {}, Landroid/security/net/config/UserCertificateSource;->getInstance()Landroid/security/net/config/UserCertificateSource;

    move-result-object v1

    invoke-direct {p0, v1, v2, v4}, Landroid/security/net/config/CertificatesEntryRef;-><init>(Landroid/security/net/config/CertificateSource;ZZ)V

    .line 240
    invoke-virtual {v0, p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 243
    :cond_42
    return-object v0
.end method

.method public static blacklist getLocalhostBuilder()Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .registers 2

    .line 252
    new-instance v0, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;-><init>()V

    .line 253
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v0

    .line 254
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setHstsEnforced(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0, v1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setCertificateTransparencyVerificationRequired(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v0

    .line 256
    return-object v0
.end method

.method static synthetic blacklist lambda$certificateTransparencyVerificationRequiredDefault$0(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 3

    .line 199
    if-eqz p0, :cond_7

    .line 200
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_19

    .line 201
    :cond_7
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/Flags;->certificateTransparencyDefaultEnabled()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 202
    const-wide/32 v0, 0x1850dced

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    .line 199
    :goto_19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public greylist-max-o findAllCertificatesByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 174
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/net/config/CertificatesEntryRef;

    .line 175
    invoke-virtual {v2, p1}, Landroid/security/net/config/CertificatesEntryRef;->findAllCertificatesByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 176
    goto :goto_b

    .line 177
    :cond_1f
    return-object v0
.end method

.method public greylist-max-o findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;
    .registers 4

    .line 162
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/net/config/CertificatesEntryRef;

    .line 163
    invoke-virtual {v1, p1}, Landroid/security/net/config/CertificatesEntryRef;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_19

    .line 165
    return-object v1

    .line 167
    :cond_19
    goto :goto_6

    .line 168
    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;
    .registers 4

    .line 151
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/net/config/CertificatesEntryRef;

    .line 152
    invoke-virtual {v1, p1}, Landroid/security/net/config/CertificatesEntryRef;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_19

    .line 154
    return-object v1

    .line 156
    :cond_19
    goto :goto_6

    .line 157
    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o getPins()Landroid/security/net/config/PinSet;
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mPins:Landroid/security/net/config/PinSet;

    return-object v0
.end method

.method public greylist-max-o getTrustAnchors()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/security/net/config/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchorsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    if-eqz v1, :cond_b

    .line 100
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 107
    :cond_b
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 108
    iget-object v2, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/net/config/CertificatesEntryRef;

    .line 109
    invoke-virtual {v3}, Landroid/security/net/config/CertificatesEntryRef;->getTrustAnchors()Ljava/util/Set;

    move-result-object v3

    .line 110
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/net/config/TrustAnchor;

    .line 111
    iget-object v5, v4, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    .line 112
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    .line 113
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_41
    goto :goto_2a

    .line 116
    :cond_42
    goto :goto_16

    .line 117
    :cond_43
    new-instance v2, Landroid/util/ArraySet;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 118
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 119
    iput-object v2, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    .line 120
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 121
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public greylist-max-o getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;
    .registers 3

    .line 141
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_3
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;

    if-nez v1, :cond_e

    .line 143
    new-instance v1, Landroid/security/net/config/NetworkSecurityTrustManager;

    invoke-direct {v1, p0}, Landroid/security/net/config/NetworkSecurityTrustManager;-><init>(Landroid/security/net/config/NetworkSecurityConfig;)V

    iput-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;

    .line 145
    :cond_e
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mTrustManager:Landroid/security/net/config/NetworkSecurityTrustManager;

    monitor-exit v0

    return-object v1

    .line 146
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public greylist-max-o handleTrustStorageUpdate()V
    .registers 4

    .line 181
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchorsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mAnchors:Ljava/util/Set;

    .line 183
    iget-object v1, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/net/config/CertificatesEntryRef;

    .line 184
    invoke-virtual {v2}, Landroid/security/net/config/CertificatesEntryRef;->handleTrustStorageUpdate()V

    .line 185
    goto :goto_c

    .line 186
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_25

    .line 187
    invoke-virtual {p0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->handleTrustStorageUpdate()V

    .line 188
    return-void

    .line 186
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public blacklist isCertificateTransparencyVerificationRequired()Z
    .registers 2

    .line 133
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCertificateTransparencyVerificationRequired:Z

    return v0
.end method

.method public greylist-max-o isCleartextTrafficPermitted()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mCleartextTrafficPermitted:Z

    return v0
.end method

.method public greylist-max-o isHstsEnforced()Z
    .registers 2

    .line 129
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig;->mHstsEnforced:Z

    return v0
.end method
