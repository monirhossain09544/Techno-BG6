.class public Lcom/android/internal/statusbar/CustomStatusBarItem;
.super Ljava/lang/Object;
.source "CustomStatusBarItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/CustomStatusBarItem$Manager;,
        Lcom/android/internal/statusbar/CustomStatusBarItem$VisibilityReceiver;,
        Lcom/android/internal/statusbar/CustomStatusBarItem$DarkReceiver;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist findManager(Landroid/view/View;)Lcom/android/internal/statusbar/CustomStatusBarItem$Manager;
    .registers 3

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 32
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 33
    return-object v0

    .line 34
    :cond_8
    instance-of v1, p0, Lcom/android/internal/statusbar/CustomStatusBarItem$Manager;

    if-eqz v1, :cond_f

    .line 35
    check-cast p0, Lcom/android/internal/statusbar/CustomStatusBarItem$Manager;

    return-object p0

    .line 36
    :cond_f
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1a

    .line 37
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/android/internal/statusbar/CustomStatusBarItem;->findManager(Landroid/view/View;)Lcom/android/internal/statusbar/CustomStatusBarItem$Manager;

    move-result-object p0

    return-object p0

    .line 39
    :cond_1a
    return-object v0
.end method
