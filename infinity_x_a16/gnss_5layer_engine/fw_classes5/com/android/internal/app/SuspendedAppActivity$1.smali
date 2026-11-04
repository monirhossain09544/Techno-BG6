.class Lcom/android/internal/app/SuspendedAppActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SuspendedAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SuspendedAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/SuspendedAppActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/SuspendedAppActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/android/internal/app/SuspendedAppActivity$1;->this$0:Lcom/android/internal/app/SuspendedAppActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 83
    const-string p1, "android.intent.action.PACKAGES_SUSPENSION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 85
    const-string p1, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/android/internal/app/SuspendedAppActivity$1;->this$0:Lcom/android/internal/app/SuspendedAppActivity;

    invoke-static {p2}, Lcom/android/internal/app/SuspendedAppActivity;->-$$Nest$fgetmSuspendedPackage(Lcom/android/internal/app/SuspendedAppActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    iget-object p1, p0, Lcom/android/internal/app/SuspendedAppActivity$1;->this$0:Lcom/android/internal/app/SuspendedAppActivity;

    iget-object p2, p0, Lcom/android/internal/app/SuspendedAppActivity$1;->this$0:Lcom/android/internal/app/SuspendedAppActivity;

    invoke-static {p2}, Lcom/android/internal/app/SuspendedAppActivity;->-$$Nest$fgetmSuspendedPackage(Lcom/android/internal/app/SuspendedAppActivity;)Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-static {p1, p2}, Lcom/android/internal/app/SuspendedAppActivity;->-$$Nest$misPackageSuspended(Lcom/android/internal/app/SuspendedAppActivity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5f

    .line 89
    iget-object p1, p0, Lcom/android/internal/app/SuspendedAppActivity$1;->this$0:Lcom/android/internal/app/SuspendedAppActivity;

    invoke-virtual {p1}, Lcom/android/internal/app/SuspendedAppActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5f

    .line 90
    invoke-static {}, Lcom/android/internal/app/SuspendedAppActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity$1;->this$0:Lcom/android/internal/app/SuspendedAppActivity;

    invoke-static {v0}, Lcom/android/internal/app/SuspendedAppActivity;->-$$Nest$fgetmSuspendedPackage(Lcom/android/internal/app/SuspendedAppActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " has modified suspension conditions while dialog was visible. Finishing."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lcom/android/internal/app/SuspendedAppActivity$1;->this$0:Lcom/android/internal/app/SuspendedAppActivity;

    invoke-virtual {p1}, Lcom/android/internal/app/SuspendedAppActivity;->finish()V

    .line 97
    :cond_5f
    return-void
.end method
