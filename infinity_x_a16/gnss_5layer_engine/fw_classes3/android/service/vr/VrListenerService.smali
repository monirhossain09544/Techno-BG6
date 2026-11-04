.class public abstract Landroid/service/vr/VrListenerService;
.super Landroid/app/Service;
.source "VrListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/vr/VrListenerService$VrListenerHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o MSG_ON_CURRENT_VR_ACTIVITY_CHANGED:I = 0x1

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.vr.VrListenerService"


# instance fields
.field private final greylist-max-o mBinder:Landroid/service/vr/IVrListener$Stub;

.field private final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/vr/VrListenerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/vr/VrListenerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 103
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    new-instance v0, Landroid/service/vr/VrListenerService$1;

    invoke-direct {v0, p0}, Landroid/service/vr/VrListenerService$1;-><init>(Landroid/service/vr/VrListenerService;)V

    iput-object v0, p0, Landroid/service/vr/VrListenerService;->mBinder:Landroid/service/vr/IVrListener$Stub;

    .line 104
    new-instance v0, Landroid/service/vr/VrListenerService$VrListenerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/vr/VrListenerService$VrListenerHandler;-><init>(Landroid/service/vr/VrListenerService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/vr/VrListenerService;->mHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method public static final whitelist isVrModePackageEnabled(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 3

    .line 169
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 170
    if-nez p0, :cond_c

    .line 171
    const/4 p0, 0x0

    return p0

    .line 173
    :cond_c
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 100
    iget-object p1, p0, Landroid/service/vr/VrListenerService;->mBinder:Landroid/service/vr/IVrListener$Stub;

    return-object p1
.end method

.method public whitelist onCurrentVrActivityChanged(Landroid/content/ComponentName;)V
    .registers 2

    .line 125
    return-void
.end method

.method public greylist-max-r onCurrentVrActivityChanged(Landroid/content/ComponentName;ZI)V
    .registers 4

    .line 148
    if-eqz p2, :cond_3

    const/4 p1, 0x0

    :cond_3
    invoke-virtual {p0, p1}, Landroid/service/vr/VrListenerService;->onCurrentVrActivityChanged(Landroid/content/ComponentName;)V

    .line 149
    return-void
.end method
