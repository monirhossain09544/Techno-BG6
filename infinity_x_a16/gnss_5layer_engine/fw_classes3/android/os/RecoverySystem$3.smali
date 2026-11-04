.class Landroid/os/RecoverySystem$3;
.super Landroid/content/BroadcastReceiver;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$condition:Landroid/os/ConditionVariable;


# direct methods
.method constructor blacklist <init>(Landroid/os/ConditionVariable;)V
    .registers 2

    .line 954
    iput-object p1, p0, Landroid/os/RecoverySystem$3;->val$condition:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 957
    iget-object p1, p0, Landroid/os/RecoverySystem$3;->val$condition:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 958
    return-void
.end method
