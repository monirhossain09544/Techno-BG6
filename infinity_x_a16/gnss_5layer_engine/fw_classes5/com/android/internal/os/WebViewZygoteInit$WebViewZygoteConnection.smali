.class Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;
.super Lcom/android/internal/os/ZygoteConnection;
.source "WebViewZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/WebViewZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewZygoteConnection"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private blacklist doPreload(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 9

    .line 86
    const-string v0, "preloadInZygote"

    const-string v1, "WebViewZygoteInit"

    invoke-static {p1, p2}, Landroid/webkit/WebViewLibraryLoader;->loadNativeLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)I

    .line 91
    nop

    .line 93
    nop

    .line 94
    const/4 p2, 0x1

    const/4 v2, 0x0

    :try_start_b
    invoke-static {p1}, Landroid/webkit/WebViewFactory;->getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 95
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 96
    invoke-virtual {v3, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 97
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_27

    .line 98
    const-string p1, "Unexpected return type: preloadInZygote must return boolean"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    goto :goto_47

    .line 100
    :cond_27
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 101
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 100
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_3a
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_b .. :try_end_3a} :catch_48

    .line 102
    if-nez p1, :cond_47

    .line 103
    :try_start_3c
    const-string v0, "preloadInZygote returned false"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3c .. :try_end_41} :catch_42

    goto :goto_47

    .line 106
    :catch_42
    move-exception v0

    move-object v5, v0

    move v0, p1

    move-object p1, v5

    goto :goto_4a

    .line 108
    :cond_47
    :goto_47
    goto :goto_50

    .line 106
    :catch_48
    move-exception p1

    move v0, v2

    .line 107
    :goto_4a
    const-string v3, "Exception while preloading package"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p1, v0

    .line 111
    :goto_50
    :try_start_50
    invoke-virtual {p0}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;->getSocketOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    .line 112
    if-eqz p1, :cond_57

    goto :goto_58

    :cond_57
    move p2, v2

    :goto_58
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5b} :catch_5d

    .line 115
    nop

    .line 116
    return-void

    .line 113
    :catch_5d
    move-exception p1

    .line 114
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error writing to command socket"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method protected blacklist canPreloadApp()Z
    .registers 2

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist handlePreloadApp(Landroid/content/pm/ApplicationInfo;)V
    .registers 12

    .line 73
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

    const-string v1, "WebViewZygoteInit"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v2, Landroid/app/LoadedApk;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V

    .line 75
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 76
    invoke-static {v4}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;->doPreload(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 78
    invoke-static {v4}, Lcom/android/internal/os/Zygote;->allowAppFilesAcrossFork(Landroid/content/pm/ApplicationInfo;)V

    .line 80
    const-string p1, "Application preload done"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method protected blacklist isPreloadComplete()Z
    .registers 2

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist preload()V
    .registers 1

    .line 57
    return-void
.end method
