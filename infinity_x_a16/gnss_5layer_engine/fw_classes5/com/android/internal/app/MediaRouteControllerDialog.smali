.class public Lcom/android/internal/app/MediaRouteControllerDialog;
.super Landroid/app/AlertDialog;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;


# instance fields
.field private final blacklist mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$ny9FfsOHzkhKTFP04BfvAdzzgyU(Lcom/android/internal/app/MediaRouteControllerDialog;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/MediaRouteControllerDialog;->lambda$onCreate$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 49
    new-instance p2, Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-direct {p2, p1, p0}, Lcom/android/internal/app/MediaRouteControllerContentManager;-><init>(Landroid/content/Context;Lcom/android/internal/app/MediaRouteControllerContentManager$Delegate;)V

    iput-object p2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    .line 50
    return-void
.end method

.method private synthetic blacklist lambda$onCreate$0(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 56
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {p1}, Lcom/android/internal/app/MediaRouteControllerContentManager;->onDisconnectButtonClick()V

    return-void
.end method


# virtual methods
.method public blacklist dismissView()V
    .registers 1

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->dismiss()V

    .line 115
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .registers 2

    .line 72
    invoke-super {p0}, Landroid/app/AlertDialog;->onAttachedToWindow()V

    .line 73
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->onAttachedToWindow()V

    .line 74
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 11

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    const v1, 0x1040601

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/MediaRouteControllerDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    const/4 v2, -0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900ae

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 58
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/MediaRouteControllerDialog;->setView(Landroid/view/View;IIII)V

    .line 59
    iget-object v0, v3, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {v0, v4}, Lcom/android/internal/app/MediaRouteControllerContentManager;->bindViews(Landroid/view/View;)V

    .line 60
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x10202bc

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 63
    if-eqz p1, :cond_45

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 67
    :cond_45
    iget-object p1, v3, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {p1}, Lcom/android/internal/app/MediaRouteControllerContentManager;->update()V

    .line 68
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->onDetachedFromWindow()V

    .line 79
    invoke-super {p0}, Landroid/app/AlertDialog;->onDetachedFromWindow()V

    .line 80
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 84
    const/16 v0, 0x19

    if-eq p1, v0, :cond_e

    const/16 v1, 0x18

    if-ne p1, v1, :cond_9

    goto :goto_e

    .line 90
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 86
    :cond_e
    :goto_e
    iget-object p2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mContentManager:Lcom/android/internal/app/MediaRouteControllerContentManager;

    .line 87
    const/4 v1, 0x1

    if-ne p1, v0, :cond_15

    const/4 p1, -0x1

    goto :goto_16

    :cond_15
    move p1, v1

    .line 86
    :goto_16
    invoke-virtual {p2, p1}, Lcom/android/internal/app/MediaRouteControllerContentManager;->requestUpdateRouteVolume(I)V

    .line 88
    return v1
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 95
    const/16 v0, 0x19

    if-eq p1, v0, :cond_e

    const/16 v0, 0x18

    if-ne p1, v0, :cond_9

    goto :goto_e

    .line 99
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 97
    :cond_e
    :goto_e
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist setMediaRouteDeviceIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 110
    return-void
.end method

.method public blacklist setMediaRouteDeviceTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method
