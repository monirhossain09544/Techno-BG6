.class final Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;
.super Lcom/android/internal/app/chooser/NotSelectableTargetInfo;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlaceHolderTargetInfo"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2594
    invoke-direct {p0}, Lcom/android/internal/app/chooser/NotSelectableTargetInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 2596
    nop

    .line 2597
    const v0, 0x10802e5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 2598
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 2599
    return-object p1
.end method
