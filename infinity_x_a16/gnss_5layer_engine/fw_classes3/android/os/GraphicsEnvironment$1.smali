.class Landroid/os/GraphicsEnvironment$1;
.super Landroid/content/BroadcastReceiver;
.source "GraphicsEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/GraphicsEnvironment;->showAngleInUseDialogBox(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/os/GraphicsEnvironment;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 833
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 836
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/os/GraphicsEnvironment$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 838
    const-string v1, "A4A Toast Message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 839
    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 840
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 841
    return-void
.end method
