.class public Landroid/speech/tts/Voice;
.super Ljava/lang/Object;
.source "Voice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LATENCY_HIGH:I = 0x190

.field public static final whitelist LATENCY_LOW:I = 0xc8

.field public static final whitelist LATENCY_NORMAL:I = 0x12c

.field public static final whitelist LATENCY_VERY_HIGH:I = 0x1f4

.field public static final whitelist LATENCY_VERY_LOW:I = 0x64

.field public static final whitelist QUALITY_HIGH:I = 0x190

.field public static final whitelist QUALITY_LOW:I = 0xc8

.field public static final whitelist QUALITY_NORMAL:I = 0x12c

.field public static final whitelist QUALITY_VERY_HIGH:I = 0x1f4

.field public static final whitelist QUALITY_VERY_LOW:I = 0x64


# instance fields
.field private final greylist-max-o mFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mLatency:I

.field private final greylist-max-o mLocale:Ljava/util/Locale;

.field private final greylist-max-o mName:Ljava/lang/String;

.field private final greylist-max-o mQuality:I

.field private final greylist-max-o mRequiresNetworkConnection:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 110
    new-instance v0, Landroid/speech/tts/Voice$1;

    invoke-direct {v0}, Landroid/speech/tts/Voice$1;-><init>()V

    sput-object v0, Landroid/speech/tts/Voice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    .line 87
    const-class v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/util/Locale;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/speech/tts/Voice;->mQuality:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/speech/tts/Voice;->mLatency:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    iput-boolean v1, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    .line 92
    iget-object v0, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/speech/tts/Voice-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/speech/tts/Voice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/util/Locale;IIZLjava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "IIZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    .line 79
    iput p3, p0, Landroid/speech/tts/Voice;->mQuality:I

    .line 80
    iput p4, p0, Landroid/speech/tts/Voice;->mLatency:I

    .line 81
    iput-boolean p5, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    .line 82
    iput-object p6, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    .line 83
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 213
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 214
    return v0

    .line 216
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 217
    return v1

    .line 219
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 220
    return v1

    .line 222
    :cond_13
    check-cast p1, Landroid/speech/tts/Voice;

    .line 223
    iget-object v2, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    if-nez v2, :cond_1e

    .line 224
    iget-object v2, p1, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    if-eqz v2, :cond_29

    .line 225
    return v1

    .line 227
    :cond_1e
    iget-object v2, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    iget-object v3, p1, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 228
    return v1

    .line 230
    :cond_29
    iget v2, p0, Landroid/speech/tts/Voice;->mLatency:I

    iget v3, p1, Landroid/speech/tts/Voice;->mLatency:I

    if-eq v2, v3, :cond_30

    .line 231
    return v1

    .line 233
    :cond_30
    iget-object v2, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    if-nez v2, :cond_39

    .line 234
    iget-object v2, p1, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    if-eqz v2, :cond_44

    .line 235
    return v1

    .line 237
    :cond_39
    iget-object v2, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    iget-object v3, p1, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 238
    return v1

    .line 240
    :cond_44
    iget-object v2, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    if-nez v2, :cond_4d

    .line 241
    iget-object v2, p1, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    if-eqz v2, :cond_58

    .line 242
    return v1

    .line 244
    :cond_4d
    iget-object v2, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    iget-object v3, p1, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 245
    return v1

    .line 247
    :cond_58
    iget v2, p0, Landroid/speech/tts/Voice;->mQuality:I

    iget v3, p1, Landroid/speech/tts/Voice;->mQuality:I

    if-eq v2, v3, :cond_5f

    .line 248
    return v1

    .line 250
    :cond_5f
    iget-boolean v2, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    iget-boolean p1, p1, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    if-eq v2, p1, :cond_66

    .line 251
    return v1

    .line 253
    :cond_66
    return v0
.end method

.method public whitelist getFeatures()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getLatency()I
    .registers 2

    .line 151
    iget v0, p0, Landroid/speech/tts/Voice;->mLatency:I

    return v0
.end method

.method public whitelist getLocale()Ljava/util/Locale;
    .registers 2

    .line 127
    iget-object v0, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getQuality()I
    .registers 2

    .line 139
    iget v0, p0, Landroid/speech/tts/Voice;->mQuality:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 201
    nop

    .line 202
    iget-object v0, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_e

    :cond_8
    iget-object v0, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    :goto_e
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    .line 203
    mul-int/2addr v0, v2

    iget v3, p0, Landroid/speech/tts/Voice;->mLatency:I

    add-int/2addr v0, v3

    .line 204
    mul-int/2addr v0, v2

    iget-object v3, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    if-nez v3, :cond_1c

    move v3, v1

    goto :goto_22

    :cond_1c
    iget-object v3, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_22
    add-int/2addr v0, v3

    .line 205
    mul-int/2addr v0, v2

    iget-object v3, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    if-nez v3, :cond_29

    goto :goto_2f

    :cond_29
    iget-object v1, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2f
    add-int/2addr v0, v1

    .line 206
    mul-int/2addr v0, v2

    iget v1, p0, Landroid/speech/tts/Voice;->mQuality:I

    add-int/2addr v0, v1

    .line 207
    mul-int/2addr v0, v2

    iget-boolean v1, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    if-eqz v1, :cond_3c

    const/16 v1, 0x4cf

    goto :goto_3e

    :cond_3c
    const/16 v1, 0x4d5

    :goto_3e
    add-int/2addr v0, v1

    .line 208
    return v0
.end method

.method public whitelist isNetworkConnectionRequired()Z
    .registers 2

    .line 158
    iget-boolean v0, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 189
    const-string v1, "Voice[Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    const-string v1, ", locale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    const-string v1, ", quality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/speech/tts/Voice;->mQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    const-string v1, ", latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/speech/tts/Voice;->mLatency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    const-string v1, ", requiresNetwork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    const-string v1, ", features: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 195
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 97
    iget-object p2, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 99
    iget p2, p0, Landroid/speech/tts/Voice;->mQuality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget p2, p0, Landroid/speech/tts/Voice;->mLatency:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-boolean p2, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 103
    return-void
.end method
