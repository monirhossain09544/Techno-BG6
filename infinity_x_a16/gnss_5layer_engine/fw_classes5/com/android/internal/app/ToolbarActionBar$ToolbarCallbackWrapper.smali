.class Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;
.super Landroid/view/WindowCallbackWrapper;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolbarCallbackWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ToolbarActionBar;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ToolbarActionBar;Landroid/view/Window$Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 512
    iput-object p1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    .line 513
    invoke-direct {p0, p2}, Landroid/view/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    .line 514
    return-void
.end method


# virtual methods
.method public whitelist onCreatePanelView(I)Landroid/view/View;
    .registers 3

    .line 528
    if-nez p1, :cond_12

    .line 532
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fgetmDecorToolbar(Lcom/android/internal/app/ToolbarActionBar;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 534
    :cond_12
    invoke-super {p0, p1}, Landroid/view/WindowCallbackWrapper;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 4

    .line 518
    invoke-super {p0, p1, p2, p3}, Landroid/view/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    .line 519
    if-eqz p1, :cond_1d

    iget-object p2, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {p2}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fgetmToolbarMenuPrepared(Lcom/android/internal/app/ToolbarActionBar;)Z

    move-result p2

    if-nez p2, :cond_1d

    .line 520
    iget-object p2, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {p2}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fgetmDecorToolbar(Lcom/android/internal/app/ToolbarActionBar;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/internal/widget/DecorToolbar;->setMenuPrepared()V

    .line 521
    iget-object p2, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/android/internal/app/ToolbarActionBar;->-$$Nest$fputmToolbarMenuPrepared(Lcom/android/internal/app/ToolbarActionBar;Z)V

    .line 523
    :cond_1d
    return p1
.end method
