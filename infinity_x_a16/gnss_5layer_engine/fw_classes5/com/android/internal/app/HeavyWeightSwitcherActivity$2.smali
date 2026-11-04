.class Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;
.super Ljava/lang/Object;
.source "HeavyWeightSwitcherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/HeavyWeightSwitcherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 10

    .line 145
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->finishHeavyWeightApp()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 147
    goto :goto_9

    .line 146
    :catch_8
    move-exception v0

    .line 149
    :goto_9
    :try_start_9
    iget-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    iget-boolean p1, p1, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mHasResult:Z

    if-eqz p1, :cond_20

    .line 150
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    iget-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    iget-object v1, p1, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mStartIntent:Landroid/content/IntentSender;

    const/high16 v5, 0x2000000

    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x2000000

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_3b

    .line 155
    :cond_20
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    iget-object v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    iget-object v1, v1, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mStartIntent:Landroid/content/IntentSender;

    .line 159
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 158
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_3b
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_9 .. :try_end_3b} :catch_3c

    .line 163
    :goto_3b
    goto :goto_45

    .line 161
    :catch_3c
    move-exception v0

    move-object p1, v0

    .line 162
    const-string v0, "HeavyWeightSwitcherActivity"

    const-string v1, "Failure starting"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :goto_45
    iget-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {p1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->finish()V

    .line 165
    return-void
.end method
