.class public Landroid/net/NetworkKey;
.super Ljava/lang/Object;
.source "NetworkKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkKey$NetworkType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NetworkKey"

.field public static final whitelist TYPE_WIFI:I = 0x1


# instance fields
.field public final whitelist type:I

.field public final whitelist wifiKey:Landroid/net/WifiKey;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 196
    new-instance v0, Landroid/net/NetworkKey$1;

    invoke-direct {v0}, Landroid/net/NetworkKey$1;-><init>()V

    sput-object v0, Landroid/net/NetworkKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/WifiKey;)V
    .registers 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/NetworkKey;->type:I

    .line 137
    iput-object p1, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    .line 138
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkKey;->type:I

    .line 142
    iget v0, p0, Landroid/net/NetworkKey;->type:I

    packed-switch v0, :pswitch_data_36

    .line 147
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parcel has unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/NetworkKey;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :pswitch_29
    sget-object v0, Landroid/net/WifiKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/WifiKey;

    iput-object p1, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    .line 145
    nop

    .line 149
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_29
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/NetworkKey-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/NetworkKey;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;
    .registers 5

    .line 84
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3c

    const-string v1, "<unknown ssid>"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_3c

    .line 89
    :cond_15
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 91
    return-object v2

    .line 95
    :cond_1e
    :try_start_1e
    new-instance v1, Landroid/net/WifiKey;

    const-string v3, "\"%s\""

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/net/WifiKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance p0, Landroid/net/NetworkKey;

    invoke-direct {p0, v1}, Landroid/net/NetworkKey;-><init>(Landroid/net/WifiKey;)V
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_32} :catch_33

    return-object p0

    .line 97
    :catch_33
    move-exception p0

    .line 98
    const-string v0, "NetworkKey"

    const-string v1, "Unable to create WifiKey."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    return-object v2

    .line 87
    :cond_3c
    :goto_3c
    return-object v2
.end method

.method public static greylist-max-o createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;
    .registers 4

    .line 113
    const/4 v0, 0x0

    if-eqz p0, :cond_34

    .line 114
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    .line 116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "<unknown ssid>"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 120
    :try_start_1f
    new-instance v2, Landroid/net/WifiKey;

    invoke-direct {v2, v1, p0}, Landroid/net/WifiKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_24} :catch_2b

    .line 124
    nop

    .line 125
    new-instance p0, Landroid/net/NetworkKey;

    invoke-direct {p0, v2}, Landroid/net/NetworkKey;-><init>(Landroid/net/WifiKey;)V

    return-object p0

    .line 121
    :catch_2b
    move-exception p0

    .line 122
    const-string v1, "NetworkKey"

    const-string v2, "Unable to create WifiKey."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    return-object v0

    .line 128
    :cond_34
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 170
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 171
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 173
    :cond_12
    check-cast p1, Landroid/net/NetworkKey;

    .line 175
    iget v2, p0, Landroid/net/NetworkKey;->type:I

    iget v3, p1, Landroid/net/NetworkKey;->type:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object p1, p1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    .line 171
    :cond_27
    :goto_27
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 180
    iget v0, p0, Landroid/net/NetworkKey;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 186
    iget v0, p0, Landroid/net/NetworkKey;->type:I

    packed-switch v0, :pswitch_data_10

    .line 192
    const-string v0, "InvalidKey"

    return-object v0

    .line 188
    :pswitch_8
    iget-object v0, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    invoke-virtual {v0}, Landroid/net/WifiKey;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 158
    iget v0, p0, Landroid/net/NetworkKey;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Landroid/net/NetworkKey;->type:I

    packed-switch v0, :pswitch_data_2c

    .line 164
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NetworkKey has unknown type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/net/NetworkKey;->type:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :pswitch_25
    iget-object v0, p0, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    invoke-virtual {v0, p1, p2}, Landroid/net/WifiKey;->writeToParcel(Landroid/os/Parcel;I)V

    .line 162
    nop

    .line 166
    return-void

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_25
    .end packed-switch
.end method
