.class public final Landroid/security/attestationverification/VerificationToken;
.super Ljava/lang/Object;
.source "VerificationToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/attestationverification/VerificationToken$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/attestationverification/VerificationToken;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForVerificationTime:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

.field private final blacklist mHmac:[B

.field private final blacklist mLocalBindingType:I

.field private final blacklist mRequirements:Landroid/os/Bundle;

.field private blacklist mUid:I

.field private final blacklist mVerificationResult:I

.field private final blacklist mVerificationTime:Ljava/time/Instant;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 200
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;

    .line 201
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/security/attestationverification/VerificationToken;->sParcellingForVerificationTime:Lcom/android/internal/util/Parcelling;

    .line 204
    sget-object v0, Landroid/security/attestationverification/VerificationToken;->sParcellingForVerificationTime:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_17

    .line 205
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInstant;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/security/attestationverification/VerificationToken;->sParcellingForVerificationTime:Lcom/android/internal/util/Parcelling;

    .line 260
    :cond_17
    new-instance v0, Landroid/security/attestationverification/VerificationToken$1;

    invoke-direct {v0}, Landroid/security/attestationverification/VerificationToken$1;-><init>()V

    sput-object v0, Landroid/security/attestationverification/VerificationToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    sget-object v0, Landroid/security/attestationverification/AttestationProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/attestationverification/AttestationProfile;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 237
    sget-object v4, Landroid/security/attestationverification/VerificationToken;->sParcellingForVerificationTime:Lcom/android/internal/util/Parcelling;

    invoke-interface {v4, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/Instant;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 240
    iput-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    .line 241
    const-class v0, Landroid/annotation/NonNull;

    iget-object v5, p0, Landroid/security/attestationverification/VerificationToken;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    const/4 v6, 0x0

    invoke-static {v0, v6, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 243
    iput v1, p0, Landroid/security/attestationverification/VerificationToken;->mLocalBindingType:I

    .line 244
    const-class v0, Landroid/security/attestationverification/AttestationVerificationManager$LocalBindingType;

    iget v1, p0, Landroid/security/attestationverification/VerificationToken;->mLocalBindingType:I

    invoke-static {v0, v6, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 246
    iput-object v2, p0, Landroid/security/attestationverification/VerificationToken;->mRequirements:Landroid/os/Bundle;

    .line 247
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/security/attestationverification/VerificationToken;->mRequirements:Landroid/os/Bundle;

    invoke-static {v0, v6, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 249
    iput v3, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationResult:I

    .line 250
    const-class v0, Landroid/security/attestationverification/AttestationVerificationManager$VerificationResultFlags;

    iget v1, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationResult:I

    invoke-static {v0, v6, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 252
    iput-object v4, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationTime:Ljava/time/Instant;

    .line 253
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationTime:Ljava/time/Instant;

    invoke-static {v0, v6, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 255
    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken;->mHmac:[B

    .line 256
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mHmac:[B

    invoke-static {p1, v6, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method constructor blacklist <init>(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;ILjava/time/Instant;[B)V
    .registers 9

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    .line 119
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 121
    iput p2, p0, Landroid/security/attestationverification/VerificationToken;->mLocalBindingType:I

    .line 122
    const-class p1, Landroid/security/attestationverification/AttestationVerificationManager$LocalBindingType;

    iget p2, p0, Landroid/security/attestationverification/VerificationToken;->mLocalBindingType:I

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 124
    iput-object p3, p0, Landroid/security/attestationverification/VerificationToken;->mRequirements:Landroid/os/Bundle;

    .line 125
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/security/attestationverification/VerificationToken;->mRequirements:Landroid/os/Bundle;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 127
    iput p4, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationResult:I

    .line 128
    const-class p1, Landroid/security/attestationverification/AttestationVerificationManager$VerificationResultFlags;

    iget p2, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationResult:I

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 130
    iput-object p5, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationTime:Ljava/time/Instant;

    .line 131
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationTime:Ljava/time/Instant;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 133
    iput-object p6, p0, Landroid/security/attestationverification/VerificationToken;->mHmac:[B

    .line 134
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/security/attestationverification/VerificationToken;->mHmac:[B

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 136
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAttestationProfile()Landroid/security/attestationverification/AttestationProfile;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    return-object v0
.end method

.method public blacklist getHmac()[B
    .registers 2

    .line 197
    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mHmac:[B

    return-object v0
.end method

.method public blacklist getLocalBindingType()I
    .registers 2

    .line 153
    iget v0, p0, Landroid/security/attestationverification/VerificationToken;->mLocalBindingType:I

    return v0
.end method

.method public blacklist getRequirements()Landroid/os/Bundle;
    .registers 2

    .line 162
    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mRequirements:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getVerificationResult()I
    .registers 2

    .line 178
    iget v0, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationResult:I

    return v0
.end method

.method public blacklist getVerificationTime()Ljava/time/Instant;
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 215
    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 216
    iget v0, p0, Landroid/security/attestationverification/VerificationToken;->mLocalBindingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-object v0, p0, Landroid/security/attestationverification/VerificationToken;->mRequirements:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 218
    iget v0, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    sget-object v0, Landroid/security/attestationverification/VerificationToken;->sParcellingForVerificationTime:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Landroid/security/attestationverification/VerificationToken;->mVerificationTime:Ljava/time/Instant;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 220
    iget-object p2, p0, Landroid/security/attestationverification/VerificationToken;->mHmac:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 221
    return-void
.end method
