.class Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$9;
.super Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;
.source "QuickAccessWalletClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;->getWalletPendingIntent(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callbacks:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;


# direct methods
.method constructor blacklist <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 271
    iput-object p3, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$9;->val$callbacks:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$ApiCaller;-><init>(Ljava/lang/String;Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl-IA;)V

    return-void
.end method


# virtual methods
.method blacklist performApiCall(Landroid/service/quickaccesswallet/IQuickAccessWalletService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$9;->val$callbacks:Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl$BaseCallbacks;

    invoke-interface {p1, v0}, Landroid/service/quickaccesswallet/IQuickAccessWalletService;->onTargetActivityIntentRequested(Landroid/service/quickaccesswallet/IQuickAccessWalletServiceCallbacks;)V

    .line 275
    return-void
.end method
