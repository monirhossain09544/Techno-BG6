.class final Landroid/os/StrictMode$UnsafeIntentStrictModeCallback;
.super Landroid/app/IUnsafeIntentStrictModeCallback$Stub;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeIntentStrictModeCallback"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 2243
    invoke-direct {p0}, Landroid/app/IUnsafeIntentStrictModeCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/StrictMode-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/StrictMode$UnsafeIntentStrictModeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onUnsafeIntent(ILandroid/content/Intent;)V
    .registers 4

    .line 2247
    invoke-static {}, Landroid/os/StrictMode;->vmUnsafeIntentLaunchEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2248
    invoke-static {p1, p2}, Landroid/os/StrictMode;->-$$Nest$smonUnsafeIntentLaunch(ILandroid/content/Intent;)V

    .line 2250
    :cond_9
    return-void
.end method
