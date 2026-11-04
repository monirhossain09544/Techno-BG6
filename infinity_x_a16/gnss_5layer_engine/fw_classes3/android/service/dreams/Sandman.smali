.class public final Landroid/service/dreams/Sandman;
.super Ljava/lang/Object;
.source "Sandman.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Sandman"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static greylist-max-o isScreenSaverActivatedOnDock(Landroid/content/Context;)Z
    .registers 6

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 117
    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    .line 118
    :goto_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v3, "screensaver_activate_on_dock"

    const/4 v4, -0x2

    invoke-static {p0, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    return v1
.end method

.method private static greylist-max-o isScreenSaverEnabled(Landroid/content/Context;)Z
    .registers 6

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 109
    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    .line 110
    :goto_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v3, "screensaver_enabled"

    const/4 v4, -0x2

    invoke-static {p0, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    return v1
.end method

.method public static greylist-max-o shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    .line 49
    nop

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    .line 53
    if-eqz p0, :cond_22

    invoke-virtual {p0, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method private static greylist-max-o startDream(Landroid/content/Context;Z)V
    .registers 7

    .line 79
    const-string v0, "Sandman"

    :try_start_2
    const-string v1, "dreams"

    .line 80
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 79
    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_36

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v2

    if-nez v2, :cond_36

    .line 82
    if-eqz p1, :cond_2e

    .line 83
    const-string p1, "Activating dream while docked."

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-class p1, Landroid/os/PowerManager;

    .line 91
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string p1, "android.service.dreams:DREAM"

    const/4 v4, 0x3

    invoke-virtual {p0, v2, v3, v4, p1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 95
    goto :goto_33

    .line 96
    :cond_2e
    const-string p0, "Activating dream by user request."

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_33
    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_36} :catch_37

    .line 104
    :cond_36
    goto :goto_3d

    .line 102
    :catch_37
    move-exception p0

    .line 103
    const-string p1, "Could not start dream when docked."

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :goto_3d
    return-void
.end method

.method public static greylist-max-o startDreamByUserRequest(Landroid/content/Context;)V
    .registers 2

    .line 60
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/service/dreams/Sandman;->startDream(Landroid/content/Context;Z)V

    .line 61
    return-void
.end method

.method public static greylist-max-o startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V
    .registers 2

    .line 68
    invoke-static {p0}, Landroid/service/dreams/Sandman;->isScreenSaverEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 69
    invoke-static {p0}, Landroid/service/dreams/Sandman;->isScreenSaverActivatedOnDock(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_12

    .line 74
    :cond_d
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/service/dreams/Sandman;->startDream(Landroid/content/Context;Z)V

    .line 75
    return-void

    .line 70
    :cond_12
    :goto_12
    const-string p0, "Sandman"

    const-string v0, "Dreams currently disabled for docks."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method
