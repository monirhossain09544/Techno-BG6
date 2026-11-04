.class public final Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;
.super Ljava/lang/Object;
.source "KnownNetworkConnectionStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$Builder;,
        Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$ConnectionStatus;
    }
.end annotation


# static fields
.field public static final whitelist CONNECTION_STATUS_SAVED:I = 0x1

.field public static final whitelist CONNECTION_STATUS_SAVE_FAILED:I = 0x2

.field public static final whitelist CONNECTION_STATUS_UNKNOWN:I

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mKnownNetwork:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

.field private final blacklist mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 206
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$1;

    invoke-direct {v0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$1;-><init>()V

    sput-object v0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/net/wifi/sharedconnectivity/app/KnownNetwork;Landroid/os/Bundle;)V
    .registers 4

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {p1}, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->validate(I)V

    .line 133
    iput p1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mStatus:I

    .line 134
    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mKnownNetwork:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    .line 135
    iput-object p3, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mExtras:Landroid/os/Bundle;

    .line 136
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/net/wifi/sharedconnectivity/app/KnownNetwork;Landroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;-><init>(ILandroid/net/wifi/sharedconnectivity/app/KnownNetwork;Landroid/os/Bundle;)V

    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;
    .registers 4

    .line 200
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 201
    invoke-static {p0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    move-result-object v2

    .line 202
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;-><init>(ILandroid/net/wifi/sharedconnectivity/app/KnownNetwork;Landroid/os/Bundle;)V

    .line 200
    return-object v0
.end method

.method private static blacklist validate(I)V
    .registers 2

    .line 124
    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    goto :goto_11

    .line 126
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal connection status"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_11
    :goto_11
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 170
    instance-of v0, p1, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 171
    :cond_6
    check-cast p1, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    .line 172
    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mStatus:I

    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->getStatus()I

    move-result v2

    if-ne v0, v2, :cond_1e

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mKnownNetwork:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    .line 173
    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->getKnownNetwork()Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 172
    :goto_1f
    return v1
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getKnownNetwork()Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
    .registers 2

    .line 155
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mKnownNetwork:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    return-object v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 145
    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mStatus:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 178
    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mKnownNetwork:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KnownNetworkConnectionStatus["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v1, "status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    const-string v1, "known network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mKnownNetwork:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    invoke-virtual {v1}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 223
    const-string v1, "extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 224
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 188
    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mKnownNetwork:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->writeToParcel(Landroid/os/Parcel;I)V

    .line 190
    iget-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 191
    return-void
.end method
