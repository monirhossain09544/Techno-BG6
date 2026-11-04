.class public Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;
.super Landroid/service/notification/ZenModeDiff$BaseDiff;
.source "ZenModeDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceEffectsDiff"
.end annotation


# static fields
.field public static final blacklist FIELD_BRIGHTNESS_CAP:Ljava/lang/String; = "mBrightnessCap"

.field public static final blacklist FIELD_DIM_WALLPAPER:Ljava/lang/String; = "mDimWallpaper"

.field public static final blacklist FIELD_DISABLE_AUTO_BRIGHTNESS:Ljava/lang/String; = "mDisableAutoBrightness"

.field public static final blacklist FIELD_DISABLE_TAP_TO_WAKE:Ljava/lang/String; = "mDisableTapToWake"

.field public static final blacklist FIELD_DISABLE_TILT_TO_WAKE:Ljava/lang/String; = "mDisableTiltToWake"

.field public static final blacklist FIELD_DISABLE_TOUCH:Ljava/lang/String; = "mDisableTouch"

.field public static final blacklist FIELD_EXTRA_EFFECTS:Ljava/lang/String; = "mExtraEffects"

.field public static final blacklist FIELD_GRAYSCALE:Ljava/lang/String; = "mGrayscale"

.field public static final blacklist FIELD_MAXIMIZE_DOZE:Ljava/lang/String; = "mMaximizeDoze"

.field public static final blacklist FIELD_MINIMIZE_RADIO_USAGE:Ljava/lang/String; = "mMinimizeRadioUsage"

.field public static final blacklist FIELD_NIGHT_LIGHT:Ljava/lang/String; = "mNightLight"

.field public static final blacklist FIELD_NIGHT_MODE:Ljava/lang/String; = "mNightMode"

.field public static final blacklist FIELD_SUPPRESS_AMBIENT_DISPLAY:Ljava/lang/String; = "mSuppressAmbientDisplay"


# direct methods
.method public constructor blacklist <init>(Landroid/service/notification/ZenDeviceEffects;Landroid/service/notification/ZenDeviceEffects;)V
    .registers 6

    .line 621
    invoke-direct {p0, p1, p2}, Landroid/service/notification/ZenModeDiff$BaseDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 623
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    .line 624
    return-void

    .line 626
    :cond_8
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->hasExistenceChange()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 629
    return-void

    .line 633
    :cond_f
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v1

    if-eq v0, v1, :cond_33

    .line 634
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 635
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 634
    const-string v1, "mGrayscale"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 637
    :cond_33
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v1

    if-eq v0, v1, :cond_57

    .line 638
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 639
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 640
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 638
    const-string v1, "mSuppressAmbientDisplay"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 642
    :cond_57
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v1

    if-eq v0, v1, :cond_7b

    .line 643
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 644
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 643
    const-string v1, "mDimWallpaper"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 646
    :cond_7b
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v1

    if-eq v0, v1, :cond_9f

    .line 647
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 648
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 647
    const-string v1, "mNightMode"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 650
    :cond_9f
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v1

    if-eq v0, v1, :cond_c3

    .line 651
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 652
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 653
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 651
    const-string v1, "mDisableAutoBrightness"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 655
    :cond_c3
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v1

    if-eq v0, v1, :cond_e7

    .line 656
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 657
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 656
    const-string v1, "mDisableTapToWake"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 659
    :cond_e7
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v1

    if-eq v0, v1, :cond_10b

    .line 660
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 661
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 662
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 660
    const-string v1, "mDisableTiltToWake"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 664
    :cond_10b
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v1

    if-eq v0, v1, :cond_12f

    .line 665
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 666
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 665
    const-string v1, "mDisableTouch"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 668
    :cond_12f
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v1

    if-eq v0, v1, :cond_153

    .line 669
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 670
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 671
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 669
    const-string v1, "mMinimizeRadioUsage"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 673
    :cond_153
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v1

    if-eq v0, v1, :cond_177

    .line 674
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 675
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 674
    const-string v1, "mMaximizeDoze"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 677
    :cond_177
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v1

    if-eq v0, v1, :cond_19b

    .line 678
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 680
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 678
    const-string v1, "mNightLight"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 682
    :cond_19b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->applyBrightnessClampingForModes()Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 683
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->getBrightnessCap()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->getBrightnessCap()Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c1

    .line 684
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 686
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->getBrightnessCap()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->getBrightnessCap()Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 684
    const-string v1, "mBrightnessCap"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 688
    :cond_1c1
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e1

    .line 689
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object p1

    .line 690
    invoke-virtual {p2}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 689
    const-string p1, "mExtraEffects"

    invoke-virtual {p0, p1, v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 692
    :cond_1e1
    return-void
.end method


# virtual methods
.method public blacklist hasDiff()Z
    .registers 2

    .line 699
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->hasExistenceChange()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->hasFieldDiffs()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZenDeviceEffectsDiff{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->hasDiff()Z

    move-result v1

    if-nez v1, :cond_13

    .line 706
    const-string/jumbo v1, "no changes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    :cond_13
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->hasExistenceChange()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 711
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->wasAdded()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 712
    const-string v1, "added"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 713
    :cond_25
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->wasRemoved()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 714
    const-string/jumbo v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :cond_31
    :goto_31
    nop

    .line 720
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->fieldNamesWithDiff()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 721
    invoke-virtual {p0, v3}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->getDiffForField(Ljava/lang/String;)Landroid/service/notification/ZenModeDiff$FieldDiff;

    move-result-object v4

    .line 722
    if-nez v4, :cond_4e

    .line 724
    goto :goto_3b

    .line 726
    :cond_4e
    if-eqz v2, :cond_52

    .line 727
    const/4 v2, 0x0

    goto :goto_57

    .line 729
    :cond_52
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    :goto_57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 735
    goto :goto_3b

    .line 737
    :cond_63
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
