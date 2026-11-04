.class public final Lcom/android/internal/telephony/TelephonyPermissions;
.super Ljava/lang/Object;
.source "TelephonyPermissions.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "TelephonyPermissions"

.field private static final blacklist PROPERTY_DEVICE_IDENTIFIER_ACCESS_RESTRICTIONS_DISABLED:Ljava/lang/String; = "device_identifier_access_restrictions_disabled"

.field private static final blacklist sReportedDeviceIDPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyPermissions;->sReportedDeviceIDPackages:Ljava/util/Map;

    .line 62
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    .line 298
    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfUseIccAuthWithDeviceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 300
    const/4 p0, 0x1

    return p0

    .line 302
    :cond_8
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyPermissions;->checkPrivilegedReadPermissionOrCarrierPrivilegePermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static blacklist checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 272
    const/4 v0, -0x1

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadDeviceIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist checkCallingOrSelfReadNonDangerousPhoneStateNoThrow(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 138
    :try_start_0
    const-string v0, "android.permission.READ_BASIC_PHONE_STATE"

    .line 140
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 138
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_d} :catch_f

    .line 141
    const/4 p0, 0x1

    return p0

    .line 142
    :catch_f
    move-exception p0

    .line 143
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist checkCallingOrSelfReadPhoneNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    .line 535
    nop

    .line 536
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 535
    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneNumber(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    .line 96
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneState(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist checkCallingOrSelfReadPhoneStateNoThrow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 105
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    .line 107
    :catch_5
    move-exception p0

    .line 108
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist checkCallingOrSelfReadSubscriberIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 326
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadSubscriberIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static blacklist checkCallingOrSelfReadSubscriberIdentifiers(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 13

    .line 341
    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfUseIccAuthWithDeviceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 343
    const/4 p0, 0x1

    return p0

    .line 345
    :cond_8
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyPermissions;->checkPrivilegedReadPermissionOrCarrierPrivilegePermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static blacklist checkCallingOrSelfUseIccAuthWithDeviceIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 479
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 480
    return v0

    .line 482
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 483
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 484
    const-string v2, "android:use_icc_auth_with_device_identifier"

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 486
    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_2a

    .line 495
    :pswitch_1d
    return v0

    .line 491
    :pswitch_1e
    const-string p1, "android.permission.USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_27

    move v0, p2

    :cond_27
    return v0

    .line 489
    :pswitch_28
    return p2

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_28
        :pswitch_1d
        :pswitch_1d
        :pswitch_1e
        :pswitch_28
    .end packed-switch
.end method

.method private static blacklist checkCarrierPrivilegeForAnySubId(Landroid/content/Context;I)Z
    .registers 8

    .line 700
    const-string v0, "telephony_subscription_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 703
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 705
    :try_start_c
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionIdList()[I

    move-result-object v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_27

    .line 707
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 708
    nop

    .line 709
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v3, v1, :cond_26

    aget v4, v0, v3

    .line 710
    invoke-static {p0, v4, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->getCarrierPrivilegeStatus(Landroid/content/Context;II)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    .line 712
    return v5

    .line 709
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 715
    :cond_26
    return v2

    .line 707
    :catchall_27
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 708
    throw p0
.end method

.method public static blacklist checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z
    .registers 3

    .line 205
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 206
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/TelephonyPermissions;->getCarrierPrivilegeStatus(Landroid/content/Context;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_12

    .line 208
    return p1

    .line 210
    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist checkInternetPermissionNoThrow(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 120
    :try_start_0
    const-string v0, "android.permission.INTERNET"

    .line 121
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 120
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_d} :catch_f

    .line 122
    const/4 p0, 0x1

    return p0

    .line 123
    :catch_f
    move-exception p0

    .line 124
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist checkLastKnownCellIdAccessPermission(Landroid/content/Context;)Z
    .registers 2

    .line 603
    const-string v0, "android.permission.ACCESS_LAST_KNOWN_CELL_ID"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static blacklist checkPrivilegedReadPermissionOrCarrierPrivilegePermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 14

    .line 375
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 376
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 379
    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_10

    return v6

    .line 383
    :cond_10
    if-eqz p5, :cond_19

    invoke-static {p0, v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForAnySubId(Landroid/content/Context;I)Z

    move-result p5

    if-eqz p5, :cond_19

    .line 384
    return v6

    .line 387
    :cond_19
    nop

    .line 388
    const-string p5, "legacy_permission"

    invoke-virtual {p0, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    move-object v0, p5

    check-cast v0, Landroid/permission/LegacyPermissionManager;

    .line 390
    move-object v1, p2

    move-object v3, p3

    move-object v2, p4

    :try_start_26
    invoke-virtual/range {v0 .. v5}, Landroid/permission/LegacyPermissionManager;->checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p2
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_2a} :catch_31

    move-object p4, v1

    move-object p5, v2

    move p3, v5

    if-nez p2, :cond_30

    .line 393
    return v6

    .line 397
    :cond_30
    goto :goto_38

    .line 395
    :catch_31
    move-exception v0

    move-object p4, v1

    move-object p5, v2

    move p3, v5

    .line 396
    invoke-static {p5, p3}, Lcom/android/internal/telephony/TelephonyPermissions;->throwSecurityExceptionAsUidDoesNotHaveAccess(Ljava/lang/String;I)V

    .line 399
    :goto_38
    if-eqz p6, :cond_40

    .line 400
    move p2, v4

    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/TelephonyPermissions;->reportAccessDeniedToReadIdentifiers(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 403
    :cond_40
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist checkReadCallLog(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)Z
    .registers 14

    .line 507
    const-string v0, "android.permission.READ_CALL_LOG"

    invoke-virtual {p0, v0, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    .line 511
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 512
    const-string p2, "readCallLog"

    invoke-static {p0, p1, p3, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCarrierPrivilege(Landroid/content/Context;IILjava/lang/String;)V

    .line 513
    return v0

    .line 515
    :cond_16
    return v1

    .line 520
    :cond_17
    const-string p1, "appops"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/app/AppOpsManager;

    .line 521
    const-string v3, "android:read_call_log"

    const/4 v7, 0x0

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    return v0
.end method

.method public static blacklist checkReadPhoneNumber(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    .line 551
    nop

    .line 552
    const-string v0, "legacy_permission"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/LegacyPermissionManager;

    .line 557
    move v5, p2

    move v6, p3

    move-object v2, p4

    move-object v4, p5

    move-object v3, p6

    invoke-virtual/range {v1 .. v6}, Landroid/permission/LegacyPermissionManager;->checkPhoneNumberAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p2

    .line 559
    const/4 p3, 0x1

    if-nez p2, :cond_17

    .line 560
    return p3

    .line 562
    :cond_17
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p4

    if-eqz p4, :cond_24

    .line 563
    invoke-static {p0, p1, v6}, Lcom/android/internal/telephony/TelephonyPermissions;->getCarrierPrivilegeStatus(Landroid/content/Context;II)I

    move-result p0

    if-ne p0, p3, :cond_24

    .line 565
    return p3

    .line 568
    :cond_24
    if-ne p2, p3, :cond_28

    .line 569
    const/4 p0, 0x0

    return p0

    .line 572
    :cond_28
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": Neither user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " nor current process has "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "android.permission.READ_SMS"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", or "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "android.permission.READ_PHONE_NUMBERS"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist checkReadPhoneState(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 173
    const/4 v1, 0x1

    :try_start_1
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, p2, p3, p6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_6} :catch_7

    .line 177
    return v1

    .line 178
    :catch_7
    move-exception v0

    .line 180
    :try_start_8
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0, p2, p3, p6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_d} :catch_23

    .line 190
    nop

    .line 195
    const-string p1, "appops"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/app/AppOpsManager;

    .line 196
    const-string p2, "android:read_phone_state"

    const/4 p6, 0x0

    invoke-virtual/range {p1 .. p6}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1

    .line 182
    :catch_23
    move-exception v0

    move-object p2, v0

    .line 185
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p4

    if-eqz p4, :cond_2f

    .line 186
    invoke-static {p0, p1, p3, p6}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCarrierPrivilege(Landroid/content/Context;IILjava/lang/String;)V

    .line 187
    return v1

    .line 189
    :cond_2f
    throw p2
.end method

.method public static blacklist checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    .line 230
    const/4 v1, 0x1

    :try_start_1
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, p1, p2, p5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_6} :catch_7

    .line 234
    return v1

    .line 235
    :catch_7
    move-exception v0

    .line 237
    :try_start_8
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0, p1, p2, p5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_d} :catch_26

    .line 243
    nop

    .line 248
    const-string p1, "appops"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/app/AppOpsManager;

    .line 249
    const-string v3, "android:read_phone_state"

    const/4 v7, 0x0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    return v1

    .line 239
    :catch_26
    move-exception v0

    move v4, p2

    .line 242
    invoke-static {p0, v4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForAnySubId(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static blacklist checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;)Z
    .registers 8

    .line 888
    const-string v0, "TelephonyPermissions"

    const-string v1, "telephony_subscription_service"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 890
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 892
    if-eqz p0, :cond_68

    .line 893
    const/4 v3, 0x0

    :try_start_11
    invoke-virtual {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->isSubscriptionAssociatedWithUser(ILandroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_68

    .line 895
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User[User ID:"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "] is not associated with Subscription ID:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_3b} :catch_42
    .catchall {:try_start_11 .. :try_end_3b} :catchall_40

    .line 897
    nop

    .line 904
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 897
    return v3

    .line 904
    :catchall_40
    move-exception p0

    goto :goto_64

    .line 899
    :catch_42
    move-exception p0

    .line 901
    :try_start_43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Subscription[Subscription ID:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "] has no records on device"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_43 .. :try_end_5f} :catchall_40

    .line 902
    nop

    .line 904
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 902
    return v3

    .line 904
    :goto_64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 905
    throw p0

    .line 904
    :cond_68
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 905
    nop

    .line 906
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 9

    .line 860
    const-string v0, "TelephonyPermissions"

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 862
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 864
    if-eqz v1, :cond_41

    if-eqz p3, :cond_41

    :try_start_12
    invoke-virtual {v1, p3}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_41

    .line 865
    const-string p3, "checkSubscriptionAssociatedWithUser: destAddr is emergency number"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_25
    .catchall {:try_start_12 .. :try_end_1d} :catchall_23

    .line 867
    nop

    .line 872
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 867
    const/4 p0, 0x1

    return p0

    .line 872
    :catchall_23
    move-exception p0

    goto :goto_3d

    .line 869
    :catch_25
    move-exception p3

    .line 870
    :try_start_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot verify if destAddr is an emergency number: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_23

    goto :goto_41

    .line 872
    :goto_3d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 873
    throw p0

    .line 872
    :cond_41
    :goto_41
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 873
    nop

    .line 875
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static varargs blacklist enforceAnyPermissionGranted(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;)V
    .registers 9

    .line 740
    array-length v0, p3

    if-nez v0, :cond_4

    return-void

    .line 741
    :cond_4
    nop

    .line 742
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x1

    if-ge v2, v0, :cond_19

    aget-object v4, p3, v2

    .line 743
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_16

    .line 744
    nop

    .line 745
    move p0, v3

    goto :goto_1a

    .line 742
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_19
    move p0, v1

    .line 749
    :goto_1a
    if-eqz p0, :cond_1d

    return-void

    .line 751
    :cond_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 752
    const-string p2, ": Neither user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 754
    const-string p1, " nor current process has "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    aget-object p1, p3, v1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    nop

    :goto_35
    array-length p1, p3

    if-ge v3, p1, :cond_45

    .line 757
    const-string p1, " or "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    aget-object p1, p3, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 760
    :cond_45
    new-instance p1, Ljava/lang/SecurityException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs blacklist enforceAnyPermissionGrantedOrCarrierPrivileges(Landroid/content/Context;IILjava/lang/String;[Ljava/lang/String;)V
    .registers 11

    .line 770
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceAnyPermissionGrantedOrCarrierPrivileges(Landroid/content/Context;IIZLjava/lang/String;[Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method public static varargs blacklist enforceAnyPermissionGrantedOrCarrierPrivileges(Landroid/content/Context;IIZLjava/lang/String;[Ljava/lang/String;)V
    .registers 11

    .line 782
    array-length v0, p5

    if-nez v0, :cond_4

    return-void

    .line 783
    :cond_4
    nop

    .line 784
    array-length v0, p5

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x1

    if-ge v2, v0, :cond_19

    aget-object v4, p5, v2

    .line 785
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_16

    .line 786
    nop

    .line 787
    move v0, v3

    goto :goto_1a

    .line 784
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_19
    move v0, v1

    .line 791
    :goto_1a
    if-eqz v0, :cond_1d

    return-void

    .line 793
    :cond_1d
    if-eqz p3, :cond_26

    .line 794
    invoke-static {p0, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForAnySubId(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_2d

    return-void

    .line 796
    :cond_26
    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_2d

    return-void

    .line 799
    :cond_2d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 800
    const-string p4, ": Neither user "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 802
    const-string p2, " nor current process has "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    aget-object p2, p5, v1

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    nop

    :goto_45
    array-length p2, p5

    if-ge v3, p2, :cond_55

    .line 805
    const-string p2, " or "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    aget-object p2, p5, v3

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 808
    :cond_55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " or carrier privileges. subId="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", allowCarrierPrivilegeOnAnySub="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    new-instance p1, Ljava/lang/SecurityException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    .line 686
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCarrierPrivilege(Landroid/content/Context;IILjava/lang/String;)V

    .line 687
    return-void
.end method

.method public static blacklist enforceCallingOrSelfModifyPermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    .line 586
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 588
    return-void

    .line 592
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 593
    return-void
.end method

.method public static blacklist enforceCallingOrSelfReadPhoneStatePermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    .line 615
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 617
    return-void

    .line 624
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 625
    return-void
.end method

.method public static blacklist enforceCallingOrSelfReadPrecisePhoneStatePermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    .line 657
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 659
    return-void

    .line 662
    :cond_9
    const-string v0, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    .line 664
    return-void

    .line 672
    :cond_12
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 673
    return-void
.end method

.method public static blacklist enforceCallingOrSelfReadPrivilegedPhoneStatePermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    .line 635
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 637
    return-void

    .line 645
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 646
    return-void
.end method

.method private static blacklist enforceCarrierPrivilege(Landroid/content/Context;IILjava/lang/String;)V
    .registers 4

    .line 691
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->getCarrierPrivilegeStatus(Landroid/content/Context;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_8

    .line 696
    return-void

    .line 694
    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist enforceShellOnly(ILjava/lang/String;)V
    .registers 3

    .line 819
    const/16 v0, 0x7d0

    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_29

    .line 820
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_29

    .line 824
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": Only shell user can call it"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 821
    :cond_29
    :goto_29
    return-void
.end method

.method private static blacklist getCarrierPrivilegeStatus(Landroid/content/Context;II)I
    .registers 6

    .line 719
    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyPermissions;->isSystemOrPhone(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 721
    const/4 p0, 0x1

    return p0

    .line 724
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 726
    :try_start_c
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 728
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->getCarrierPrivilegeStatus(I)I

    move-result p0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_20

    .line 730
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 728
    return p0

    .line 730
    :catchall_20
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 731
    throw p0
.end method

.method public static blacklist getTargetSdk(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .line 836
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 837
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 836
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 838
    if-eqz p0, :cond_16

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_15} :catch_17

    return p0

    .line 842
    :cond_16
    goto :goto_3e

    .line 839
    :catch_17
    move-exception p0

    .line 840
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to get package info for pkg="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 841
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 840
    const-string p1, "TelephonyPermissions"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :goto_3e
    const p0, 0x7fffffff

    return p0
.end method

.method public static blacklist isRootOrShell(I)Z
    .registers 3

    .line 923
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0x7d0

    invoke-static {p0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_10

    :cond_f
    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public static blacklist isShell(I)Z
    .registers 2

    .line 933
    const/16 v0, 0x7d0

    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    return p0
.end method

.method public static blacklist isSystemOrPhone(I)Z
    .registers 2

    .line 914
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v0, 0x3e9

    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private static blacklist reportAccessDeniedToReadIdentifiers(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 419
    const-string v0, "TelephonyPermissions"

    .line 421
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 422
    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 421
    invoke-virtual {v2, p4, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_f} :catch_10

    .line 428
    goto :goto_28

    .line 423
    :catch_10
    move-exception v2

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught obtaining package info for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    .line 431
    :goto_28
    sget-object v3, Lcom/android/internal/telephony/TelephonyPermissions;->sReportedDeviceIDPackages:Ljava/util/Map;

    invoke-interface {v3, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 432
    if-eqz v3, :cond_3e

    sget-object v4, Lcom/android/internal/telephony/TelephonyPermissions;->sReportedDeviceIDPackages:Ljava/util/Map;

    invoke-interface {v4, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 435
    :cond_3e
    if-nez v3, :cond_4b

    .line 436
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 437
    sget-object v4, Lcom/android/internal/telephony/TelephonyPermissions;->sReportedDeviceIDPackages:Ljava/util/Map;

    invoke-interface {v4, p4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 439
    :cond_4b
    sget-object v3, Lcom/android/internal/telephony/TelephonyPermissions;->sReportedDeviceIDPackages:Ljava/util/Map;

    invoke-interface {v3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 441
    :goto_53
    invoke-interface {v3, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 442
    const/16 v3, 0xac

    invoke-static {v3, p4, p5, v1, v1}, Lcom/android/internal/telephony/TelephonyCommonStatsLog;->write(ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 445
    :cond_5b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportAccessDeniedToReadIdentifiers:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v3, ":"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    if-eqz v2, :cond_9b

    iget p4, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1d

    if-ge p4, v0, :cond_9b

    .line 451
    const-string p4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, p4, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    if-nez p2, :cond_94

    .line 455
    return v1

    .line 457
    :cond_94
    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCarrierPrivilegeForSubId(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_9b

    .line 458
    return v1

    .line 461
    :cond_9b
    invoke-static {p5, p3}, Lcom/android/internal/telephony/TelephonyPermissions;->throwSecurityExceptionAsUidDoesNotHaveAccess(Ljava/lang/String;I)V

    .line 462
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist throwSecurityExceptionAsUidDoesNotHaveAccess(Ljava/lang/String;I)V
    .registers 4

    .line 350
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ": The uid "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " does not meet the requirements to access device identifiers."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
