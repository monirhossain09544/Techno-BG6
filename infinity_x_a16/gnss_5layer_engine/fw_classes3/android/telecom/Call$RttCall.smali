.class public final Landroid/telecom/Call$RttCall;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RttCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$RttCall$RttAudioMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o READ_BUFFER_SIZE:I = 0x3e8

.field public static final whitelist RTT_MODE_FULL:I = 0x1

.field public static final whitelist RTT_MODE_HCO:I = 0x2

.field public static final greylist-max-o RTT_MODE_INVALID:I = 0x0

.field public static final whitelist RTT_MODE_VCO:I = 0x3


# instance fields
.field private final greylist-max-o mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private greylist-max-o mReadBuffer:[C

.field private greylist-max-o mReceiveStream:Ljava/io/InputStreamReader;

.field private greylist-max-o mRttMode:I

.field private final greylist-max-o mTelecomCallId:Ljava/lang/String;

.field private greylist-max-o mTransmitStream:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/io/InputStreamReader;Ljava/io/OutputStreamWriter;ILandroid/telecom/InCallAdapter;)V
    .registers 7

    .line 1616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1610
    const/16 v0, 0x3e8

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    .line 1617
    iput-object p1, p0, Landroid/telecom/Call$RttCall;->mTelecomCallId:Ljava/lang/String;

    .line 1618
    iput-object p2, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    .line 1619
    iput-object p3, p0, Landroid/telecom/Call$RttCall;->mTransmitStream:Ljava/io/OutputStreamWriter;

    .line 1620
    iput p4, p0, Landroid/telecom/Call$RttCall;->mRttMode:I

    .line 1621
    iput-object p5, p0, Landroid/telecom/Call$RttCall;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 1622
    return-void
.end method


# virtual methods
.method public greylist-max-o close()V
    .registers 2

    .line 1707
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1710
    goto :goto_7

    .line 1708
    :catch_6
    move-exception v0

    .line 1712
    :goto_7
    :try_start_7
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mTransmitStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_d

    .line 1715
    goto :goto_e

    .line 1713
    :catch_d
    move-exception v0

    .line 1716
    :goto_e
    return-void
.end method

.method public whitelist getRttAudioMode()I
    .registers 2

    .line 1630
    iget v0, p0, Landroid/telecom/Call$RttCall;->mRttMode:I

    return v0
.end method

.method public whitelist read()Ljava/lang/String;
    .registers 6

    .line 1672
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    iget-object v2, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v1

    .line 1673
    if-gez v1, :cond_f

    .line 1674
    return-object v0

    .line 1676
    :cond_f
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_17

    return-object v2

    .line 1677
    :catch_17
    move-exception v1

    .line 1678
    const-string v2, "Exception encountered when reading from InputStreamReader: %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1679
    return-object v0
.end method

.method public whitelist readImmediately()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1690
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->ready()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 1691
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    iget-object v2, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v0

    .line 1692
    if-gez v0, :cond_17

    .line 1693
    return-object v1

    .line 1695
    :cond_17
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    invoke-direct {v1, v2, v4, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 1697
    :cond_1f
    return-object v1
.end method

.method public whitelist setRttMode(I)V
    .registers 4

    .line 1640
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call$RttCall;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->setRttMode(Ljava/lang/String;I)V

    .line 1641
    return-void
.end method

.method public whitelist write(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1656
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mTransmitStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1657
    iget-object p1, p0, Landroid/telecom/Call$RttCall;->mTransmitStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1658
    return-void
.end method
