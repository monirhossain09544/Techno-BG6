.class Landroid/service/selectiontoolbar/RemoteSelectionToolbar$12;
.super Ljava/lang/Object;
.source "RemoteSelectionToolbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;


# direct methods
.method public static synthetic blacklist $r8$lambda$xItk5JSNTIKepurXJeNcwBwkCMk(Landroid/service/selectiontoolbar/RemoteSelectionToolbar$12;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$12;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1126
    iput-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$12;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onAnimationEnd$0()V
    .registers 2

    .line 1143
    iget-object v0, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$12;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$msetPanelsStatesAtRestingPosition(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)V

    .line 1144
    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1142
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$12;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmContentContainer(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$12$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$12$$ExternalSyntheticLambda0;-><init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar$12;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1145
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .line 1149
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1131
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$12;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmOverflowButton(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1134
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$12;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmMainPanel(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1135
    iget-object p1, p0, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$12;->this$0:Landroid/service/selectiontoolbar/RemoteSelectionToolbar;

    invoke-static {p1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar;->-$$Nest$fgetmOverflowPanel(Landroid/service/selectiontoolbar/RemoteSelectionToolbar;)Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$OverflowPanel;->setVisibility(I)V

    .line 1136
    return-void
.end method
