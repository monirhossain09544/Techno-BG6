.class Lcom/android/internal/os/AppZygoteInit$AppZygoteConnection;
.super Lcom/android/internal/os/ZygoteConnection;
.source "AppZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/AppZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppZygoteConnection"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected blacklist canPreloadApp()Z
    .registers 2

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist handlePreloadApp(Landroid/content/pm/ApplicationInfo;)V
    .registers 12

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Beginning application preload for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppZygoteInit"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v2, Landroid/app/LoadedApk;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V

    .line 77
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 79
    invoke-static {v4}, Lcom/android/internal/os/Zygote;->allowAppFilesAcrossFork(Landroid/content/pm/ApplicationInfo;)V

    .line 81
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_a2

    .line 85
    :try_start_33
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 88
    const-class v6, Landroid/app/ZygotePreload;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_70

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " does not implement "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v5, Landroid/app/ZygotePreload;

    .line 90
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 92
    :cond_70
    new-array v0, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 93
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ZygotePreload;

    .line 94
    invoke-static {}, Lcom/android/internal/os/Zygote;->markOpenedFilesBeforePreload()V

    .line 95
    invoke-interface {v0, v4}, Landroid/app/ZygotePreload;->doPreload(Landroid/content/pm/ApplicationInfo;)V

    .line 96
    invoke-static {}, Lcom/android/internal/os/Zygote;->allowFilesOpenedByPreload()V
    :try_end_87
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_33 .. :try_end_87} :catch_88

    goto :goto_a1

    .line 98
    :catch_88
    move-exception v0

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppZygote application preload failed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :goto_a1
    goto :goto_a7

    .line 103
    :cond_a2
    const-string v0, "No zygotePreloadName attribute specified."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_a7
    :try_start_a7
    invoke-virtual {p0}, Lcom/android/internal/os/AppZygoteInit$AppZygoteConnection;->getSocketOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    .line 108
    if-eqz p1, :cond_ae

    goto :goto_af

    :cond_ae
    move v2, v3

    :goto_af
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_b2} :catch_b9

    .line 111
    nop

    .line 113
    const-string p1, "Application preload done"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 109
    :catch_b9
    move-exception v0

    move-object p1, v0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error writing to command socket"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected blacklist isPreloadComplete()Z
    .registers 2

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist preload()V
    .registers 1

    .line 59
    return-void
.end method
