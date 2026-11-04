.class Lcom/android/internal/policy/GestureNavigationSettingsObserver$1;
.super Ljava/lang/Object;
.source "GestureNavigationSettingsObserver.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/GestureNavigationSettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver$1;->this$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    .line 55
    const-string v0, "systemui"

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver$1;->this$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-static {p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->-$$Nest$fgetmOnChangeRunnable(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 57
    iget-object p1, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver$1;->this$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-static {p1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->-$$Nest$fgetmOnChangeRunnable(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 59
    :cond_1d
    return-void
.end method
