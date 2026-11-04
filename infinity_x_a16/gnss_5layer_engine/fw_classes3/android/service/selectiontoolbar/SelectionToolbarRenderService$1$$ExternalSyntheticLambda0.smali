.class public final synthetic Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1$$ExternalSyntheticLambda0;->f$0:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;

    iput p2, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist binderDied()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1$$ExternalSyntheticLambda0;->f$0:Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;

    iget v1, p0, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;->$r8$lambda$J6PtF95fOzKCj_pQSU8mbKX65TI(Landroid/service/selectiontoolbar/SelectionToolbarRenderService$1;I)V

    return-void
.end method
