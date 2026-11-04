.class public Lcom/android/internal/app/ChooserActivity$ChooserListController;
.super Lcom/android/internal/app/ResolverListController;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChooserListController"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;Landroid/os/UserHandle;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2488
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 2489
    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;Landroid/os/UserHandle;)V

    .line 2491
    return-void
.end method


# virtual methods
.method blacklist isComponentFiltered(Landroid/content/ComponentName;)Z
    .registers 7

    .line 2495
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmFilteredComponentNames(Lcom/android/internal/app/ChooserActivity;)[Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2496
    return v1

    .line 2498
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmFilteredComponentNames(Lcom/android/internal/app/ChooserActivity;)[Landroid/content/ComponentName;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_12
    if-ge v3, v2, :cond_21

    aget-object v4, v0, v3

    .line 2499
    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2500
    const/4 p1, 0x1

    return p1

    .line 2498
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2503
    :cond_21
    return v1
.end method

.method public blacklist isComponentPinned(Landroid/content/ComponentName;)Z
    .registers 2

    .line 2508
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist isFixedAtTop(Landroid/content/ComponentName;)Z
    .registers 3

    .line 2513
    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getNearbySharingComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 2514
    invoke-static {p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mshouldNearbyShareBeFirstInRankedRow(Lcom/android/internal/app/ChooserActivity;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 2513
    :goto_19
    return p1
.end method
