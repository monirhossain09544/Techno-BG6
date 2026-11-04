.class Lcom/android/internal/app/ResolverActivity$5;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->setupProfileTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverActivity;

.field final synthetic blacklist val$tabHost:Landroid/widget/TabHost;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TabHost;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2156
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$5;->val$tabHost:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onProfilePageStateChanged(I)V
    .registers 3

    .line 2166
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverActivity;->onHorizontalSwipeStateChanged(I)V

    .line 2167
    return-void
.end method

.method public blacklist onProfileSelected(I)V
    .registers 3

    .line 2159
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$5;->val$tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2160
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity;->resetButtonBar()V

    .line 2161
    iget-object p1, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$mresetCheckedItem(Lcom/android/internal/app/ResolverActivity;)V

    .line 2162
    return-void
.end method
