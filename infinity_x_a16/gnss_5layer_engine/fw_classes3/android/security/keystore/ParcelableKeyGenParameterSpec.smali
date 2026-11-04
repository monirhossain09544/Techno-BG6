.class public final Landroid/security/keystore/ParcelableKeyGenParameterSpec;
.super Ljava/lang/Object;
.source "ParcelableKeyGenParameterSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final greylist-max-o ALGORITHM_PARAMETER_SPEC_EC:I = 0x3

.field private static final greylist-max-o ALGORITHM_PARAMETER_SPEC_NONE:I = 0x1

.field private static final greylist-max-o ALGORITHM_PARAMETER_SPEC_RSA:I = 0x2

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keystore/ParcelableKeyGenParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 228
    new-instance v0, Landroid/security/keystore/ParcelableKeyGenParameterSpec$1;

    invoke-direct {v0}, Landroid/security/keystore/ParcelableKeyGenParameterSpec$1;-><init>()V

    sput-object v0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 39

    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    nop

    .line 143
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1e

    .line 144
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_42

    .line 145
    :cond_1e
    const/4 v4, 0x2

    if-ne v0, v4, :cond_35

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 147
    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    .line 148
    new-instance v5, Ljava/security/spec/RSAKeyGenParameterSpec;

    invoke-direct {v5, v0, v4}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    .line 149
    move-object v4, v5

    goto :goto_42

    :cond_35
    const/4 v4, 0x3

    if-ne v0, v4, :cond_e5

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v4, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v4, v0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 152
    nop

    .line 157
    :goto_42
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-direct {v5, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    .line 158
    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 159
    new-instance v7, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 160
    new-instance v8, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 161
    invoke-static/range {p1 .. p1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->readDateOrNull(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v9

    .line 162
    invoke-static/range {p1 .. p1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->readDateOrNull(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v10

    .line 163
    invoke-static/range {p1 .. p1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->readDateOrNull(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v11

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v13

    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v23

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v24

    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v25

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v27

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v28

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v29

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v30

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v31

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v32

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 190
    move-object v14, v0

    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec;

    .line 204
    if-eqz v14, :cond_d8

    invoke-static {v14}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v14

    goto :goto_dc

    :cond_d8
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v14

    :goto_dc
    invoke-direct/range {v0 .. v36}, Landroid/security/keystore/KeyGenParameterSpec;-><init>(Ljava/lang/String;IILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIIZ[BZ[IZZZZZZZILjava/lang/String;J)V

    move-object v1, v0

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 226
    return-void

    .line 153
    :cond_e5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Unknown algorithm parameter spec: %d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/security/keystore/ParcelableKeyGenParameterSpec-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/security/keystore/KeyGenParameterSpec;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 48
    return-void
.end method

.method private static greylist-max-o readDateOrNull(Landroid/os/Parcel;)Ljava/util/Date;
    .registers 4

    .line 127
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 128
    if-eqz v0, :cond_10

    .line 129
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 131
    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private static greylist-max-o writeOptionalDate(Landroid/os/Parcel;Ljava/util/Date;)V
    .registers 4

    .line 55
    if-eqz p1, :cond_e

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 57
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_12

    .line 59
    :cond_e
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 61
    :goto_12
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getSpec()Landroid/security/keystore/KeyGenParameterSpec;
    .registers 2

    .line 241
    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 64
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getNamespace()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p2

    .line 71
    if-nez p2, :cond_31

    .line 72
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_60

    .line 73
    :cond_31
    instance-of v0, p2, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v0, :cond_4e

    .line 74
    check-cast p2, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 75
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    invoke-virtual {p2}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    invoke-virtual {p2}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 78
    goto :goto_60

    :cond_4e
    instance-of v0, p2, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_19c

    .line 79
    check-cast p2, Ljava/security/spec/ECGenParameterSpec;

    .line 80
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {p2}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    nop

    .line 86
    :goto_60
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 87
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 88
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->writeOptionalDate(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 91
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->writeOptionalDate(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 92
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->writeOptionalDate(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 93
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_c2

    .line 94
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_c5

    .line 96
    :cond_c2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 98
    :goto_c5
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isMgf1DigestsSpecified()Z

    move-result p2

    if-eqz p2, :cond_db

    .line 99
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getMgf1Digests()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_de

    .line 101
    :cond_db
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 103
    :goto_de
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 107
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 108
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationType()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserPresenceRequired()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationChallenge()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 112
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isDevicePropertiesAttestationIncluded()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 113
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationIds()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 114
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isUniqueIdIncluded()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 115
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationValidWhileOnBody()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 116
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isInvalidatedByBiometricEnrollment()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 117
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 118
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserConfirmationRequired()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 119
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isUnlockedDeviceRequired()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 120
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isCriticalToDeviceEncryption()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 121
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getMaxUsageCount()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestKeyAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getBoundToSpecificSecureUserId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 124
    return-void

    .line 83
    :cond_19c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 84
    invoke-interface {p2}, Ljava/security/spec/AlgorithmParameterSpec;->getClass()Ljava/lang/Class;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Unknown algorithm parameter spec: %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
