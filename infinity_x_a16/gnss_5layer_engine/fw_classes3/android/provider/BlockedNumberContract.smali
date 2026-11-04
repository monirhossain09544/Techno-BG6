.class public Landroid/provider/BlockedNumberContract;
.super Ljava/lang/Object;
.source "BlockedNumberContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/BlockedNumberContract$SystemContract;,
        Landroid/provider/BlockedNumberContract$BlockStatus;,
        Landroid/provider/BlockedNumberContract$BlockedNumbers;
    }
.end annotation


# static fields
.field public static final whitelist AUTHORITY:Ljava/lang/String; = "com.android.blockednumber"

.field public static final whitelist AUTHORITY_URI:Landroid/net/Uri;

.field public static final greylist-max-o EXTRA_CALL_PRESENTATION:Ljava/lang/String; = "extra_call_presentation"

.field public static final greylist-max-o EXTRA_CONTACT_EXIST:Ljava/lang/String; = "extra_contact_exist"

.field public static final greylist-max-o EXTRA_ENHANCED_SETTING_KEY:Ljava/lang/String; = "extra_enhanced_setting_key"

.field public static final greylist-max-o EXTRA_ENHANCED_SETTING_VALUE:Ljava/lang/String; = "extra_enhanced_setting_value"

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field public static final greylist-max-o METHOD_CAN_CURRENT_USER_BLOCK_NUMBERS:Ljava/lang/String; = "can_current_user_block_numbers"

.field public static final greylist-max-o METHOD_IS_BLOCKED:Ljava/lang/String; = "is_blocked"

.field public static final greylist-max-o METHOD_UNBLOCK:Ljava/lang/String; = "unblock"

.field public static final blacklist RES_BLOCK_STATUS:Ljava/lang/String; = "block_status"

.field public static final greylist-max-o RES_CAN_BLOCK_NUMBERS:Ljava/lang/String; = "can_block"

.field public static final greylist-max-o RES_ENHANCED_SETTING_IS_ENABLED:Ljava/lang/String; = "enhanced_setting_enabled"

.field public static final greylist-max-o RES_NUMBER_IS_BLOCKED:Ljava/lang/String; = "blocked"

.field public static final greylist-max-o RES_NUM_ROWS_DELETED:Ljava/lang/String; = "num_deleted"

.field public static final greylist-max-o RES_SHOW_EMERGENCY_CALL_NOTIFICATION:Ljava/lang/String; = "show_emergency_call_notification"

.field public static final blacklist STATUS_BLOCKED_IN_LIST:I = 0x1

.field public static final blacklist STATUS_BLOCKED_NOT_IN_CONTACTS:I = 0x5

.field public static final blacklist STATUS_BLOCKED_PAYPHONE:I = 0x4

.field public static final blacklist STATUS_BLOCKED_RESTRICTED:I = 0x2

.field public static final blacklist STATUS_BLOCKED_UNAVAILABLE:I = 0x6

.field public static final blacklist STATUS_BLOCKED_UNKNOWN_NUMBER:I = 0x3

.field public static final blacklist STATUS_NOT_BLOCKED:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/provider/BlockedNumberContract;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 157
    const-string v0, "content://com.android.blockednumber"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 159
    const-class v0, Landroid/provider/BlockedNumberContract;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/BlockedNumberContract;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method public static whitelist canCurrentUserBlockNumbers(Landroid/content/Context;)Z
    .registers 5

    .line 383
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "can_current_user_block_numbers"

    invoke-virtual {p0, v2, v3, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 385
    if-eqz p0, :cond_19

    const-string v2, "can_block"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_16} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_16} :catch_1a

    if-eqz p0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1

    .line 386
    :catch_1a
    move-exception p0

    .line 389
    const-string p0, "canCurrentUserBlockNumbers: provider not ready."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    return v1
.end method

.method public static whitelist isBlocked(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .line 336
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "is_blocked"

    invoke-virtual {p0, v2, v3, p1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 338
    if-eqz p0, :cond_1a

    const-string v2, "blocked"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    move p0, v1

    .line 339
    :goto_1b
    sget-object v2, Landroid/provider/BlockedNumberContract;->LOG_TAG:Ljava/lang/String;

    const-string v3, "isBlocked: phoneNumber=%s, isBlocked=%b"

    invoke-static {p1}, Landroid/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 340
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object p1

    .line 339
    invoke-static {v2, v3, p1}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2e} :catch_2f

    .line 341
    return p0

    .line 342
    :catch_2f
    move-exception p0

    .line 345
    const-string p0, "isBlocked: provider not ready."

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    return v1
.end method

.method public static whitelist unblock(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .line 369
    sget-object v0, Landroid/provider/BlockedNumberContract;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Landroid/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "unblock: phoneNumber=%s"

    invoke-static {v0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "unblock"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 372
    const-string/jumbo p1, "num_deleted"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
