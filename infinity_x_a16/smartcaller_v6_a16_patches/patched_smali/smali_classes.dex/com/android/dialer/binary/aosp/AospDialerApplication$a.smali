.class public Lcom/android/dialer/binary/aosp/AospDialerApplication$a;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/binary/aosp/AospDialerApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/dialer/binary/aosp/AospDialerApplication;


# direct methods
.method public constructor <init>(Lcom/android/dialer/binary/aosp/AospDialerApplication;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/dialer/binary/aosp/AospDialerApplication$a;->a:Lcom/android/dialer/binary/aosp/AospDialerApplication;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/smartcaller/base/BaseApplication;->b()Lcom/smartcaller/base/BaseApplication;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lhp;->e(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/dialer/binary/aosp/AospDialerApplication$a;->a:Lcom/android/dialer/binary/aosp/AospDialerApplication;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/android/dialer/binary/aosp/AospDialerApplication;->q(Lcom/android/dialer/binary/aosp/AospDialerApplication;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eq v1, v0, :cond_28

    .line 16
    .line 17
    invoke-static {}, Lcom/android/incallui/call/a;->x()Lcom/android/incallui/call/a;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/android/incallui/call/a;->u()Lcom/android/incallui/call/DialerCall;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_28

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/dialer/binary/aosp/AospDialerApplication$a;->a:Lcom/android/dialer/binary/aosp/AospDialerApplication;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/android/dialer/binary/aosp/AospDialerApplication;->p(Lcom/android/dialer/binary/aosp/AospDialerApplication;)Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Lcom/android/dialer/binary/aosp/AospDialerApplication$a$a;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Lcom/android/dialer/binary/aosp/AospDialerApplication$a$a;-><init>(Lcom/android/dialer/binary/aosp/AospDialerApplication$a;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    :cond_28
    iget-object v1, p0, Lcom/android/dialer/binary/aosp/AospDialerApplication$a;->a:Lcom/android/dialer/binary/aosp/AospDialerApplication;

    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/android/dialer/binary/aosp/AospDialerApplication;->r(Lcom/android/dialer/binary/aosp/AospDialerApplication;Z)V

    .line 44
    .line 45
    .line 46
    return-void
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
.end method
