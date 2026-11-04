.class public final Landroid/service/notification/ZenDeviceEffects;
.super Ljava/lang/Object;
.source "ZenDeviceEffects.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenDeviceEffects$Builder;,
        Landroid/service/notification/ZenDeviceEffects$ModifiableField;
    }
.end annotation


# static fields
.field private static final blacklist BRIGHTNESS_CAP_MAX:F = 1.0f

.field private static final blacklist BRIGHTNESS_CAP_MIN:F = 0.0f

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/ZenDeviceEffects;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FIELD_BRIGHTNESS_CAP:I = 0x1000

.field public static final blacklist FIELD_DIM_WALLPAPER:I = 0x4

.field public static final blacklist FIELD_DISABLE_AUTO_BRIGHTNESS:I = 0x10

.field public static final blacklist FIELD_DISABLE_TAP_TO_WAKE:I = 0x20

.field public static final blacklist FIELD_DISABLE_TILT_TO_WAKE:I = 0x40

.field public static final blacklist FIELD_DISABLE_TOUCH:I = 0x80

.field public static final blacklist FIELD_EXTRA_EFFECTS:I = 0x400

.field public static final blacklist FIELD_GRAYSCALE:I = 0x1

.field public static final blacklist FIELD_MAXIMIZE_DOZE:I = 0x200

.field public static final blacklist FIELD_MINIMIZE_RADIO_USAGE:I = 0x100

.field public static final blacklist FIELD_NIGHT_LIGHT:I = 0x800

.field public static final blacklist FIELD_NIGHT_MODE:I = 0x8

.field public static final blacklist FIELD_SUPPRESS_AMBIENT_DISPLAY:I = 0x2

.field private static final blacklist MAX_EFFECTS_LENGTH:I = 0x7d0


# instance fields
.field private final blacklist mBrightnessCap:Ljava/lang/Float;

.field private final blacklist mDimWallpaper:Z

.field private final blacklist mDisableAutoBrightness:Z

.field private final blacklist mDisableTapToWake:Z

.field private final blacklist mDisableTiltToWake:Z

.field private final blacklist mDisableTouch:Z

.field private final blacklist mExtraEffects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGrayscale:Z

.field private final blacklist mMaximizeDoze:Z

.field private final blacklist mMinimizeRadioUsage:Z

.field private final blacklist mNightLight:Z

.field private final blacklist mNightMode:Z

.field private final blacklist mSuppressAmbientDisplay:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 425
    new-instance v0, Landroid/service/notification/ZenDeviceEffects$1;

    invoke-direct {v0}, Landroid/service/notification/ZenDeviceEffects$1;-><init>()V

    sput-object v0, Landroid/service/notification/ZenDeviceEffects;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ZZZZZZZZZZZLjava/lang/Float;Ljava/util/Set;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZZZZZZ",
            "Ljava/lang/Float;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects;->mGrayscale:Z

    .line 156
    iput-boolean p2, p0, Landroid/service/notification/ZenDeviceEffects;->mSuppressAmbientDisplay:Z

    .line 157
    iput-boolean p3, p0, Landroid/service/notification/ZenDeviceEffects;->mDimWallpaper:Z

    .line 158
    iput-boolean p4, p0, Landroid/service/notification/ZenDeviceEffects;->mNightMode:Z

    .line 159
    iput-boolean p5, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableAutoBrightness:Z

    .line 160
    iput-boolean p6, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTapToWake:Z

    .line 161
    iput-boolean p7, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTiltToWake:Z

    .line 162
    iput-boolean p8, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTouch:Z

    .line 163
    iput-boolean p9, p0, Landroid/service/notification/ZenDeviceEffects;->mMinimizeRadioUsage:Z

    .line 164
    iput-boolean p10, p0, Landroid/service/notification/ZenDeviceEffects;->mMaximizeDoze:Z

    .line 165
    iput-boolean p11, p0, Landroid/service/notification/ZenDeviceEffects;->mNightLight:Z

    .line 166
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->applyBrightnessClampingForModes()Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 p12, 0x0

    :goto_21
    iput-object p12, p0, Landroid/service/notification/ZenDeviceEffects;->mBrightnessCap:Ljava/lang/Float;

    .line 167
    invoke-static {p13}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    .line 168
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZZZZZZZZZZLjava/lang/Float;Ljava/util/Set;Landroid/service/notification/ZenDeviceEffects-IA;)V
    .registers 15

    invoke-direct/range {p0 .. p13}, Landroid/service/notification/ZenDeviceEffects;-><init>(ZZZZZZZZZZZLjava/lang/Float;Ljava/util/Set;)V

    return-void
.end method

.method public static blacklist fieldsToString(I)Ljava/lang/String;
    .registers 3

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 250
    const-string v1, "FIELD_GRAYSCALE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_e
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_17

    .line 253
    const-string v1, "FIELD_SUPPRESS_AMBIENT_DISPLAY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_17
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_20

    .line 256
    const-string v1, "FIELD_DIM_WALLPAPER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_20
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_29

    .line 259
    const-string v1, "FIELD_NIGHT_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_29
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_32

    .line 262
    const-string v1, "FIELD_DISABLE_AUTO_BRIGHTNESS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_32
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_3b

    .line 265
    const-string v1, "FIELD_DISABLE_TAP_TO_WAKE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_3b
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_44

    .line 268
    const-string v1, "FIELD_DISABLE_TILT_TO_WAKE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_44
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_4d

    .line 271
    const-string v1, "FIELD_DISABLE_TOUCH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_4d
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_56

    .line 274
    const-string v1, "FIELD_MINIMIZE_RADIO_USAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_56
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_5f

    .line 277
    const-string v1, "FIELD_MAXIMIZE_DOZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_5f
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_68

    .line 280
    const-string v1, "FIELD_NIGHT_LIGHT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_68
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_71

    .line 283
    const-string v1, "FIELD_BRIGHTNESS_CAP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_71
    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_7a

    .line 286
    const-string p0, "FIELD_EXTRA_EFFECTS"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_7a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ","

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 189
    instance-of v0, p1, Landroid/service/notification/ZenDeviceEffects;

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    move-object v0, p1

    check-cast v0, Landroid/service/notification/ZenDeviceEffects;

    .line 190
    const/4 v2, 0x1

    if-ne p1, p0, :cond_c

    return v2

    .line 192
    :cond_c
    iget-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects;->mGrayscale:Z

    iget-boolean v3, v0, Landroid/service/notification/ZenDeviceEffects;->mGrayscale:Z

    if-ne p1, v3, :cond_64

    iget-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects;->mSuppressAmbientDisplay:Z

    iget-boolean v3, v0, Landroid/service/notification/ZenDeviceEffects;->mSuppressAmbientDisplay:Z

    if-ne p1, v3, :cond_64

    iget-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects;->mDimWallpaper:Z

    iget-boolean v3, v0, Landroid/service/notification/ZenDeviceEffects;->mDimWallpaper:Z

    if-ne p1, v3, :cond_64

    iget-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects;->mNightMode:Z

    iget-boolean v3, v0, Landroid/service/notification/ZenDeviceEffects;->mNightMode:Z

    if-ne p1, v3, :cond_64

    iget-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableAutoBrightness:Z

    iget-boolean v3, v0, Landroid/service/notification/ZenDeviceEffects;->mDisableAutoBrightness:Z

    if-ne p1, v3, :cond_64

    iget-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTapToWake:Z

    iget-boolean v3, v0, Landroid/service/notification/ZenDeviceEffects;->mDisableTapToWake:Z

    if-ne p1, v3, :cond_64

    iget-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTiltToWake:Z

    iget-boolean v3, v0, Landroid/service/notification/ZenDeviceEffects;->mDisableTiltToWake:Z

    if-ne p1, v3, :cond_64

    iget-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTouch:Z

    iget-boolean v3, v0, Landroid/service/notification/ZenDeviceEffects;->mDisableTouch:Z

    if-ne p1, v3, :cond_64

    iget-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects;->mMinimizeRadioUsage:Z

    iget-boolean v3, v0, Landroid/service/notification/ZenDeviceEffects;->mMinimizeRadioUsage:Z

    if-ne p1, v3, :cond_64

    iget-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects;->mMaximizeDoze:Z

    iget-boolean v3, v0, Landroid/service/notification/ZenDeviceEffects;->mMaximizeDoze:Z

    if-ne p1, v3, :cond_64

    iget-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects;->mNightLight:Z

    iget-boolean v3, v0, Landroid/service/notification/ZenDeviceEffects;->mNightLight:Z

    if-ne p1, v3, :cond_64

    iget-object p1, p0, Landroid/service/notification/ZenDeviceEffects;->mBrightnessCap:Ljava/lang/Float;

    iget-object v3, v0, Landroid/service/notification/ZenDeviceEffects;->mBrightnessCap:Ljava/lang/Float;

    .line 203
    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_64

    iget-object p1, p0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    iget-object v0, v0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    .line 204
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_64

    move v1, v2

    goto :goto_65

    :cond_64
    nop

    .line 192
    :goto_65
    return v1

    .line 189
    :cond_66
    return v1
.end method

.method public blacklist getBrightnessCap()Ljava/lang/Float;
    .registers 2

    .line 388
    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects;->mBrightnessCap:Ljava/lang/Float;

    return-object v0
.end method

.method public blacklist getExtraEffects()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist hasEffects()Z
    .registers 2

    .line 408
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mGrayscale:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mSuppressAmbientDisplay:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDimWallpaper:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mNightMode:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableAutoBrightness:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTapToWake:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTiltToWake:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTouch:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mMinimizeRadioUsage:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mMaximizeDoze:Z

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mNightLight:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects;->mBrightnessCap:Ljava/lang/Float;

    if-nez v0, :cond_3b

    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    .line 420
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v0, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v0, 0x1

    .line 408
    :goto_3c
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 15

    .line 209
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mGrayscale:Z

    .line 210
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mSuppressAmbientDisplay:Z

    .line 211
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDimWallpaper:Z

    .line 212
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mNightMode:Z

    .line 213
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableAutoBrightness:Z

    .line 214
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTapToWake:Z

    .line 215
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTiltToWake:Z

    .line 216
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTouch:Z

    .line 217
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mMinimizeRadioUsage:Z

    .line 218
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mMaximizeDoze:Z

    .line 219
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mNightLight:Z

    .line 220
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-object v12, p0, Landroid/service/notification/ZenDeviceEffects;->mBrightnessCap:Ljava/lang/Float;

    iget-object v13, p0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    .line 209
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist shouldDimWallpaper()Z
    .registers 2

    .line 310
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDimWallpaper:Z

    return v0
.end method

.method public blacklist shouldDisableAutoBrightness()Z
    .registers 2

    .line 324
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableAutoBrightness:Z

    return v0
.end method

.method public blacklist shouldDisableTapToWake()Z
    .registers 2

    .line 332
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTapToWake:Z

    return v0
.end method

.method public blacklist shouldDisableTiltToWake()Z
    .registers 2

    .line 340
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTiltToWake:Z

    return v0
.end method

.method public blacklist shouldDisableTouch()Z
    .registers 2

    .line 348
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTouch:Z

    return v0
.end method

.method public whitelist shouldDisplayGrayscale()Z
    .registers 2

    .line 296
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mGrayscale:Z

    return v0
.end method

.method public blacklist shouldMaximizeDoze()Z
    .registers 2

    .line 366
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mMaximizeDoze:Z

    return v0
.end method

.method public blacklist shouldMinimizeRadioUsage()Z
    .registers 2

    .line 357
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mMinimizeRadioUsage:Z

    return v0
.end method

.method public whitelist shouldSuppressAmbientDisplay()Z
    .registers 2

    .line 305
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mSuppressAmbientDisplay:Z

    return v0
.end method

.method public blacklist shouldUseNightLight()Z
    .registers 2

    .line 375
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mNightLight:Z

    return v0
.end method

.method public whitelist shouldUseNightMode()Z
    .registers 2

    .line 315
    iget-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects;->mNightMode:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mGrayscale:Z

    if-eqz v1, :cond_10

    const-string v1, "grayscale"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_10
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mSuppressAmbientDisplay:Z

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "suppressAmbientDisplay"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_1a
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mDimWallpaper:Z

    if-eqz v1, :cond_23

    const-string v1, "dimWallpaper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_23
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mNightMode:Z

    if-eqz v1, :cond_2d

    const-string/jumbo v1, "nightMode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_2d
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableAutoBrightness:Z

    if-eqz v1, :cond_36

    const-string v1, "disableAutoBrightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_36
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTapToWake:Z

    if-eqz v1, :cond_3f

    const-string v1, "disableTapToWake"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_3f
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTiltToWake:Z

    if-eqz v1, :cond_48

    const-string v1, "disableTiltToWake"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_48
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTouch:Z

    if-eqz v1, :cond_51

    const-string v1, "disableTouch"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_51
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mMinimizeRadioUsage:Z

    if-eqz v1, :cond_5a

    const-string v1, "minimizeRadioUsage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_5a
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mMaximizeDoze:Z

    if-eqz v1, :cond_63

    const-string v1, "maximizeDoze"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_63
    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects;->mNightLight:Z

    if-eqz v1, :cond_6d

    const-string/jumbo v1, "nightLight"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_6d
    iget-object v1, p0, Landroid/service/notification/ZenDeviceEffects;->mBrightnessCap:Ljava/lang/Float;

    if-eqz v1, :cond_8f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brightnessCap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenDeviceEffects;->mBrightnessCap:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_8f
    iget-object v1, p0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const-string v2, "]"

    if-lez v1, :cond_bb

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extraEffects=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    iget-object v4, p0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_bb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-static {v3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate()V
    .registers 4

    .line 172
    nop

    .line 173
    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 174
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 175
    goto :goto_8

    .line 176
    :cond_1a
    const/16 v0, 0x7d0

    if-gt v1, v0, :cond_43

    .line 181
    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects;->mBrightnessCap:Ljava/lang/Float;

    if-eqz v0, :cond_42

    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects;->mBrightnessCap:Ljava/lang/Float;

    .line 182
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_3a

    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects;->mBrightnessCap:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3a

    goto :goto_42

    .line 183
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Brightness cap must be between 0f and 1f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_42
    :goto_42
    return-void

    .line 177
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Total size of extra effects must be at most 2000 characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 458
    iget-boolean p2, p0, Landroid/service/notification/ZenDeviceEffects;->mGrayscale:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 459
    iget-boolean p2, p0, Landroid/service/notification/ZenDeviceEffects;->mSuppressAmbientDisplay:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 460
    iget-boolean p2, p0, Landroid/service/notification/ZenDeviceEffects;->mDimWallpaper:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 461
    iget-boolean p2, p0, Landroid/service/notification/ZenDeviceEffects;->mNightMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 462
    iget-boolean p2, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableAutoBrightness:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 463
    iget-boolean p2, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTapToWake:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 464
    iget-boolean p2, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTiltToWake:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 465
    iget-boolean p2, p0, Landroid/service/notification/ZenDeviceEffects;->mDisableTouch:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 466
    iget-boolean p2, p0, Landroid/service/notification/ZenDeviceEffects;->mMinimizeRadioUsage:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 467
    iget-boolean p2, p0, Landroid/service/notification/ZenDeviceEffects;->mMaximizeDoze:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 468
    iget-boolean p2, p0, Landroid/service/notification/ZenDeviceEffects;->mNightLight:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 469
    iget-object p2, p0, Landroid/service/notification/ZenDeviceEffects;->mBrightnessCap:Ljava/lang/Float;

    const/4 v0, 0x0

    if-eqz p2, :cond_4a

    .line 470
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 471
    iget-object p2, p0, Landroid/service/notification/ZenDeviceEffects;->mBrightnessCap:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_4d

    .line 473
    :cond_4a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 475
    :goto_4d
    iget-object p2, p0, Landroid/service/notification/ZenDeviceEffects;->mExtraEffects:Ljava/util/Set;

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 476
    return-void
.end method
