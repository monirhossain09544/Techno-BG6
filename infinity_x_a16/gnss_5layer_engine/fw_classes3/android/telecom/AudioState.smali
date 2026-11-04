.class public Landroid/telecom/AudioState;
.super Ljava/lang/Object;
.source "AudioState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/AudioState;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o ROUTE_ALL:I = 0xf

.field public static final whitelist ROUTE_BLUETOOTH:I = 0x2

.field public static final whitelist ROUTE_EARPIECE:I = 0x1

.field public static final whitelist ROUTE_SPEAKER:I = 0x8

.field public static final whitelist ROUTE_WIRED_HEADSET:I = 0x4

.field public static final whitelist ROUTE_WIRED_OR_EARPIECE:I = 0x5


# instance fields
.field private final greylist-max-p isMuted:Z

.field private final greylist-max-p route:I

.field private final greylist-max-p supportedRouteMask:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 140
    new-instance v0, Landroid/telecom/AudioState$1;

    invoke-direct {v0}, Landroid/telecom/AudioState$1;-><init>()V

    sput-object v0, Landroid/telecom/AudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telecom/AudioState;)V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/AudioState;->isMuted:Z

    .line 75
    invoke-virtual {p1}, Landroid/telecom/AudioState;->getRoute()I

    move-result v0

    iput v0, p0, Landroid/telecom/AudioState;->route:I

    .line 76
    invoke-virtual {p1}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result p1

    iput p1, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    .line 77
    return-void
.end method

.method public constructor whitelist <init>(Landroid/telecom/CallAudioState;)V
    .registers 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/AudioState;->isMuted:Z

    .line 81
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    iput v0, p0, Landroid/telecom/AudioState;->route:I

    .line 82
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result p1

    iput p1, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    .line 83
    return-void
.end method

.method public constructor whitelist <init>(ZII)V
    .registers 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean p1, p0, Landroid/telecom/AudioState;->isMuted:Z

    .line 69
    iput p2, p0, Landroid/telecom/AudioState;->route:I

    .line 70
    iput p3, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    .line 71
    return-void
.end method

.method public static whitelist audioRouteToString(I)Ljava/lang/String;
    .registers 4

    .line 109
    if-eqz p0, :cond_39

    and-int/lit8 v0, p0, -0x10

    if-eqz v0, :cond_7

    goto :goto_39

    .line 113
    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 115
    const-string v1, "EARPIECE"

    invoke-static {v0, v1}, Landroid/telecom/AudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 117
    :cond_16
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    .line 118
    const-string v1, "BLUETOOTH"

    invoke-static {v0, v1}, Landroid/telecom/AudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 120
    :cond_20
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2a

    .line 121
    const-string v1, "WIRED_HEADSET"

    invoke-static {v0, v1}, Landroid/telecom/AudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 123
    :cond_2a
    const/16 v1, 0x8

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_34

    .line 124
    const-string p0, "SPEAKER"

    invoke-static {v0, p0}, Landroid/telecom/AudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 127
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 110
    :cond_39
    :goto_39
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method private static greylist-max-o listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 3

    .line 131
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 132
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 87
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 88
    return v0

    .line 90
    :cond_4
    instance-of v1, p1, Landroid/telecom/AudioState;

    if-nez v1, :cond_9

    .line 91
    return v0

    .line 93
    :cond_9
    check-cast p1, Landroid/telecom/AudioState;

    .line 94
    invoke-virtual {p0}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v1

    invoke-virtual {p1}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v2

    if-ne v1, v2, :cond_2b

    invoke-virtual {p0}, Landroid/telecom/AudioState;->getRoute()I

    move-result v1

    invoke-virtual {p1}, Landroid/telecom/AudioState;->getRoute()I

    move-result v2

    if-ne v1, v2, :cond_2b

    .line 95
    invoke-virtual {p0}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v1

    invoke-virtual {p1}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result p1

    if-ne v1, p1, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    nop

    .line 94
    :goto_2c
    return v0
.end method

.method public whitelist getRoute()I
    .registers 2

    .line 186
    iget v0, p0, Landroid/telecom/AudioState;->route:I

    return v0
.end method

.method public whitelist getSupportedRouteMask()I
    .registers 2

    .line 193
    iget v0, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    return v0
.end method

.method public whitelist isMuted()Z
    .registers 2

    .line 179
    iget-boolean v0, p0, Landroid/telecom/AudioState;->isMuted:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 101
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-boolean v1, p0, Landroid/telecom/AudioState;->isMuted:Z

    .line 103
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p0, Landroid/telecom/AudioState;->route:I

    .line 104
    invoke-static {v2}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    .line 105
    invoke-static {v3}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 101
    const-string v2, "[AudioState isMuted: %b, route: %s, supportedRouteMask: %s]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 170
    iget-boolean p2, p0, Landroid/telecom/AudioState;->isMuted:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 171
    iget p2, p0, Landroid/telecom/AudioState;->route:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget p2, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    return-void
.end method
