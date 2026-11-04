.class Lcom/android/internal/view/inline/InlineTooltipUi$2;
.super Ljava/lang/Object;
.source "InlineTooltipUi.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/inline/InlineTooltipUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mHeight:I

.field final synthetic blacklist this$0:Lcom/android/internal/view/inline/InlineTooltipUi;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/view/inline/InlineTooltipUi;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 88
    iget-object p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-static {p1}, Lcom/android/internal/view/inline/InlineTooltipUi;->-$$Nest$fgetmHasEverDetached(Lcom/android/internal/view/inline/InlineTooltipUi;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 92
    return-void

    .line 95
    :cond_9
    iget p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->mHeight:I

    sub-int/2addr p5, p3

    if-eq p1, p5, :cond_15

    .line 96
    iput p5, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->mHeight:I

    .line 97
    iget-object p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-static {p1}, Lcom/android/internal/view/inline/InlineTooltipUi;->-$$Nest$madjustPosition(Lcom/android/internal/view/inline/InlineTooltipUi;)V

    .line 99
    :cond_15
    return-void
.end method
