.class Lcom/android/internal/util/NotificationMessagingUtil$1;
.super Landroid/database/ContentObserver;
.source "NotificationMessagingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/NotificationMessagingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/util/NotificationMessagingUtil;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/NotificationMessagingUtil;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/android/internal/util/NotificationMessagingUtil$1;->this$0:Lcom/android/internal/util/NotificationMessagingUtil;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public blacklist onChange(ZLjava/util/Collection;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .line 89
    const-string p1, "sms_default_application"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 90
    iget-object p1, p0, Lcom/android/internal/util/NotificationMessagingUtil$1;->this$0:Lcom/android/internal/util/NotificationMessagingUtil;

    invoke-static {p1, p4}, Lcom/android/internal/util/NotificationMessagingUtil;->-$$Nest$mcacheDefaultSmsApp(Lcom/android/internal/util/NotificationMessagingUtil;I)V

    .line 92
    :cond_11
    return-void
.end method
