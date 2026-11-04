.class public final synthetic Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/chooser/ChooserSession$ChooserSessionImpl;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda1;->f$0:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    iput p2, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda1;->f$0:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    iget v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Landroid/service/chooser/ChooserSession$StateListener;

    invoke-static {v0, v1, p1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->$r8$lambda$7YUAsLJUBSIL2P5-xKybL12Z_ak(Landroid/service/chooser/ChooserSession$ChooserSessionImpl;ILandroid/service/chooser/ChooserSession$StateListener;)V

    return-void
.end method
