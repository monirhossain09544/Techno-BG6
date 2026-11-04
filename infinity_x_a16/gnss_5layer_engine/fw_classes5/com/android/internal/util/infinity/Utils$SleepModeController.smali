.class public Lcom/android/internal/util/infinity/Utils$SleepModeController;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/infinity/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SleepModeController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/infinity/Utils$SleepModeController$SettingsObserver;
    }
.end annotation


# static fields
.field public static final blacklist SLEEP_MODE_TURN_OFF:Ljava/lang/String; = "android.intent.action.SLEEP_MODE_TURN_OFF"

.field private static final blacklist SLEEP_NOTIFICATION_ID:I = 0x2d7

.field private static final blacklist TAG:Ljava/lang/String; = "SleepModeController"

.field private static blacklist mBluetoothState:Z

.field private static blacklist mCellularState:Z

.field private static blacklist mLocationState:I

.field private static blacklist mRingerState:I

.field private static blacklist mWifiState:Z

.field private static blacklist mZenState:I


# instance fields
.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private blacklist mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mNotificationManager:Landroid/app/NotificationManager;

.field private final blacklist mResources:Landroid/content/res/Resources;

.field private blacklist mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field private blacklist mSleepModeEnabled:Z

.field private blacklist mSubscriptionId:I

.field private blacklist mToast:Landroid/widget/Toast;

.field private final blacklist mUiContext:Landroid/content/Context;

.field private blacklist mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/util/infinity/Utils$SleepModeController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToast(Lcom/android/internal/util/infinity/Utils$SleepModeController;)Landroid/widget/Toast;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUiContext(Lcom/android/internal/util/infinity/Utils$SleepModeController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mUiContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmToast(Lcom/android/internal/util/infinity/Utils$SleepModeController;Landroid/widget/Toast;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misSensorEnabled(Lcom/android/internal/util/infinity/Utils$SleepModeController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->isSensorEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetSensorEnabled(Lcom/android/internal/util/infinity/Utils$SleepModeController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->setSensorEnabled(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSleepMode(Lcom/android/internal/util/infinity/Utils$SleepModeController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->setSleepMode(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mHandler:Landroid/os/Handler;

    .line 166
    iput-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    .line 167
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mUiContext:Landroid/content/Context;

    .line 168
    iget-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mAudioManager:Landroid/media/AudioManager;

    .line 169
    iget-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 170
    iget-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 171
    iget-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    const-string v0, "sensor_privacy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorPrivacyManager;

    iput-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 172
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 173
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mSubscriptionId:I

    .line 174
    iget-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mResources:Landroid/content/res/Resources;

    .line 176
    iget-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string v1, "sleep_mode_enabled"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6d

    move v2, v0

    :cond_6d
    iput-boolean v2, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mSleepModeEnabled:Z

    .line 179
    new-instance p1, Lcom/android/internal/util/infinity/Utils$SleepModeController$SettingsObserver;

    invoke-direct {p1, p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController$SettingsObserver;-><init>(Lcom/android/internal/util/infinity/Utils$SleepModeController;)V

    .line 180
    invoke-virtual {p1}, Lcom/android/internal/util/infinity/Utils$SleepModeController$SettingsObserver;->observe()V

    .line 181
    invoke-virtual {p1}, Lcom/android/internal/util/infinity/Utils$SleepModeController$SettingsObserver;->update()V

    .line 182
    return-void
.end method

.method private blacklist addNotification()V
    .registers 7

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SLEEP_MODE_TURN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 447
    iget-object v1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    const/high16 v2, 0xc000000

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 450
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->SLEEP:Ljava/lang/String;

    invoke-direct {v1, v2, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mResources:Landroid/content/res/Resources;

    .line 451
    const v4, 0x1040a1a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mResources:Landroid/content/res/Resources;

    .line 452
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mResources:Landroid/content/res/Resources;

    .line 453
    const v4, 0x1040a19

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 454
    const v2, 0x10805f9

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 456
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 457
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 458
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x2d7

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 462
    return-void
.end method

.method private blacklist disable()V
    .registers 8

    .line 385
    invoke-static {}, Landroid/app/ActivityManager;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 388
    :cond_7
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sleep_mode_wifi_toggle"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_1a

    move v0, v2

    goto :goto_1b

    :cond_1a
    move v0, v1

    .line 390
    :goto_1b
    if-eqz v0, :cond_2a

    sget-boolean v0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mWifiState:Z

    invoke-direct {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->isWifiEnabled()Z

    move-result v4

    if-eq v0, v4, :cond_2a

    .line 391
    sget-boolean v0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mWifiState:Z

    invoke-direct {p0, v0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->setWifiEnabled(Z)V

    .line 395
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sleep_mode_bluetooth_toggle"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_3a

    move v0, v2

    goto :goto_3b

    :cond_3a
    move v0, v1

    .line 397
    :goto_3b
    if-eqz v0, :cond_4a

    sget-boolean v0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mBluetoothState:Z

    invoke-direct {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->isBluetoothEnabled()Z

    move-result v4

    if-eq v0, v4, :cond_4a

    .line 398
    sget-boolean v0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mBluetoothState:Z

    invoke-direct {p0, v0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->setBluetoothEnabled(Z)V

    .line 402
    :cond_4a
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sleep_mode_cellular_toggle"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_5a

    move v0, v2

    goto :goto_5b

    :cond_5a
    move v0, v1

    .line 404
    :goto_5b
    if-eqz v0, :cond_72

    sget-boolean v0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mCellularState:Z

    invoke-direct {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v4

    if-eq v0, v4, :cond_72

    .line 405
    invoke-direct {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    sget-boolean v4, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mCellularState:Z

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 409
    :cond_72
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sleep_mode_location_toggle"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_82

    move v0, v2

    goto :goto_83

    :cond_82
    move v0, v1

    .line 411
    :goto_83
    if-eqz v0, :cond_92

    sget v0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mLocationState:I

    invoke-direct {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->getLocationMode()I

    move-result v4

    if-eq v0, v4, :cond_92

    .line 412
    sget v0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mLocationState:I

    invoke-direct {p0, v0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->setLocationMode(I)V

    .line 416
    :cond_92
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sleep_mode_sensors_toggle"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_a2

    move v0, v2

    goto :goto_a3

    :cond_a2
    move v0, v1

    .line 419
    :goto_a3
    if-eqz v0, :cond_b4

    .line 420
    invoke-direct {p0, v2}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->setSensorEnabled(Z)V

    .line 421
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/util/infinity/Utils$SleepModeController$1;

    invoke-direct {v4, p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController$1;-><init>(Lcom/android/internal/util/infinity/Utils$SleepModeController;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    :cond_b4
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sleep_mode_ringer_mode"

    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 434
    if-eqz v0, :cond_dc

    sget v0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mRingerState:I

    invoke-direct {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->getRingerModeInternal()I

    move-result v1

    if-ne v0, v1, :cond_d2

    sget v0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mZenState:I

    .line 435
    invoke-direct {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->getZenMode()I

    move-result v1

    if-eq v0, v1, :cond_dc

    .line 436
    :cond_d2
    sget v0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mRingerState:I

    invoke-direct {p0, v0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->setRingerModeInternal(I)V

    .line 437
    sget v0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mZenState:I

    invoke-direct {p0, v0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->setZenMode(I)V

    .line 440
    :cond_dc
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mResources:Landroid/content/res/Resources;

    const v1, 0x1040a17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->showToast(Ljava/lang/String;I)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x2d7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 442
    return-void
.end method

.method private blacklist enable()V
    .registers 6

    .line 321
    invoke-static {}, Landroid/app/ActivityManager;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 324
    :cond_7
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sleep_mode_wifi_toggle"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_1a

    move v0, v2

    goto :goto_1b

    :cond_1a
    move v0, v1

    .line 326
    :goto_1b
    if-eqz v0, :cond_26

    .line 327
    invoke-direct {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->isWifiEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mWifiState:Z

    .line 328
    invoke-direct {p0, v1}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->setWifiEnabled(Z)V

    .line 332
    :cond_26
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sleep_mode_bluetooth_toggle"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_36

    move v0, v2

    goto :goto_37

    :cond_36
    move v0, v1

    .line 334
    :goto_37
    if-eqz v0, :cond_42

    .line 335
    invoke-direct {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->isBluetoothEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mBluetoothState:Z

    .line 336
    invoke-direct {p0, v1}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->setBluetoothEnabled(Z)V

    .line 340
    :cond_42
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sleep_mode_cellular_toggle"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_52

    move v0, v2

    goto :goto_53

    :cond_52
    move v0, v1

    .line 342
    :goto_53
    if-eqz v0, :cond_66

    .line 343
    invoke-direct {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mCellularState:Z

    .line 344
    invoke-direct {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 348
    :cond_66
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sleep_mode_location_toggle"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_76

    move v0, v2

    goto :goto_77

    :cond_76
    move v0, v1

    .line 350
    :goto_77
    if-eqz v0, :cond_82

    .line 351
    invoke-direct {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->getLocationMode()I

    move-result v0

    sput v0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mLocationState:I

    .line 352
    invoke-direct {p0, v1}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->setLocationMode(I)V

    .line 356
    :cond_82
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sleep_mode_sensors_toggle"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_92

    move v0, v2

    goto :goto_93

    :cond_92
    move v0, v1

    .line 358
    :goto_93
    if-eqz v0, :cond_98

    .line 359
    invoke-direct {p0, v1}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->setSensorEnabled(Z)V

    .line 363
    :cond_98
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sleep_mode_ringer_mode"

    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 365
    if-eqz v0, :cond_ce

    .line 366
    invoke-direct {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->getRingerModeInternal()I

    move-result v3

    sput v3, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mRingerState:I

    .line 367
    invoke-direct {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->getZenMode()I

    move-result v3

    sput v3, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mZenState:I

    .line 368
    if-ne v0, v2, :cond_bb

    .line 369
    invoke-direct {p0, v2}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->setRingerModeInternal(I)V

    .line 370
    invoke-direct {p0, v1}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->setZenMode(I)V

    goto :goto_ce

    .line 371
    :cond_bb
    const/4 v3, 0x2

    if-ne v0, v3, :cond_c5

    .line 372
    invoke-direct {p0, v3}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->setRingerModeInternal(I)V

    .line 373
    invoke-direct {p0, v2}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->setZenMode(I)V

    goto :goto_ce

    .line 374
    :cond_c5
    const/4 v3, 0x3

    if-ne v0, v3, :cond_ce

    .line 375
    invoke-direct {p0, v1}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->setRingerModeInternal(I)V

    .line 376
    invoke-direct {p0, v1}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->setZenMode(I)V

    .line 380
    :cond_ce
    :goto_ce
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mResources:Landroid/content/res/Resources;

    const v1, 0x1040a18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->showToast(Ljava/lang/String;I)V

    .line 381
    invoke-direct {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->addNotification()V

    .line 382
    return-void
.end method

.method private blacklist getLocationMode()I
    .registers 5

    .line 226
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string v3, "location_mode"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private blacklist getRingerModeInternal()I
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 301
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mAudioManager:Landroid/media/AudioManager;

    .line 304
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_17

    return v0

    .line 305
    :catch_17
    move-exception v0

    .line 306
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 4

    .line 185
    iget v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mSubscriptionId:I

    .line 188
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 189
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 193
    :cond_c
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 194
    iget-object v1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v1

    .line 195
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v2

    if-nez v2, :cond_25

    .line 196
    const/4 v0, 0x0

    aget v0, v1, v0

    .line 200
    :cond_25
    iget-object v1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 201
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 200
    return-object v0
.end method

.method private blacklist getZenMode()I
    .registers 3

    .line 279
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_10

    .line 280
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 283
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_17

    return v0

    .line 284
    :catch_17
    move-exception v0

    .line 285
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist isBluetoothEnabled()Z
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_a

    .line 237
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 240
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 241
    :catch_11
    move-exception v0

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isSensorEnabled()Z
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    if-nez v0, :cond_10

    .line 259
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    const-string v1, "sensor_privacy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorPrivacyManager;

    iput-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 262
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0}, Landroid/hardware/SensorPrivacyManager;->isAllSensorPrivacyEnabled()Z

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_19

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 263
    :catch_19
    move-exception v0

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isWifiEnabled()Z
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_10

    .line 206
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 209
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_17

    return v0

    .line 210
    :catch_17
    move-exception v0

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist setBluetoothEnabled(Z)V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_a

    .line 248
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 251
    :cond_a
    if-eqz p1, :cond_12

    :try_start_c
    iget-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_17

    .line 252
    :cond_12
    iget-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_18

    .line 254
    :goto_17
    goto :goto_19

    .line 253
    :catch_18
    move-exception p1

    .line 255
    :goto_19
    return-void
.end method

.method private blacklist setLocationMode(I)V
    .registers 5

    .line 231
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 233
    return-void
.end method

.method private blacklist setRingerModeInternal(I)V
    .registers 4

    .line 311
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 312
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mAudioManager:Landroid/media/AudioManager;

    .line 315
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    .line 317
    goto :goto_17

    .line 316
    :catch_16
    move-exception p1

    .line 318
    :goto_17
    return-void
.end method

.method private blacklist setSensorEnabled(Z)V
    .registers 4

    .line 269
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    if-nez v0, :cond_10

    .line 270
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    const-string v1, "sensor_privacy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorPrivacyManager;

    iput-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 273
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    if-nez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    invoke-virtual {v0, p1}, Landroid/hardware/SensorPrivacyManager;->setAllSensorPrivacy(Z)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_1b

    .line 275
    goto :goto_1c

    .line 274
    :catch_1b
    move-exception p1

    .line 276
    :goto_1c
    return-void
.end method

.method private blacklist setSleepMode(Z)V
    .registers 3

    .line 479
    iget-boolean v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mSleepModeEnabled:Z

    if-ne v0, p1, :cond_5

    .line 480
    return-void

    .line 483
    :cond_5
    iput-boolean p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mSleepModeEnabled:Z

    .line 485
    iget-boolean p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mSleepModeEnabled:Z

    if-eqz p1, :cond_f

    .line 486
    invoke-direct {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->enable()V

    goto :goto_12

    .line 488
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->disable()V

    .line 490
    :goto_12
    return-void
.end method

.method private blacklist setWifiEnabled(Z)V
    .registers 4

    .line 216
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_10

    .line 217
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 220
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    .line 222
    goto :goto_17

    .line 221
    :catch_16
    move-exception p1

    .line 223
    :goto_17
    return-void
.end method

.method private blacklist setZenMode(I)V
    .registers 5

    .line 290
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_10

    .line 291
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 294
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "SleepModeController"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_19

    .line 296
    goto :goto_1a

    .line 295
    :catch_19
    move-exception p1

    .line 297
    :goto_1a
    return-void
.end method

.method private blacklist showToast(Ljava/lang/String;I)V
    .registers 5

    .line 465
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/util/infinity/Utils$SleepModeController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/util/infinity/Utils$SleepModeController$2;-><init>(Lcom/android/internal/util/infinity/Utils$SleepModeController;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 476
    return-void
.end method
