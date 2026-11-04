.class public final Landroid/security/attestationverification/AttestationProfile;
.super Ljava/lang/Object;
.source "AttestationProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/attestationverification/AttestationProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "AVF"


# instance fields
.field private final blacklist mAttestationProfileId:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mProfileName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 271
    new-instance v0, Landroid/security/attestationverification/AttestationProfile$1;

    invoke-direct {v0}, Landroid/security/attestationverification/AttestationProfile$1;-><init>()V

    sput-object v0, Landroid/security/attestationverification/AttestationProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/security/attestationverification/AttestationProfile;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 106
    return-void

    .line 103
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "App-defined profiles must be specified with the constructor AttestationProfile#constructor(String, String)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    .line 84
    iput-object p2, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 258
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    move-object v2, v3

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 259
    :goto_16
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1c

    move-object p1, v3

    goto :goto_20

    :cond_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 261
    :goto_20
    iput v1, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    .line 262
    const-class v0, Landroid/security/attestationverification/AttestationVerificationManager$AttestationProfileId;

    iget v1, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 264
    iput-object v2, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    .line 265
    iput-object p1, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 125
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/security/attestationverification/AttestationProfile;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 129
    return-void

    .line 127
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both packageName and profileName must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 290
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 206
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 207
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_31

    .line 209
    :cond_12
    check-cast p1, Landroid/security/attestationverification/AttestationProfile;

    .line 211
    iget v2, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    iget v3, p1, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    .line 213
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    iget-object p1, p1, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    .line 214
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    .line 211
    :goto_30
    return v0

    .line 207
    :cond_31
    :goto_31
    return v1
.end method

.method public blacklist getAttestationProfileId()I
    .registers 2

    .line 174
    iget v0, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProfileName()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 223
    nop

    .line 224
    iget v0, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 225
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 226
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 227
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 133
    iget v0, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    const/4 v1, 0x1

    const-string v2, ")"

    if-ne v0, v1, :cond_2d

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttestationProfile(package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 137
    :cond_2d
    iget v0, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    packed-switch v0, :pswitch_data_64

    .line 142
    const-string v0, "AVF"

    const-string v1, "ERROR: Missing case in AttestationProfile#toString"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v0, "ERROR"

    goto :goto_3f

    .line 139
    :pswitch_3c
    nop

    .line 140
    const-string v0, "PROFILE_UNKNOWN"

    .line 145
    :goto_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AttestationProfile("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_3c
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 236
    nop

    .line 237
    iget-object p2, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    if-eqz p2, :cond_8

    const/4 p2, 0x2

    int-to-byte p2, p2

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 238
    :goto_9
    iget-object v0, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    if-eqz v0, :cond_10

    or-int/lit8 p2, p2, 0x4

    int-to-byte p2, p2

    .line 239
    :cond_10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 240
    iget p2, p0, Landroid/security/attestationverification/AttestationProfile;->mAttestationProfileId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object p2, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    if-eqz p2, :cond_21

    iget-object p2, p0, Landroid/security/attestationverification/AttestationProfile;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    :cond_21
    iget-object p2, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    if-eqz p2, :cond_2a

    iget-object p2, p0, Landroid/security/attestationverification/AttestationProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    :cond_2a
    return-void
.end method
