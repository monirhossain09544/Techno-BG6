.class public final Lcom/android/internal/telephony/CarrierAppUtils;
.super Ljava/lang/Object;
.source "CarrierAppUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "CarrierAppUtils"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist disableCarrierAppsUntilPrivileged(Ljava/lang/String;ILandroid/content/Context;)V
    .registers 12

    const-class v1, Lcom/android/internal/telephony/CarrierAppUtils;

    monitor-enter v1

    .line 112
    :try_start_3
    const-class v0, Landroid/os/SystemConfigManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemConfigManager;

    .line 113
    nop

    .line 114
    invoke-virtual {v0}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/Set;

    move-result-object v6

    .line 116
    nop

    .line 117
    invoke-virtual {v0}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;

    move-result-object v7

    .line 118
    invoke-static {p2, p1}, Lcom/android/internal/telephony/CarrierAppUtils;->getContentResolverForUser(Landroid/content/Context;I)Landroid/content/ContentResolver;

    move-result-object v4

    .line 119
    const/4 v3, 0x0

    move-object v2, p0

    move v5, p1

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILjava/util/Set;Ljava/util/Map;Landroid/content/Context;)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    .line 122
    monitor-exit v1

    return-void

    .line 111
    :catchall_22
    move-exception v0

    move-object p0, v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_22

    throw p0
.end method

.method public static declared-synchronized blacklist disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;ILandroid/content/Context;)V
    .registers 13

    const-class v1, Lcom/android/internal/telephony/CarrierAppUtils;

    monitor-enter v1

    .line 85
    :try_start_3
    const-class v0, Landroid/os/SystemConfigManager;

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemConfigManager;

    .line 86
    nop

    .line 87
    invoke-virtual {v0}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/Set;

    move-result-object v6

    .line 88
    nop

    .line 89
    invoke-virtual {v0}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;

    move-result-object v7

    .line 90
    invoke-static {p3, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getContentResolverForUser(Landroid/content/Context;I)Landroid/content/ContentResolver;

    move-result-object v4

    .line 91
    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILjava/util/Set;Ljava/util/Map;Landroid/content/Context;)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    .line 94
    monitor-exit v1

    return-void

    .line 84
    :catchall_22
    move-exception v0

    move-object p0, v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_22

    throw p0
.end method

.method public static blacklist disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILjava/util/Set;Ljava/util/Map;Landroid/content/Context;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/content/ContentResolver;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/CarrierAssociatedAppEntry;",
            ">;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 145
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    const-string v5, "CarrierAppUtils"

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 146
    nop

    .line 147
    const-string v7, "legacy_permission"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/permission/LegacyPermissionManager;

    .line 148
    move-object/from16 v8, p4

    invoke-static {v3, v8, v4}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(ILjava/util/Set;Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 150
    if-eqz v8, :cond_2cb

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_29

    goto/16 :goto_2cb

    .line 154
    :cond_29
    move-object/from16 v9, p5

    invoke-static {v3, v9, v4}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAssociatedAppsHelper(ILjava/util/Map;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v9

    .line 157
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 158
    nop

    .line 160
    invoke-virtual {v2}, Landroid/content/ContentResolver;->getUserId()I

    move-result v11

    .line 159
    const-string v12, "carrier_apps_handled"

    const/4 v13, 0x0

    invoke-static {v2, v12, v13, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 164
    if-eqz v11, :cond_44

    const/4 v15, 0x1

    goto :goto_45

    :cond_44
    move v15, v13

    .line 165
    :goto_45
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v11, v13, :cond_4b

    const/4 v13, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v13, 0x0

    .line 168
    :goto_4c
    :try_start_4c
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_50
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_293

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Landroid/content/pm/ApplicationInfo;

    .line 169
    move-object/from16 v16, v8

    iget-object v8, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 170
    if-eqz v1, :cond_6f

    .line 171
    move/from16 v17, v13

    invoke-virtual {v1, v8}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v13

    const/4 v1, 0x1

    if-ne v13, v1, :cond_71

    const/4 v1, 0x1

    goto :goto_72

    .line 170
    :cond_6f
    move/from16 v17, v13

    .line 171
    :cond_71
    const/4 v1, 0x0

    .line 175
    :goto_72
    const/4 v13, 0x0

    invoke-virtual {v6, v8, v13}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    .line 177
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 178
    if-eqz v13, :cond_a6

    .line 179
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_82
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v1

    move-object/from16 v1, v19

    check-cast v1, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;

    .line 180
    iget-object v1, v1, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v1, v9}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    .line 182
    move-object/from16 v9, v19

    move/from16 v1, v20

    goto :goto_82

    .line 179
    :cond_a1
    move/from16 v20, v1

    move-object/from16 v19, v9

    goto :goto_aa

    .line 178
    :cond_a6
    move/from16 v20, v1

    move-object/from16 v19, v9

    .line 185
    :goto_aa
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v9, 0x0

    invoke-virtual {v4, v1, v9}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1
    :try_end_bb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4c .. :try_end_bb} :catch_2c4

    .line 187
    const-string v9, "Update associated state ("

    move-object/from16 v18, v6

    const-string v6, "Update state ("

    const/high16 v21, 0x800000

    if-eqz v20, :cond_1b4

    .line 190
    :try_start_c5
    invoke-static {v14, v1}, Lcom/android/internal/telephony/CarrierAppUtils;->shouldUpdateEnabledState(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v1
    :try_end_c9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c5 .. :try_end_c9} :catch_2c4

    move/from16 v20, v1

    const-string v1, "): ENABLED for user "

    if-eqz v20, :cond_110

    .line 191
    move-object/from16 v20, v13

    :try_start_d1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const/4 v13, 0x0

    invoke-virtual {v4, v6, v13}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v6

    .line 194
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 195
    const/4 v13, 0x2

    invoke-virtual {v6, v8, v13}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    .line 197
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const/4 v13, 0x0

    invoke-virtual {v4, v0, v13, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v6

    .line 198
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 199
    const/4 v13, 0x1

    invoke-virtual {v6, v8, v13, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_112

    .line 190
    :cond_110
    move-object/from16 v20, v13

    .line 206
    :goto_112
    if-eqz v20, :cond_1ab

    .line 207
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_118
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;

    .line 208
    nop

    .line 209
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v13

    move-object/from16 v20, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v13, v6}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v13

    .line 210
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v13, v8, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 211
    invoke-virtual {v6, v13}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    .line 213
    iget-object v13, v8, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int v13, v13, v21

    if-eqz v13, :cond_146

    const/4 v13, 0x1

    goto :goto_147

    :cond_146
    const/4 v13, 0x0

    .line 221
    :goto_147
    if-eqz v6, :cond_156

    move/from16 v22, v13

    const/4 v13, 0x4

    if-eq v6, v13, :cond_156

    if-nez v22, :cond_151

    goto :goto_156

    :cond_151
    move-object/from16 v22, v1

    const/4 v1, 0x2

    const/4 v13, 0x1

    goto :goto_1a3

    .line 226
    :cond_156
    :goto_156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v13, v8, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const/4 v13, 0x0

    invoke-virtual {v4, v6, v13}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v6

    .line 230
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v13, v8, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 231
    move-object/from16 v22, v1

    const/4 v1, 0x2

    invoke-virtual {v6, v13, v1}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    .line 233
    nop

    .line 234
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 233
    const/4 v13, 0x0

    invoke-virtual {v4, v0, v13, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v6

    .line 235
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v8, v8, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 236
    const/4 v13, 0x1

    invoke-virtual {v6, v8, v13, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 241
    :goto_1a3
    move-object/from16 v6, v20

    move-object/from16 v1, v22

    goto/16 :goto_118

    .line 207
    :cond_1a9
    const/4 v13, 0x1

    goto :goto_1ac

    .line 206
    :cond_1ab
    const/4 v13, 0x1

    .line 245
    :goto_1ac
    iget-object v1, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d1 .. :try_end_1b1} :catch_2c4

    const/4 v8, 0x0

    goto/16 :goto_285

    .line 254
    :cond_1b4
    move-object/from16 v20, v13

    const/4 v13, 0x1

    const-string v13, "): DISABLED_UNTIL_USED for user "

    if-nez v15, :cond_1f6

    :try_start_1bb
    invoke-static {v14}, Lcom/android/internal/telephony/CarrierAppUtils;->isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v22

    if-nez v22, :cond_1f6

    if-nez v1, :cond_1f6

    iget v1, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int v1, v1, v21

    if-eqz v1, :cond_1f6

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 261
    const/4 v6, 0x3

    invoke-virtual {v1, v8, v6}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    .line 272
    :cond_1f6
    if-eqz v20, :cond_284

    .line 273
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1fc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_282

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;

    .line 274
    if-eqz v15, :cond_21e

    if-nez v17, :cond_21c

    iget v8, v6, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->addedInSdk:I

    const/4 v14, -0x1

    if-eq v8, v14, :cond_21c

    iget v8, v6, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->addedInSdk:I

    if-le v8, v11, :cond_21c

    iget v8, v6, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->addedInSdk:I

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v8, v14, :cond_21c

    goto :goto_21e

    :cond_21c
    const/4 v8, 0x0

    goto :goto_21f

    :cond_21e
    :goto_21e
    const/4 v8, 0x1

    .line 279
    :goto_21f
    nop

    .line 280
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v14

    const/4 v0, 0x0

    invoke-virtual {v4, v14, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v14

    .line 281
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v14, v6, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 282
    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 284
    iget-object v14, v6, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int v14, v14, v21

    if-eqz v14, :cond_23f

    const/4 v14, 0x1

    goto :goto_240

    :cond_23f
    const/4 v14, 0x0

    .line 294
    :goto_240
    if-eqz v8, :cond_27c

    if-nez v0, :cond_27c

    if-eqz v14, :cond_27c

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v6, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v6, v6, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 304
    const/4 v14, 0x3

    invoke-virtual {v0, v6, v14}, Landroid/content/pm/PackageManager;->setSystemAppState(Ljava/lang/String;I)V

    goto :goto_27e

    .line 294
    :cond_27c
    const/4 v8, 0x0

    const/4 v14, 0x3

    .line 307
    :goto_27e
    move-object/from16 v0, p0

    goto/16 :goto_1fc

    .line 273
    :cond_282
    const/4 v8, 0x0

    goto :goto_285

    .line 272
    :cond_284
    const/4 v8, 0x0

    .line 310
    :goto_285
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, v16

    move/from16 v13, v17

    move-object/from16 v6, v18

    move-object/from16 v9, v19

    goto/16 :goto_50

    .line 313
    :cond_293
    move/from16 v17, v13

    if-eqz v15, :cond_299

    if-nez v17, :cond_2a2

    .line 314
    :cond_299
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 315
    invoke-virtual {v2}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    .line 314
    invoke-static {v2, v12, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 318
    :cond_2a2
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c3

    .line 321
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 322
    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 323
    nop

    .line 324
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/util/TelephonyUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/internal/telephony/CarrierAppUtils$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/internal/telephony/CarrierAppUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 323
    invoke-virtual {v7, v0, v1, v2, v6}, Landroid/permission/LegacyPermissionManager;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 327
    invoke-static {v4, v10, v3}, Lcom/android/internal/telephony/CarrierAppUtils;->grantReceiveSensitiveNotificationsToCarrierApps(Landroid/content/Context;Ljava/util/List;I)V
    :try_end_2c3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1bb .. :try_end_2c3} :catch_2c4

    .line 332
    :cond_2c3
    goto :goto_2ca

    .line 330
    :catch_2c4
    move-exception v0

    .line 331
    const-string v1, "Could not reach PackageManager"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    :goto_2ca
    return-void

    .line 151
    :cond_2cb
    :goto_2cb
    return-void
.end method

.method private static blacklist getApplicationInfoIfSystemApp(ILjava/lang/String;Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 476
    :try_start_0
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 477
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 478
    const p2, 0x20108000

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_14} :catch_18

    .line 482
    if-eqz p0, :cond_17

    .line 483
    return-object p0

    .line 487
    :cond_17
    goto :goto_31

    .line 485
    :catch_18
    move-exception p0

    .line 486
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not installed: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CarrierAppUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_31
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getContentResolverForUser(Landroid/content/Context;I)Landroid/content/ContentResolver;
    .registers 3

    .line 126
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getDefaultCarrierAppCandidates(ILandroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 419
    const-class v0, Landroid/os/SystemConfigManager;

    .line 420
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemConfigManager;

    .line 421
    invoke-virtual {v0}, Landroid/os/SystemConfigManager;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/Set;

    move-result-object v0

    .line 422
    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(ILjava/util/Set;Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getDefaultCarrierAppCandidatesHelper(ILjava/util/Set;Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 428
    if-eqz p1, :cond_2e

    .line 429
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2e

    .line 433
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 434
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 435
    nop

    .line 436
    invoke-static {p0, v1, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getApplicationInfoIfSystemApp(ILjava/lang/String;Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 437
    if-eqz v1, :cond_2c

    .line 438
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_2c
    goto :goto_16

    .line 441
    :cond_2d
    return-object v0

    .line 430
    :cond_2e
    :goto_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getDefaultCarrierApps(Landroid/telephony/TelephonyManager;ILandroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            "I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 384
    invoke-static {p1, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidates(ILandroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 385
    if-eqz p1, :cond_30

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_30

    .line 392
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_13
    if-ltz p2, :cond_2f

    .line 393
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 394
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 395
    nop

    .line 396
    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_26

    move v1, v0

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 398
    :goto_27
    if-nez v1, :cond_2c

    .line 399
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 392
    :cond_2c
    add-int/lit8 p2, p2, -0x1

    goto :goto_13

    .line 403
    :cond_2f
    return-object p1

    .line 386
    :cond_30
    :goto_30
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getDefaultCarrierAssociatedAppsHelper(ILjava/util/Map;Landroid/content/Context;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/CarrierAssociatedAppEntry;",
            ">;>;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;",
            ">;>;"
        }
    .end annotation

    .line 447
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 448
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 450
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 451
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 452
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 453
    const/4 v3, 0x0

    :goto_2a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_61

    .line 454
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/CarrierAssociatedAppEntry;

    .line 455
    iget-object v5, v4, Landroid/os/CarrierAssociatedAppEntry;->packageName:Ljava/lang/String;

    .line 456
    invoke-static {p0, v5, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getApplicationInfoIfSystemApp(ILjava/lang/String;Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 459
    if-eqz v5, :cond_5e

    invoke-static {v5}, Lcom/android/internal/telephony/CarrierAppUtils;->isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 460
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 461
    if-nez v6, :cond_54

    .line 462
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 463
    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_54
    new-instance v7, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;

    iget v4, v4, Landroid/os/CarrierAssociatedAppEntry;->addedInSdk:I

    invoke-direct {v7, v5, v4}, Lcom/android/internal/telephony/CarrierAppUtils$AssociatedAppInfo;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 468
    :cond_61
    goto :goto_11

    .line 469
    :cond_62
    return-object v1
.end method

.method private static blacklist grantReceiveSensitiveNotificationsToCarrierApps(Landroid/content/Context;Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 349
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->redactOtpSms()Z

    move-result v0

    if-nez v0, :cond_7

    .line 350
    return-void

    .line 352
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 353
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 354
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 357
    :try_start_23
    invoke-virtual {v0, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_27} :catch_2f

    .line 360
    nop

    .line 361
    const-string v2, "android:receive_sensitive_notifications"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 363
    goto :goto_17

    .line 358
    :catch_2f
    move-exception v1

    .line 359
    goto :goto_17

    .line 364
    :cond_31
    return-void
.end method

.method private static blacklist isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 1

    .line 131
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method static synthetic blacklist lambda$disableCarrierAppsUntilPrivileged$0(Ljava/lang/Boolean;)V
    .registers 1

    .line 324
    return-void
.end method

.method private static blacklist shouldUpdateEnabledState(Landroid/content/pm/ApplicationInfo;I)Z
    .registers 3

    .line 367
    invoke-static {p0}, Lcom/android/internal/telephony/CarrierAppUtils;->isUpdatedSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_14

    if-eqz p1, :cond_12

    const/4 v0, 0x4

    if-eq p1, v0, :cond_12

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p1, 0x800000

    and-int/2addr p0, p1

    if-nez p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method
