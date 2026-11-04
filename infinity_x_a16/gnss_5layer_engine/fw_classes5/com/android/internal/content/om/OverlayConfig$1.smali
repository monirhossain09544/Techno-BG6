.class Lcom/android/internal/content/om/OverlayConfig$1;
.super Ljava/util/HashMap;
.source "OverlayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/content/om/OverlayConfig;->createImmutableFrameworkIdmapsInZygote()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/content/om/OverlayConfig;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/content/om/OverlayConfig;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 540
    iput-object p1, p0, Lcom/android/internal/content/om/OverlayConfig$1;->this$0:Lcom/android/internal/content/om/OverlayConfig;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 541
    sget-object p1, Landroid/content/res/AssetManager;->FRAMEWORK_APK_PATH:Ljava/lang/String;

    const-string v0, "android"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/content/om/OverlayConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string p1, "/system/framework/org.lineageos.platform-res.apk"

    const-string v0, "lineageos.platform"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/content/om/OverlayConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    return-void
.end method
