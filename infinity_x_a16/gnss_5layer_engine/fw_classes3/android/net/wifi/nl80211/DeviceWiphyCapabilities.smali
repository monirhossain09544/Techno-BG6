.class public final Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
.super Ljava/lang/Object;
.source "DeviceWiphyCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "DeviceWiphyCapabilities"


# instance fields
.field private blacklist m80211acSupported:Z

.field private blacklist m80211axSupported:Z

.field private blacklist m80211beSupported:Z

.field private blacklist m80211nSupported:Z

.field private blacklist mChannelWidth160MhzSupported:Z

.field private blacklist mChannelWidth320MhzSupported:Z

.field private blacklist mChannelWidth80p80MhzSupported:Z

.field private blacklist mMaxNumberAkms:I

.field private blacklist mMaxNumberRxSpatialStreams:I

.field private blacklist mMaxNumberTxSpatialStreams:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputm80211acSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputm80211axSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputm80211beSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputm80211nSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChannelWidth160MhzSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChannelWidth320MhzSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChannelWidth80p80MhzSupported(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxNumberAkms(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberAkms:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxNumberRxSpatialStreams(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxNumberTxSpatialStreams(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 310
    new-instance v0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    .line 59
    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    .line 60
    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    .line 61
    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    .line 62
    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    .line 63
    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    .line 64
    iput-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    .line 66
    iput v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    .line 67
    iput v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberAkms:I

    .line 68
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 238
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 239
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 240
    return v2

    .line 242
    :cond_a
    check-cast p1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 244
    iget-boolean v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    iget-boolean v3, p1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    if-ne v1, v3, :cond_49

    iget-boolean v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    iget-boolean v3, p1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    if-ne v1, v3, :cond_49

    iget-boolean v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    iget-boolean v3, p1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    if-ne v1, v3, :cond_49

    iget-boolean v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    iget-boolean v3, p1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    if-ne v1, v3, :cond_49

    iget-boolean v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    iget-boolean v3, p1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    if-ne v1, v3, :cond_49

    iget-boolean v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    iget-boolean v3, p1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    if-ne v1, v3, :cond_49

    iget-boolean v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    iget-boolean v3, p1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    if-ne v1, v3, :cond_49

    iget v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    iget v3, p1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    if-ne v1, v3, :cond_49

    iget v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    iget v3, p1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    if-ne v1, v3, :cond_49

    iget v1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberAkms:I

    iget p1, p1, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberAkms:I

    if-ne v1, p1, :cond_49

    goto :goto_4a

    :cond_49
    move v0, v2

    :goto_4a
    return v0
.end method

.method public whitelist getMaxNumberAkms()I
    .registers 2

    .line 212
    iget v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberAkms:I

    return v0
.end method

.method public whitelist getMaxNumberRxSpatialStreams()I
    .registers 2

    .line 202
    iget v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    return v0
.end method

.method public whitelist getMaxNumberTxSpatialStreams()I
    .registers 2

    .line 182
    iget v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 12

    .line 259
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    .line 260
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    .line 261
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    .line 262
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberAkms:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 259
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isChannelWidthSupported(I)Z
    .registers 5

    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_48

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isChannelWidthSupported called with invalid channel width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DeviceWiphyCapabilities"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v0

    .line 142
    :pswitch_1e
    iget-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    return p1

    .line 140
    :pswitch_21
    iget-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    return p1

    .line 138
    :pswitch_24
    iget-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    return p1

    .line 136
    :pswitch_27
    iget-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    if-nez p1, :cond_33

    iget-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    if-nez p1, :cond_33

    iget-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    if-eqz p1, :cond_34

    :cond_33
    move v0, v1

    :cond_34
    return v0

    .line 133
    :pswitch_35
    iget-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    if-nez p1, :cond_45

    iget-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    if-nez p1, :cond_45

    iget-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    if-nez p1, :cond_45

    iget-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    if-eqz p1, :cond_46

    :cond_45
    move v0, v1

    :cond_46
    return v0

    .line 131
    :pswitch_47
    return v1

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_47
        :pswitch_35
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
    .end packed-switch
.end method

.method public whitelist isWifiStandardSupported(I)Z
    .registers 4

    .line 78
    packed-switch p1, :pswitch_data_2c

    .line 90
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWifiStandardSupported called with invalid standard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceWiphyCapabilities"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 p1, 0x0

    return p1

    .line 88
    :pswitch_1d
    iget-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    return p1

    .line 86
    :pswitch_20
    iget-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    return p1

    .line 84
    :pswitch_23
    iget-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    return p1

    .line 82
    :pswitch_26
    iget-boolean p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    return p1

    .line 80
    :pswitch_29
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_3
        :pswitch_3
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_3
        :pswitch_1d
    .end packed-switch
.end method

.method public blacklist setChannelWidthSupported(IZ)V
    .registers 4

    .line 160
    packed-switch p1, :pswitch_data_28

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setChannelWidthSupported called with Invalid channel width: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeviceWiphyCapabilities"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 168
    :pswitch_1d
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    .line 169
    goto :goto_26

    .line 165
    :pswitch_20
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    .line 166
    goto :goto_26

    .line 162
    :pswitch_23
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    .line 163
    nop

    .line 174
    :goto_26
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x3
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public blacklist setMaxNumberAkms(I)V
    .registers 2

    .line 221
    iput p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberAkms:I

    .line 222
    return-void
.end method

.method public blacklist setMaxNumberRxSpatialStreams(I)V
    .registers 2

    .line 232
    iput p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    .line 233
    return-void
.end method

.method public blacklist setMaxNumberTxSpatialStreams(I)V
    .registers 2

    .line 193
    iput p1, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    .line 194
    return-void
.end method

.method public whitelist setWifiStandardSupport(IZ)V
    .registers 4

    .line 103
    packed-switch p1, :pswitch_data_2a

    .line 117
    :pswitch_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setWifiStandardSupport called with invalid standard: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeviceWiphyCapabilities"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 114
    :pswitch_1d
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    .line 115
    goto :goto_29

    .line 111
    :pswitch_20
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    .line 112
    goto :goto_29

    .line 108
    :pswitch_23
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    .line 109
    goto :goto_29

    .line 105
    :pswitch_26
    iput-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    .line 106
    nop

    .line 119
    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x4
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_3
        :pswitch_1d
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    const-string v1, "m80211nSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    const-string v3, "Yes"

    const-string v4, "No"

    if-eqz v2, :cond_15

    move-object v2, v3

    goto :goto_16

    :cond_15
    move-object v2, v4

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, "m80211acSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    if-eqz v2, :cond_25

    move-object v2, v3

    goto :goto_26

    :cond_25
    move-object v2, v4

    :goto_26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, "m80211axSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    if-eqz v2, :cond_35

    move-object v2, v3

    goto :goto_36

    :cond_35
    move-object v2, v4

    :goto_36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v1, "m80211beSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    if-eqz v2, :cond_45

    move-object v2, v3

    goto :goto_46

    :cond_45
    move-object v2, v4

    :goto_46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, "mChannelWidth160MhzSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 297
    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    if-eqz v2, :cond_55

    move-object v2, v3

    goto :goto_56

    :cond_55
    move-object v2, v4

    :goto_56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v1, "mChannelWidth80p80MhzSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 299
    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    if-eqz v2, :cond_65

    move-object v2, v3

    goto :goto_66

    :cond_65
    move-object v2, v4

    :goto_66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v1, "mChannelWidth320MhzSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 301
    iget-boolean v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    if-eqz v2, :cond_74

    goto :goto_75

    :cond_74
    move-object v3, v4

    :goto_75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, "mMaxNumberTxSpatialStreams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, "mMaxNumberRxSpatialStreams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    const-string v1, "mMaxNumberAkms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberAkms:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 277
    iget-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211nSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 278
    iget-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211acSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 279
    iget-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211axSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 280
    iget-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->m80211beSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 281
    iget-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth160MhzSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 282
    iget-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth80p80MhzSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 283
    iget-boolean p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mChannelWidth320MhzSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 284
    iget p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberTxSpatialStreams:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberRxSpatialStreams:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget p2, p0, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->mMaxNumberAkms:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    return-void
.end method
