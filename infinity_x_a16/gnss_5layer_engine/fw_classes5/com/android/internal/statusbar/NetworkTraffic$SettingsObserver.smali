.class Lcom/android/internal/statusbar/NetworkTraffic$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/statusbar/NetworkTraffic;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/statusbar/NetworkTraffic;Landroid/os/Handler;)V
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

    .line 384
    iput-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    .line 385
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 386
    return-void
.end method


# virtual methods
.method blacklist observe()V
    .registers 5

    .line 389
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    # getter for: Lcom/android/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/statusbar/NetworkTraffic;->access$100(Lcom/android/internal/statusbar/NetworkTraffic;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 390
    nop

    .line 391
    const-string v1, "network_traffic_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 390
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 393
    nop

    .line 394
    const-string v1, "network_traffic_autohide"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 393
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 396
    nop

    .line 397
    const-string v1, "network_traffic_units"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 396
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 399
    return-void
.end method

.method public whitelist onChange(Z)V
    .registers 2

    .line 407
    iget-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {p1}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$mupdateSettings(Lcom/android/internal/statusbar/NetworkTraffic;)V

    .line 408
    return-void
.end method

.method blacklist unobserve()V
    .registers 2

    .line 402
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    # getter for: Lcom/android/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/statusbar/NetworkTraffic;->access$200(Lcom/android/internal/statusbar/NetworkTraffic;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 403
    return-void
.end method
