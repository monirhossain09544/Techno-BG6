.class Lcom/android/internal/app/PlatLogoActivity$1;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/PlatLogoActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/PlatLogoActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 100
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    packed-switch p1, :pswitch_data_1c

    :pswitch_7
    goto :goto_19

    .line 107
    :pswitch_8
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {p1}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$mstopWarp(Lcom/android/internal/app/PlatLogoActivity;)V

    goto :goto_19

    .line 102
    :pswitch_e
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {p1, p2}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$mmeasureTouchPressure(Lcom/android/internal/app/PlatLogoActivity;Landroid/view/MotionEvent;)V

    .line 103
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-static {p1}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$mstartWarp(Lcom/android/internal/app/PlatLogoActivity;)V

    .line 104
    nop

    .line 110
    :goto_19
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_e
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
