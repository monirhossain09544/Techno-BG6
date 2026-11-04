.class Lcom/android/internal/app/ChooserListAdapter$1;
.super Ljava/lang/Object;
.source "ChooserListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onLayoutChange$0(Landroid/widget/TextView;)V
    .registers 1

    .line 139
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method


# virtual methods
.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 124
    check-cast p1, Landroid/widget/TextView;

    .line 125
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    .line 126
    if-eqz p2, :cond_46

    .line 127
    nop

    .line 128
    const/4 p3, 0x0

    move p4, p3

    :goto_b
    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result p5

    if-ge p3, p5, :cond_22

    .line 129
    invoke-virtual {p2, p3}, Landroid/text/Layout;->getLineMax(I)F

    move-result p5

    float-to-double p5, p5

    invoke-static {p5, p6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p5

    double-to-int p5, p5

    invoke-static {p5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 128
    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    .line 132
    :cond_22
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p2

    add-int/2addr p4, p2

    .line 133
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result p2

    add-int/2addr p4, p2

    .line 134
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    if-le p2, p4, :cond_43

    .line 135
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 136
    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 137
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance p2, Lcom/android/internal/app/ChooserListAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/internal/app/ChooserListAdapter$1$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 141
    :cond_43
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 143
    :cond_46
    return-void
.end method
