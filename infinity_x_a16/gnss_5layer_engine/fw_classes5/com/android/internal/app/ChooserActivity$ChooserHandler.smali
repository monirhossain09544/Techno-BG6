.class Lcom/android/internal/app/ChooserActivity$ChooserHandler;
.super Landroid/os/Handler;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChooserHandler"
.end annotation


# static fields
.field private static final blacklist SHORTCUT_MANAGER_ALL_SHARE_TARGET_RESULTS:I = 0x7


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mremoveAllMessages(Lcom/android/internal/app/ChooserActivity$ChooserHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeAllMessages()V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 494
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    return-void
.end method

.method private blacklist removeAllMessages()V
    .registers 2

    .line 498
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 499
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 503
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_6a

    .line 507
    :cond_13
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6c

    .line 535
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_69

    .line 510
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    .line 511
    array-length v1, v0

    const/4 v2, 0x0

    :goto_22
    if-ge v2, v1, :cond_48

    aget-object v3, v0, v2

    .line 512
    iget-object v4, v3, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    if-eqz v4, :cond_45

    .line 513
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    iget-object v5, v3, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->userHandle:Landroid/os/UserHandle;

    .line 514
    invoke-virtual {v4, v5}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v4

    .line 516
    if-eqz v4, :cond_45

    .line 517
    iget-object v5, v3, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDirectShareShortcutInfoCache(Lcom/android/internal/app/ChooserActivity;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/android/internal/app/ChooserListAdapter;->addServiceResults(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;ILjava/util/Map;)V

    .line 511
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 525
    :cond_48
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/16 v0, 0x6b6

    invoke-static {p1, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mlogDirectShareTargetReceived(Lcom/android/internal/app/ChooserActivity;I)V

    .line 527
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    .line 528
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetDirectLoadComplete()V

    .line 530
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object p1, p1, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object p1

    .line 531
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserListAdapter;->completeServiceTargetLoading()V

    .line 532
    nop

    .line 537
    :goto_69
    return-void

    .line 504
    :cond_6a
    :goto_6a
    return-void

    nop

    :pswitch_data_6c
    .packed-switch 0x7
        :pswitch_1c
    .end packed-switch
.end method
