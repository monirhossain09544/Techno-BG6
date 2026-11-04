.class public abstract Landroid/service/restrictions/RestrictionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionsReceiver.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "RestrictionsReceiver"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, "android.content.action.REQUEST_PERMISSION"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 76
    const-string v0, "android.content.extra.PACKAGE_NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    const-string v0, "android.content.extra.REQUEST_TYPE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    const-string v0, "android.content.extra.REQUEST_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    const-class v0, Landroid/os/PersistableBundle;

    .line 80
    const-string v1, "android.content.extra.REQUEST_BUNDLE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Landroid/os/PersistableBundle;

    .line 81
    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/service/restrictions/RestrictionsReceiver;->onRequestPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 83
    :cond_2e
    return-void
.end method

.method public abstract whitelist onRequestPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
.end method
