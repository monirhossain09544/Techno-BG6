.class public final Landroid/os/TelephonyServiceManager;
.super Ljava/lang/Object;
.source "TelephonyServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/TelephonyServiceManager$ServiceRegisterer;,
        Landroid/os/TelephonyServiceManager$ServiceNotFoundException;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist getCarrierConfigServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    .line 207
    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v1, "carrier_config"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getEuiccCardControllerServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    .line 237
    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v1, "euicc_card_controller"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getEuiccControllerService()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    .line 227
    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v1, "econtroller"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getIccPhoneBookServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    .line 247
    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string/jumbo v1, "simphonebook"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getOpportunisticNetworkServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    .line 197
    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v1, "ions"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getPhoneNumberServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    .line 255
    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string/jumbo v1, "telephony_phone_number"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getPhoneSubServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    .line 187
    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v1, "iphonesubinfo"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getSmsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    .line 217
    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v1, "isms"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    .line 177
    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v1, "isub"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getTelephonyImsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    .line 157
    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string/jumbo v1, "telephony_ims"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getTelephonyRcsMessageServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    .line 167
    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v1, "ircsmessage"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .registers 3

    .line 147
    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string/jumbo v1, "phone"

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
