.class final Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaRouteChooserContentManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteChooserContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RouteAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/media/MediaRouter$RouteInfo;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final blacklist mInflater:Landroid/view/LayoutInflater;

.field final synthetic blacklist this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MediaRouteChooserContentManager;Landroid/content/Context;)V
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

    .line 170
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    .line 171
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 172
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 173
    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .registers 2

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 200
    nop

    .line 201
    const/4 v0, 0x0

    if-nez p2, :cond_d

    .line 202
    iget-object p2, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x10900af

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 204
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    .line 205
    const p3, 0x1020014

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 206
    const v1, 0x1020015

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 207
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    .line 209
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 210
    const/16 p3, 0x8

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    const-string p3, ""

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_47

    .line 213
    :cond_41
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :goto_47
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 217
    return-object p2
.end method

.method public whitelist isEnabled(I)Z
    .registers 2

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result p1

    return p1
.end method

.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 222
    invoke-virtual {p0, p3}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    .line 223
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 224
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 225
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    iget-object p1, p1, Lcom/android/internal/app/MediaRouteChooserContentManager;->mDelegate:Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;

    invoke-interface {p1}, Lcom/android/internal/app/MediaRouteChooserContentManager$Delegate;->dismissView()V

    .line 227
    :cond_16
    return-void
.end method

.method public blacklist update()V
    .registers 5

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->clear()V

    .line 177
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserContentManager;->-$$Nest$fgetmRouter(Lcom/android/internal/app/MediaRouteChooserContentManager;)Landroid/media/MediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v0

    .line 178
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_28

    .line 179
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-static {v2}, Lcom/android/internal/app/MediaRouteChooserContentManager;->-$$Nest$fgetmRouter(Lcom/android/internal/app/MediaRouteChooserContentManager;)Landroid/media/MediaRouter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 180
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserContentManager;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/MediaRouteChooserContentManager;->onFilterRoute(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 181
    invoke-virtual {p0, v2}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->add(Ljava/lang/Object;)V

    .line 178
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 184
    :cond_28
    sget-object v0, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteComparator;->sInstance:Lcom/android/internal/app/MediaRouteChooserContentManager$RouteComparator;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->sort(Ljava/util/Comparator;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserContentManager$RouteAdapter;->notifyDataSetChanged()V

    .line 186
    return-void
.end method
