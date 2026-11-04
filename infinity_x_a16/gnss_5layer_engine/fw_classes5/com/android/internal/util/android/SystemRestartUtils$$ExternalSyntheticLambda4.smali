.class public final synthetic Lcom/android/internal/util/android/SystemRestartUtils$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/android/SystemRestartUtils$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/util/android/SystemRestartUtils$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/android/SystemRestartUtils;->lambda$showSystemRestartDialog$1(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
