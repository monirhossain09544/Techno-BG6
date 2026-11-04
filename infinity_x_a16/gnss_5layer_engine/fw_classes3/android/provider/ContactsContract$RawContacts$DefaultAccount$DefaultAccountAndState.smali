.class public final Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$RawContacts$DefaultAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultAccountAndState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState$DefaultAccountState;
    }
.end annotation


# static fields
.field public static final whitelist DEFAULT_ACCOUNT_STATE_CLOUD:I = 0x3

.field public static final whitelist DEFAULT_ACCOUNT_STATE_LOCAL:I = 0x2

.field public static final whitelist DEFAULT_ACCOUNT_STATE_NOT_SET:I = 0x1

.field public static final whitelist DEFAULT_ACCOUNT_STATE_SIM:I = 0x4


# instance fields
.field private final blacklist mAccount:Landroid/accounts/Account;

.field private final blacklist mState:I


# direct methods
.method private constructor blacklist <init>(ILandroid/accounts/Account;)V
    .registers 5

    .line 3154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3155
    invoke-static {p1}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->isValidDefaultAccountState(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3158
    invoke-static {p1}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->isCloudOrSimAccount(I)Z

    move-result v0

    if-eqz p2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-ne v0, v1, :cond_21

    .line 3163
    iput p1, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mState:I

    .line 3164
    invoke-static {p1}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->isCloudOrSimAccount(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 p2, 0x0

    :goto_1e
    iput-object p2, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mAccount:Landroid/accounts/Account;

    .line 3165
    return-void

    .line 3159
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Default account can be set to cloud or SIM if and only if the account is provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3156
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid default account state."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor blacklist <init>(ILandroid/accounts/Account;Landroid/provider/ContactsContract-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;-><init>(ILandroid/accounts/Account;)V

    return-void
.end method

.method public static blacklist isCloudOrSimAccount(I)Z
    .registers 2

    .line 3224
    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method private static blacklist isValidDefaultAccountState(I)Z
    .registers 3

    .line 3229
    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v1, 0x2

    if-eq p0, v1, :cond_e

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    const/4 v1, 0x4

    if-ne p0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_e
    return v0
.end method

.method public static whitelist ofCloud(Landroid/accounts/Account;)Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
    .registers 3

    .line 3179
    new-instance v0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;-><init>(ILandroid/accounts/Account;)V

    return-object v0
.end method

.method public static whitelist ofLocal()Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
    .registers 3

    .line 3205
    new-instance v0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;-><init>(ILandroid/accounts/Account;)V

    return-object v0
.end method

.method public static whitelist ofNotSet()Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
    .registers 3

    .line 3216
    new-instance v0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;-><init>(ILandroid/accounts/Account;)V

    return-object v0
.end method

.method public static whitelist ofSim(Landroid/accounts/Account;)Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;
    .registers 3

    .line 3194
    new-instance v0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;-><init>(ILandroid/accounts/Account;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 3259
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 3260
    return v0

    .line 3262
    :cond_4
    instance-of v1, p1, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    check-cast p1, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;

    .line 3266
    iget v1, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mState:I

    iget v3, p1, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mState:I

    if-ne v1, v3, :cond_1c

    iget-object v1, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mAccount:Landroid/accounts/Account;

    iget-object p1, p1, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mAccount:Landroid/accounts/Account;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    return v0

    .line 3263
    :cond_1e
    return v2
.end method

.method public whitelist getAccount()Landroid/accounts/Account;
    .registers 2

    .line 3249
    iget-object v0, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 3240
    iget v0, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 3254
    iget v0, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/ContactsContract$RawContacts$DefaultAccount$DefaultAccountAndState;->mAccount:Landroid/accounts/Account;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
