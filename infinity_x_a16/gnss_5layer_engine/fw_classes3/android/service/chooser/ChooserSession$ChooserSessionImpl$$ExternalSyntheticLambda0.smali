.class public final synthetic Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

.field public final synthetic blacklist f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/chooser/ChooserSession$ChooserSessionImpl;Landroid/graphics/Rect;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda0;->f$0:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    iput-object p2, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda0;->f$0:Landroid/service/chooser/ChooserSession$ChooserSessionImpl;

    iget-object v1, p0, Landroid/service/chooser/ChooserSession$ChooserSessionImpl$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    check-cast p1, Landroid/service/chooser/ChooserSession$StateListener;

    invoke-static {v0, v1, p1}, Landroid/service/chooser/ChooserSession$ChooserSessionImpl;->$r8$lambda$pdLsqRaSKFSUJbq7mQb90NAm8Qo(Landroid/service/chooser/ChooserSession$ChooserSessionImpl;Landroid/graphics/Rect;Landroid/service/chooser/ChooserSession$StateListener;)V

    return-void
.end method
