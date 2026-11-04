.class public Landroid/service/dreams/DreamService;
.super Landroid/app/Service;
.source "DreamService.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/DreamService$DefaultInjector;,
        Landroid/service/dreams/DreamService$Injector;,
        Landroid/service/dreams/DreamService$DreamServiceWrapper;,
        Landroid/service/dreams/DreamService$DreamMetadata;,
        Landroid/service/dreams/DreamService$DreamActivityCallbacks;,
        Landroid/service/dreams/DreamService$DreamCategory;
    }
.end annotation


# static fields
.field public static final blacklist BUNDLE_KEY_ATTACH_ERROR:Ljava/lang/String; = "android.service.dream.DreamService.attach_error"

.field private static final blacklist DEBUG:Z

.field public static final blacklist DEFAULT_SHOW_COMPLICATIONS:Z = false

.field public static final blacklist DREAM_CATEGORY_DEFAULT:I = 0x0

.field public static final blacklist DREAM_CATEGORY_HOME_PANEL:I = 0x2

.field public static final blacklist DREAM_CATEGORY_LOW_LIGHT:I = 0x1

.field public static final whitelist DREAM_META_DATA:Ljava/lang/String; = "android.service.dream"

.field private static final blacklist DREAM_META_DATA_ROOT_TAG:Ljava/lang/String; = "dream"

.field public static final greylist-max-o DREAM_SERVICE:Ljava/lang/String; = "dreams"

.field static final blacklist EXTRA_DREAM_OVERLAY_COMPONENT:Ljava/lang/String; = "android.service.dream.DreamService.dream_overlay_component"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.dreams.DreamService"

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private blacklist mActivity:Landroid/app/Activity;

.field private greylist-max-o mCanDoze:Z

.field private greylist-max-o mDebug:Z

.field private blacklist mDispatchAfterOnAttachedToWindow:Ljava/lang/Runnable;

.field private blacklist mDozeScreenBrightness:F

.field private greylist-max-o mDozeScreenState:I

.field private blacklist mDozeScreenStateReason:I

.field private greylist-max-o mDozing:Z

.field private blacklist mDreamAccessibility:Landroid/service/dreams/utils/DreamAccessibility;

.field private blacklist mDreamComponent:Landroid/content/ComponentName;

.field private final blacklist mDreamManager:Landroid/service/dreams/IDreamManager;

.field private blacklist mDreamServiceWrapper:Landroid/service/dreams/DreamService$DreamServiceWrapper;

.field private blacklist mDreamToken:Landroid/os/IBinder;

.field private greylist-max-o mFinished:Z

.field private greylist-max-o mFullscreen:Z

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final blacklist mInjector:Landroid/service/dreams/DreamService$Injector;

.field private greylist-max-o mInteractive:Z

.field private blacklist mOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

.field private blacklist mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

.field private blacklist mPreviewMode:Z

.field private blacklist mRedirectWake:Z

.field private greylist-max-o mScreenBright:Z

.field private blacklist mShouldShowComplications:Z

.field private greylist-max-o mStarted:Z

.field private final blacklist mTag:Ljava/lang/String;

.field private blacklist mTrackingConfirmKey:Ljava/lang/Integer;

.field private blacklist mUseNormalBrightnessForDoze:Z

.field private greylist-max-o mWaking:Z

.field private greylist-max-o mWindow:Landroid/view/Window;

.field private greylist-max-o mWindowless:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$0g4j9kyYO39EEbwnpMH4QYpyJlE(Landroid/service/dreams/DreamService;Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->lambda$onWakeUp$0(Landroid/service/dreams/IDreamOverlayClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6c02sU8ou_8-bJpd9g_lfxB-Ttc(Landroid/service/dreams/DreamService;Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->lambda$finish$1(Landroid/service/dreams/IDreamOverlayClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EnTA56MuqG-Lc2_Dn1XOtb2UP4k(Landroid/service/dreams/DreamService;Landroid/os/IRemoteCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->lambda$attach$4(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WLGM0XyTnMnz1Ysqn-j6RNjh6WU(Landroid/service/dreams/DreamService;Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->lambda$wakeUp$3(Landroid/service/dreams/IDreamOverlayClient;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dzgVyahPsVfppuhCsEb8C9WyWSI(Landroid/service/dreams/DreamService;Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/dreams/DreamService;->lambda$dump$5(Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yZUowb9s5pr4SI1Z6cqgLDRLMhc(Landroid/service/dreams/DreamService;Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->lambda$comeToFront$2(Landroid/service/dreams/IDreamOverlayClient;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActivity(Landroid/service/dreams/DreamService;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDispatchAfterOnAttachedToWindow(Landroid/service/dreams/DreamService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mDispatchAfterOnAttachedToWindow:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDreamComponent(Landroid/service/dreams/DreamService;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mDreamComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/dreams/DreamService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverlayCallback(Landroid/service/dreams/DreamService;)Landroid/service/dreams/IDreamOverlayCallback;
    .registers 1

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverlayConnection(Landroid/service/dreams/DreamService;)Landroid/service/dreams/DreamOverlayConnectionHandler;
    .registers 1

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviewMode(Landroid/service/dreams/DreamService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/dreams/DreamService;->mPreviewMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldShowComplications(Landroid/service/dreams/DreamService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/dreams/DreamService;->mShouldShowComplications:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Landroid/service/dreams/DreamService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindow(Landroid/service/dreams/DreamService;)Landroid/view/Window;
    .registers 1

    iget-object p0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActivity(Landroid/service/dreams/DreamService;Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRedirectWake(Landroid/service/dreams/DreamService;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mRedirectWake:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindow(Landroid/service/dreams/DreamService;Landroid/view/Window;)V
    .registers 2

    iput-object p1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mattach(Landroid/service/dreams/DreamService;Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/dreams/DreamService;->attach(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcomeToFront(Landroid/service/dreams/DreamService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->comeToFront()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdetach(Landroid/service/dreams/DreamService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monActivityCreated(Landroid/service/dreams/DreamService;Landroid/service/dreams/DreamActivity;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/dreams/DreamService;->onActivityCreated(Landroid/service/dreams/DreamActivity;Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monActivityDestroyed(Landroid/service/dreams/DreamService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->onActivityDestroyed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwakeUp(Landroid/service/dreams/DreamService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smfetchServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 2

    invoke-static {p0, p1}, Landroid/service/dreams/DreamService;->fetchServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 181
    const-class v0, Landroid/service/dreams/DreamService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    .line 183
    sget-object v0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/service/dreams/DreamService;->DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 403
    new-instance v0, Landroid/service/dreams/DreamService$DefaultInjector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/service/dreams/DreamService$DefaultInjector;-><init>(Landroid/service/dreams/DreamService-IA;)V

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;-><init>(Landroid/service/dreams/DreamService$Injector;)V

    .line 404
    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/dreams/DreamService$Injector;)V
    .registers 4

    .line 413
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    .line 278
    iput v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenStateReason:I

    .line 279
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:F

    .line 284
    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mTrackingConfirmKey:Ljava/lang/Integer;

    .line 414
    iput-object p1, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    .line 415
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {p1, p0}, Landroid/service/dreams/DreamService$Injector;->init(Landroid/content/Context;)V

    .line 416
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {p1}, Landroid/service/dreams/DreamService$Injector;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object p1

    iput-object p1, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 417
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {p1}, Landroid/service/dreams/DreamService$Injector;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    .line 418
    return-void
.end method

.method private greylist-max-o applyFlags(III)I
    .registers 5

    .line 1770
    not-int v0, p3

    and-int/2addr p1, v0

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private greylist-max-o applyWindowFlags(II)V
    .registers 5

    .line 1756
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_26

    .line 1757
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1758
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1, p1, p2}, Landroid/service/dreams/DreamService;->applyFlags(III)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1759
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1760
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1762
    :cond_26
    return-void
.end method

.method private blacklist attach(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    .registers 7

    .line 1580
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    const/4 v1, 0x1

    if-eqz v0, :cond_3b

    .line 1581
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "attach() called when dream with token="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " already attached"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->allowDreamAttachFailure()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 1585
    :try_start_2b
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1586
    const-string p2, "android.service.dream.DreamService.attach_error"

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1587
    invoke-interface {p4, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_38} :catch_39

    .line 1590
    goto :goto_3a

    .line 1588
    :catch_39
    move-exception p1

    .line 1592
    :cond_3a
    :goto_3a
    return-void

    .line 1594
    :cond_3b
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v0, :cond_db

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    if-eqz v0, :cond_45

    goto/16 :goto_db

    .line 1608
    :cond_45
    iput-object p1, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    .line 1609
    iput-boolean p2, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    .line 1610
    iput-boolean p3, p0, Landroid/service/dreams/DreamService;->mPreviewMode:Z

    .line 1611
    iget-boolean p2, p0, Landroid/service/dreams/DreamService;->mPreviewMode:Z

    if-eqz p2, :cond_52

    .line 1613
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    .line 1617
    :cond_52
    iget-boolean p2, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-eqz p2, :cond_69

    iget-boolean p2, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    if-nez p2, :cond_69

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->isCallerSystemUi()Z

    move-result p2

    if-eqz p2, :cond_61

    goto :goto_69

    .line 1618
    :cond_61
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only doze or SystemUI dreams can be windowless."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1621
    :cond_69
    :goto_69
    new-instance p2, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p4}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda6;-><init>(Landroid/service/dreams/DreamService;Landroid/os/IRemoteCallback;)V

    iput-object p2, p0, Landroid/service/dreams/DreamService;->mDispatchAfterOnAttachedToWindow:Ljava/lang/Runnable;

    .line 1640
    iget-boolean p2, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-nez p2, :cond_d5

    .line 1641
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 1642
    iget-object p4, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {p4}, Landroid/service/dreams/DreamService$Injector;->getDreamActivityComponent()Landroid/content/ComponentName;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1643
    iget-object p4, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {p4}, Landroid/service/dreams/DreamService$Injector;->getDreamPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1644
    const/high16 p4, 0x10040000

    invoke-virtual {p2, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1645
    new-instance p4, Landroid/service/dreams/DreamService$DreamActivityCallbacks;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p4, p1, v0}, Landroid/service/dreams/DreamService$DreamActivityCallbacks;-><init>(Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V

    invoke-static {p2, p4}, Landroid/service/dreams/DreamActivity;->setCallback(Landroid/content/Intent;Landroid/service/dreams/DreamService$DreamActivityCallbacks;)V

    .line 1647
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {p1}, Landroid/service/dreams/DreamService$Injector;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    .line 1648
    iget-object p4, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {p4}, Landroid/service/dreams/DreamService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    .line 1649
    invoke-interface {v0}, Landroid/service/dreams/DreamService$Injector;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1648
    invoke-static {p4, v0, p1, p3}, Landroid/service/dreams/DreamService;->fetchDreamLabel(Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/pm/ServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1651
    invoke-static {p2, p1}, Landroid/service/dreams/DreamActivity;->setTitle(Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 1654
    :try_start_b6
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p1, p2}, Landroid/service/dreams/IDreamManager;->startDreamActivity(Landroid/content/Intent;)V
    :try_end_bb
    .catch Ljava/lang/SecurityException; {:try_start_b6 .. :try_end_bb} :catch_c8
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_bb} :catch_bc

    goto :goto_d3

    .line 1660
    :catch_bc
    move-exception p1

    .line 1661
    iget-object p2, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string p3, "Could not connect to activity task manager to start dream activity"

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_d4

    .line 1655
    :catch_c8
    move-exception p1

    .line 1656
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string p2, "Received SecurityException trying to start DreamActivity. Aborting dream start."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    .line 1663
    :goto_d3
    nop

    .line 1664
    :goto_d4
    goto :goto_da

    .line 1665
    :cond_d5
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mDispatchAfterOnAttachedToWindow:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1667
    :goto_da
    return-void

    .line 1595
    :cond_db
    :goto_db
    iget-object p2, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string p3, "attach() called after dream already finished"

    invoke-static {p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :try_start_e2
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->startAndStopDozingInBackground()Z

    move-result p2

    if-eqz p2, :cond_ee

    .line 1598
    iget-object p2, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p2, p1, v1}, Landroid/service/dreams/IDreamManager;->finishSelfOneway(Landroid/os/IBinder;Z)V

    goto :goto_f3

    .line 1600
    :cond_ee
    iget-object p2, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {p2, p1, v1}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_f3
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_f3} :catch_f4

    .line 1604
    :goto_f3
    goto :goto_f5

    .line 1602
    :catch_f4
    move-exception p1

    .line 1605
    :goto_f5
    return-void
.end method

.method private static blacklist clampAbsoluteBrightness(F)F
    .registers 3

    .line 1846
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_7

    .line 1847
    return p0

    .line 1849
    :cond_7
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method private blacklist comeToFront()V
    .registers 3

    .line 1364
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    if-nez v0, :cond_5

    .line 1365
    return-void

    .line 1367
    :cond_5
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    new-instance v1, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda5;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->addConsumer(Ljava/util/function/Consumer;)V

    .line 1374
    return-void
.end method

.method private static blacklist convertToComponentName(Ljava/lang/String;Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    .registers 6

    .line 1517
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1518
    return-object v0

    .line 1522
    :cond_4
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1523
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_19

    .line 1524
    :cond_11
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    .line 1526
    :goto_19
    if-nez p0, :cond_1c

    .line 1527
    return-object v0

    .line 1532
    :cond_1c
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 1533
    sget-object p2, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent package name in component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1534
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", should be: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1533
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    return-object v0

    .line 1540
    :cond_51
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    if-nez p1, :cond_7a

    .line 1541
    sget-object p1, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dream settings activity not found: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    return-object v0

    .line 1545
    :cond_7a
    return-object p0
.end method

.method private greylist-max-o detach()V
    .registers 4

    .line 1554
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 1555
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v2, "detach(): Calling onDreamingStopped()"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_10
    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    .line 1557
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 1560
    :cond_15
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1561
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_2a

    .line 1563
    :cond_27
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    .line 1566
    :goto_2a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    .line 1567
    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    .line 1568
    return-void
.end method

.method private static blacklist fetchDreamLabel(Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Landroid/content/pm/ServiceInfo;Z)Ljava/lang/CharSequence;
    .registers 4

    .line 1793
    if-nez p2, :cond_4

    .line 1794
    const/4 p0, 0x0

    return-object p0

    .line 1796
    :cond_4
    invoke-virtual {p2, p0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1797
    if-eqz p3, :cond_19

    if-nez p0, :cond_d

    goto :goto_19

    .line 1801
    :cond_d
    const p2, 0x104038b

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1798
    :cond_19
    :goto_19
    return-object p0
.end method

.method private static blacklist fetchServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 4

    .line 1806
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1809
    nop

    .line 1810
    const-wide/16 v0, 0x80

    :try_start_7
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v0

    .line 1809
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_f} :catch_10

    return-object p0

    .line 1811
    :catch_10
    move-exception p0

    .line 1812
    sget-boolean p0, Landroid/service/dreams/DreamService;->DEBUG:Z

    if-eqz p0, :cond_31

    sget-object p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot find component "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist fetchShouldShowComplications(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Z
    .registers 2

    .line 1780
    invoke-static {p0, p1}, Landroid/service/dreams/DreamService;->getDreamMetadata(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Landroid/service/dreams/DreamService$DreamMetadata;

    move-result-object p0

    .line 1781
    if-eqz p0, :cond_9

    .line 1782
    iget-boolean p0, p0, Landroid/service/dreams/DreamService$DreamMetadata;->showComplications:Z

    return p0

    .line 1784
    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist getDreamMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/service/dreams/DreamService$DreamMetadata;
    .registers 2

    .line 1472
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/service/dreams/DreamService;->getDreamMetadata(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Landroid/service/dreams/DreamService$DreamMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDreamMetadata(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Landroid/service/dreams/DreamService$DreamMetadata;
    .registers 8

    .line 1486
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1488
    :cond_4
    const-string v1, "dream"

    sget-object v2, Lcom/android/internal/R$styleable;->Dream:[I

    const-string v3, "android.service.dream"

    invoke-virtual {p0, p1, v3, v1, v2}, Landroid/content/pm/PackageManager;->extractPackageItemInfoAttributes(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1491
    if-nez v1, :cond_16

    .line 1509
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    .line 1491
    :cond_15
    return-object v0

    .line 1493
    :cond_16
    :try_start_16
    new-instance v2, Landroid/service/dreams/DreamService$DreamMetadata;

    .line 1495
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1494
    invoke-static {v4, p1, p0}, Landroid/service/dreams/DreamService;->convertToComponentName(Ljava/lang/String;Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    .line 1499
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1501
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 1503
    const/4 v5, 0x3

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-direct {v2, p0, p1, v4, v3}, Landroid/service/dreams/DreamService$DreamMetadata;-><init>(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;ZI)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_33} :catch_3b
    .catchall {:try_start_16 .. :try_end_33} :catchall_39

    .line 1509
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    .line 1493
    :cond_38
    return-object v2

    .line 1488
    :catchall_39
    move-exception p0

    goto :goto_4a

    .line 1505
    :catch_3b
    move-exception p0

    .line 1506
    :try_start_3c
    sget-object p1, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to create read metadata"

    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_39

    .line 1507
    nop

    .line 1509
    if-eqz v1, :cond_49

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V

    .line 1507
    :cond_49
    return-object v0

    .line 1488
    :goto_4a
    if-eqz v1, :cond_54

    :try_start_4c
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_54

    :catchall_50
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    throw p0
.end method

.method private greylist-max-o getWindowFlagValue(IZ)Z
    .registers 4

    .line 1752
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_5

    goto :goto_13

    :cond_5
    iget-object p2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_12

    const/4 p2, 0x1

    goto :goto_13

    :cond_12
    const/4 p2, 0x0

    :goto_13
    return p2
.end method

.method private blacklist isCallerSystemUi()Z
    .registers 2

    .line 1765
    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private synthetic blacklist lambda$attach$4(Landroid/os/IRemoteCallback;)V
    .registers 4

    .line 1622
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-eqz v0, :cond_13

    .line 1623
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    .line 1625
    const/4 v0, 0x0

    :try_start_c
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_1a

    .line 1628
    :try_start_f
    invoke-interface {p1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 1631
    nop

    .line 1634
    :cond_13
    return-void

    .line 1629
    :catch_14
    move-exception p1

    .line 1630
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1627
    :catchall_1a
    move-exception v1

    .line 1628
    :try_start_1b
    invoke-interface {p1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_20

    .line 1631
    nop

    .line 1632
    throw v1

    .line 1629
    :catch_20
    move-exception p1

    .line 1630
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private synthetic blacklist lambda$comeToFront$2(Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 5

    .line 1369
    :try_start_0
    invoke-interface {p1}, Landroid/service/dreams/IDreamOverlayClient;->comeToFront()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1372
    goto :goto_1d

    .line 1370
    :catch_4
    move-exception p1

    .line 1371
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not tell overlay to come to front:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :goto_1d
    return-void
.end method

.method private synthetic blacklist lambda$dump$5(Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 1819
    invoke-virtual {p0, p1, p3, p2}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$finish$1(Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 5

    .line 1304
    :try_start_0
    invoke-interface {p1}, Landroid/service/dreams/IDreamOverlayClient;->endDream()V

    .line 1305
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    invoke-virtual {p1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->unbind()V

    .line 1306
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1309
    goto :goto_25

    .line 1307
    :catch_c
    move-exception p1

    .line 1308
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not inform overlay of dream end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :goto_25
    return-void
.end method

.method private synthetic blacklist lambda$onWakeUp$0(Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 4

    .line 1245
    :try_start_0
    invoke-interface {p1}, Landroid/service/dreams/IDreamOverlayClient;->wakeUp()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_9
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 1249
    :goto_3
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    .line 1250
    goto :goto_12

    .line 1249
    :catchall_7
    move-exception p1

    goto :goto_13

    .line 1246
    :catch_9
    move-exception p1

    .line 1247
    :try_start_a
    sget-object v0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v1, "Error waking the overlay service"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_7

    goto :goto_3

    .line 1251
    :goto_12
    return-void

    .line 1249
    :goto_13
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    .line 1250
    throw p1
.end method

.method private synthetic blacklist lambda$wakeUp$3(Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 5

    .line 1394
    :try_start_0
    invoke-interface {p1}, Landroid/service/dreams/IDreamOverlayClient;->onWakeRequested()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1397
    goto :goto_1d

    .line 1395
    :catch_4
    move-exception p1

    .line 1396
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not inform overlay of dream wakeup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :goto_1d
    return-void
.end method

.method private blacklist onActivityCreated(Landroid/service/dreams/DreamActivity;Landroid/os/IBinder;)V
    .registers 4

    .line 1921
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    if-ne p2, v0, :cond_28

    iget-boolean p2, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-eqz p2, :cond_9

    goto :goto_28

    .line 1929
    :cond_9
    iget-object p2, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_1e

    .line 1930
    sget-object p2, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v0, "A DreamActivity has already been started, finishing latest DreamActivity"

    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    invoke-virtual {p1}, Landroid/service/dreams/DreamActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1d

    .line 1933
    invoke-virtual {p1}, Landroid/service/dreams/DreamActivity;->finishAndRemoveTask()V

    .line 1935
    :cond_1d
    return-void

    .line 1938
    :cond_1e
    iput-object p1, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    .line 1939
    invoke-virtual {p1}, Landroid/service/dreams/DreamActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->onWindowCreated(Landroid/view/Window;)V

    .line 1940
    return-void

    .line 1922
    :cond_28
    :goto_28
    sget-object p2, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string v0, "DreamActivity was created after the dream was finished or a new dream started, finishing DreamActivity"

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    invoke-virtual {p1}, Landroid/service/dreams/DreamActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_38

    .line 1925
    invoke-virtual {p1}, Landroid/service/dreams/DreamActivity;->finishAndRemoveTask()V

    .line 1927
    :cond_38
    return-void
.end method

.method private blacklist onActivityDestroyed()V
    .registers 2

    .line 1943
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    .line 1944
    iput-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    .line 1945
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    .line 1946
    return-void
.end method

.method private blacklist onWindowCreated(Landroid/view/Window;)V
    .registers 6

    .line 1670
    iput-object p1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    .line 1671
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {p1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 1672
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 1674
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 1675
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1681
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    const/16 v1, 0x400

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    const v3, 0x1490101

    or-int/2addr v1, v3

    .line 1682
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eqz v3, :cond_29

    const/16 v3, 0x80

    goto :goto_2a

    :cond_29
    move v3, v2

    :goto_2a
    or-int/2addr v1, v3

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1684
    const/4 v0, 0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1686
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1689
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 1692
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 1693
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {p1, v2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 1694
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateAccessibilityMessage()V

    .line 1695
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/service/dreams/DreamService$3;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamService$3;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1740
    return-void
.end method

.method public static blacklist setDreamOverlayComponent(Landroid/content/Intent;Landroid/content/ComponentName;)V
    .registers 3

    .line 2039
    const-string v0, "android.service.dream.DreamService.dream_overlay_component"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2040
    return-void
.end method

.method private blacklist updateAccessibilityMessage()V
    .registers 4

    .line 1743
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_5

    return-void

    .line 1744
    :cond_5
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamAccessibility:Landroid/service/dreams/utils/DreamAccessibility;

    if-nez v0, :cond_1b

    .line 1745
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1746
    new-instance v1, Landroid/service/dreams/utils/DreamAccessibility;

    new-instance v2, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda0;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-direct {v1, p0, v0, v2}, Landroid/service/dreams/utils/DreamAccessibility;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/Runnable;)V

    iput-object v1, p0, Landroid/service/dreams/DreamService;->mDreamAccessibility:Landroid/service/dreams/utils/DreamAccessibility;

    .line 1748
    :cond_1b
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamAccessibility:Landroid/service/dreams/utils/DreamAccessibility;

    invoke-virtual {v0}, Landroid/service/dreams/utils/DreamAccessibility;->updateAccessibilityConfiguration()V

    .line 1749
    return-void
.end method

.method private declared-synchronized greylist-max-o updateDoze()V
    .registers 7

    monitor-enter p0

    .line 931
    :try_start_1
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    .line 933
    if-nez v1, :cond_e

    .line 934
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "Updating doze without a dream token."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_5d

    .line 935
    monitor-exit p0

    return-void

    .line 938
    :cond_e
    :try_start_e
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_5d

    if-eqz v0, :cond_5b

    .line 940
    :try_start_12
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateDoze mDozeScreenState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDozeScreenBrightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->startAndStopDozingInBackground()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 943
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget v2, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    iget v3, p0, Landroid/service/dreams/DreamService;->mDozeScreenStateReason:I

    iget v4, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:F

    iget-boolean v5, p0, Landroid/service/dreams/DreamService;->mUseNormalBrightnessForDoze:Z

    invoke-interface/range {v0 .. v5}, Landroid/service/dreams/IDreamManager;->startDozingOneway(Landroid/os/IBinder;IIFZ)V

    goto :goto_59

    .line 947
    :cond_4c
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget v2, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    iget v3, p0, Landroid/service/dreams/DreamService;->mDozeScreenStateReason:I

    iget v4, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:F

    iget-boolean v5, p0, Landroid/service/dreams/DreamService;->mUseNormalBrightnessForDoze:Z

    invoke-interface/range {v0 .. v5}, Landroid/service/dreams/IDreamManager;->startDozing(Landroid/os/IBinder;IIFZ)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_59} :catch_5a
    .catchall {:try_start_12 .. :try_end_59} :catchall_5d

    .line 953
    :goto_59
    goto :goto_5b

    .line 951
    :catch_5a
    move-exception v0

    .line 955
    :cond_5b
    :goto_5b
    monitor-exit p0

    return-void

    .line 930
    :catchall_5d
    move-exception v0

    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v0
.end method

.method private greylist-max-o wakeUp(Z)V
    .registers 5

    .line 1386
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_35

    .line 1387
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wakeUp(): fromSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWaking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_35
    if-nez p1, :cond_48

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getRedirectWake()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1392
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    new-instance v0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda2;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {p1, v0}, Landroid/service/dreams/DreamOverlayConnectionHandler;->addConsumer(Ljava/util/function/Consumer;)V

    .line 1400
    return-void

    .line 1403
    :cond_48
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    if-nez v0, :cond_8a

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v0, :cond_8a

    .line 1404
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    .line 1406
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5d

    .line 1414
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    .line 1420
    :cond_5d
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onWakeUp()V

    .line 1424
    if-nez p1, :cond_8a

    iget-boolean p1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez p1, :cond_8a

    .line 1425
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    if-nez p1, :cond_72

    .line 1426
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v0, "WakeUp was called before the dream was attached."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 1429
    :cond_72
    :try_start_72
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    .line 1431
    if-eqz p1, :cond_88

    .line 1432
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->startAndStopDozingInBackground()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_83

    .line 1433
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0, p1, v1}, Landroid/service/dreams/IDreamManager;->finishSelfOneway(Landroid/os/IBinder;Z)V

    goto :goto_88

    .line 1435
    :cond_83
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0, p1, v1}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_88} :catch_89

    .line 1440
    :cond_88
    :goto_88
    goto :goto_8a

    .line 1438
    :catch_89
    move-exception p1

    .line 1444
    :cond_8a
    :goto_8a
    return-void
.end method


# virtual methods
.method public whitelist addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 734
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    return-void
.end method

.method public greylist-max-p canDoze()Z
    .registers 2

    .line 888
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    return v0
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 530
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_14

    .line 531
    iget-boolean p1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v0, "Waking up on genericMotionEvent"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_f
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 533
    const/4 p1, 0x1

    return p1

    .line 535
    :cond_14
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 431
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->dreamHandlesConfirmKeys()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6b

    .line 433
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 434
    return v1

    .line 438
    :cond_14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 439
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_9c

    goto :goto_6a

    .line 448
    :pswitch_26
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTrackingConfirmKey:Ljava/lang/Integer;

    if-eqz v0, :cond_59

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTrackingConfirmKey:Ljava/lang/Integer;

    .line 449
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-eq v0, p1, :cond_37

    goto :goto_59

    .line 453
    :cond_37
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/service/dreams/DreamService;->mTrackingConfirmKey:Ljava/lang/Integer;

    .line 455
    const-class p1, Landroid/app/KeyguardManager;

    .line 456
    invoke-virtual {p0, p1}, Landroid/service/dreams/DreamService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 459
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 460
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 461
    return v1

    .line 464
    :cond_4c
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/service/dreams/DreamService$1;

    invoke-direct {v2, p0}, Landroid/service/dreams/DreamService$1;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto :goto_6a

    .line 450
    :cond_59
    :goto_59
    return v1

    .line 441
    :pswitch_5a
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTrackingConfirmKey:Ljava/lang/Integer;

    if-eqz v0, :cond_5f

    .line 442
    return v1

    .line 445
    :cond_5f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/service/dreams/DreamService;->mTrackingConfirmKey:Ljava/lang/Integer;

    .line 446
    nop

    .line 476
    :goto_6a
    return v1

    .line 480
    :cond_6b
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_7e

    .line 481
    iget-boolean p1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz p1, :cond_7a

    iget-object p1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v0, "Waking up on keyEvent"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_7a
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 483
    return v1

    .line 484
    :cond_7e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_94

    .line 485
    iget-boolean p1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz p1, :cond_90

    iget-object p1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v0, "Waking up on back key"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_90
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 487
    return v1

    .line 489
    :cond_94
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_26
    .end packed-switch
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 495
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_14

    .line 496
    iget-boolean p1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v0, "Waking up on keyShortcutEvent"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_f
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 498
    const/4 p1, 0x1

    return p1

    .line 500
    :cond_14
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    .line 541
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 508
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 509
    iget-boolean p1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v0, "Waking up on touchEvent"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_16
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 511
    return v1

    .line 513
    :cond_1a
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 519
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_14

    .line 520
    iget-boolean p1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v0, "Waking up on trackballEvent"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_f
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    .line 522
    const/4 p1, 0x1

    return p1

    .line 524
    :cond_14
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 1819
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p3}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda7;-><init>(Landroid/service/dreams/DreamService;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    const-string v3, ""

    const-wide/16 v4, 0x3e8

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 1820
    return-void
.end method

.method protected greylist-max-o dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 1824
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1825
    iget-boolean p1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-eqz p1, :cond_23

    .line 1826
    const-string/jumbo p1, "stopped"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_42

    .line 1828
    :cond_23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "running (dreamToken="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1830
    :goto_42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  window: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1831
    const-string p1, "  flags:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1832
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_6a

    const-string p1, " interactive"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1833
    :cond_6a
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isFullscreen()Z

    move-result p1

    if-eqz p1, :cond_75

    const-string p1, " fullscreen"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1834
    :cond_75
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isScreenBright()Z

    move-result p1

    if-eqz p1, :cond_80

    const-string p1, " bright"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1835
    :cond_80
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isWindowless()Z

    move-result p1

    if-eqz p1, :cond_8b

    const-string p1, " windowless"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1836
    :cond_8b
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isDozing()Z

    move-result p1

    if-eqz p1, :cond_97

    const-string p1, " dozing"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a2

    .line 1837
    :cond_97
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result p1

    if-eqz p1, :cond_a2

    const-string p1, " candoze"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1838
    :cond_a2
    :goto_a2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1839
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result p1

    if-eqz p1, :cond_df

    .line 1840
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  doze screen state: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    invoke-static {p3}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1841
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  doze screen brightness: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1843
    :cond_df
    return-void
.end method

.method public whitelist findViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 757
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist finish()V
    .registers 4

    .line 1301
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    if-eqz v0, :cond_e

    .line 1302
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    new-instance v1, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda1;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->addConsumer(Ljava/util/function/Consumer;)V

    .line 1313
    :cond_e
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish(): mFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_2c
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    .line 1316
    if-eqz v0, :cond_3a

    .line 1317
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_39

    .line 1319
    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 1321
    :cond_39
    return-void

    .line 1324
    :cond_3a
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-eqz v0, :cond_3f

    .line 1325
    return-void

    .line 1327
    :cond_3f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    .line 1329
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    .line 1330
    if-nez v1, :cond_55

    .line 1331
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_51

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string v1, "finish() called when not attached."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_51
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->stopSelf()V

    .line 1333
    return-void

    .line 1339
    :cond_55
    :try_start_55
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->startAndStopDozingInBackground()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1340
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v2, v1, v0}, Landroid/service/dreams/IDreamManager;->finishSelfOneway(Landroid/os/IBinder;Z)V

    goto :goto_66

    .line 1342
    :cond_61
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v2, v1, v0}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_66} :catch_67

    .line 1346
    :goto_66
    goto :goto_68

    .line 1344
    :catch_67
    move-exception v0

    .line 1347
    :goto_68
    return-void
.end method

.method public blacklist getActivity()Landroid/app/Activity;
    .registers 2

    .line 671
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public greylist-max-r getDozeScreenBrightness()F
    .registers 2

    .line 1111
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:F

    return v0
.end method

.method public greylist-max-o getDozeScreenState()I
    .registers 2

    .line 1010
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    return v0
.end method

.method public blacklist getRedirectWake()Z
    .registers 2

    .line 1382
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mRedirectWake:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist getUseNormalBrightnessForDoze()Z
    .registers 2

    .line 1095
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mUseNormalBrightnessForDoze:Z

    return v0
.end method

.method public whitelist getWindow()Landroid/view/Window;
    .registers 2

    .line 658
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public whitelist getWindowManager()Landroid/view/WindowManager;
    .registers 2

    .line 648
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public greylist-max-p isDozing()Z
    .registers 2

    .line 995
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    return v0
.end method

.method public whitelist isFullscreen()Z
    .registers 2

    .line 830
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    return v0
.end method

.method public whitelist isInteractive()Z
    .registers 2

    .line 806
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    return v0
.end method

.method public whitelist isScreenBright()Z
    .registers 3

    .line 854
    const/16 v0, 0x80

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    invoke-direct {p0, v0, v1}, Landroid/service/dreams/DreamService;->getWindowFlagValue(IZ)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isWindowless()Z
    .registers 2

    .line 873
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    return v0
.end method

.method public whitelist onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 2

    .line 637
    return-void
.end method

.method public whitelist onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2

    .line 632
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .registers 1

    .line 592
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    .line 1260
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBind() intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_1d
    new-instance v0, Landroid/service/dreams/DreamService$DreamServiceWrapper;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/service/dreams/DreamService$DreamServiceWrapper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mDreamServiceWrapper:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    .line 1262
    const-string v0, "android.service.dream.DreamService.dream_overlay_component"

    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 1266
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-nez v0, :cond_51

    if-eqz p1, :cond_51

    .line 1267
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    new-instance v1, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda4;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-interface {v0, p1, v1}, Landroid/service/dreams/DreamService$Injector;->createOverlayConnection(Landroid/content/ComponentName;Ljava/lang/Runnable;)Landroid/service/dreams/DreamOverlayConnectionHandler;

    move-result-object p1

    iput-object p1, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    .line 1270
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    invoke-virtual {p1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->bind()Z

    move-result p1

    if-nez p1, :cond_51

    .line 1272
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    .line 1276
    :cond_51
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mDreamServiceWrapper:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    return-object p1
.end method

.method public whitelist onContentChanged()V
    .registers 1

    .line 582
    return-void
.end method

.method public whitelist onCreate()V
    .registers 3

    .line 1181
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_c
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v0}, Landroid/service/dreams/DreamService$Injector;->getDreamComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mDreamComponent:Landroid/content/ComponentName;

    .line 1184
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    invoke-interface {v0}, Landroid/service/dreams/DreamService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mInjector:Landroid/service/dreams/DreamService$Injector;

    .line 1185
    invoke-interface {v1}, Landroid/service/dreams/DreamService$Injector;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 1184
    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->fetchShouldShowComplications(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mShouldShowComplications:Z

    .line 1186
    new-instance v0, Landroid/service/dreams/DreamService$2;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamService$2;-><init>(Landroid/service/dreams/DreamService;)V

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    .line 1209
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1210
    return-void
.end method

.method public whitelist onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 3

    .line 553
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onCreatePanelView(I)Landroid/view/View;
    .registers 2

    .line 547
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onDestroy()V
    .registers 3

    .line 1449
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :cond_c
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    .line 1454
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    .line 1455
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1456
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 1

    .line 597
    return-void
.end method

.method public whitelist onDreamingStarted()V
    .registers 3

    .line 1216
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStarted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_c
    return-void
.end method

.method public whitelist onDreamingStopped()V
    .registers 3

    .line 1225
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStopped()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_c
    return-void
.end method

.method public whitelist onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 3

    .line 571
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onMenuOpened(ILandroid/view/Menu;)Z
    .registers 3

    .line 565
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onPanelClosed(ILandroid/view/Menu;)V
    .registers 3

    .line 602
    return-void
.end method

.method public whitelist onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 4

    .line 559
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onSearchRequested()Z
    .registers 2

    .line 613
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 2

    .line 607
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onSearchRequested()Z

    move-result p1

    return p1
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .registers 3

    .line 1282
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    if-eqz v0, :cond_c

    .line 1283
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    invoke-virtual {v0}, Landroid/service/dreams/DreamOverlayConnectionHandler;->unbind()V

    .line 1284
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    .line 1287
    :cond_c
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onWakeUp()V
    .registers 3

    .line 1242
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    if-eqz v0, :cond_f

    .line 1243
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mOverlayConnection:Landroid/service/dreams/DreamOverlayConnectionHandler;

    new-instance v1, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda3;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->addConsumer(Ljava/util/function/Consumer;)V

    goto :goto_12

    .line 1253
    :cond_f
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    .line 1255
    :goto_12
    return-void
.end method

.method public whitelist onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 2

    .line 577
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 2

    .line 587
    return-void
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 2

    .line 619
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 3

    .line 626
    const/4 p1, 0x0

    return-object p1
.end method

.method public final whitelist requireViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 779
    invoke-virtual {p0, p1}, Landroid/service/dreams/DreamService;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 780
    if-eqz p1, :cond_7

    .line 784
    return-object p1

    .line 781
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ID does not reference a View inside this DreamService"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setContentView(I)V
    .registers 3

    .line 686
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 687
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;)V
    .registers 3

    .line 702
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 703
    return-void
.end method

.method public whitelist setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 722
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    return-void
.end method

.method public greylist-max-o setDebug(Z)V
    .registers 2

    .line 424
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    .line 425
    return-void
.end method

.method public greylist setDozeScreenBrightness(F)V
    .registers 3

    .line 1164
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1165
    invoke-static {p1}, Landroid/service/dreams/DreamService;->clampAbsoluteBrightness(F)F

    move-result p1

    .line 1168
    :cond_a
    monitor-enter p0

    .line 1169
    :try_start_b
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:F

    invoke-static {v0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1170
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:F

    .line 1171
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 1173
    :cond_18
    monitor-exit p0

    .line 1174
    return-void

    .line 1173
    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public greylist setDozeScreenState(I)V
    .registers 3

    .line 1023
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/service/dreams/DreamService;->setDozeScreenState(IIZ)V

    .line 1025
    return-void
.end method

.method public greylist setDozeScreenState(IIZ)V
    .registers 5

    .line 1073
    monitor-enter p0

    .line 1074
    :try_start_1
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    if-ne v0, p1, :cond_9

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mUseNormalBrightnessForDoze:Z

    if-eq v0, p3, :cond_12

    .line 1076
    :cond_9
    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    .line 1077
    iput p2, p0, Landroid/service/dreams/DreamService;->mDozeScreenStateReason:I

    .line 1078
    iput-boolean p3, p0, Landroid/service/dreams/DreamService;->mUseNormalBrightnessForDoze:Z

    .line 1079
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 1081
    :cond_12
    monitor-exit p0

    .line 1082
    return-void

    .line 1081
    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public whitelist setFullscreen(Z)V
    .registers 3

    .line 817
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eq v0, p1, :cond_13

    .line 818
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    .line 819
    nop

    .line 820
    iget-boolean p1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    const/16 v0, 0x400

    if-eqz p1, :cond_f

    move p1, v0

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    invoke-direct {p0, p1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    .line 822
    :cond_13
    return-void
.end method

.method public whitelist setInteractive(Z)V
    .registers 2

    .line 797
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    .line 798
    return-void
.end method

.method public whitelist setScreenBright(Z)V
    .registers 3

    .line 840
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eq v0, p1, :cond_17

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mPreviewMode:Z

    if-nez v0, :cond_17

    .line 841
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    .line 842
    nop

    .line 843
    iget-boolean p1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    const/16 v0, 0x80

    if-eqz p1, :cond_13

    move p1, v0

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    invoke-direct {p0, p1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    .line 845
    :cond_17
    return-void
.end method

.method public greylist setScreenBrightness(F)V
    .registers 3

    .line 1125
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_d

    .line 1126
    sget-object p1, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "trying to set screen brightness without window"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    return-void

    .line 1130
    :cond_d
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1131
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1132
    iget-object p1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1133
    return-void
.end method

.method public blacklist setWindowless(Z)V
    .registers 2

    .line 864
    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    .line 865
    return-void
.end method

.method public greylist startDozing()V
    .registers 2

    .line 922
    monitor-enter p0

    .line 923
    :try_start_1
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-nez v0, :cond_f

    .line 924
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    .line 925
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    .line 927
    :cond_f
    monitor-exit p0

    .line 928
    return-void

    .line 927
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public greylist-max-p stopDozing()V
    .registers 3

    .line 970
    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-eqz v0, :cond_12

    .line 971
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    .line 973
    :try_start_7
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mDreamToken:Landroid/os/IBinder;

    .line 975
    if-eqz v0, :cond_10

    .line 976
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1, v0}, Landroid/service/dreams/IDreamManager;->stopDozing(Landroid/os/IBinder;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 980
    :cond_10
    goto :goto_12

    .line 978
    :catch_11
    move-exception v0

    .line 982
    :cond_12
    :goto_12
    return-void
.end method

.method public final whitelist wakeUp()V
    .registers 2

    .line 1357
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    .line 1358
    return-void
.end method
