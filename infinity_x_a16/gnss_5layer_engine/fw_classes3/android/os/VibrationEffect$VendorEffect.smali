.class public final Landroid/os/VibrationEffect$VendorEffect;
.super Landroid/os/VibrationEffect;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VendorEffect"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect$VendorEffect;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_SCALE:F = 1.0f

.field public static final blacklist DEFAULT_STRENGTH:I = 0x1


# instance fields
.field private final blacklist mAdaptiveScale:F

.field private final blacklist mEffectStrength:I

.field private final blacklist mScale:F

.field private final blacklist mVendorData:Landroid/os/PersistableBundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1415
    new-instance v0, Landroid/os/VibrationEffect$VendorEffect$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$VendorEffect$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect$VendorEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 1186
    const-class v0, Landroid/os/VibrationEffect;

    .line 1187
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1186
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 1188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 1186
    invoke-direct {p0, v0, v1, v2, p1}, Landroid/os/VibrationEffect$VendorEffect;-><init>(Landroid/os/PersistableBundle;IFF)V

    .line 1189
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PersistableBundle;IFF)V
    .registers 5

    .line 1193
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 1194
    iput-object p1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    .line 1195
    iput p2, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    .line 1196
    iput p3, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    .line 1197
    iput p4, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    .line 1198
    return-void
.end method

.method private static blacklist isPersistableBundleEquals(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z
    .registers 7

    .line 1370
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1371
    return v0

    .line 1373
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_39

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_14

    goto :goto_39

    .line 1376
    :cond_14
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1377
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/os/VibrationEffect$VendorEffect;->isPersistableBundleSupportedValueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 1378
    return v1

    .line 1380
    :cond_37
    goto :goto_1c

    .line 1381
    :cond_38
    return v0

    .line 1374
    :cond_39
    :goto_39
    return v1
.end method

.method private static blacklist isPersistableBundleSupportedValueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 1391
    if-ne p0, p1, :cond_4

    .line 1392
    const/4 p0, 0x1

    return p0

    .line 1393
    :cond_4
    if-eqz p0, :cond_6a

    if-eqz p1, :cond_6a

    .line 1394
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_6a

    .line 1396
    :cond_17
    instance-of v0, p0, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_24

    .line 1397
    check-cast p0, Landroid/os/PersistableBundle;

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-static {p0, p1}, Landroid/os/VibrationEffect$VendorEffect;->isPersistableBundleEquals(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result p0

    return p0

    .line 1399
    :cond_24
    instance-of v0, p0, [I

    if-eqz v0, :cond_31

    .line 1400
    check-cast p0, [I

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    .line 1401
    :cond_31
    instance-of v0, p0, [J

    if-eqz v0, :cond_3e

    .line 1402
    check-cast p0, [J

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    .line 1403
    :cond_3e
    instance-of v0, p0, [D

    if-eqz v0, :cond_4b

    .line 1404
    check-cast p0, [D

    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    return p0

    .line 1405
    :cond_4b
    instance-of v0, p0, [Z

    if-eqz v0, :cond_58

    .line 1406
    check-cast p0, [Z

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    return p0

    .line 1407
    :cond_58
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_65

    .line 1408
    check-cast p0, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1410
    :cond_65
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1395
    :cond_6a
    :goto_6a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist applyAdaptiveScale(F)Landroid/os/VibrationEffect;
    .registers 6

    .line 1299
    iget v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_9

    .line 1300
    return-object p0

    .line 1302
    :cond_9
    new-instance v0, Landroid/os/VibrationEffect$VendorEffect;

    iget-object v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    iget v2, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    iget v3, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/os/VibrationEffect$VendorEffect;-><init>(Landroid/os/PersistableBundle;IFF)V

    .line 1304
    invoke-virtual {v0}, Landroid/os/VibrationEffect$VendorEffect;->validate()V

    .line 1305
    return-object v0
.end method

.method public blacklist applyEffectStrength(I)Landroid/os/VibrationEffect;
    .registers 6

    .line 1266
    iget v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    if-ne v0, p1, :cond_5

    .line 1267
    return-object p0

    .line 1269
    :cond_5
    new-instance v0, Landroid/os/VibrationEffect$VendorEffect;

    iget-object v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    iget v2, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    iget v3, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/os/VibrationEffect$VendorEffect;-><init>(Landroid/os/PersistableBundle;IFF)V

    .line 1271
    invoke-virtual {v0}, Landroid/os/VibrationEffect$VendorEffect;->validate()V

    .line 1272
    return-object v0
.end method

.method public blacklist applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect$VendorEffect;
    .registers 3

    .line 1312
    return-object p0
.end method

.method public bridge synthetic blacklist applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1171
    invoke-virtual {p0, p1, p2}, Landroid/os/VibrationEffect$VendorEffect;->applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect$VendorEffect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
    .registers 4

    .line 1246
    const-wide/16 v0, 0x800

    invoke-virtual {p1, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result p1

    return p1
.end method

.method public blacklist computeCreateWaveformOffOnTimingsOrNull()[J
    .registers 2

    .line 1221
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cropToLengthOrNull(I)Landroid/os/VibrationEffect;
    .registers 2

    .line 1235
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1353
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1317
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1318
    return v0

    .line 1320
    :cond_4
    instance-of v1, p1, Landroid/os/VibrationEffect$VendorEffect;

    const/4 v2, 0x0

    if-eqz v1, :cond_32

    check-cast p1, Landroid/os/VibrationEffect$VendorEffect;

    .line 1323
    iget v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    iget v3, p1, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    if-ne v1, v3, :cond_30

    iget v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    iget v3, p1, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    .line 1324
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_30

    iget v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    iget v3, p1, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    .line 1325
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    iget-object p1, p1, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    .line 1326
    invoke-static {v1, p1}, Landroid/os/VibrationEffect$VendorEffect;->isPersistableBundleEquals(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result p1

    if-eqz p1, :cond_30

    goto :goto_31

    :cond_30
    move v0, v2

    .line 1323
    :goto_31
    return v0

    .line 1321
    :cond_32
    return v2
.end method

.method public blacklist getAdaptiveScale()F
    .registers 2

    .line 1214
    iget v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    return v0
.end method

.method public blacklist getDuration()J
    .registers 3

    .line 1240
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getEffectStrength()I
    .registers 2

    .line 1206
    iget v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    return v0
.end method

.method public blacklist getScale()F
    .registers 2

    .line 1210
    iget v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    return v0
.end method

.method public blacklist getVendorData()Landroid/os/PersistableBundle;
    .registers 2

    .line 1202
    iget-object v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1332
    iget-object v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .registers 2

    .line 1252
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resolve(I)Landroid/os/VibrationEffect$VendorEffect;
    .registers 2

    .line 1259
    return-object p0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/VibrationEffect;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1171
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$VendorEffect;->resolve(I)Landroid/os/VibrationEffect$VendorEffect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/VibrationEffect$VendorEffect;
    .registers 6

    .line 1279
    iget v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_9

    .line 1280
    return-object p0

    .line 1282
    :cond_9
    new-instance v0, Landroid/os/VibrationEffect$VendorEffect;

    iget-object v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    iget v2, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    iget v3, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/os/VibrationEffect$VendorEffect;-><init>(Landroid/os/PersistableBundle;IFF)V

    .line 1284
    invoke-virtual {v0}, Landroid/os/VibrationEffect$VendorEffect;->validate()V

    .line 1285
    return-object v0
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/VibrationEffect;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1171
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$VendorEffect;->scale(F)Landroid/os/VibrationEffect$VendorEffect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scaleLinearly(F)Landroid/os/VibrationEffect;
    .registers 2

    .line 1292
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$VendorEffect;->scale(F)Landroid/os/VibrationEffect$VendorEffect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .registers 6

    .line 1345
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    .line 1347
    invoke-virtual {v1}, Landroid/os/PersistableBundle;->toShortString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    invoke-static {v2}, Landroid/os/VibrationEffect$VendorEffect;->effectStrengthToString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    .line 1348
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 1345
    const-string/jumbo v2, "vendorEffect=%s, strength=%s, scale=%.2f, adaptiveScale=%.2f"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1337
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v1, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    iget v2, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    .line 1339
    invoke-static {v2}, Landroid/os/VibrationEffect$VendorEffect;->effectStrengthToString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 1337
    const-string v2, "VendorEffect{vendorData=%s, strength=%s, scale=%.2f, adaptiveScale=%.2f}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate()V
    .registers 3

    .line 1227
    iget-object v0, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Vendor effect bundle must be non-empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1229
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1358
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1359
    iget-object p2, p0, Landroid/os/VibrationEffect$VendorEffect;->mVendorData:Landroid/os/PersistableBundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 1360
    iget p2, p0, Landroid/os/VibrationEffect$VendorEffect;->mEffectStrength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1361
    iget p2, p0, Landroid/os/VibrationEffect$VendorEffect;->mScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1362
    iget p2, p0, Landroid/os/VibrationEffect$VendorEffect;->mAdaptiveScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1363
    return-void
.end method
