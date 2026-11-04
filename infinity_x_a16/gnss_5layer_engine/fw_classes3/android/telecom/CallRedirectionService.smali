.class public abstract Landroid/telecom/CallRedirectionService;
.super Landroid/app/Service;
.source "CallRedirectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallRedirectionService$CallRedirectionBinder;
    }
.end annotation


# static fields
.field private static final blacklist MSG_PLACE_CALL:I = 0x1

.field private static final blacklist MSG_TIMEOUT:I = 0x2

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.CallRedirectionService"


# instance fields
.field private blacklist mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telecom/CallRedirectionService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/telecom/CallRedirectionService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallRedirectionAdapter(Landroid/telecom/CallRedirectionService;Lcom/android/internal/telecom/ICallRedirectionAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/CallRedirectionService;->mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 228
    new-instance v0, Landroid/telecom/CallRedirectionService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/CallRedirectionService$1;-><init>(Landroid/telecom/CallRedirectionService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/CallRedirectionService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final whitelist cancelCall()V
    .registers 3

    .line 205
    :try_start_0
    iget-object v0, p0, Landroid/telecom/CallRedirectionService;->mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

    if-eqz v0, :cond_a

    .line 208
    iget-object v0, p0, Landroid/telecom/CallRedirectionService;->mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

    invoke-interface {v0}, Lcom/android/internal/telecom/ICallRedirectionAdapter;->cancelCall()V

    .line 211
    goto :goto_16

    .line 206
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only be called from onPlaceCall."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_12

    .line 209
    :catch_12
    move-exception v0

    .line 210
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 212
    :goto_16
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 286
    new-instance p1, Landroid/telecom/CallRedirectionService$CallRedirectionBinder;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/telecom/CallRedirectionService$CallRedirectionBinder;-><init>(Landroid/telecom/CallRedirectionService;Landroid/telecom/CallRedirectionService-IA;)V

    return-object p1
.end method

.method public blacklist onPlaceCall(Landroid/net/Uri;Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 5

    .line 130
    invoke-virtual {p0, p1, p3, p4}, Landroid/telecom/CallRedirectionService;->onPlaceCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 132
    return-void
.end method

.method public abstract whitelist onPlaceCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V
.end method

.method public whitelist onRedirectionTimeout()V
    .registers 1

    .line 139
    return-void
.end method

.method public final whitelist onUnbind(Landroid/content/Intent;)Z
    .registers 2

    .line 291
    const/4 p1, 0x0

    return p1
.end method

.method public final whitelist placeCallUnmodified()V
    .registers 3

    .line 153
    :try_start_0
    iget-object v0, p0, Landroid/telecom/CallRedirectionService;->mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

    if-eqz v0, :cond_a

    .line 156
    iget-object v0, p0, Landroid/telecom/CallRedirectionService;->mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

    invoke-interface {v0}, Lcom/android/internal/telecom/ICallRedirectionAdapter;->placeCallUnmodified()V

    .line 159
    goto :goto_16

    .line 154
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only be called from onPlaceCall."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_12

    .line 157
    :catch_12
    move-exception v0

    .line 158
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 160
    :goto_16
    return-void
.end method

.method public final whitelist redirectCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 5

    .line 184
    :try_start_0
    iget-object v0, p0, Landroid/telecom/CallRedirectionService;->mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

    if-eqz v0, :cond_a

    .line 187
    iget-object v0, p0, Landroid/telecom/CallRedirectionService;->mCallRedirectionAdapter:Lcom/android/internal/telecom/ICallRedirectionAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/ICallRedirectionAdapter;->redirectCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 190
    goto :goto_16

    .line 185
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can only be called from onPlaceCall."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_12

    .line 188
    :catch_12
    move-exception p1

    .line 189
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 191
    :goto_16
    return-void
.end method
