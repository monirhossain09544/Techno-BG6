.class public Lcom/android/internal/util/infinity/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/infinity/Utils$SleepModeController;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist deviceHasFlashlight(Landroid/content/Context;)Z
    .registers 2

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.camera.flash"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist forceStopDefaultLauncher(Landroid/content/Context;)V
    .registers 3

    .line 524
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 526
    :try_start_8
    invoke-static {p0}, Lcom/android/internal/util/infinity/Utils;->getDefaultLauncher(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x2

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_12

    .line 527
    :catch_11
    move-exception p0

    :goto_12
    nop

    .line 528
    return-void
.end method

.method public static blacklist getDefaultLauncher(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 517
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    .line 518
    nop

    .line 519
    const-string v0, "android.app.role.HOME"

    invoke-virtual {p0, v0}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 518
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 520
    if-eqz p0, :cond_18

    goto :goto_1a

    :cond_18
    const-string p0, ""

    :goto_1a
    return-object p0
.end method

.method public static blacklist hasNavbarByDefault(Landroid/content/Context;)Z
    .registers 3

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111025b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 119
    const-string v0, "qemu.hw.mainkeys"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 121
    const/4 p0, 0x0

    goto :goto_24

    .line 122
    :cond_1b
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 123
    const/4 p0, 0x1

    .line 125
    :cond_24
    :goto_24
    return p0
.end method

.method public static blacklist isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 98
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 99
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_e

    return p0

    .line 100
    :catch_e
    move-exception p0

    .line 101
    return v0
.end method

.method public static blacklist isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 93
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/infinity/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static blacklist isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 4

    .line 79
    if-eqz p1, :cond_17

    .line 81
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 82
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_f} :catch_15

    if-nez p0, :cond_14

    if-nez p2, :cond_14

    .line 83
    return v0

    .line 87
    :cond_14
    goto :goto_17

    .line 85
    :catch_15
    move-exception p0

    .line 86
    return v0

    .line 89
    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist restartSystemUI()V
    .registers 1

    .line 129
    nop

    .line 130
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 132
    :try_start_b
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->restartSystemUI()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    .line 134
    goto :goto_10

    .line 133
    :catch_f
    move-exception v0

    .line 135
    :goto_10
    return-void
.end method

.method public static blacklist switchScreenOff(Landroid/content/Context;)V
    .registers 3

    .line 106
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 107
    if-eqz p0, :cond_11

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 110
    :cond_11
    return-void
.end method
