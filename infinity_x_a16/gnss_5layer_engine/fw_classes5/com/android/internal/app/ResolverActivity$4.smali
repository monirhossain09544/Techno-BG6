.class Lcom/android/internal/app/ResolverActivity$4;
.super Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->configureMiniResolverContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverActivity;

.field final synthetic blacklist val$icon:Landroid/widget/ImageView;

.field final synthetic blacklist val$otherProfileResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/widget/ImageView;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1827
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$4;->val$otherProfileResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$4;->val$icon:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    return-void
.end method


# virtual methods
.method protected blacklist onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1830
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1831
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$4;->val$otherProfileResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1832
    new-instance p1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$4;->val$icon:Landroid/widget/ImageView;

    invoke-direct {p1, v0}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$4;->val$otherProfileResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1834
    :cond_19
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1827
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$4;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
