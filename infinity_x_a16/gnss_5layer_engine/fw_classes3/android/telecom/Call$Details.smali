.class public Landroid/telecom/Call$Details;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Details"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$Details$CallDirection;
    }
.end annotation


# static fields
.field public static final whitelist CAPABILITY_ADD_PARTICIPANT:I = 0x2000000

.field public static final whitelist CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO:I = 0x400000

.field public static final whitelist CAPABILITY_CAN_PAUSE_VIDEO:I = 0x100000

.field public static final whitelist CAPABILITY_CAN_PULL_CALL:I = 0x800000

.field public static final greylist-max-o CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION:I = 0x200000

.field public static final greylist-max-p CAPABILITY_CAN_UPGRADE_TO_VIDEO:I = 0x80000

.field public static final whitelist CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final whitelist CAPABILITY_HOLD:I = 0x1

.field public static final whitelist CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final whitelist CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final whitelist CAPABILITY_MUTE:I = 0x40

.field public static final whitelist CAPABILITY_REMOTE_PARTY_SUPPORTS_RTT:I = 0x10000000

.field public static final whitelist CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final whitelist CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final greylist-max-o CAPABILITY_SPEED_UP_MT_AUDIO:I = 0x40000

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL:I = 0x300

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_RX:I = 0x100

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_TX:I = 0x200

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL:I = 0xc00

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_RX:I = 0x400

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_TX:I = 0x800

.field public static final whitelist CAPABILITY_SUPPORT_DEFLECT:I = 0x1000000

.field public static final whitelist CAPABILITY_SUPPORT_HOLD:I = 0x2

.field public static final whitelist CAPABILITY_SWAP_CONFERENCE:I = 0x8

.field public static final blacklist CAPABILITY_TRANSFER:I = 0x4000000

.field public static final blacklist CAPABILITY_TRANSFER_CONSULTATIVE:I = 0x8000000

.field public static final greylist-max-o CAPABILITY_UNUSED_1:I = 0x10

.field public static final whitelist DIRECTION_INCOMING:I = 0x0

.field public static final whitelist DIRECTION_OUTGOING:I = 0x1

.field public static final whitelist DIRECTION_UNKNOWN:I = -0x1

.field public static final whitelist PROPERTY_ASSISTED_DIALING:I = 0x200

.field public static final whitelist PROPERTY_CONFERENCE:I = 0x1

.field public static final whitelist PROPERTY_CROSS_SIM:I = 0x4000

.field public static final whitelist PROPERTY_EMERGENCY_CALLBACK_MODE:I = 0x4

.field public static final whitelist PROPERTY_ENTERPRISE_CALL:I = 0x20

.field public static final whitelist PROPERTY_GENERIC_CONFERENCE:I = 0x2

.field public static final whitelist PROPERTY_HAS_CDMA_VOICE_PRIVACY:I = 0x80

.field public static final whitelist PROPERTY_HIGH_DEF_AUDIO:I = 0x10

.field public static final whitelist PROPERTY_IS_ADHOC_CONFERENCE:I = 0x2000

.field public static final whitelist PROPERTY_IS_EXTERNAL_CALL:I = 0x40

.field public static final whitelist PROPERTY_IS_TRANSACTIONAL:I = 0x8000

.field public static final whitelist PROPERTY_NETWORK_IDENTIFIED_EMERGENCY_CALL:I = 0x800

.field public static final blacklist PROPERTY_REMOTELY_HOSTED:I = 0x10000

.field public static final whitelist PROPERTY_RTT:I = 0x400

.field public static final whitelist PROPERTY_SELF_MANAGED:I = 0x100

.field public static final whitelist PROPERTY_VOIP_AUDIO_MODE:I = 0x1000

.field public static final whitelist PROPERTY_WIFI:I = 0x8


# instance fields
.field private final greylist-max-o mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final blacklist mAssociatedUser:Landroid/os/UserHandle;

.field private final greylist-max-o mCallCapabilities:I

.field private final blacklist mCallDirection:I

.field private final greylist-max-o mCallProperties:I

.field private final greylist-max-o mCallerDisplayName:Ljava/lang/String;

.field private final greylist-max-o mCallerDisplayNamePresentation:I

.field private final blacklist mCallerNumberVerificationStatus:I

.field private final greylist-max-o mConnectTimeMillis:J

.field private final blacklist mContactDisplayName:Ljava/lang/String;

.field private final blacklist mContactPhotoUri:Landroid/net/Uri;

.field private final greylist-max-o mCreationTimeMillis:J

.field private final greylist-max-o mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mGatewayInfo:Landroid/telecom/GatewayInfo;

.field private final greylist-max-o mHandle:Landroid/net/Uri;

.field private final greylist-max-o mHandlePresentation:I

.field private final greylist-max-o mIntentExtras:Landroid/os/Bundle;

.field private final blacklist mState:I

.field private final greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private final greylist-max-o mSupportedAudioRoutes:I

.field private final greylist-max-o mTelecomCallId:Ljava/lang/String;

.field private final greylist-max-o mVideoState:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/os/Bundle;JLjava/lang/String;IILandroid/net/Uri;Landroid/os/UserHandle;)V
    .registers 26

    .line 1228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    const/16 v0, 0x1f

    iput v0, p0, Landroid/telecom/Call$Details;->mSupportedAudioRoutes:I

    .line 1229
    iput p1, p0, Landroid/telecom/Call$Details;->mState:I

    .line 1230
    iput-object p2, p0, Landroid/telecom/Call$Details;->mTelecomCallId:Ljava/lang/String;

    .line 1231
    iput-object p3, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    .line 1232
    iput p4, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    .line 1233
    iput-object p5, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    .line 1234
    iput p6, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    .line 1235
    iput-object p7, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 1236
    iput p8, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    .line 1237
    iput p9, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    .line 1238
    iput-object p10, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 1239
    iput-wide p11, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    .line 1240
    iput-object p13, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    .line 1241
    iput p14, p0, Landroid/telecom/Call$Details;->mVideoState:I

    .line 1242
    move-object/from16 p1, p15

    iput-object p1, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    .line 1243
    move-object/from16 p1, p16

    iput-object p1, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    .line 1244
    move-object/from16 p1, p17

    iput-object p1, p0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    .line 1245
    move-wide/from16 p1, p18

    iput-wide p1, p0, Landroid/telecom/Call$Details;->mCreationTimeMillis:J

    .line 1246
    move-object/from16 p1, p20

    iput-object p1, p0, Landroid/telecom/Call$Details;->mContactDisplayName:Ljava/lang/String;

    .line 1247
    move/from16 p1, p21

    iput p1, p0, Landroid/telecom/Call$Details;->mCallDirection:I

    .line 1248
    move/from16 p1, p22

    iput p1, p0, Landroid/telecom/Call$Details;->mCallerNumberVerificationStatus:I

    .line 1249
    move-object/from16 p1, p23

    iput-object p1, p0, Landroid/telecom/Call$Details;->mContactPhotoUri:Landroid/net/Uri;

    .line 1250
    move-object/from16 p1, p24

    iput-object p1, p0, Landroid/telecom/Call$Details;->mAssociatedUser:Landroid/os/UserHandle;

    .line 1251
    return-void
.end method

.method public static whitelist can(II)Z
    .registers 2

    .line 743
    and-int/2addr p0, p1

    if-ne p0, p1, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static whitelist capabilitiesToString(I)Ljava/lang/String;
    .registers 3

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 764
    const-string v1, "[Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 766
    const-string v1, " CAPABILITY_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    :cond_16
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 769
    const-string v1, " CAPABILITY_SUPPORT_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    :cond_22
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 772
    const-string v1, " CAPABILITY_MERGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    :cond_2e
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 775
    const-string v1, " CAPABILITY_SWAP_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :cond_3b
    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 778
    const-string v1, " CAPABILITY_RESPOND_VIA_TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    :cond_48
    const/16 v1, 0x40

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 781
    const-string v1, " CAPABILITY_MUTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    :cond_55
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 784
    const-string v1, " CAPABILITY_MANAGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    :cond_62
    const/16 v1, 0x100

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 787
    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    :cond_6f
    const/16 v1, 0x200

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 790
    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    :cond_7c
    const/16 v1, 0x300

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 793
    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    :cond_89
    const/16 v1, 0x400

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 796
    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :cond_96
    const/16 v1, 0x800

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 799
    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    :cond_a3
    const/high16 v1, 0x400000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 802
    const-string v1, " CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    :cond_b0
    const/16 v1, 0xc00

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 805
    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    :cond_bd
    const/high16 v1, 0x40000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 808
    const-string v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    :cond_ca
    const/high16 v1, 0x80000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 811
    const-string v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :cond_d7
    const/high16 v1, 0x100000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 814
    const-string v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    :cond_e4
    const/high16 v1, 0x800000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 817
    const-string v1, " CAPABILITY_CAN_PULL_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    :cond_f1
    const/high16 v1, 0x1000000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 820
    const-string v1, " CAPABILITY_SUPPORT_DEFLECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    :cond_fe
    const/high16 v1, 0x2000000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 823
    const-string v1, " CAPABILITY_ADD_PARTICIPANT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    :cond_10b
    const/high16 v1, 0x4000000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_118

    .line 826
    const-string v1, " CAPABILITY_TRANSFER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :cond_118
    const/high16 v1, 0x8000000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_125

    .line 829
    const-string v1, " CAPABILITY_TRANSFER_CONSULTATIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :cond_125
    const/high16 v1, 0x10000000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result p0

    if-eqz p0, :cond_132

    .line 832
    const-string p0, " CAPABILITY_REMOTE_PARTY_SUPPORTS_RTT"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    :cond_132
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;
    .registers 26

    .line 1255
    new-instance v0, Landroid/telecom/Call$Details;

    .line 1256
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v1

    .line 1257
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1258
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getHandle()Landroid/net/Uri;

    move-result-object v3

    .line 1259
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getHandlePresentation()I

    move-result v4

    .line 1260
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 1261
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getCallerDisplayNamePresentation()I

    move-result v6

    .line 1262
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    .line 1263
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getCapabilities()I

    move-result v8

    .line 1264
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getProperties()I

    move-result v9

    .line 1265
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v10

    .line 1266
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getConnectTimeMillis()J

    move-result-wide v11

    .line 1267
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v13

    .line 1268
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getVideoState()I

    move-result v14

    .line 1269
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v15

    .line 1270
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    .line 1271
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 1272
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getCreationTimeMillis()J

    move-result-wide v18

    .line 1273
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getContactDisplayName()Ljava/lang/String;

    move-result-object v20

    .line 1274
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getCallDirection()I

    move-result v21

    .line 1275
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getCallerNumberVerificationStatus()I

    move-result v22

    .line 1276
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getContactPhotoUri()Landroid/net/Uri;

    move-result-object v23

    .line 1277
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getAssociatedUser()Landroid/os/UserHandle;

    move-result-object v24

    invoke-direct/range {v0 .. v24}, Landroid/telecom/Call$Details;-><init>(ILjava/lang/String;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/os/Bundle;JLjava/lang/String;IILandroid/net/Uri;Landroid/os/UserHandle;)V

    .line 1255
    return-object v0
.end method

.method public static whitelist hasProperty(II)Z
    .registers 2

    .line 846
    and-int/2addr p0, p1

    if-ne p0, p1, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static whitelist propertiesToString(I)Ljava/lang/String;
    .registers 3

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 867
    const-string v1, "[Properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 869
    const-string v1, " PROPERTY_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    :cond_16
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 872
    const-string v1, " PROPERTY_GENERIC_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    :cond_22
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 875
    const-string v1, " PROPERTY_WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_2f
    const/16 v1, 0x10

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 878
    const-string v1, " PROPERTY_HIGH_DEF_AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    :cond_3c
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 881
    const-string v1, " PROPERTY_EMERGENCY_CALLBACK_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    :cond_48
    const/16 v1, 0x40

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 884
    const-string v1, " PROPERTY_IS_EXTERNAL_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    :cond_55
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 887
    const-string v1, " PROPERTY_HAS_CDMA_VOICE_PRIVACY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    :cond_62
    const/16 v1, 0x200

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 890
    const-string v1, " PROPERTY_ASSISTED_DIALING_USED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    :cond_6f
    const/16 v1, 0x800

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 893
    const-string v1, " PROPERTY_NETWORK_IDENTIFIED_EMERGENCY_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    :cond_7c
    const/16 v1, 0x400

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 896
    const-string v1, " PROPERTY_RTT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    :cond_89
    const/16 v1, 0x1000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 899
    const-string v1, " PROPERTY_VOIP_AUDIO_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    :cond_96
    const/16 v1, 0x2000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 902
    const-string v1, " PROPERTY_IS_ADHOC_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    :cond_a3
    const/16 v1, 0x4000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 905
    const-string v1, " PROPERTY_CROSS_SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    :cond_b0
    const v1, 0x8000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 908
    const-string v1, " PROPERTY_IS_TRANSACTIONAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    :cond_be
    const/high16 v1, 0x10000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result p0

    if-eqz p0, :cond_cb

    .line 911
    const-string p0, " PROPERTY_REMOTELY_HOSTED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    :cond_cb
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist can(I)Z
    .registers 3

    .line 753
    iget v0, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    invoke-static {v0, p1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1150
    instance-of v0, p1, Landroid/telecom/Call$Details;

    const/4 v1, 0x0

    if-eqz v0, :cond_12d

    .line 1151
    check-cast p1, Landroid/telecom/Call$Details;

    .line 1152
    iget v0, p0, Landroid/telecom/Call$Details;->mState:I

    .line 1153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Landroid/telecom/Call$Details;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget-object v0, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    iget-object v2, p1, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    .line 1154
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget v0, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    .line 1155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Landroid/telecom/Call$Details;->mHandlePresentation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget-object v0, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    iget-object v2, p1, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    .line 1156
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget v0, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    .line 1157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    .line 1158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1157
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget-object v0, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p1, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 1159
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget v0, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    .line 1160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Landroid/telecom/Call$Details;->mCallCapabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget v0, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    .line 1161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Landroid/telecom/Call$Details;->mCallProperties:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget-object v0, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    iget-object v2, p1, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 1162
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget-wide v2, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    .line 1163
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p1, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget-object v0, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    iget-object v2, p1, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    .line 1164
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget v0, p0, Landroid/telecom/Call$Details;->mVideoState:I

    .line 1165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Landroid/telecom/Call$Details;->mVideoState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget-object v0, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    iget-object v2, p1, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    .line 1166
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget-object v0, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    iget-object v2, p1, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    .line 1167
    invoke-static {v0, v2}, Landroid/telecom/Call;->-$$Nest$smareBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget-object v0, p0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    iget-object v2, p1, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    .line 1168
    invoke-static {v0, v2}, Landroid/telecom/Call;->-$$Nest$smareBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget-wide v2, p0, Landroid/telecom/Call$Details;->mCreationTimeMillis:J

    .line 1169
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p1, Landroid/telecom/Call$Details;->mCreationTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget-object v0, p0, Landroid/telecom/Call$Details;->mContactDisplayName:Ljava/lang/String;

    iget-object v2, p1, Landroid/telecom/Call$Details;->mContactDisplayName:Ljava/lang/String;

    .line 1170
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget v0, p0, Landroid/telecom/Call$Details;->mCallDirection:I

    .line 1171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Landroid/telecom/Call$Details;->mCallDirection:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget v0, p0, Landroid/telecom/Call$Details;->mCallerNumberVerificationStatus:I

    .line 1172
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Landroid/telecom/Call$Details;->mCallerNumberVerificationStatus:I

    .line 1173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1172
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget-object v0, p0, Landroid/telecom/Call$Details;->mContactPhotoUri:Landroid/net/Uri;

    iget-object v2, p1, Landroid/telecom/Call$Details;->mContactPhotoUri:Landroid/net/Uri;

    .line 1174
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget-object v0, p0, Landroid/telecom/Call$Details;->mAssociatedUser:Landroid/os/UserHandle;

    iget-object p1, p1, Landroid/telecom/Call$Details;->mAssociatedUser:Landroid/os/UserHandle;

    .line 1175
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12b

    const/4 v1, 0x1

    goto :goto_12c

    :cond_12b
    nop

    .line 1152
    :goto_12c
    return v1

    .line 1177
    :cond_12d
    return v1
.end method

.method public whitelist getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .line 988
    iget-object v0, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public blacklist getAssociatedUser()Landroid/os/UserHandle;
    .registers 2

    .line 1145
    iget-object v0, p0, Landroid/telecom/Call$Details;->mAssociatedUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist getCallCapabilities()I
    .registers 2

    .line 996
    iget v0, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    return v0
.end method

.method public whitelist getCallDirection()I
    .registers 2

    .line 1100
    iget v0, p0, Landroid/telecom/Call$Details;->mCallDirection:I

    return v0
.end method

.method public whitelist getCallProperties()I
    .registers 2

    .line 1004
    iget v0, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    return v0
.end method

.method public whitelist getCallerDisplayName()Ljava/lang/String;
    .registers 2

    .line 972
    iget-object v0, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCallerDisplayNamePresentation()I
    .registers 2

    .line 980
    iget v0, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public whitelist getCallerNumberVerificationStatus()I
    .registers 2

    .line 1135
    iget v0, p0, Landroid/telecom/Call$Details;->mCallerNumberVerificationStatus:I

    return v0
.end method

.method public final whitelist getConnectTimeMillis()J
    .registers 3

    .line 1033
    iget-wide v0, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public whitelist getContactDisplayName()Ljava/lang/String;
    .registers 2

    .line 1092
    iget-object v0, p0, Landroid/telecom/Call$Details;->mContactDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getContactPhotoUri()Landroid/net/Uri;
    .registers 2

    .line 961
    iget-object v0, p0, Landroid/telecom/Call$Details;->mContactPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getCreationTimeMillis()J
    .registers 3

    .line 1081
    iget-wide v0, p0, Landroid/telecom/Call$Details;->mCreationTimeMillis:J

    return-wide v0
.end method

.method public whitelist getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    .line 1021
    iget-object v0, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 1062
    iget-object v0, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getGatewayInfo()Landroid/telecom/GatewayInfo;
    .registers 2

    .line 1040
    iget-object v0, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    return-object v0
.end method

.method public whitelist getHandle()Landroid/net/Uri;
    .registers 2

    .line 942
    iget-object v0, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getHandlePresentation()I
    .registers 2

    .line 950
    iget v0, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    return v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 929
    iget-object v0, p0, Landroid/telecom/Call$Details;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIntentExtras()Landroid/os/Bundle;
    .registers 2

    .line 1069
    iget-object v0, p0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final whitelist getState()I
    .registers 2

    .line 921
    iget v0, p0, Landroid/telecom/Call$Details;->mState:I

    return v0
.end method

.method public whitelist getStatusHints()Landroid/telecom/StatusHints;
    .registers 2

    .line 1055
    iget-object v0, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public greylist-max-o getSupportedAudioRoutes()I
    .registers 2

    .line 1013
    const/16 v0, 0x1f

    return v0
.end method

.method public greylist-max-o getTelecomCallId()Ljava/lang/String;
    .registers 2

    .line 934
    iget-object v0, p0, Landroid/telecom/Call$Details;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVideoState()I
    .registers 2

    .line 1047
    iget v0, p0, Landroid/telecom/Call$Details;->mVideoState:I

    return v0
.end method

.method public whitelist hasProperty(I)Z
    .registers 3

    .line 856
    iget v0, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    invoke-static {v0, p1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 24

    .line 1182
    move-object/from16 v0, p0

    iget v1, v0, Landroid/telecom/Call$Details;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    iget v1, v0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    .line 1184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    iget v1, v0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    .line 1186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget v1, v0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    .line 1188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Landroid/telecom/Call$Details;->mCallProperties:I

    .line 1189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    iget-wide v11, v0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    .line 1191
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v12, v0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    iget v1, v0, Landroid/telecom/Call$Details;->mVideoState:I

    .line 1193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    iget-object v15, v0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    iget-object v1, v0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    iget-wide v1, v0, Landroid/telecom/Call$Details;->mCreationTimeMillis:J

    .line 1197
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v0, Landroid/telecom/Call$Details;->mContactDisplayName:Ljava/lang/String;

    move-object/from16 v18, v1

    iget v1, v0, Landroid/telecom/Call$Details;->mCallDirection:I

    .line 1199
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v1, v0, Landroid/telecom/Call$Details;->mCallerNumberVerificationStatus:I

    .line 1200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-object v1, v0, Landroid/telecom/Call$Details;->mContactPhotoUri:Landroid/net/Uri;

    iget-object v0, v0, Landroid/telecom/Call$Details;->mAssociatedUser:Landroid/os/UserHandle;

    move-object/from16 v21, v18

    move-object/from16 v18, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v21

    move-object/from16 v22, v0

    move-object/from16 v21, v1

    filled-new-array/range {v2 .. v22}, [Ljava/lang/Object;

    move-result-object v0

    .line 1182
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1284
    const-string v1, "[id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    iget-object v1, p0, Landroid/telecom/Call$Details;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    iget v1, p0, Landroid/telecom/Call$Details;->mState:I

    invoke-static {v1}, Landroid/telecom/Call;->-$$Nest$smstateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    const-string v1, ", pa: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    iget-object v1, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1290
    const-string v1, ", hdl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    iget-object v1, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    invoke-static {v1}, Landroid/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    const-string v1, ", hdlPres: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    iget v1, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1294
    const-string v1, ", videoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    iget v1, p0, Landroid/telecom/Call$Details;->mVideoState:I

    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    const-string v1, ", caps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    iget v1, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    invoke-static {v1}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    const-string v1, ", props: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    iget v1, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    invoke-static {v1}, Landroid/telecom/Call$Details;->propertiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
