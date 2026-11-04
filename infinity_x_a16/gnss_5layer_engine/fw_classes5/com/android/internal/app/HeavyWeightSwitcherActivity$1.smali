.class Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;
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

    .line 129
    iput-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 8

    .line 132
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 134
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {p1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    iget v3, p1, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurTask:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityTaskManager;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 137
    goto :goto_1d

    .line 136
    :catch_1c
    move-exception v0

    .line 138
    :goto_1d
    iget-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {p1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->finish()V

    .line 139
    return-void
.end method
