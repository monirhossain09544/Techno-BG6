.class Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$2;
.super Landroid/database/ContentObserver;
.source "BrightnessSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->createBrightnessContentObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 491
    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$2;->this$1:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 494
    if-eqz p1, :cond_3

    .line 495
    return-void

    .line 497
    :cond_3
    invoke-static {}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$sfgetBRIGHTNESS_URI()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 498
    iget-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$2;->this$1:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    iget-object p1, p1, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    iget-object p2, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$2;->this$1:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    iget-object p2, p2, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$mgetScreenBrightnessInt(Lcom/android/internal/display/BrightnessSynchronizer;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$mhandleBrightnessChangeInt(Lcom/android/internal/display/BrightnessSynchronizer;I)V

    .line 500
    :cond_1c
    return-void
.end method
