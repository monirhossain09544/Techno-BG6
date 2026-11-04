.class Landroid/service/settings/preferences/SettingsPreferenceService$1$1;
.super Ljava/lang/Object;
.source "SettingsPreferenceService.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/settings/preferences/SettingsPreferenceService$1;->getAllPreferenceMetadata(Landroid/service/settings/preferences/MetadataRequest;Landroid/service/settings/preferences/IMetadataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/service/settings/preferences/MetadataResult;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/service/settings/preferences/IMetadataCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/settings/preferences/SettingsPreferenceService$1;Landroid/service/settings/preferences/IMetadataCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 95
    iput-object p2, p0, Landroid/service/settings/preferences/SettingsPreferenceService$1$1;->val$callback:Landroid/service/settings/preferences/IMetadataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/Exception;)V
    .registers 2

    .line 108
    :try_start_0
    iget-object p1, p0, Landroid/service/settings/preferences/SettingsPreferenceService$1$1;->val$callback:Landroid/service/settings/preferences/IMetadataCallback;

    invoke-interface {p1}, Landroid/service/settings/preferences/IMetadataCallback;->onFailure()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 111
    goto :goto_a

    .line 109
    :catch_6
    move-exception p1

    .line 110
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 112
    :goto_a
    return-void
.end method

.method public bridge synthetic whitelist onError(Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 95
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Landroid/service/settings/preferences/SettingsPreferenceService$1$1;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public blacklist onResult(Landroid/service/settings/preferences/MetadataResult;)V
    .registers 3

    .line 99
    :try_start_0
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceService$1$1;->val$callback:Landroid/service/settings/preferences/IMetadataCallback;

    invoke-interface {v0, p1}, Landroid/service/settings/preferences/IMetadataCallback;->onSuccess(Landroid/service/settings/preferences/MetadataResult;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 102
    goto :goto_a

    .line 100
    :catch_6
    move-exception p1

    .line 101
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 103
    :goto_a
    return-void
.end method

.method public bridge synthetic whitelist onResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 95
    check-cast p1, Landroid/service/settings/preferences/MetadataResult;

    invoke-virtual {p0, p1}, Landroid/service/settings/preferences/SettingsPreferenceService$1$1;->onResult(Landroid/service/settings/preferences/MetadataResult;)V

    return-void
.end method
