.class Lcom/android/internal/policy/PhoneWindow$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 355
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0xd

    if-gt v1, v2, :cond_19

    .line 356
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-$$Nest$fgetmInvalidatePanelMenuFeatures(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_16

    .line 357
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/PhoneWindow;->doInvalidatePanelMenu(I)V

    .line 355
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 360
    :cond_19
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->-$$Nest$fputmInvalidatePanelMenuPosted(Lcom/android/internal/policy/PhoneWindow;Z)V

    .line 361
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->-$$Nest$fputmInvalidatePanelMenuFeatures(Lcom/android/internal/policy/PhoneWindow;I)V

    .line 362
    return-void
.end method
