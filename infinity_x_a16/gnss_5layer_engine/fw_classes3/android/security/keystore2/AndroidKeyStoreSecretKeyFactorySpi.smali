.class public Landroid/security/keystore2/AndroidKeyStoreSecretKeyFactorySpi;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "AndroidKeyStoreSecretKeyFactorySpi.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    return-void
.end method

.method private static blacklist getGateKeeperSecureUserId()Ljava/math/BigInteger;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    .line 271
    :try_start_0
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 272
    :catch_9
    move-exception v0

    .line 273
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to get GateKeeper secure user ID"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist getKeyInfo(Landroid/security/keystore2/AndroidKeyStoreKey;)Landroid/security/keystore/KeyInfo;
    .registers 38

    .line 72
    nop

    .line 74
    nop

    .line 75
    nop

    .line 76
    nop

    .line 77
    nop

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    nop

    .line 83
    nop

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 87
    nop

    .line 88
    nop

    .line 89
    nop

    .line 90
    nop

    .line 91
    nop

    .line 92
    nop

    .line 93
    nop

    .line 94
    nop

    .line 95
    nop

    .line 96
    nop

    .line 98
    :try_start_2a
    invoke-virtual/range {p0 .. p0}, Landroid/security/keystore2/AndroidKeyStoreKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v5

    array-length v6, v5

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v18, v9

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v26, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, -0x1

    :goto_4f
    if-ge v9, v6, :cond_1c3

    aget-object v7, v5, v9

    .line 99
    iget-object v8, v7, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v8, v8, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const-wide/32 v24, 0x7fffffff

    sparse-switch v8, :sswitch_data_254

    goto/16 :goto_1bf

    .line 186
    :sswitch_5f
    nop

    .line 187
    const/16 v31, 0x1

    goto/16 :goto_1bf

    .line 197
    :sswitch_64
    iget v7, v7, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 198
    invoke-static {v7}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v34

    .line 199
    goto/16 :goto_1bf

    .line 193
    :sswitch_6c
    iget v7, v7, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 194
    invoke-static {v7}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v32

    .line 195
    goto/16 :goto_1bf

    .line 189
    :sswitch_74
    iget v7, v7, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 190
    invoke-static {v7}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v30

    .line 191
    goto/16 :goto_1bf

    .line 174
    :sswitch_7c
    nop

    .line 175
    const/16 v26, 0x0

    goto/16 :goto_1bf

    .line 170
    :sswitch_81
    nop

    .line 171
    invoke-static {v7}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getDate(Landroid/system/keystore2/Authorization;)Ljava/util/Date;

    move-result-object v7

    .line 172
    move-object/from16 v20, v7

    goto/16 :goto_1bf

    .line 166
    :sswitch_8a
    nop

    .line 167
    invoke-static {v7}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getDate(Landroid/system/keystore2/Authorization;)Ljava/util/Date;

    move-result-object v7

    .line 168
    move-object/from16 v19, v7

    goto/16 :goto_1bf

    .line 163
    :sswitch_93
    invoke-static {v7}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getDate(Landroid/system/keystore2/Authorization;)Ljava/util/Date;

    move-result-object v7

    .line 164
    move-object/from16 v18, v7

    goto/16 :goto_1bf

    .line 177
    :sswitch_9b
    nop

    .line 178
    invoke-static {v7}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getUnsignedInt(Landroid/system/keystore2/Authorization;)J

    move-result-wide v7

    .line 179
    cmp-long v10, v7, v24

    if-gtz v10, :cond_a7

    move-wide v10, v7

    goto/16 :goto_1bf

    .line 180
    :cond_a7
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User authentication timeout validity too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :sswitch_c6
    nop

    .line 202
    invoke-static {v7}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getUnsignedInt(Landroid/system/keystore2/Authorization;)J

    move-result-wide v7

    .line 203
    cmp-long v24, v7, v24

    if-gtz v24, :cond_d4

    .line 208
    long-to-int v7, v7

    move/from16 v36, v7

    goto/16 :goto_1bf

    .line 204
    :cond_d4
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usage count of limited use key too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :sswitch_ed
    invoke-static {v7}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getUnsignedInt(Landroid/system/keystore2/Authorization;)J

    move-result-wide v7

    .line 109
    cmp-long v13, v7, v24

    if-gtz v13, :cond_f8

    .line 113
    long-to-int v13, v7

    .line 114
    goto/16 :goto_1bf

    .line 110
    :cond_f8
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bits"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :sswitch_117
    iget-object v7, v7, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v7, v7, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v7}, Landroid/hardware/security/keymint/KeyParameterValue;->getPaddingMode()I

    move-result v7
    :try_end_11f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_11f} :catch_24b

    .line 122
    const/4 v8, 0x5

    if-eq v7, v8, :cond_12f

    const/4 v8, 0x3

    if-ne v7, v8, :cond_126

    goto :goto_12f

    .line 129
    :cond_126
    nop

    .line 130
    :try_start_127
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v8

    .line 132
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_138

    .line 124
    :cond_12f
    :goto_12f
    nop

    .line 125
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$SignaturePadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v8

    .line 127
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_137
    .catch Ljava/lang/IllegalArgumentException; {:try_start_127 .. :try_end_137} :catch_13a

    .line 128
    nop

    .line 137
    :goto_138
    goto/16 :goto_1bf

    .line 134
    :catch_13a
    move-exception v0

    .line 135
    :try_start_13b
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported padding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :sswitch_154
    iget-object v7, v7, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v7, v7, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 141
    invoke-virtual {v7}, Landroid/hardware/security/keymint/KeyParameterValue;->getDigest()I

    move-result v7

    .line 140
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    goto :goto_1bf

    .line 144
    :sswitch_164
    iget-object v7, v7, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v7, v7, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 146
    invoke-virtual {v7}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlockMode()I

    move-result v7

    .line 145
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v7

    .line 144
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    goto :goto_1bf

    .line 116
    :sswitch_174
    iget-object v7, v7, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v7, v7, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 117
    invoke-virtual {v7}, Landroid/hardware/security/keymint/KeyParameterValue;->getKeyPurpose()I

    move-result v7

    .line 116
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$Purpose;->fromKeymaster(I)I

    move-result v7

    or-int v21, v21, v7

    .line 118
    goto :goto_1bf

    .line 101
    :sswitch_183
    iget v8, v7, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 102
    invoke-static {v8}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v17

    .line 103
    iget v8, v7, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 104
    iget-object v7, v7, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v7, v7, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 105
    invoke-virtual {v7}, Landroid/hardware/security/keymint/KeyParameterValue;->getOrigin()I

    move-result v7

    .line 104
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    move-result v14

    .line 106
    move/from16 v35, v8

    goto :goto_1bf

    .line 150
    :sswitch_19a
    iget-object v8, v7, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v8, v8, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v8}, Landroid/hardware/security/keymint/KeyParameterValue;->getHardwareAuthenticatorType()I

    move-result v8

    .line 151
    iget v7, v7, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-static {v7}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v7

    if-eqz v7, :cond_1ac

    .line 152
    move v15, v8

    goto :goto_1bf

    .line 154
    :cond_1ac
    nop

    .line 156
    move v12, v8

    goto :goto_1bf

    .line 158
    :sswitch_1af
    iget-object v7, v7, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v7, v7, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 160
    invoke-virtual {v7}, Landroid/hardware/security/keymint/KeyParameterValue;->getLongInteger()J

    move-result-wide v7

    .line 159
    invoke-static {v7, v8}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v7

    .line 158
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1be
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13b .. :try_end_1be} :catch_24b

    .line 161
    nop

    .line 98
    :goto_1bf
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4f

    .line 214
    :cond_1c3
    nop

    .line 215
    const/4 v5, -0x1

    if-eq v13, v5, :cond_243

    .line 218
    if-eq v14, v5, :cond_23b

    .line 222
    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    .line 223
    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 224
    new-array v6, v5, [Ljava/lang/String;

    .line 225
    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v23, v4

    check-cast v23, [Ljava/lang/String;

    .line 227
    if-eqz v26, :cond_1e5

    if-eqz v15, :cond_1e5

    if-nez v12, :cond_1e5

    const/16 v29, 0x1

    goto :goto_1e7

    :cond_1e5
    const/16 v29, 0x0

    .line 231
    :goto_1e7
    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, [Ljava/lang/String;

    .line 232
    new-array v0, v5, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, [Ljava/lang/String;

    .line 234
    nop

    .line 235
    const/4 v0, 0x2

    if-eq v12, v0, :cond_206

    if-ne v15, v0, :cond_203

    goto :goto_206

    :cond_203
    move/from16 v33, v5

    goto :goto_21b

    .line 238
    :cond_206
    :goto_206
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_218

    .line 239
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreSecretKeyFactorySpi;->getGateKeeperSecureUserId()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_218

    const/4 v7, 0x1

    goto :goto_219

    :cond_218
    move v7, v5

    :goto_219
    move/from16 v33, v7

    .line 242
    :goto_21b
    move v7, v15

    move/from16 v15, v17

    move/from16 v17, v13

    new-instance v13, Landroid/security/keystore/KeyInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/security/keystore2/AndroidKeyStoreKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    iget-object v0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    long-to-int v1, v10

    .line 256
    if-eqz v29, :cond_22e

    .line 257
    move/from16 v28, v7

    goto :goto_230

    .line 258
    :cond_22e
    move/from16 v28, v12

    :goto_230
    move/from16 v27, v1

    move-object/from16 v22, v3

    move/from16 v16, v14

    move-object v14, v0

    invoke-direct/range {v13 .. v36}, Landroid/security/keystore/KeyInfo;-><init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIIZZZZZZII)V

    .line 242
    return-object v13

    .line 219
    :cond_23b
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Key origin not available"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_243
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Key size not available"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :catch_24b
    move-exception v0

    .line 213
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Unsupported key characteristic"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_data_254
    .sparse-switch
        -0x5ffffe0a -> :sswitch_1af
        0x100001f8 -> :sswitch_19a
        0x100002be -> :sswitch_183
        0x20000001 -> :sswitch_174
        0x20000004 -> :sswitch_164
        0x20000005 -> :sswitch_154
        0x20000006 -> :sswitch_117
        0x30000003 -> :sswitch_ed
        0x30000195 -> :sswitch_c6
        0x300001f9 -> :sswitch_9b
        0x60000190 -> :sswitch_93
        0x60000191 -> :sswitch_8a
        0x60000192 -> :sswitch_81
        0x700001f7 -> :sswitch_7c
        0x700001fa -> :sswitch_74
        0x700001fb -> :sswitch_6c
        0x700001fc -> :sswitch_64
        0x700001fd -> :sswitch_5f
    .end sparse-switch
.end method


# virtual methods
.method protected whitelist test-api engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 279
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "To generate secret key in Android Keystore, use KeyGenerator initialized with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/security/keystore/KeyGenParameterSpec;

    .line 281
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 51
    if-eqz p2, :cond_69

    .line 54
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_2d

    .line 55
    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only Android KeyStore secret keys supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_21

    :cond_1e
    const-string/jumbo p1, "null"

    :goto_21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 58
    :cond_2d
    const-class v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 62
    const-class v0, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 65
    check-cast p1, Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 67
    invoke-static {p1}, Landroid/security/keystore2/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/keystore2/AndroidKeyStoreKey;)Landroid/security/keystore/KeyInfo;

    move-result-object p1

    return-object p1

    .line 63
    :cond_44
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported key spec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_61
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string p2, "Key material export of Android KeyStore keys is not supported"

    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_69
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string p2, "keySpecClass == null"

    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist test-api engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 286
    if-eqz p1, :cond_f

    .line 288
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-eqz v0, :cond_7

    .line 293
    return-object p1

    .line 289
    :cond_7
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "To import a secret key into Android Keystore, use KeyStore.setEntry"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 287
    :cond_f
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
