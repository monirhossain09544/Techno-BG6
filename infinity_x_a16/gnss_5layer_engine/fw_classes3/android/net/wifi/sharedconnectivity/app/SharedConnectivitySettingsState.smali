.class public final Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
.super Ljava/lang/Object;
.source "SharedConnectivitySettingsState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mInstantTetherEnabled:Z

.field private final blacklist mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 183
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$1;

    invoke-direct {v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$1;-><init>()V

    sput-object v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ZLandroid/app/PendingIntent;Landroid/os/Bundle;)V
    .registers 4

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->validate(Landroid/app/PendingIntent;)V

    .line 109
    iput-boolean p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    .line 110
    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    .line 111
    iput-object p3, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mExtras:Landroid/os/Bundle;

    .line 112
    return-void
.end method

.method synthetic constructor blacklist <init>(ZLandroid/app/PendingIntent;Landroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;-><init>(ZLandroid/app/PendingIntent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
    .registers 4

    .line 176
    invoke-static {p0}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 178
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    .line 179
    new-instance v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    invoke-direct {v2, v1, v0, p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;-><init>(ZLandroid/app/PendingIntent;Landroid/os/Bundle;)V

    return-object v2
.end method

.method private static blacklist validate(Landroid/app/PendingIntent;)V
    .registers 2

    .line 101
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_11

    .line 102
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Pending intent must be immutable"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_11
    :goto_11
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 145
    instance-of v0, p1, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 146
    :cond_6
    check-cast p1, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    .line 147
    iget-boolean v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->isInstantTetherEnabled()Z

    move-result v2

    if-ne v0, v2, :cond_1e

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    .line 149
    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->getInstantTetherSettingsPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    .line 148
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 147
    :goto_1f
    return v1
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getInstantTetherSettingsPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 154
    iget-boolean v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isInstantTetherEnabled()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SharedConnectivitySettingsState["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    const-string v1, "instantTetherEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    const-string v1, "PendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    const-string v1, "extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 201
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 164
    iget-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    invoke-static {p2, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 165
    iget-boolean p2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 166
    iget-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 167
    return-void
.end method
