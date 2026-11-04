.class public Landroid/security/attestationverification/AttestationVerificationManager;
.super Ljava/lang/Object;
.source "AttestationVerificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/attestationverification/AttestationVerificationManager$VerificationResultFlags;,
        Landroid/security/attestationverification/AttestationVerificationManager$LocalBindingType;,
        Landroid/security/attestationverification/AttestationVerificationManager$AttestationProfileId;
    }
.end annotation


# static fields
.field public static final blacklist FLAG_FAILURE_BOOT_STATE:I = 0x20

.field public static final blacklist FLAG_FAILURE_CERTS:I = 0x4

.field public static final blacklist FLAG_FAILURE_KEYSTORE_REQUIREMENTS:I = 0x10

.field public static final blacklist FLAG_FAILURE_LOCAL_BINDING_REQUIREMENTS:I = 0x8

.field public static final blacklist FLAG_FAILURE_PATCH_LEVEL_DIFF:I = 0x40

.field public static final blacklist FLAG_FAILURE_UNKNOWN:I = 0x1

.field public static final blacklist FLAG_FAILURE_UNSUPPORTED_PROFILE:I = 0x2

.field private static final blacklist MAX_TOKEN_AGE:Ljava/time/Duration;

.field public static final blacklist PARAM_CHALLENGE:Ljava/lang/String; = "localbinding.challenge"

.field public static final blacklist PARAM_ID:Ljava/lang/String; = "localbinding.id"

.field public static final blacklist PARAM_MAX_PATCH_LEVEL_DIFF_MONTHS:Ljava/lang/String; = "param_max_patch_level_diff_months"

.field public static final blacklist PARAM_PUBLIC_KEY:Ljava/lang/String; = "localbinding.public_key"

.field public static final blacklist PROFILE_APP_DEFINED:I = 0x1

.field public static final blacklist PROFILE_PEER_DEVICE:I = 0x3

.field public static final blacklist PROFILE_SELF_TRUSTED:I = 0x2

.field public static final blacklist PROFILE_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "AVF"

.field public static final blacklist TYPE_APP_DEFINED:I = 0x1

.field public static final blacklist TYPE_CHALLENGE:I = 0x3

.field public static final blacklist TYPE_PUBLIC_KEY:I = 0x2

.field public static final blacklist TYPE_UNKNOWN:I


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/security/attestationverification/IAttestationVerificationManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 54
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Landroid/security/attestationverification/AttestationVerificationManager;->MAX_TOKEN_AGE:Ljava/time/Duration;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/security/attestationverification/IAttestationVerificationManagerService;)V
    .registers 3

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Landroid/security/attestationverification/AttestationVerificationManager;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Landroid/security/attestationverification/AttestationVerificationManager;->mService:Landroid/security/attestationverification/IAttestationVerificationManagerService;

    .line 194
    return-void
.end method

.method static synthetic blacklist lambda$verifyAttestation$0(Ljava/util/function/BiConsumer;Landroid/security/attestationverification/IVerificationResult;)V
    .registers 3

    .line 115
    iget v0, p1, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Landroid/security/attestationverification/IVerificationResult;->token:Landroid/security/attestationverification/VerificationToken;

    invoke-interface {p0, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method static synthetic blacklist lambda$verifyAttestation$1(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;Landroid/security/attestationverification/IVerificationResult;)V
    .registers 5

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyAttestation result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/security/attestationverification/IVerificationResult;->token:Landroid/security/attestationverification/VerificationToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVF"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Landroid/security/attestationverification/AttestationVerificationManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/security/attestationverification/AttestationVerificationManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/BiConsumer;Landroid/security/attestationverification/IVerificationResult;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method public static blacklist localBindingTypeToString(I)Ljava/lang/String;
    .registers 3

    .line 366
    packed-switch p0, :pswitch_data_36

    .line 384
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 380
    :pswitch_8
    nop

    .line 381
    const-string v0, "CHALLENGE"

    goto :goto_17

    .line 376
    :pswitch_c
    nop

    .line 377
    const-string v0, "PUBLIC_KEY"

    goto :goto_17

    .line 372
    :pswitch_10
    nop

    .line 373
    const-string v0, "APP_DEFINED"

    goto :goto_17

    .line 368
    :pswitch_14
    nop

    .line 369
    const-string v0, "UNKNOWN"

    .line 386
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public blacklist verifyAttestation(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLjava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/attestationverification/AttestationProfile;",
            "I",
            "Landroid/os/Bundle;",
            "[B",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Landroid/security/attestationverification/VerificationToken;",
            ">;)V"
        }
    .end annotation

    .line 111
    move-object v0, p5

    :try_start_1
    new-instance p5, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p5}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 112
    new-instance v1, Landroid/security/attestationverification/AttestationVerificationManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p6}, Landroid/security/attestationverification/AttestationVerificationManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V

    invoke-virtual {p5, v1}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 119
    iget-object p6, p0, Landroid/security/attestationverification/AttestationVerificationManager;->mService:Landroid/security/attestationverification/IAttestationVerificationManagerService;

    move-object p0, p6

    invoke-interface/range {p0 .. p5}, Landroid/security/attestationverification/IAttestationVerificationManagerService;->verifyAttestation(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_16

    .line 124
    nop

    .line 125
    return-void

    .line 122
    :catch_16
    move-exception v0

    move-object p1, v0

    .line 123
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist verifyToken(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;Landroid/security/attestationverification/VerificationToken;Ljava/time/Duration;)I
    .registers 8

    .line 164
    if-nez p5, :cond_5

    .line 165
    sget-object p5, Landroid/security/attestationverification/AttestationVerificationManager;->MAX_TOKEN_AGE:Ljava/time/Duration;

    goto :goto_e

    .line 167
    :cond_5
    sget-object p1, Landroid/security/attestationverification/AttestationVerificationManager;->MAX_TOKEN_AGE:Ljava/time/Duration;

    invoke-virtual {p5, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p1

    if-gtz p1, :cond_3e

    .line 172
    nop

    .line 176
    :goto_e
    :try_start_e
    new-instance p1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 177
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x5

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    .line 179
    iget-object p2, p0, Landroid/security/attestationverification/AttestationVerificationManager;->mService:Landroid/security/attestationverification/IAttestationVerificationManagerService;

    new-instance p3, Landroid/os/ParcelDuration;

    invoke-direct {p3, p5}, Landroid/os/ParcelDuration;-><init>(Ljava/time/Duration;)V

    invoke-interface {p2, p4, p3, p1}, Landroid/security/attestationverification/IAttestationVerificationManagerService;->verifyToken(Landroid/security/attestationverification/VerificationToken;Landroid/os/ParcelDuration;Lcom/android/internal/infra/AndroidFuture;)V

    .line 180
    invoke-virtual {p1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_2e} :catch_38
    .catchall {:try_start_e .. :try_end_2e} :catchall_2f

    return p1

    .line 183
    :catchall_2f
    move-exception p1

    .line 184
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Error verifying token."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 181
    :catch_38
    move-exception p1

    .line 182
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 168
    :cond_3e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "maximumAge cannot be greater than "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p3, Landroid/security/attestationverification/AttestationVerificationManager;->MAX_TOKEN_AGE:Ljava/time/Duration;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "; was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
