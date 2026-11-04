.class public final Landroid/service/security/talisman/EncryptedIdentityHashParameters;
.super Ljava/lang/Object;
.source "EncryptedIdentityHashParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/security/talisman/EncryptedIdentityHashParameters$ChallengeHashAlgorithm;,
        Landroid/service/security/talisman/EncryptedIdentityHashParameters$HashAlgorithm;
    }
.end annotation


# static fields
.field public static final blacklist CHALLENGE_HASH_ALGORITHM_SHA256:I = 0x1

.field public static final blacklist CHALLENGE_HASH_ALGORITHM_SHA384:I = 0x2

.field public static final blacklist CHALLENGE_HASH_ALGORITHM_UNKNOWN:I = 0x0

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/security/talisman/EncryptedIdentityHashParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HASH_ALGORITHM_EC_HASH_TO_CURVE_P256_XMD_SHA256_SSWU:I = 0x1

.field public static final blacklist HASH_ALGORITHM_EC_HASH_TO_CURVE_P384_XMD_SHA384_SSWU:I = 0x2

.field public static final blacklist HASH_ALGORITHM_UNKNOWN:I


# instance fields
.field private final blacklist mChallengeHashAlgorithm:I

.field private final blacklist mEncryptedIdentityHash:[B

.field private final blacklist mHashAlgorithm:I

.field private final blacklist mNonceCommitment:[B

.field private final blacklist mProof:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 267
    new-instance v0, Landroid/service/security/talisman/EncryptedIdentityHashParameters$1;

    invoke-direct {v0}, Landroid/service/security/talisman/EncryptedIdentityHashParameters$1;-><init>()V

    sput-object v0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II[B[B[B)V
    .registers 6

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput p1, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mHashAlgorithm:I

    .line 172
    iput p2, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mChallengeHashAlgorithm:I

    .line 173
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mEncryptedIdentityHash:[B

    .line 174
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mNonceCommitment:[B

    .line 175
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mProof:[B

    .line 176
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mHashAlgorithm:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mChallengeHashAlgorithm:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mEncryptedIdentityHash:[B

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mNonceCommitment:[B

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mProof:[B

    .line 184
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/security/talisman/EncryptedIdentityHashParameters-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/security/talisman/EncryptedIdentityHashParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 282
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 283
    :cond_4
    instance-of v1, p1, Landroid/service/security/talisman/EncryptedIdentityHashParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 284
    :cond_a
    check-cast p1, Landroid/service/security/talisman/EncryptedIdentityHashParameters;

    .line 285
    iget v1, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mHashAlgorithm:I

    iget v3, p1, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mHashAlgorithm:I

    if-ne v1, v3, :cond_37

    iget v1, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mChallengeHashAlgorithm:I

    iget v3, p1, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mChallengeHashAlgorithm:I

    if-ne v1, v3, :cond_37

    iget-object v1, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mEncryptedIdentityHash:[B

    iget-object v3, p1, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mEncryptedIdentityHash:[B

    .line 287
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mNonceCommitment:[B

    iget-object v3, p1, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mNonceCommitment:[B

    .line 288
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mProof:[B

    iget-object p1, p1, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mProof:[B

    .line 289
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_38

    :cond_37
    move v0, v2

    .line 285
    :goto_38
    return v0
.end method

.method public blacklist getChallengeHashAlgorithm()I
    .registers 2

    .line 209
    iget v0, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mChallengeHashAlgorithm:I

    return v0
.end method

.method public blacklist getEncryptedIdentityHash()[B
    .registers 2

    .line 223
    iget-object v0, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mEncryptedIdentityHash:[B

    return-object v0
.end method

.method public blacklist getHashAlgorithm()I
    .registers 2

    .line 196
    iget v0, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mHashAlgorithm:I

    return v0
.end method

.method public blacklist getNonceCommitment()[B
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mNonceCommitment:[B

    return-object v0
.end method

.method public blacklist getProof()[B
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mProof:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 294
    iget v0, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mHashAlgorithm:I

    .line 295
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mChallengeHashAlgorithm:I

    add-int/2addr v0, v1

    .line 296
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mEncryptedIdentityHash:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mNonceCommitment:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 298
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mProof:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 299
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 259
    iget p2, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mHashAlgorithm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget p2, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mChallengeHashAlgorithm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object p2, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mEncryptedIdentityHash:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 262
    iget-object p2, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mNonceCommitment:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 263
    iget-object p2, p0, Landroid/service/security/talisman/EncryptedIdentityHashParameters;->mProof:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 264
    return-void
.end method
