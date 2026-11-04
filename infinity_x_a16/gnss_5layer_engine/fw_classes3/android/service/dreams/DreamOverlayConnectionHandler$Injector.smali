.class public Landroid/service/dreams/DreamOverlayConnectionHandler$Injector;
.super Ljava/lang/Object;
.source "DreamOverlayConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamOverlayConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist buildConnection(Landroid/content/Context;Landroid/os/Handler;Landroid/content/Intent;)Lcom/android/internal/util/ObservableServiceConnection;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/android/internal/util/ObservableServiceConnection<",
            "Landroid/service/dreams/IDreamOverlay;",
            ">;"
        }
    .end annotation

    .line 220
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask$$ExternalSyntheticLambda2;-><init>(Landroid/os/Handler;)V

    .line 222
    new-instance v0, Lcom/android/internal/util/ObservableServiceConnection;

    new-instance v3, Landroid/service/dreams/DreamOverlayConnectionHandler$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/service/dreams/DreamOverlayConnectionHandler$Injector$$ExternalSyntheticLambda0;-><init>()V

    const v5, 0x4000001

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/ObservableServiceConnection;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;Landroid/content/Intent;I)V

    return-object v0
.end method
