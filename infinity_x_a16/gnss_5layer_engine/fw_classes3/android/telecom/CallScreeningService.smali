.class public abstract Landroid/telecom/CallScreeningService;
.super Landroid/app/Service;
.source "CallScreeningService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallScreeningService$CallScreeningBinder;,
        Landroid/telecom/CallScreeningService$CallResponse;,
        Landroid/telecom/CallScreeningService$ParcelableCallResponse;
    }
.end annotation


# static fields
.field private static final greylist-max-o MSG_SCREEN_CALL:I = 0x1

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.CallScreeningService"


# instance fields
.field private greylist-max-o mCallScreeningAdapter:Lcom/android/internal/telecom/ICallScreeningAdapter;

.field private final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallScreeningAdapter(Landroid/telecom/CallScreeningService;)Lcom/android/internal/telecom/ICallScreeningAdapter;
    .registers 1

    iget-object p0, p0, Landroid/telecom/CallScreeningService;->mCallScreeningAdapter:Lcom/android/internal/telecom/ICallScreeningAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telecom/CallScreeningService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/telecom/CallScreeningService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallScreeningAdapter(Landroid/telecom/CallScreeningService;Lcom/android/internal/telecom/ICallScreeningAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/CallScreeningService;->mCallScreeningAdapter:Lcom/android/internal/telecom/ICallScreeningAdapter;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 591
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 130
    new-instance v0, Landroid/telecom/CallScreeningService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/CallScreeningService$1;-><init>(Landroid/telecom/CallScreeningService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/CallScreeningService;->mHandler:Landroid/os/Handler;

    .line 592
    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 596
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "onBind"

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    new-instance p1, Landroid/telecom/CallScreeningService$CallScreeningBinder;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/telecom/CallScreeningService$CallScreeningBinder;-><init>(Landroid/telecom/CallScreeningService;Landroid/telecom/CallScreeningService-IA;)V

    return-object p1
.end method

.method public abstract whitelist onScreenCall(Landroid/telecom/Call$Details;)V
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .registers 4

    .line 602
    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "onUnbind"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    return p1
.end method

.method public final whitelist respondToCall(Landroid/telecom/Call$Details;Landroid/telecom/CallScreeningService$CallResponse;)V
    .registers 7

    .line 674
    :try_start_0
    iget-object v0, p0, Landroid/telecom/CallScreeningService;->mCallScreeningAdapter:Lcom/android/internal/telecom/ICallScreeningAdapter;

    .line 675
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getTelecomCallId()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/content/ComponentName;

    .line 676
    invoke-virtual {p0}, Landroid/telecom/CallScreeningService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-virtual {p2}, Landroid/telecom/CallScreeningService$CallResponse;->toParcelable()Landroid/telecom/CallScreeningService$ParcelableCallResponse;

    move-result-object p2

    .line 674
    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telecom/ICallScreeningAdapter;->onScreeningResponse(Ljava/lang/String;Landroid/content/ComponentName;Landroid/telecom/CallScreeningService$ParcelableCallResponse;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 680
    goto :goto_28

    .line 678
    :catch_1f
    move-exception p1

    .line 679
    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Got remote exception when returning response"

    invoke-static {p0, p1, v0, p2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    :goto_28
    return-void
.end method
