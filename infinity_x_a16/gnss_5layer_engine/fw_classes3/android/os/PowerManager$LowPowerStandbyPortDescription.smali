.class public final Landroid/os/PowerManager$LowPowerStandbyPortDescription;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LowPowerStandbyPortDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$LowPowerStandbyPortDescription$PortMatcher;,
        Landroid/os/PowerManager$LowPowerStandbyPortDescription$Protocol;
    }
.end annotation


# static fields
.field public static final whitelist MATCH_PORT_LOCAL:I = 0x1

.field public static final whitelist MATCH_PORT_REMOTE:I = 0x2

.field public static final whitelist PROTOCOL_TCP:I = 0x6

.field public static final whitelist PROTOCOL_UDP:I = 0x11


# instance fields
.field private final blacklist mLocalAddress:Ljava/net/InetAddress;

.field private final blacklist mPortMatcher:I

.field private final blacklist mPortNumber:I

.field private final blacklist mProtocol:I


# direct methods
.method public constructor whitelist <init>(III)V
    .registers 4

    .line 4007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4008
    iput p1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mProtocol:I

    .line 4009
    iput p2, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortMatcher:I

    .line 4010
    iput p3, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortNumber:I

    .line 4011
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mLocalAddress:Ljava/net/InetAddress;

    .line 4012
    return-void
.end method

.method public constructor whitelist <init>(IIILjava/net/InetAddress;)V
    .registers 5

    .line 4028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4029
    iput p1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mProtocol:I

    .line 4030
    iput p2, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortMatcher:I

    .line 4031
    iput p3, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortNumber:I

    .line 4032
    iput-object p4, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mLocalAddress:Ljava/net/InetAddress;

    .line 4033
    return-void
.end method

.method public static blacklist fromParcelable(Landroid/os/IPowerManager$LowPowerStandbyPortDescription;)Landroid/os/PowerManager$LowPowerStandbyPortDescription;
    .registers 5

    .line 4162
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4163
    return-object v0

    .line 4166
    :cond_4
    nop

    .line 4167
    iget-object v1, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->localAddress:[B

    if-eqz v1, :cond_18

    .line 4169
    :try_start_9
    iget-object v1, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->localAddress:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_f} :catch_10

    .line 4172
    goto :goto_18

    .line 4170
    :catch_10
    move-exception v1

    .line 4171
    const-string v2, "PowerManager"

    const-string v3, "Address has invalid length"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4174
    :cond_18
    :goto_18
    new-instance v1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    iget v2, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->protocol:I

    iget v3, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portMatcher:I

    iget p0, p0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portNumber:I

    invoke-direct {v1, v2, v3, p0, v0}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;-><init>(IIILjava/net/InetAddress;)V

    return-object v1
.end method

.method public static blacklist fromParcelable(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IPowerManager$LowPowerStandbyPortDescription;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/PowerManager$LowPowerStandbyPortDescription;",
            ">;"
        }
    .end annotation

    .line 4184
    if-nez p0, :cond_4

    .line 4185
    const/4 p0, 0x0

    return-object p0

    .line 4188
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4189
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;

    .line 4190
    invoke-static {v1}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->fromParcelable(Landroid/os/IPowerManager$LowPowerStandbyPortDescription;)Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4191
    goto :goto_d

    .line 4192
    :cond_21
    return-object v0
.end method

.method private blacklist portMatcherToString(I)Ljava/lang/String;
    .registers 2

    .line 4044
    packed-switch p1, :pswitch_data_e

    .line 4048
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4046
    :pswitch_8
    const-string p1, "MATCH_PORT_REMOTE"

    return-object p1

    .line 4045
    :pswitch_b
    const-string p1, "MATCH_PORT_LOCAL"

    return-object p1

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist protocolToString(I)Ljava/lang/String;
    .registers 2

    .line 4036
    sparse-switch p1, :sswitch_data_e

    .line 4040
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4038
    :sswitch_8
    const-string p1, "UDP"

    return-object p1

    .line 4037
    :sswitch_b
    const-string p1, "TCP"

    return-object p1

    :sswitch_data_e
    .sparse-switch
        0x6 -> :sswitch_b
        0x11 -> :sswitch_8
    .end sparse-switch
.end method

.method public static blacklist toParcelable(Landroid/os/PowerManager$LowPowerStandbyPortDescription;)Landroid/os/IPowerManager$LowPowerStandbyPortDescription;
    .registers 3

    .line 4130
    if-nez p0, :cond_4

    .line 4131
    const/4 p0, 0x0

    return-object p0

    .line 4134
    :cond_4
    new-instance v0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;

    invoke-direct {v0}, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;-><init>()V

    .line 4136
    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mProtocol:I

    iput v1, v0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->protocol:I

    .line 4137
    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortMatcher:I

    iput v1, v0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portMatcher:I

    .line 4138
    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortNumber:I

    iput v1, v0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->portNumber:I

    .line 4139
    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mLocalAddress:Ljava/net/InetAddress;

    if-eqz v1, :cond_21

    .line 4140
    iget-object p0, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mLocalAddress:Ljava/net/InetAddress;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    iput-object p0, v0, Landroid/os/IPowerManager$LowPowerStandbyPortDescription;->localAddress:[B

    .line 4142
    :cond_21
    return-object v0
.end method

.method public static blacklist toParcelable(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PowerManager$LowPowerStandbyPortDescription;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/IPowerManager$LowPowerStandbyPortDescription;",
            ">;"
        }
    .end annotation

    .line 4148
    if-nez p0, :cond_4

    .line 4149
    const/4 p0, 0x0

    return-object p0

    .line 4152
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4153
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    .line 4154
    invoke-static {v1}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->toParcelable(Landroid/os/PowerManager$LowPowerStandbyPortDescription;)Landroid/os/IPowerManager$LowPowerStandbyPortDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4155
    goto :goto_d

    .line 4156
    :cond_21
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 4114
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 4115
    :cond_4
    instance-of v1, p1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 4116
    :cond_a
    check-cast p1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    .line 4117
    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mProtocol:I

    iget v3, p1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mProtocol:I

    if-ne v1, v3, :cond_29

    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortMatcher:I

    iget v3, p1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortMatcher:I

    if-ne v1, v3, :cond_29

    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortNumber:I

    iget v3, p1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortNumber:I

    if-ne v1, v3, :cond_29

    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mLocalAddress:Ljava/net/InetAddress;

    iget-object p1, p1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mLocalAddress:Ljava/net/InetAddress;

    .line 4118
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v2

    .line 4117
    :goto_2a
    return v0
.end method

.method public whitelist getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 4099
    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mLocalAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public whitelist getPortMatcher()I
    .registers 2

    .line 4077
    iget v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortMatcher:I

    return v0
.end method

.method public whitelist getPortNumber()I
    .registers 2

    .line 4087
    iget v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortNumber:I

    return v0
.end method

.method public whitelist getProtocol()I
    .registers 2

    .line 4062
    iget v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mProtocol:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 4124
    iget v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mProtocol:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortMatcher:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mLocalAddress:Ljava/net/InetAddress;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 4104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PortDescription{mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mProtocol:I

    .line 4105
    invoke-direct {p0, v1}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->protocolToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPortMatcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortMatcher:I

    .line 4106
    invoke-direct {p0, v1}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->portMatcherToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPortNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mPortNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocalAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->mLocalAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4104
    return-object v0
.end method
