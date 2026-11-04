.class public final Landroid/net/Ikev2VpnProfile$Builder;
.super Ljava/lang/Object;
.source "Ikev2VpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Ikev2VpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowedAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAutomaticIpVersionSelectionEnabled:Z

.field private blacklist mAutomaticNattKeepaliveTimerEnabled:Z

.field private blacklist mExcludeLocalRoutes:Z

.field private final blacklist mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

.field private blacklist mIsBypassable:Z

.field private blacklist mIsMetered:Z

.field private blacklist mIsRestrictedToTestNetworks:Z

.field private blacklist mMaxMtu:I

.field private blacklist mPassword:Ljava/lang/String;

.field private blacklist mPresharedKey:[B

.field private blacklist mProxyInfo:Landroid/net/ProxyInfo;

.field private blacklist mRequiresInternetValidation:Z

.field private blacklist mRsaPrivateKey:Ljava/security/PrivateKey;

.field private final blacklist mServerAddr:Ljava/lang/String;

.field private blacklist mServerRootCaCert:Ljava/security/cert/X509Certificate;

.field private blacklist mType:I

.field private blacklist mUserCert:Ljava/security/cert/X509Certificate;

.field private final blacklist mUserIdentity:Ljava/lang/String;

.field private blacklist mUsername:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)V
    .registers 4

    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    .line 822
    sget-object v0, Landroid/net/Ikev2VpnProfile;->DEFAULT_ALGORITHMS:Ljava/util/List;

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAllowedAlgorithms:Ljava/util/List;

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRequiresInternetValidation:Z

    .line 824
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsBypassable:Z

    .line 825
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsMetered:Z

    .line 826
    const/16 v1, 0x550

    iput v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mMaxMtu:I

    .line 827
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsRestrictedToTestNetworks:Z

    .line 828
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mExcludeLocalRoutes:Z

    .line 829
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticNattKeepaliveTimerEnabled:Z

    .line 830
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticIpVersionSelectionEnabled:Z

    .line 858
    const-string v0, "ikeTunConnParams"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p1, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 861
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerAddr:Ljava/lang/String;

    .line 862
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUserIdentity:Ljava/lang/String;

    .line 863
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    .line 822
    sget-object v0, Landroid/net/Ikev2VpnProfile;->DEFAULT_ALGORITHMS:Ljava/util/List;

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAllowedAlgorithms:Ljava/util/List;

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRequiresInternetValidation:Z

    .line 824
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsBypassable:Z

    .line 825
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsMetered:Z

    .line 826
    const/16 v1, 0x550

    iput v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mMaxMtu:I

    .line 827
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsRestrictedToTestNetworks:Z

    .line 828
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mExcludeLocalRoutes:Z

    .line 829
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticNattKeepaliveTimerEnabled:Z

    .line 830
    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticIpVersionSelectionEnabled:Z

    .line 841
    const-string/jumbo v0, "serverAddr"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p1, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const-string v0, "identity"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerAddr:Ljava/lang/String;

    .line 845
    iput-object p2, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUserIdentity:Ljava/lang/String;

    .line 847
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 848
    return-void
.end method

.method private blacklist resetAuthParams()V
    .registers 2

    .line 866
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mPresharedKey:[B

    .line 867
    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    .line 868
    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUsername:Ljava/lang/String;

    .line 869
    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mPassword:Ljava/lang/String;

    .line 870
    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRsaPrivateKey:Ljava/security/PrivateKey;

    .line 871
    iput-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 872
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/Ikev2VpnProfile;
    .registers 24

    .line 1202
    move-object/from16 v0, p0

    new-instance v1, Landroid/net/Ikev2VpnProfile;

    move-object v2, v1

    iget v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    move-object v3, v2

    iget-object v2, v0, Landroid/net/Ikev2VpnProfile$Builder;->mServerAddr:Ljava/lang/String;

    move-object v4, v3

    iget-object v3, v0, Landroid/net/Ikev2VpnProfile$Builder;->mUserIdentity:Ljava/lang/String;

    move-object v5, v4

    iget-object v4, v0, Landroid/net/Ikev2VpnProfile$Builder;->mPresharedKey:[B

    move-object v6, v5

    iget-object v5, v0, Landroid/net/Ikev2VpnProfile$Builder;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    move-object v7, v6

    iget-object v6, v0, Landroid/net/Ikev2VpnProfile$Builder;->mUsername:Ljava/lang/String;

    move-object v8, v7

    iget-object v7, v0, Landroid/net/Ikev2VpnProfile$Builder;->mPassword:Ljava/lang/String;

    move-object v9, v8

    iget-object v8, v0, Landroid/net/Ikev2VpnProfile$Builder;->mRsaPrivateKey:Ljava/security/PrivateKey;

    move-object v10, v9

    iget-object v9, v0, Landroid/net/Ikev2VpnProfile$Builder;->mUserCert:Ljava/security/cert/X509Certificate;

    move-object v11, v10

    iget-object v10, v0, Landroid/net/Ikev2VpnProfile$Builder;->mProxyInfo:Landroid/net/ProxyInfo;

    move-object v12, v11

    iget-object v11, v0, Landroid/net/Ikev2VpnProfile$Builder;->mAllowedAlgorithms:Ljava/util/List;

    move-object v13, v12

    iget-boolean v12, v0, Landroid/net/Ikev2VpnProfile$Builder;->mIsBypassable:Z

    move-object v14, v13

    iget-boolean v13, v0, Landroid/net/Ikev2VpnProfile$Builder;->mIsMetered:Z

    move-object v15, v14

    iget v14, v0, Landroid/net/Ikev2VpnProfile$Builder;->mMaxMtu:I

    move-object/from16 v16, v15

    iget-boolean v15, v0, Landroid/net/Ikev2VpnProfile$Builder;->mIsRestrictedToTestNetworks:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mExcludeLocalRoutes:Z

    move/from16 v18, v1

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mRequiresInternetValidation:Z

    move/from16 v19, v1

    iget-object v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-object/from16 v20, v1

    iget-boolean v1, v0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticNattKeepaliveTimerEnabled:Z

    iget-boolean v0, v0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticIpVersionSelectionEnabled:Z

    const/16 v21, 0x0

    move-object/from16 v22, v20

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v16, v18

    move-object/from16 v18, v22

    move/from16 v22, v19

    move/from16 v19, v1

    move/from16 v1, v17

    move/from16 v17, v22

    invoke-direct/range {v0 .. v21}, Landroid/net/Ikev2VpnProfile;-><init>(ILjava/lang/String;Ljava/lang/String;[BLjava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Landroid/net/ProxyInfo;Ljava/util/List;ZZIZZZLandroid/net/ipsec/ike/IkeTunnelConnectionParams;ZZLandroid/net/Ikev2VpnProfile-IA;)V

    return-object v0
.end method

.method public blacklist restrictToTestNetworks()Landroid/net/Ikev2VpnProfile$Builder;
    .registers 2

    .line 1133
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsRestrictedToTestNetworks:Z

    .line 1134
    return-object p0
.end method

.method public whitelist setAllowedAlgorithms(Ljava/util/List;)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Ikev2VpnProfile$Builder;"
        }
    .end annotation

    .line 1113
    const-string v0, "algorithmNames"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Required parameter was not provided: %s"

    invoke-static {p1, v2, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    iget-object v1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-static {v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckBuilderSetter(ZLjava/lang/String;)V

    .line 1115
    invoke-static {p1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smvalidateAllowedAlgorithms(Ljava/util/List;)V

    .line 1117
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAllowedAlgorithms:Ljava/util/List;

    .line 1118
    return-object p0
.end method

.method public whitelist setAuthDigitalSignature(Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 6

    .line 940
    const-string/jumbo v0, "userCert"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p1, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    const-string v0, "key"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    const-string v1, "authDigitalSignature"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckBuilderSetter(ZLjava/lang/String;)V

    .line 945
    invoke-static {p1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckCert(Ljava/security/cert/X509Certificate;)V

    .line 946
    if-eqz p3, :cond_29

    invoke-static {p3}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckCert(Ljava/security/cert/X509Certificate;)V

    .line 948
    :cond_29
    invoke-direct {p0}, Landroid/net/Ikev2VpnProfile$Builder;->resetAuthParams()V

    .line 949
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 950
    iput-object p2, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRsaPrivateKey:Ljava/security/PrivateKey;

    .line 951
    iput-object p3, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    .line 952
    const/16 p1, 0x8

    iput p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    .line 953
    return-object p0
.end method

.method public whitelist setAuthPsk([B)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 4

    .line 973
    const-string/jumbo v0, "psk"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p1, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    const-string v1, "authPsk"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckBuilderSetter(ZLjava/lang/String;)V

    .line 976
    invoke-direct {p0}, Landroid/net/Ikev2VpnProfile$Builder;->resetAuthParams()V

    .line 977
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mPresharedKey:[B

    .line 978
    const/4 p1, 0x7

    iput p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    .line 979
    return-object p0
.end method

.method public whitelist setAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/security/cert/X509Certificate;)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 6

    .line 899
    const-string/jumbo v0, "user"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required parameter was not provided: %s"

    invoke-static {p1, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const-string/jumbo v0, "pass"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v1, v0}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    iget-object v0, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIkeTunConnParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    const-string v1, "authUsernamePassword"

    invoke-static {v0, v1}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckBuilderSetter(ZLjava/lang/String;)V

    .line 904
    if-eqz p3, :cond_27

    invoke-static {p3}, Landroid/net/Ikev2VpnProfile;->-$$Nest$smcheckCert(Ljava/security/cert/X509Certificate;)V

    .line 906
    :cond_27
    invoke-direct {p0}, Landroid/net/Ikev2VpnProfile$Builder;->resetAuthParams()V

    .line 907
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mUsername:Ljava/lang/String;

    .line 908
    iput-object p2, p0, Landroid/net/Ikev2VpnProfile$Builder;->mPassword:Ljava/lang/String;

    .line 909
    iput-object p3, p0, Landroid/net/Ikev2VpnProfile$Builder;->mServerRootCaCert:Ljava/security/cert/X509Certificate;

    .line 910
    const/4 p1, 0x6

    iput p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mType:I

    .line 911
    return-object p0
.end method

.method public whitelist setAutomaticIpVersionSelectionEnabled(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 2

    .line 1166
    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticIpVersionSelectionEnabled:Z

    .line 1167
    return-object p0
.end method

.method public whitelist setAutomaticNattKeepaliveTimerEnabled(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 2

    .line 1152
    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mAutomaticNattKeepaliveTimerEnabled:Z

    .line 1153
    return-object p0
.end method

.method public whitelist setBypassable(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 2

    .line 998
    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsBypassable:Z

    .line 999
    return-object p0
.end method

.method public whitelist setLocalRoutesExcluded(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 2

    .line 1190
    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mExcludeLocalRoutes:Z

    .line 1191
    return-object p0
.end method

.method public whitelist setMaxMtu(I)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 3

    .line 1033
    const/16 v0, 0x500

    if-lt p1, v0, :cond_7

    .line 1036
    iput p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mMaxMtu:I

    .line 1037
    return-object p0

    .line 1034
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max MTU must be at least 1280"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setMetered(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 2

    .line 1081
    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mIsMetered:Z

    .line 1082
    return-object p0
.end method

.method public whitelist setProxy(Landroid/net/ProxyInfo;)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 2

    .line 1013
    iput-object p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mProxyInfo:Landroid/net/ProxyInfo;

    .line 1014
    return-object p0
.end method

.method public whitelist setRequiresInternetValidation(Z)Landroid/net/Ikev2VpnProfile$Builder;
    .registers 2

    .line 1060
    iput-boolean p1, p0, Landroid/net/Ikev2VpnProfile$Builder;->mRequiresInternetValidation:Z

    .line 1061
    return-object p0
.end method
