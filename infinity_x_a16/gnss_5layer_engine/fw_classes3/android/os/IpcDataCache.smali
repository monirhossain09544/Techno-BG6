.class public Landroid/os/IpcDataCache;
.super Landroid/app/PropertyInvalidatedCache;
.source "IpcDataCache.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IpcDataCache$Config;,
        Landroid/os/IpcDataCache$RemoteCall;,
        Landroid/os/IpcDataCache$QueryHandler;,
        Landroid/os/IpcDataCache$BypassCall;,
        Landroid/os/IpcDataCache$SystemServerCallHandler;,
        Landroid/os/IpcDataCache$IpcDataCacheModule;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Query:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/PropertyInvalidatedCache<",
        "TQuery;TResult;>;"
    }
.end annotation


# static fields
.field public static final blacklist MODULE_ADSERVICES:Ljava/lang/String; = "adservices"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist MODULE_BLUETOOTH:Ljava/lang/String; = "bluetooth"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist MODULE_SYSTEM:Ljava/lang/String; = "system_server"

.field public static final blacklist MODULE_TEST:Ljava/lang/String; = "test"


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/IpcDataCache$QueryHandler<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    .line 339
    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    invoke-direct {v0, p2}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p1

    invoke-direct {p0, p1, p4, p5}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    .line 340
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$QueryHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$Config;",
            "Landroid/os/IpcDataCache$QueryHandler<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    .line 564
    iget-object v0, p1, Landroid/os/IpcDataCache$Config;->mArgs:Landroid/app/PropertyInvalidatedCache$Args;

    iget-object p1, p1, Landroid/os/IpcDataCache$Config;->mName:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    .line 565
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$Config;",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    .line 613
    new-instance v0, Landroid/os/IpcDataCache$1;

    invoke-direct {v0, p2}, Landroid/os/IpcDataCache$1;-><init>(Landroid/os/IpcDataCache$RemoteCall;)V

    invoke-direct {p0, p1, v0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$QueryHandler;)V

    .line 624
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IpcDataCache$Config;",
            "Landroid/os/IpcDataCache$RemoteCall<",
            "TQuery;TResult;>;",
            "Landroid/os/IpcDataCache$BypassCall<",
            "TQuery;>;)V"
        }
    .end annotation

    .line 638
    new-instance v0, Landroid/os/IpcDataCache$2;

    invoke-direct {v0, p2, p3}, Landroid/os/IpcDataCache$2;-><init>(Landroid/os/IpcDataCache$RemoteCall;Landroid/os/IpcDataCache$BypassCall;)V

    invoke-direct {p0, p1, v0}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$QueryHandler;)V

    .line 653
    return-void
.end method

.method public static blacklist disableForCurrentProcess(Ljava/lang/String;)V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 360
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->disableForCurrentProcess(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public static blacklist invalidateCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 393
    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public static blacklist setCacheTestMode(Z)V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 748
    invoke-static {p0}, Landroid/os/IpcDataCache;->setTestMode(Z)V

    .line 749
    return-void
.end method

.method public static blacklist setTestMode(Z)V
    .registers 1

    .line 727
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->setTestMode(Z)V

    .line 728
    return-void
.end method


# virtual methods
.method public blacklist disableForCurrentProcess()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 350
    invoke-super {p0}, Landroid/app/PropertyInvalidatedCache;->disableForCurrentProcess()V

    .line 351
    return-void
.end method

.method public final blacklist disableInstance()V
    .registers 1

    .line 700
    invoke-super {p0}, Landroid/app/PropertyInvalidatedCache;->disableInstance()V

    .line 701
    return-void
.end method

.method public final blacklist disableSystemWide()V
    .registers 1

    .line 710
    invoke-super {p0}, Landroid/app/PropertyInvalidatedCache;->disableSystemWide()V

    .line 711
    return-void
.end method

.method public final blacklist forgetDisableLocal()V
    .registers 1

    .line 670
    invoke-super {p0}, Landroid/app/PropertyInvalidatedCache;->forgetDisableLocal()V

    .line 671
    return-void
.end method

.method public blacklist getDisabledState()Z
    .registers 2

    .line 689
    invoke-virtual {p0}, Landroid/os/IpcDataCache;->isDisabled()Z

    move-result v0

    return v0
.end method

.method public blacklist invalidateCache()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 382
    invoke-super {p0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache()V

    .line 383
    return-void
.end method

.method public final blacklist isDisabled()Z
    .registers 2

    .line 680
    invoke-super {p0}, Landroid/app/PropertyInvalidatedCache;->isDisabled()Z

    move-result v0

    return v0
.end method

.method public blacklist query(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    .line 371
    invoke-super {p0, p1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
