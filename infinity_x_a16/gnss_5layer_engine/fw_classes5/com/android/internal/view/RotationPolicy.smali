.class public final Lcom/android/internal/view/RotationPolicy;
.super Ljava/lang/Object;
.source "RotationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
    }
.end annotation


# static fields
.field private static final blacklist CURRENT_ROTATION:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "RotationPolicy"

.field private static blacklist sNaturalRotation:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/view/RotationPolicy;->sNaturalRotation:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static blacklist getNaturalRotation()I
    .registers 2

    .line 274
    sget v0, Lcom/android/internal/view/RotationPolicy;->sNaturalRotation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 275
    invoke-static {}, Lcom/android/internal/view/RotationPolicy;->getNaturalRotationConfig()I

    move-result v0

    sput v0, Lcom/android/internal/view/RotationPolicy;->sNaturalRotation:I

    .line 277
    :cond_b
    sget v0, Lcom/android/internal/view/RotationPolicy;->sNaturalRotation:I

    return v0
.end method

.method private static blacklist getNaturalRotationConfig()I
    .registers 3

    .line 281
    sget-object v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->ORIENTATION_0:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    .line 284
    invoke-static {}, Landroid/sysprop/SurfaceFlingerProperties;->primary_display_orientation()Ljava/util/Optional;

    move-result-object v1

    .line 285
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 286
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    .line 289
    :cond_12
    sget-object v1, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->ORIENTATION_90:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    if-ne v0, v1, :cond_18

    .line 290
    const/4 v0, 0x1

    return v0

    .line 292
    :cond_18
    sget-object v1, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->ORIENTATION_180:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    if-ne v0, v1, :cond_1e

    .line 293
    const/4 v0, 0x2

    return v0

    .line 295
    :cond_1e
    sget-object v1, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->ORIENTATION_270:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    if-ne v0, v1, :cond_24

    .line 296
    const/4 v0, 0x3

    return v0

    .line 299
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getRotationLockOrientation(Landroid/content/Context;)I
    .registers 5

    .line 81
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isCurrentRotationAllowed(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 82
    return v1

    .line 84
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 85
    nop

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p0

    .line 87
    const/4 v2, 0x2

    rem-int/2addr p0, v2

    const/4 v3, 0x1

    if-eqz p0, :cond_25

    move v1, v3

    .line 88
    :cond_25
    if-eqz v1, :cond_2a

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_2c

    :cond_2a
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 89
    :goto_2c
    if-eqz v1, :cond_31

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_33

    :cond_31
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 90
    :goto_33
    if-ge p0, v0, :cond_36

    move v2, v3

    :cond_36
    return v2
.end method

.method public static blacklist isCurrentRotationAllowed(Landroid/content/Context;)Z
    .registers 5

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    const-string v3, "accelerometer_rotation_angles"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1110019

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 205
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 207
    :try_start_1b
    invoke-interface {v1}, Landroid/view/IWindowManager;->getDefaultDisplayRotation()I

    move-result v1

    invoke-static {v1, v0, p0}, Lcom/android/internal/view/RotationPolicy;->isRotationAllowed(IIZ)Z

    move-result p0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_23} :catch_24

    return p0

    .line 209
    :catch_24
    move-exception p0

    .line 210
    const-string p0, "RotationPolicy"

    const-string v0, "Unable to getWindowManagerService.getDefaultDisplayRotation()"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isRotationAllowed(IIZ)Z
    .registers 4

    .line 181
    if-gez p1, :cond_a

    .line 183
    if-eqz p2, :cond_7

    .line 184
    const/16 p1, 0xf

    goto :goto_9

    .line 185
    :cond_7
    const/16 p1, 0xb

    :goto_9
    nop

    .line 187
    :cond_a
    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_28

    .line 197
    return p2

    .line 195
    :pswitch_10
    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_15

    move p2, v0

    :cond_15
    return p2

    .line 193
    :pswitch_16
    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_1b

    move p2, v0

    :cond_1b
    return p2

    .line 191
    :pswitch_1c
    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_21

    move p2, v0

    :cond_21
    return p2

    .line 189
    :pswitch_22
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_27

    move p2, v0

    :cond_27
    return p2

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1c
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method

.method public static blacklist isRotationLockToggleVisible(Landroid/content/Context;)Z
    .registers 4

    .line 97
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_rotation_lock_toggle_for_accessibility"

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    nop

    .line 97
    :goto_17
    return v1
.end method

.method public static blacklist isRotationLocked(Landroid/content/Context;)Z
    .registers 4

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method

.method public static blacklist isRotationSupported(Landroid/content/Context;)Z
    .registers 3

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 65
    const-string v1, "android.hardware.sensor.accelerometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 66
    const-string v1, "android.hardware.screen.portrait"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 67
    const-string v1, "android.hardware.screen.landscape"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111027b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    .line 65
    :goto_2c
    return p0
.end method

.method public static blacklist registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V
    .registers 3

    .line 248
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    .line 249
    return-void
.end method

.method public static blacklist registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V
    .registers 7

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_rotation_lock_toggle_for_accessibility"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p1, p1, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0, v3, p1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 263
    return-void
.end method

.method public static blacklist requestDeviceStateAutoRotateSettingChange(IZ)V
    .registers 3

    .line 110
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 111
    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->setDeviceStateAutoRotateSetting(IZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 114
    goto :goto_25

    .line 112
    :catch_8
    move-exception p0

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to save device state auto-rotate setting: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RotationPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_25
    return-void
.end method

.method public static blacklist setRotationAtAngleIfAllowed(ILjava/lang/String;)V
    .registers 3

    .line 152
    new-instance v0, Lcom/android/internal/view/RotationPolicy$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/view/RotationPolicy$1;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method

.method public static blacklist setRotationLock(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 4

    .line 130
    nop

    .line 129
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isCurrentRotationAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 130
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->useCurrentRotationOnRotationLockChange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_13

    .line 131
    :cond_e
    invoke-static {}, Lcom/android/internal/view/RotationPolicy;->getNaturalRotation()I

    move-result v0

    goto :goto_14

    .line 130
    :cond_13
    :goto_13
    const/4 v0, -0x1

    .line 132
    :goto_14
    invoke-static {p0, p1, v0, p2}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZILjava/lang/String;)V

    .line 133
    return-void
.end method

.method private static blacklist setRotationLock(ZILjava/lang/String;)V
    .registers 4

    .line 226
    new-instance v0, Lcom/android/internal/view/RotationPolicy$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/view/RotationPolicy$2;-><init>(ZILjava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 241
    return-void
.end method

.method public static blacklist setRotationLockAtAngle(Landroid/content/Context;ZILjava/lang/String;)V
    .registers 7

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x2

    const-string v2, "hide_rotation_lock_toggle_for_accessibility"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 144
    invoke-static {p1, p2, p3}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZILjava/lang/String;)V

    .line 145
    return-void
.end method

.method public static blacklist setRotationLockForAccessibility(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 5

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 173
    nop

    .line 172
    const-string v0, "hide_rotation_lock_toggle_for_accessibility"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 176
    invoke-static {}, Lcom/android/internal/view/RotationPolicy;->getNaturalRotation()I

    move-result p0

    invoke-static {p1, p0, p2}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZILjava/lang/String;)V

    .line 177
    return-void
.end method

.method public static blacklist unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V
    .registers 2

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object p1, p1, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 271
    return-void
.end method

.method public static blacklist useCurrentRotationOnRotationLockChange(Landroid/content/Context;)Z
    .registers 2

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11102ab

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
