.class public Lcom/android/internal/policy/DecorContext;
.super Landroid/view/ContextThemeWrapper;
.source "DecorContext.java"


# instance fields
.field private blacklist mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

.field private blacklist mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

.field private blacklist mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/policy/PhoneWindow;)V
    .registers 4

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 51
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/DecorContext;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 53
    invoke-virtual {p2}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object p2

    .line 55
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_20

    .line 58
    sget-object p2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p1, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    .line 59
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/Context;->updateDisplay(I)V

    goto :goto_24

    .line 61
    :cond_20
    invoke-virtual {p1, p2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    .line 63
    :goto_24
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorContext;->attachBaseContext(Landroid/content/Context;)V

    .line 64
    return-void
.end method


# virtual methods
.method public whitelist getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAutofillOptions()Landroid/content/AutofillOptions;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 110
    if-eqz v0, :cond_f

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getAutofillOptions()Landroid/content/AutofillOptions;

    move-result-object v0

    return-object v0

    .line 113
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getContentCaptureOptions()Landroid/content/ContentCaptureOptions;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 119
    if-eqz v0, :cond_f

    .line 120
    invoke-virtual {v0}, Landroid/content/Context;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v0

    return-object v0

    .line 122
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 95
    if-eqz v0, :cond_10

    .line 96
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorContext;->mResources:Landroid/content/res/Resources;

    .line 99
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 75
    const-string v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 76
    iget-object p1, p0, Lcom/android/internal/policy/DecorContext;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    return-object p1

    .line 78
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 79
    const-string v1, "content_capture"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 80
    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/android/internal/policy/DecorContext;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    if-nez v1, :cond_2d

    .line 81
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/contentcapture/ContentCaptureManager;

    iput-object p1, p0, Lcom/android/internal/policy/DecorContext;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    .line 83
    :cond_2d
    iget-object p1, p0, Lcom/android/internal/policy/DecorContext;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-object p1

    .line 87
    :cond_30
    if-eqz v0, :cond_37

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3b

    :cond_37
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_3b
    return-object p1
.end method

.method public blacklist isConfigurationContext()Z
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 137
    if-eqz v0, :cond_f

    .line 138
    invoke-virtual {v0}, Landroid/content/Context;->isConfigurationContext()Z

    move-result v0

    return v0

    .line 140
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isUiContext()Z
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 128
    if-eqz v0, :cond_f

    .line 129
    invoke-virtual {v0}, Landroid/content/Context;->isUiContext()Z

    move-result v0

    return v0

    .line 131
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method blacklist setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 3

    .line 67
    iput-object p1, p0, Lcom/android/internal/policy/DecorContext;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 68
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 69
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorContext;->mContext:Ljava/lang/ref/WeakReference;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/policy/DecorContext;->mResources:Landroid/content/res/Resources;

    .line 71
    return-void
.end method
