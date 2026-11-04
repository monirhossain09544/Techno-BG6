.class public Landroid/provider/BlockedNumberContract$SystemContract;
.super Ljava/lang/Object;
.source "BlockedNumberContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BlockedNumberContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemContract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTION_BLOCK_SUPPRESSION_STATE_CHANGED:Ljava/lang/String; = "android.provider.action.BLOCK_SUPPRESSION_STATE_CHANGED"

.field public static final greylist-max-o ENHANCED_SETTING_KEY_BLOCK_PAYPHONE:Ljava/lang/String; = "block_payphone_calls_setting"

.field public static final greylist-max-o ENHANCED_SETTING_KEY_BLOCK_PRIVATE:Ljava/lang/String; = "block_private_number_calls_setting"

.field public static final blacklist ENHANCED_SETTING_KEY_BLOCK_UNAVAILABLE:Ljava/lang/String; = "block_unavailable_calls_setting"

.field public static final greylist-max-o ENHANCED_SETTING_KEY_BLOCK_UNKNOWN:Ljava/lang/String; = "block_unknown_calls_setting"

.field public static final greylist-max-o ENHANCED_SETTING_KEY_BLOCK_UNREGISTERED:Ljava/lang/String; = "block_numbers_not_in_contacts_setting"

.field public static final greylist-max-o ENHANCED_SETTING_KEY_SHOW_EMERGENCY_CALL_NOTIFICATION:Ljava/lang/String; = "show_emergency_call_notification"

.field public static final greylist-max-o METHOD_END_BLOCK_SUPPRESSION:Ljava/lang/String; = "end_block_suppression"

.field public static final greylist-max-o METHOD_GET_BLOCK_SUPPRESSION_STATUS:Ljava/lang/String; = "get_block_suppression_status"

.field public static final greylist-max-o METHOD_GET_ENHANCED_BLOCK_SETTING:Ljava/lang/String; = "get_enhanced_block_setting"

.field public static final greylist-max-o METHOD_NOTIFY_EMERGENCY_CONTACT:Ljava/lang/String; = "notify_emergency_contact"

.field public static final greylist-max-o METHOD_SET_ENHANCED_BLOCK_SETTING:Ljava/lang/String; = "set_enhanced_block_setting"

.field public static final greylist-max-o METHOD_SHOULD_SHOW_EMERGENCY_CALL_NOTIFICATION:Ljava/lang/String; = "should_show_emergency_call_notification"

.field public static final greylist-max-o METHOD_SHOULD_SYSTEM_BLOCK_NUMBER:Ljava/lang/String; = "should_system_block_number"

.field public static final greylist-max-o RES_BLOCKING_SUPPRESSED_UNTIL_TIMESTAMP:Ljava/lang/String; = "blocking_suppressed_until_timestamp"

.field public static final greylist-max-o RES_IS_BLOCKING_SUPPRESSED:Ljava/lang/String; = "blocking_suppressed"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist blockStatusToString(I)Ljava/lang/String;
    .registers 1

    .line 605
    packed-switch p0, :pswitch_data_1e

    .line 621
    const-string/jumbo p0, "unknown"

    return-object p0

    .line 619
    :pswitch_7
    const-string p0, "blocked - unavailable"

    return-object p0

    .line 617
    :pswitch_a
    const-string p0, "blocked - not in contacts"

    return-object p0

    .line 615
    :pswitch_d
    const-string p0, "blocked - payphone"

    return-object p0

    .line 613
    :pswitch_10
    const-string p0, "blocked - unknown"

    return-object p0

    .line 611
    :pswitch_13
    const-string p0, "blocked - restricted"

    return-object p0

    .line 609
    :pswitch_16
    const-string p0, "blocked - in list"

    return-object p0

    .line 607
    :pswitch_19
    const-string/jumbo p0, "not blocked"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method public static greylist-max-o endBlockSuppression(Landroid/content/Context;)V
    .registers 4

    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-static {}, Landroid/provider/BlockedNumberContract;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "endBlockSuppression: caller=%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "end_block_suppression"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 483
    return-void
.end method

.method public static greylist-max-o getBlockSuppressionStatus(Landroid/content/Context;)Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;
    .registers 7

    .line 522
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "get_block_suppression_status"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 524
    new-instance v1, Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;

    .line 525
    const-string v2, "blocking_suppressed"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 526
    const-string v3, "blocking_suppressed_until_timestamp"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;-><init>(ZJ)V

    .line 527
    invoke-static {}, Landroid/provider/BlockedNumberContract;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    .line 528
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 527
    const-string v2, "getBlockSuppressionStatus: caller=%s, status=%s"

    invoke-static {v0, v2, p0}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    return-object v1
.end method

.method public static greylist-max-o getEnhancedBlockSetting(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .line 565
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 566
    const-string v1, "extra_enhanced_setting_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const/4 p1, 0x0

    const/4 v1, 0x0

    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "get_enhanced_block_setting"

    invoke-virtual {p0, v2, v3, p1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 570
    if-eqz p0, :cond_23

    const-string v0, "enhanced_setting_enabled"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_20} :catch_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_20} :catch_24

    if-eqz p0, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1

    .line 571
    :catch_24
    move-exception p0

    .line 574
    const-string p0, "getEnhancedBlockSetting: provider not ready."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    return v1
.end method

.method public static greylist-max-o notifyEmergencyContact(Landroid/content/Context;)V
    .registers 5

    .line 464
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/provider/BlockedNumberContract;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "notifyEmergencyContact; caller=%s"

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v2, "notify_emergency_contact"

    invoke-virtual {p0, v1, v2, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1f} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1f} :catch_20

    .line 471
    goto :goto_2a

    .line 467
    :catch_20
    move-exception p0

    .line 470
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo v1, "notifyEmergencyContact: provider not ready."

    invoke-static {v0, v1, p0}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    :goto_2a
    return-void
.end method

.method public static greylist-max-o setEnhancedBlockSetting(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    .line 593
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 594
    const-string v1, "extra_enhanced_setting_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string p1, "extra_enhanced_setting_value"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 596
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo p2, "set_enhanced_block_setting"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 598
    return-void
.end method

.method public static greylist-max-o shouldShowEmergencyCallNotification(Landroid/content/Context;)Z
    .registers 5

    .line 540
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v3, "should_show_emergency_call_notification"

    invoke-virtual {p0, v2, v3, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 542
    if-eqz p0, :cond_1b

    const-string/jumbo v2, "show_emergency_call_notification"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_18} :catch_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_18} :catch_1c

    if-eqz p0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    .line 543
    :catch_1c
    move-exception p0

    .line 546
    const-string/jumbo p0, "shouldShowEmergencyCallNotification: provider not ready."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    return v1
.end method

.method public static blacklist shouldSystemBlockNumber(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 7

    .line 502
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 503
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v3, "should_system_block_number"

    invoke-virtual {p0, v2, v3, p1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 505
    if-eqz p0, :cond_1b

    const-string p2, "block_status"

    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_1c

    .line 506
    :cond_1b
    move p0, v0

    .line 507
    :goto_1c
    invoke-static {}, Landroid/provider/BlockedNumberContract;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "shouldSystemBlockNumber: number=%s, caller=%s, result=%s"

    .line 508
    invoke-static {p1}, Landroid/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Landroid/provider/BlockedNumberContract$SystemContract;->blockStatusToString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v1, v3}, [Ljava/lang/Object;

    move-result-object p1

    .line 507
    invoke-static {p2, v2, p1}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_32} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_32} :catch_33

    .line 509
    return p0

    .line 510
    :catch_33
    move-exception p0

    .line 513
    const-string/jumbo p0, "shouldSystemBlockNumber: provider not ready."

    new-array p1, v0, [Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {p2, p0, p1}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    return v0
.end method
