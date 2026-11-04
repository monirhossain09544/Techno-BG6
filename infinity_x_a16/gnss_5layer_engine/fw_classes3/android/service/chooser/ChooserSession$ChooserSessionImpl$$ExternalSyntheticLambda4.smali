.class public final synthetic Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

.field public final synthetic blacklist f$1:Landroid/service/chooser/IChooserController;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/chooser/ChooserSession$ChooserSessionImpl;Landroid/service/chooser/IChooserController;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda4;->f$0:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    iput-object p2, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda4;->f$1:Landroid/service/chooser/IChooserController;

    return-void
.end method


# virtual methods
.method public final whitelist binderDied()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda4;->f$0:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    iget-object v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda4;->f$1:Landroid/service/chooser/IChooserController;

    invoke-static {v0, v1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->$r8$lambda$m1qg5A3uRAB8i9VVnvWkJTdqfu0(Landroid/service/chooser/ChooserSession$ChooserSessionImpl;Landroid/service/chooser/IChooserController;)V

    return-void
.end method
