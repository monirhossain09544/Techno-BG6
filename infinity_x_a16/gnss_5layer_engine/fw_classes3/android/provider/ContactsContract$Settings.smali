.class public final Landroid/provider/ContactsContract$Settings;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$SettingsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$Settings$AccountAttributes;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_SET_DEFAULT_ACCOUNT:Ljava/lang/String; = "android.provider.action.SET_DEFAULT_ACCOUNT"

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/setting"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/setting"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist GET_ACCOUNT_ATTRIBUTES_METHOD:Ljava/lang/String; = "getAccountAttributes"

.field public static final blacklist KEY_ACCOUNT_ATTRIBUTES:Ljava/lang/String; = "key_account_attributes"

.field public static final blacklist KEY_DEFAULT_ACCOUNT:Ljava/lang/String; = "key_default_account"

.field public static final blacklist QUERY_DEFAULT_ACCOUNT_METHOD:Ljava/lang/String; = "queryDefaultAccount"

.field public static final blacklist RESET_ACCOUNT_ATTRIBUTES_METHOD:Ljava/lang/String; = "resetAccountAttributes"

.field public static final blacklist SET_ACCOUNT_ATTRIBUTES_METHOD:Ljava/lang/String; = "setAccountAttributes"

.field public static final blacklist SET_DEFAULT_ACCOUNT_METHOD:Ljava/lang/String; = "setDefaultAccount"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 9349
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 9350
    const-string/jumbo v1, "settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    .line 9349
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 9343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9344
    return-void
.end method

.method public static blacklist getAccountAttributes(Landroid/content/ContentResolver;Landroid/accounts/Account;Ljava/lang/String;)J
    .registers 7

    .line 9574
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9575
    if-eqz p1, :cond_15

    .line 9576
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9577
    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9579
    :cond_15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 9580
    const-string v1, "data_set"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9583
    :cond_20
    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "getAccountAttributes"

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3, v0}, Landroid/provider/ContactsContract;->-$$Nest$smnullSafeCall(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 9585
    if-eqz p0, :cond_38

    const-string v0, "key_account_attributes"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 9590
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    .line 9586
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Could not determine attributes for account: %s, data_set: %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist getDefaultAccount(Landroid/content/ContentResolver;)Landroid/accounts/Account;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9439
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "queryDefaultAccount"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 9441
    const-string v0, "key_default_account"

    const-class v1, Landroid/accounts/Account;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/Account;

    return-object p0
.end method

.method public static blacklist resetAccountAttributes(Landroid/content/ContentResolver;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 6

    .line 9659
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9660
    if-eqz p1, :cond_15

    .line 9661
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9662
    const-string v1, "account_type"

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9664
    :cond_15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 9665
    const-string p1, "data_set"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9668
    :cond_20
    sget-object p1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo p2, "resetAccountAttributes"

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Landroid/provider/ContactsContract;->-$$Nest$smnullSafeCall(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 9671
    return-void
.end method

.method public static blacklist setAccountAttributes(Landroid/content/ContentResolver;Landroid/accounts/Account;Ljava/lang/String;J)V
    .registers 8

    .line 9622
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9623
    if-eqz p1, :cond_15

    .line 9624
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9625
    const-string v1, "account_type"

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9627
    :cond_15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 9628
    const-string p1, "data_set"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9630
    :cond_20
    const-string p1, "key_account_attributes"

    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 9631
    sget-object p1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo p2, "setAccountAttributes"

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/ContactsContract;->-$$Nest$smnullSafeCall(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 9634
    return-void
.end method

.method public static whitelist setDefaultAccount(Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9468
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9469
    if-eqz p1, :cond_15

    .line 9470
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9471
    const-string v1, "account_type"

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9474
    :cond_15
    sget-object p1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "setDefaultAccount"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 9475
    return-void
.end method
