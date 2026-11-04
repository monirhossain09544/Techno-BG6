.class public final Lcom/android/internal/util/PastyUtils;
.super Ljava/lang/Object;
.source "PastyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/PastyUtils$UploadResultCallback;
    }
.end annotation


# static fields
.field private static final blacklist API_URL:Ljava/lang/String;

.field private static final blacklist BASE_URL:Ljava/lang/String; = "https://paste.projectinfinity-x.com"

.field private static final blacklist TAG:Ljava/lang/String; = "PastyUtils"

.field private static blacklist handler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetAPI_URL()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/util/PastyUtils;->API_URL:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/util/PastyUtils;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 35
    const-string v0, "https://paste.projectinfinity-x.com"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s/documents"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/PastyUtils;->API_URL:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 100
    sget-object v0, Lcom/android/internal/util/PastyUtils;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1f

    .line 101
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PastyThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_14

    .line 103
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 104
    :cond_14
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/internal/util/PastyUtils;->handler:Landroid/os/Handler;

    .line 106
    :cond_1f
    sget-object v0, Lcom/android/internal/util/PastyUtils;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private static blacklist getUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 96
    const-string v0, "https://paste.projectinfinity-x.com"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s/%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist upload(Ljava/lang/String;Lcom/android/internal/util/PastyUtils$UploadResultCallback;)V
    .registers 4

    .line 48
    invoke-static {}, Lcom/android/internal/util/PastyUtils;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/PastyUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/util/PastyUtils$1;-><init>(Ljava/lang/String;Lcom/android/internal/util/PastyUtils$UploadResultCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method
