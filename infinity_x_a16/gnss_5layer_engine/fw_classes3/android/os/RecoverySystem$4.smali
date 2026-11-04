.class Landroid/os/RecoverySystem$4;
.super Landroid/content/BroadcastReceiver;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$euiccFactoryResetLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic blacklist val$wipingSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 1013
    iput-object p1, p0, Landroid/os/RecoverySystem$4;->val$wipingSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Landroid/os/RecoverySystem$4;->val$euiccFactoryResetLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1016
    const-string p1, "com.android.internal.action.EUICC_FACTORY_RESET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 1017
    invoke-virtual {p0}, Landroid/os/RecoverySystem$4;->getResultCode()I

    move-result p1

    const-string v0, "RecoverySystem"

    if-eqz p1, :cond_32

    .line 1018
    const-string p1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1020
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error wiping euicc data, Detailed code = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    goto :goto_3d

    .line 1023
    :cond_32
    const-string p1, "Successfully wiped euicc data."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object p1, p0, Landroid/os/RecoverySystem$4;->val$wipingSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1026
    :goto_3d
    iget-object p1, p0, Landroid/os/RecoverySystem$4;->val$euiccFactoryResetLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1028
    :cond_42
    return-void
.end method
