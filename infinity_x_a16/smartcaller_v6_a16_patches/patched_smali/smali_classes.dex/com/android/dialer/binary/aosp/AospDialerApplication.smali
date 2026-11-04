.class public Lcom/android/dialer/binary/aosp/AospDialerApplication;
.super Lcom/android/dialer/binary/common/DialerApplication;
.source "PG"


# instance fields
.field public x:Z

.field public y:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/dialer/binary/common/DialerApplication;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/dialer/binary/aosp/AospDialerApplication;->x:Z

    .line 6
    .line 7
    new-instance v0, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/dialer/binary/aosp/AospDialerApplication;->y:Landroid/os/Handler;

    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static bridge synthetic p(Lcom/android/dialer/binary/aosp/AospDialerApplication;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/dialer/binary/aosp/AospDialerApplication;->y:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/android/dialer/binary/aosp/AospDialerApplication;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/dialer/binary/aosp/AospDialerApplication;->x:Z

    return p0
.end method

.method public static bridge synthetic r(Lcom/android/dialer/binary/aosp/AospDialerApplication;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/dialer/binary/aosp/AospDialerApplication;->x:Z

    return-void
.end method


# virtual methods
.method public j()Ljava/lang/Object;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/dialer/binary/aosp/a;->c0()Lcom/android/dialer/binary/aosp/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lm00;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lm00;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/dialer/binary/aosp/a$b;->b(Lm00;)Lcom/android/dialer/binary/aosp/a$b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/android/dialer/binary/aosp/a$b;->a()Ln6;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/trans/phone/extuitls/util/ThreadUtils;->h()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lcom/android/dialer/binary/aosp/AospDialerApplication$a;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/android/dialer/binary/aosp/AospDialerApplication$a;-><init>(Lcom/android/dialer/binary/aosp/AospDialerApplication;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lg71;->e()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/android/dialer/app/calllog/e;->d()V

    .line 20
    .line 21
    .line 22
    return-void
    .line 23
    .line 24
.end method

.method public onCreate()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/dialer/binary/common/DialerApplication;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/smartcaller/base/BaseApplication;->b()Lcom/smartcaller/base/BaseApplication;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lhp;->e(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput-boolean v0, p0, Lcom/android/dialer/binary/aosp/AospDialerApplication;->x:Z

    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
