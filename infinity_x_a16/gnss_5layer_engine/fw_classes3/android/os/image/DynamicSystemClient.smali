.class public Landroid/os/image/DynamicSystemClient;
.super Ljava/lang/Object;
.source "DynamicSystemClient.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;,
        Landroid/os/image/DynamicSystemClient$IncomingHandler;,
        Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;,
        Landroid/os/image/DynamicSystemClient$StatusChangedCause;,
        Landroid/os/image/DynamicSystemClient$InstallationStatus;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_HIDE_NOTIFICATION:Ljava/lang/String; = "android.os.image.action.HIDE_NOTIFICATION"

.field public static final blacklist ACTION_NOTIFY_IF_IN_USE:Ljava/lang/String; = "android.os.image.action.NOTIFY_IF_IN_USE"

.field public static final blacklist ACTION_NOTIFY_KEYGUARD_DISMISSED:Ljava/lang/String; = "android.os.image.action.NOTIFY_KEYGUARD_DISMISSED"

.field public static final blacklist ACTION_START_INSTALL:Ljava/lang/String; = "android.os.image.action.START_INSTALL"

.field public static final whitelist CAUSE_ERROR_EXCEPTION:I = 0x6

.field public static final whitelist CAUSE_ERROR_INVALID_URL:I = 0x4

.field public static final whitelist CAUSE_ERROR_IO:I = 0x3

.field public static final whitelist CAUSE_ERROR_IPC:I = 0x5

.field public static final whitelist CAUSE_INSTALL_CANCELLED:I = 0x2

.field public static final whitelist CAUSE_INSTALL_COMPLETED:I = 0x1

.field public static final whitelist CAUSE_NOT_SPECIFIED:I = 0x0

.field public static final blacklist KEY_ENABLE_WHEN_COMPLETED:Ljava/lang/String; = "KEY_ENABLE_WHEN_COMPLETED"

.field public static final blacklist KEY_EXCEPTION_DETAIL:Ljava/lang/String; = "KEY_EXCEPTION_DETAIL"

.field public static final blacklist KEY_INSTALLED_SIZE:Ljava/lang/String; = "KEY_INSTALLED_SIZE"

.field public static final blacklist KEY_KEYGUARD_USE_DEFAULT_STRINGS:Ljava/lang/String; = "KEY_KEYGUARD_USE_DEFAULT_STRINGS"

.field public static final blacklist KEY_ONE_SHOT:Ljava/lang/String; = "KEY_ONE_SHOT"

.field public static final blacklist KEY_SYSTEM_SIZE:Ljava/lang/String; = "KEY_SYSTEM_SIZE"

.field public static final blacklist KEY_USERDATA_SIZE:Ljava/lang/String; = "KEY_USERDATA_SIZE"

.field public static final blacklist MSG_POST_STATUS:I = 0x3

.field public static final blacklist MSG_REGISTER_LISTENER:I = 0x1

.field public static final blacklist MSG_UNREGISTER_LISTENER:I = 0x2

.field public static final whitelist STATUS_IN_PROGRESS:I = 0x2

.field public static final whitelist STATUS_IN_USE:I = 0x4

.field public static final whitelist STATUS_NOT_STARTED:I = 0x1

.field public static final whitelist STATUS_READY:I = 0x3

.field public static final whitelist STATUS_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "DynamicSystemClient"


# instance fields
.field private blacklist mBound:Z

.field private final blacklist mConnection:Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

.field private final blacklist mMessenger:Landroid/os/Messenger;

.field private blacklist mService:Landroid/os/Messenger;


# direct methods
.method public static synthetic blacklist $r8$lambda$2SXZg9fRDLJCj1VpE2MhKQT3a7k(Landroid/os/image/DynamicSystemClient;IIJLjava/lang/Throwable;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/os/image/DynamicSystemClient;->lambda$notifyOnStatusChangedListener$0(IIJLjava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessenger(Landroid/os/image/DynamicSystemClient;)Landroid/os/Messenger;
    .registers 1

    iget-object p0, p0, Landroid/os/image/DynamicSystemClient;->mMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/os/image/DynamicSystemClient;)Landroid/os/Messenger;
    .registers 1

    iget-object p0, p0, Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Landroid/os/image/DynamicSystemClient;Landroid/os/Messenger;)V
    .registers 2

    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMessage(Landroid/os/image/DynamicSystemClient;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/image/DynamicSystemClient;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyOnStatusChangedListener(Landroid/os/image/DynamicSystemClient;IIJLjava/lang/Throwable;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/os/image/DynamicSystemClient;->notifyOnStatusChangedListener(IIJLjava/lang/Throwable;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mContext:Landroid/content/Context;

    .line 317
    new-instance p1, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;-><init>(Landroid/os/image/DynamicSystemClient;Landroid/os/image/DynamicSystemClient-IA;)V

    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mConnection:Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

    .line 318
    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Landroid/os/image/DynamicSystemClient$IncomingHandler;

    invoke-direct {v0, p0}, Landroid/os/image/DynamicSystemClient$IncomingHandler;-><init>(Landroid/os/image/DynamicSystemClient;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mMessenger:Landroid/os/Messenger;

    .line 319
    return-void
.end method

.method private blacklist handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 451
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_2c

    .line 453
    :pswitch_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 454
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 456
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 457
    const-string v0, "KEY_INSTALLED_SIZE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 458
    const-string v0, "KEY_EXCEPTION_DETAIL"

    const-class v1, Landroid/os/ParcelableException;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelableException;

    .line 461
    if-nez p1, :cond_22

    const/4 p1, 0x0

    goto :goto_26

    :cond_22
    invoke-virtual {p1}, Landroid/os/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_26
    move-object v6, p1

    .line 463
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/os/image/DynamicSystemClient;->notifyOnStatusChangedListener(IIJLjava/lang/Throwable;)V

    .line 464
    nop

    .line 469
    :goto_2c
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x3
        :pswitch_6
    .end packed-switch
.end method

.method private synthetic blacklist lambda$notifyOnStatusChangedListener$0(IIJLjava/lang/Throwable;)V
    .registers 7

    .line 348
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;->onStatusChanged(IIJLjava/lang/Throwable;)V

    .line 349
    return-void
.end method

.method private blacklist notifyOnStatusChangedListener(IIJLjava/lang/Throwable;)V
    .registers 14

    .line 344
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    if-eqz v0, :cond_1f

    .line 345
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_18

    .line 346
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/image/DynamicSystemClient$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/os/image/DynamicSystemClient$$ExternalSyntheticLambda0;-><init>(Landroid/os/image/DynamicSystemClient;IIJLjava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 351
    :cond_18
    move-object v2, p0

    iget-object v0, v2, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;->onStatusChanged(IIJLjava/lang/Throwable;)V

    .line 354
    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method public whitelist bind()V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 365
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 366
    const-string v1, "com.android.dynsystem"

    const-string v2, "com.android.dynsystem.DynamicSystemInstallationService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/os/image/DynamicSystemClient;->mConnection:Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 371
    iput-boolean v3, p0, Landroid/os/image/DynamicSystemClient;->mBound:Z

    .line 372
    return-void
.end method

.method public whitelist setOnStatusChangedListener(Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;)V
    .registers 2

    .line 338
    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    .line 339
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 340
    return-void
.end method

.method public whitelist setOnStatusChangedListener(Ljava/util/concurrent/Executor;Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;)V
    .registers 3

    .line 328
    iput-object p2, p0, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    .line 329
    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 330
    return-void
.end method

.method public whitelist start(Landroid/net/Uri;J)V
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 417
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/os/image/DynamicSystemClient;->start(Landroid/net/Uri;JJ)V

    .line 418
    return-void
.end method

.method public whitelist start(Landroid/net/Uri;JJ)V
    .registers 9

    .line 435
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 437
    const-string v1, "com.android.dynsystem"

    const-string v2, "com.android.dynsystem.VerificationActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 441
    const-string p1, "android.os.image.action.START_INSTALL"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 444
    const-string p1, "KEY_SYSTEM_SIZE"

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 445
    const-string p1, "KEY_USERDATA_SIZE"

    invoke-virtual {v0, p1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 447
    iget-object p1, p0, Landroid/os/image/DynamicSystemClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 448
    return-void
.end method

.method public whitelist unbind()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 382
    iget-boolean v0, p0, Landroid/os/image/DynamicSystemClient;->mBound:Z

    if-nez v0, :cond_5

    .line 383
    return-void

    .line 386
    :cond_5
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_21

    .line 388
    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_b
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 389
    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 390
    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 393
    goto :goto_21

    .line 391
    :catch_19
    move-exception v0

    .line 392
    const-string v0, "DynamicSystemClient"

    const-string v1, "Unable to unregister from installation service"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_21
    :goto_21
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mConnection:Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/image/DynamicSystemClient;->mBound:Z

    .line 400
    return-void
.end method
