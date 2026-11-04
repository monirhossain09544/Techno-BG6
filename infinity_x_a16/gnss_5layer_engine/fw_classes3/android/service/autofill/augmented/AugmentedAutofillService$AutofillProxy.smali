.class final Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;
.super Ljava/lang/Object;
.source "AugmentedAutofillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/AugmentedAutofillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AutofillProxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy$ReportEvent;
    }
.end annotation


# static fields
.field static final blacklist REPORT_EVENT_INLINE_RESPONSE:I = 0x4

.field static final blacklist REPORT_EVENT_NO_RESPONSE:I = 0x1

.field static final blacklist REPORT_EVENT_UI_DESTROYED:I = 0x3

.field static final blacklist REPORT_EVENT_UI_SHOWN:I = 0x2


# instance fields
.field private blacklist mCallback:Landroid/service/autofill/augmented/IFillCallback;

.field private blacklist mCancellationSignal:Landroid/os/CancellationSignal;

.field private final blacklist mClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

.field public final blacklist mComponentName:Landroid/content/ComponentName;

.field private blacklist mFillWindow:Landroid/service/autofill/augmented/FillWindow;

.field private blacklist mFirstOnSuccessTime:J

.field private final blacklist mFirstRequestTime:J

.field private blacklist mFocusedId:Landroid/view/autofill/AutofillId;

.field private blacklist mFocusedValue:Landroid/view/autofill/AutofillValue;

.field private blacklist mFocusedViewNode:Landroid/app/assist/AssistStructure$ViewNode;

.field private blacklist mLastShownId:Landroid/view/autofill/AutofillId;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mServicePackageName:Ljava/lang/String;

.field private final blacklist mSessionId:I

.field private blacklist mSmartSuggestion:Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

.field public final blacklist mTaskId:I

.field private blacklist mUiFirstDestroyedTime:J

.field private blacklist mUiFirstShownTime:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)Landroid/service/autofill/augmented/IFillCallback;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCallback:Landroid/service/autofill/augmented/IFillCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusedId(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)Landroid/view/autofill/AutofillId;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdestroy(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->destroy()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestAutofill(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)Z
    .registers 1

    invoke-direct {p0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->requestAutofill()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdate(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/service/autofill/augmented/IFillCallback;Landroid/os/CancellationSignal;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->update(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/service/autofill/augmented/IFillCallback;Landroid/os/CancellationSignal;)V

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/service/autofill/augmented/IFillCallback;Landroid/os/CancellationSignal;)V
    .registers 13

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLock:Ljava/lang/Object;

    .line 450
    iput p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSessionId:I

    .line 451
    invoke-static {p2}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAugmentedAutofillManagerClient;

    move-result-object p1

    iput-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    .line 452
    iput-object p10, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCallback:Landroid/service/autofill/augmented/IFillCallback;

    .line 453
    iput p3, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mTaskId:I

    .line 454
    iput-object p5, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mComponentName:Landroid/content/ComponentName;

    .line 455
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mServicePackageName:Ljava/lang/String;

    .line 456
    iput-object p6, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    .line 457
    iput-object p7, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedValue:Landroid/view/autofill/AutofillValue;

    .line 458
    iput-wide p8, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstRequestTime:J

    .line 459
    iput-object p11, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 461
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/service/autofill/augmented/IFillCallback;Landroid/os/CancellationSignal;Landroid/service/autofill/augmented/AugmentedAutofillService-IA;)V
    .registers 13

    invoke-direct/range {p0 .. p11}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;-><init>(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/service/autofill/augmented/IFillCallback;Landroid/os/CancellationSignal;)V

    return-void
.end method

.method private blacklist destroy()V
    .registers 4

    .line 691
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    :try_start_3
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    if-eqz v1, :cond_1c

    .line 693
    sget-boolean v1, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v1, :cond_14

    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "destroying window"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_14
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    invoke-virtual {v1}, Landroid/service/autofill/augmented/FillWindow;->destroy()V

    .line 695
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    .line 697
    :cond_1c
    monitor-exit v0

    .line 698
    return-void

    .line 697
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private blacklist requestAutofill()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    iget v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSessionId:I

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1, v2}, Landroid/view/autofill/IAugmentedAutofillManagerClient;->requestAutofill(ILandroid/view/autofill/AutofillId;)Z

    move-result v0

    return v0
.end method

.method private blacklist update(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/service/autofill/augmented/IFillCallback;Landroid/os/CancellationSignal;)V
    .registers 7

    .line 535
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_3
    iput-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    .line 537
    iput-object p2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedValue:Landroid/view/autofill/AutofillValue;

    .line 538
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedViewNode:Landroid/app/assist/AssistStructure$ViewNode;

    .line 539
    iget-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCallback:Landroid/service/autofill/augmented/IFillCallback;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_35

    if-eqz p1, :cond_2f

    .line 541
    :try_start_e
    iget-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCallback:Landroid/service/autofill/augmented/IFillCallback;

    invoke-interface {p1}, Landroid/service/autofill/augmented/IFillCallback;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 542
    iget-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCallback:Landroid/service/autofill/augmented/IFillCallback;

    invoke-interface {p1}, Landroid/service/autofill/augmented/IFillCallback;->cancel()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1b} :catch_1c
    .catchall {:try_start_e .. :try_end_1b} :catchall_35

    .line 546
    :cond_1b
    goto :goto_26

    .line 544
    :catch_1c
    move-exception p1

    .line 545
    :try_start_1d
    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string v1, "failed to check current pending request status"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    :goto_26
    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mCallback is updated."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_2f
    iput-object p3, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCallback:Landroid/service/autofill/augmented/IFillCallback;

    .line 550
    iput-object p4, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 551
    monitor-exit v0

    .line 552
    return-void

    .line 551
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_35

    throw p1
.end method


# virtual methods
.method public blacklist autofill(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillValue;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 489
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 490
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 491
    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v0, :cond_29

    .line 492
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 493
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/view/autofill/AutofillId;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/autofill/AutofillValue;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 496
    :cond_29
    const/4 p1, 0x1

    if-ne v0, p1, :cond_3b

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iget-object v4, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v4}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    move v3, p1

    .line 497
    :cond_3b
    iget-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    iget v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSessionId:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/autofill/IAugmentedAutofillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    .line 498
    return-void
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9

    .line 650
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sessionId: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSessionId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 651
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "taskId: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mTaskId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 652
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "component: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "focusedId: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 655
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedValue:Landroid/view/autofill/AutofillValue;

    if-eqz v0, :cond_4b

    .line 656
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "focusedValue: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 658
    :cond_4b
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLastShownId:Landroid/view/autofill/AutofillId;

    if-eqz v0, :cond_5c

    .line 659
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastShownId: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLastShownId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 661
    :cond_5c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "client: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 663
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    if-eqz v1, :cond_8e

    .line 664
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "window:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    invoke-virtual {v1, v0, p2}, Landroid/service/autofill/augmented/FillWindow;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 667
    :cond_8e
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSmartSuggestion:Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

    if-eqz v1, :cond_a0

    .line 668
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "smartSuggestion:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSmartSuggestion:Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

    invoke-virtual {v1, v0, p2}, Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 671
    :cond_a0
    iget-wide v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstOnSuccessTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_bc

    .line 672
    iget-wide v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstOnSuccessTime:J

    iget-wide v4, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstRequestTime:J

    sub-long/2addr v0, v4

    .line 673
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "response time: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 674
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 677
    :cond_bc
    iget-wide v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mUiFirstShownTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_d5

    .line 678
    iget-wide v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mUiFirstShownTime:J

    iget-wide v4, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstRequestTime:J

    sub-long/2addr v0, v4

    .line 679
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "UI rendering time: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 680
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 683
    :cond_d5
    iget-wide v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mUiFirstDestroyedTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_ee

    .line 684
    iget-wide v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mUiFirstDestroyedTime:J

    iget-wide v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstRequestTime:J

    sub-long/2addr v0, v2

    .line 685
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "UI life time: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 686
    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 688
    :cond_ee
    return-void
.end method

.method public blacklist getFillWindow()Landroid/service/autofill/augmented/FillWindow;
    .registers 3

    .line 507
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    :try_start_3
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    monitor-exit v0

    return-object v1

    .line 509
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getFocusedId()Landroid/view/autofill/AutofillId;
    .registers 3

    .line 556
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_3
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    monitor-exit v0

    return-object v1

    .line 558
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getFocusedValue()Landroid/view/autofill/AutofillValue;
    .registers 3

    .line 563
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 564
    :try_start_3
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedValue:Landroid/view/autofill/AutofillValue;

    monitor-exit v0

    return-object v1

    .line 565
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getFocusedViewNode()Landroid/app/assist/AssistStructure$ViewNode;
    .registers 6

    .line 579
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_3
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedViewNode:Landroid/app/assist/AssistStructure$ViewNode;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3a

    if-nez v1, :cond_36

    .line 582
    :try_start_7
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v1, v2}, Landroid/view/autofill/IAugmentedAutofillManagerClient;->getViewNodeParcelable(Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNodeParcelable;

    move-result-object v1

    .line 584
    if-eqz v1, :cond_17

    .line 585
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNodeParcelable;->getViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v1

    iput-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedViewNode:Landroid/app/assist/AssistStructure$ViewNode;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_17} :catch_18
    .catchall {:try_start_7 .. :try_end_17} :catchall_3a

    .line 590
    :cond_17
    goto :goto_36

    .line 587
    :catch_18
    move-exception v1

    .line 588
    :try_start_19
    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting the ViewNode of the focused view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 592
    :cond_36
    :goto_36
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedViewNode:Landroid/app/assist/AssistStructure$ViewNode;

    monitor-exit v0

    return-object v1

    .line 593
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_19 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public blacklist getSmartSuggestionParams()Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;
    .registers 6

    .line 465
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_3
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSmartSuggestion:Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLastShownId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 467
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSmartSuggestion:Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_77

    return-object v1

    .line 471
    :cond_15
    const/4 v1, 0x0

    :try_start_16
    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    iget-object v3, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v2, v3}, Landroid/view/autofill/IAugmentedAutofillManagerClient;->getViewCoordinates(Landroid/view/autofill/AutofillId;)Landroid/graphics/Rect;

    move-result-object v2
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_58
    .catchall {:try_start_16 .. :try_end_1e} :catchall_77

    .line 475
    nop

    .line 476
    if-nez v2, :cond_49

    .line 477
    :try_start_21
    sget-boolean v2, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v2, :cond_47

    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getViewCoordinates("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") returned null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_47
    monitor-exit v0

    return-object v1

    .line 480
    :cond_49
    new-instance v1, Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

    invoke-direct {v1, p0, v2}, Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;-><init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;Landroid/graphics/Rect;)V

    iput-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSmartSuggestion:Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

    .line 481
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    iput-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLastShownId:Landroid/view/autofill/AutofillId;

    .line 482
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSmartSuggestion:Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;

    monitor-exit v0

    return-object v1

    .line 472
    :catch_58
    move-exception v2

    .line 473
    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get coordinates for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    monitor-exit v0

    return-object v1

    .line 483
    :catchall_77
    move-exception v1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_21 .. :try_end_79} :catchall_77

    throw v1
.end method

.method blacklist logEvent(I)V
    .registers 13

    .line 597
    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sVerbose:Z

    if-eqz v0, :cond_1f

    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "returnAndLogResult(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_1f
    nop

    .line 599
    nop

    .line 601
    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_138

    .line 644
    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid event reported: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12c

    .line 616
    :pswitch_45
    iget-wide v5, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstOnSuccessTime:J

    cmp-long p1, v5, v0

    if-nez p1, :cond_12c

    .line 617
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstOnSuccessTime:J

    .line 618
    iget-wide v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstOnSuccessTime:J

    iget-wide v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstRequestTime:J

    sub-long v2, v0, v2

    .line 619
    sget-boolean p1, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz p1, :cond_12c

    .line 620
    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inline response in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12c

    .line 635
    :pswitch_7b
    nop

    .line 636
    iget-wide v4, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mUiFirstDestroyedTime:J

    cmp-long p1, v4, v0

    const/4 v4, 0x2

    if-nez p1, :cond_b3

    .line 637
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mUiFirstDestroyedTime:J

    .line 638
    iget-wide v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mUiFirstDestroyedTime:J

    iget-wide v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstRequestTime:J

    sub-long v2, v0, v2

    .line 639
    sget-boolean p1, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz p1, :cond_12c

    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UI destroyed in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12c

    .line 636
    :cond_b3
    move-wide v9, v2

    move v5, v4

    goto/16 :goto_12e

    .line 626
    :pswitch_b7
    nop

    .line 627
    iget-wide v4, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mUiFirstShownTime:J

    cmp-long p1, v4, v0

    const/4 v4, 0x1

    if-nez p1, :cond_ee

    .line 628
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mUiFirstShownTime:J

    .line 629
    iget-wide v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mUiFirstShownTime:J

    iget-wide v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstRequestTime:J

    sub-long v2, v0, v2

    .line 630
    sget-boolean p1, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz p1, :cond_12c

    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UI shown in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c

    .line 627
    :cond_ee
    move-wide v9, v2

    move v5, v4

    goto :goto_12e

    .line 603
    :pswitch_f1
    nop

    .line 604
    iget-wide v4, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstOnSuccessTime:J

    cmp-long p1, v4, v0

    const/16 v4, 0xa

    if-nez p1, :cond_129

    .line 605
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstOnSuccessTime:J

    .line 606
    iget-wide v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstOnSuccessTime:J

    iget-wide v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFirstRequestTime:J

    sub-long v2, v0, v2

    .line 607
    sget-boolean p1, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz p1, :cond_12c

    .line 608
    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service responded nothing in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c

    .line 604
    :cond_129
    move-wide v9, v2

    move v5, v4

    goto :goto_12e

    .line 646
    :cond_12c
    :goto_12c
    move-wide v9, v2

    move v5, v4

    :goto_12e
    iget-object v6, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mServicePackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mComponentName:Landroid/content/ComponentName;

    iget v8, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSessionId:I

    invoke-static/range {v5 .. v10}, Landroid/service/autofill/augmented/Helper;->logResponse(ILjava/lang/String;Landroid/content/ComponentName;IJ)V

    .line 647
    return-void

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_f1
        :pswitch_b7
        :pswitch_7b
        :pswitch_45
    .end packed-switch
.end method

.method blacklist reportResult(Ljava/util/List;Landroid/os/Bundle;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    .line 571
    :try_start_0
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCallback:Landroid/service/autofill/augmented/IFillCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/service/autofill/augmented/IFillCallback;->onSuccess(Ljava/util/List;Landroid/os/Bundle;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 574
    goto :goto_21

    .line 572
    :catch_6
    move-exception p1

    .line 573
    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error calling back with the inline suggestions data: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :goto_21
    return-void
.end method

.method public blacklist requestHideFillUi()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    iget v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSessionId:I

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1, v2}, Landroid/view/autofill/IAugmentedAutofillManagerClient;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V

    .line 526
    return-void
.end method

.method public blacklist requestShowFillUi(IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 514
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 515
    sget-boolean p1, Landroid/service/autofill/augmented/AugmentedAutofillService;->sVerbose:Z

    if-eqz p1, :cond_16

    .line 516
    invoke-static {}, Landroid/service/autofill/augmented/AugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "requestShowFillUi() not showing because request is cancelled"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_16
    return-void

    .line 520
    :cond_17
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mClient:Landroid/view/autofill/IAugmentedAutofillManagerClient;

    iget v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mSessionId:I

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Landroid/view/autofill/IAugmentedAutofillManagerClient;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    .line 522
    return-void
.end method

.method public blacklist setFillWindow(Landroid/service/autofill/augmented/FillWindow;)V
    .registers 3

    .line 501
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :try_start_3
    iput-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFillWindow:Landroid/service/autofill/augmented/FillWindow;

    .line 503
    monitor-exit v0

    .line 504
    return-void

    .line 503
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method
