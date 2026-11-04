.class public Landroid/telecom/PhoneAccountSuggestionService;
.super Landroid/app/Service;
.source "PhoneAccountSuggestionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.PhoneAccountSuggestionService"


# instance fields
.field private final blacklist mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telecom/IPhoneAccountSuggestionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInterface:Lcom/android/internal/telecom/IPhoneAccountSuggestionService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackMap(Landroid/telecom/PhoneAccountSuggestionService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/telecom/PhoneAccountSuggestionService;->mCallbackMap:Ljava/util/Map;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    new-instance v0, Landroid/telecom/PhoneAccountSuggestionService$1;

    invoke-direct {v0, p0}, Landroid/telecom/PhoneAccountSuggestionService$1;-><init>(Landroid/telecom/PhoneAccountSuggestionService;)V

    iput-object v0, p0, Landroid/telecom/PhoneAccountSuggestionService;->mInterface:Lcom/android/internal/telecom/IPhoneAccountSuggestionService;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/PhoneAccountSuggestionService;->mCallbackMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public whitelist onAccountSuggestionRequest(Ljava/lang/String;)V
    .registers 2

    .line 96
    return-void
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 81
    iget-object p1, p0, Landroid/telecom/PhoneAccountSuggestionService;->mInterface:Lcom/android/internal/telecom/IPhoneAccountSuggestionService;

    invoke-interface {p1}, Lcom/android/internal/telecom/IPhoneAccountSuggestionService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist suggestPhoneAccounts(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountSuggestion;",
            ">;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Landroid/telecom/PhoneAccountSuggestionService;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IPhoneAccountSuggestionCallback;

    .line 111
    if-nez v0, :cond_18

    .line 112
    invoke-static {p1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "No suggestions requested for the number %s"

    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    return-void

    .line 116
    :cond_18
    :try_start_18
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IPhoneAccountSuggestionCallback;->suggestPhoneAccounts(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 119
    goto :goto_25

    .line 117
    :catch_1c
    move-exception p1

    .line 118
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Remote exception calling suggestPhoneAccounts"

    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :goto_25
    return-void
.end method
