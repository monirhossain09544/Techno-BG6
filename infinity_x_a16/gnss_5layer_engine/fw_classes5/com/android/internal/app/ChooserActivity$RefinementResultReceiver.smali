.class Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;
.super Landroid/os/ResultReceiver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefinementResultReceiver"
.end annotation


# instance fields
.field private blacklist mChooserActivity:Lcom/android/internal/app/ChooserActivity;

.field private blacklist mSelectedTarget:Lcom/android/internal/app/chooser/TargetInfo;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;Landroid/os/Handler;)V
    .registers 4

    .line 4007
    invoke-direct {p0, p3}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 4008
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    .line 4009
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->mSelectedTarget:Lcom/android/internal/app/chooser/TargetInfo;

    .line 4010
    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .registers 2

    .line 4045
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    .line 4046
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->mSelectedTarget:Lcom/android/internal/app/chooser/TargetInfo;

    .line 4047
    return-void
.end method

.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5

    .line 4014
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    const-string v1, "ChooserActivity"

    if-nez v0, :cond_c

    .line 4015
    const-string p1, "Destroyed RefinementResultReceiver received a result"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4016
    return-void

    .line 4018
    :cond_c
    if-nez p2, :cond_14

    .line 4019
    const-string p1, "RefinementResultReceiver received null resultData"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4020
    return-void

    .line 4023
    :cond_14
    packed-switch p1, :pswitch_data_56

    .line 4038
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown result code "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " sent to RefinementResultReceiver"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 4025
    :pswitch_34
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->onRefinementCanceled()V

    .line 4026
    goto :goto_54

    .line 4028
    :pswitch_3a
    const-string p1, "android.intent.extra.INTENT"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 4029
    instance-of p2, p1, Landroid/content/Intent;

    if-eqz p2, :cond_4e

    .line 4030
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->mSelectedTarget:Lcom/android/internal/app/chooser/TargetInfo;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/app/ChooserActivity;->onRefinementResult(Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;)V

    goto :goto_54

    .line 4033
    :cond_4e
    const-string p1, "RefinementResultReceiver received RESULT_OK but no Intent in resultData with key Intent.EXTRA_INTENT"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    nop

    .line 4042
    :goto_54
    return-void

    nop

    :pswitch_data_56
    .packed-switch -0x1
        :pswitch_3a
        :pswitch_34
    .end packed-switch
.end method
