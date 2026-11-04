.class public final Lcom/android/internal/telephony/util/TelephonyUtils;
.super Ljava/lang/Object;
.source "TelephonyUtils.java"


# static fields
.field public static final blacklist DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final blacklist FORCE_VERBOSE_STATE_LOGGING:Z = false

.field public static blacklist IS_DEBUGGABLE:Z = false

.field public static blacklist IS_USER:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "TelephonyUtils"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 66
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_USER:Z

    .line 67
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v1, v2

    :cond_15
    sput-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    .line 69
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/util/TelephonyUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist apnEditedStatusToString(I)Ljava/lang/String;
    .registers 3

    .line 273
    packed-switch p0, :pswitch_data_2c

    .line 279
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2b

    .line 278
    :pswitch_1d
    const-string p0, "CARRIER_DELETED"

    goto :goto_2b

    .line 277
    :pswitch_20
    const-string p0, "CARRIER_EDITED"

    goto :goto_2b

    .line 276
    :pswitch_23
    const-string p0, "USER_DELETED"

    goto :goto_2b

    .line 275
    :pswitch_26
    const-string p0, "USER_EDITED"

    goto :goto_2b

    .line 274
    :pswitch_29
    const-string p0, "UNEDITED"

    .line 273
    :goto_2b
    return-object p0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_3
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 4

    .line 77
    const-string v0, "android.permission.DUMP"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_42

    .line 79
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: can\'t dump "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " from from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 80
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " due to missing android.permission.DUMP permission"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 79
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const/4 p0, 0x0

    return p0

    .line 84
    :cond_42
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist dataStateToString(I)Ljava/lang/String;
    .registers 3

    .line 233
    packed-switch p0, :pswitch_data_32

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 239
    :pswitch_1d
    const-string p0, "HANDOVERINPROGRESS"

    return-object p0

    .line 238
    :pswitch_20
    const-string p0, "DISCONNECTING"

    return-object p0

    .line 237
    :pswitch_23
    const-string p0, "SUSPENDED"

    return-object p0

    .line 236
    :pswitch_26
    const-string p0, "CONNECTED"

    return-object p0

    .line 235
    :pswitch_29
    const-string p0, "CONNECTING"

    return-object p0

    .line 234
    :pswitch_2c
    const-string p0, "DISCONNECTED"

    return-object p0

    .line 240
    :pswitch_2f
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_data_32
    .packed-switch -0x1
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 90
    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method public static blacklist emptyIfNull(Ljava/util/List;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 95
    if-nez p0, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public static blacklist filterValues(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 196
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 198
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 199
    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_d

    instance-of v4, v3, Ljava/lang/Long;

    if-nez v4, :cond_d

    instance-of v4, v3, Ljava/lang/Double;

    if-nez v4, :cond_d

    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_d

    instance-of v4, v3, [I

    if-nez v4, :cond_d

    instance-of v4, v3, [J

    if-nez v4, :cond_d

    instance-of v4, v3, [D

    if-nez v4, :cond_d

    instance-of v4, v3, [Ljava/lang/String;

    if-nez v4, :cond_d

    instance-of v4, v3, Landroid/os/PersistableBundle;

    if-nez v4, :cond_d

    if-eqz v3, :cond_d

    instance-of v4, v3, Ljava/lang/Boolean;

    if-nez v4, :cond_d

    instance-of v4, v3, [Z

    if-eqz v4, :cond_4c

    .line 205
    goto :goto_d

    .line 207
    :cond_4c
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_5a

    .line 208
    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Lcom/android/internal/telephony/util/TelephonyUtils;->filterValues(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 209
    goto :goto_d

    .line 211
    :cond_5a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 212
    goto :goto_d

    .line 214
    :cond_6b
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 215
    goto :goto_d

    .line 216
    :cond_6f
    return-object v0
.end method

.method public static blacklist getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_7

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0

    .line 104
    :cond_7
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_e

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object p0

    .line 105
    :cond_e
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_15

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    return-object p0

    .line 106
    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing ComponentInfo!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;
    .registers 3

    .line 301
    nop

    .line 302
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 303
    if-eqz p0, :cond_16

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 304
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionUserHandle(I)Landroid/os/UserHandle;

    move-result-object p0

    goto :goto_17

    .line 306
    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method private static blacklist isPackageSMSRoleHolderForUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4

    .line 369
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    .line 370
    const-string v0, "android.app.role.SMS"

    invoke-virtual {p0, v0, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 375
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_21

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 376
    const/4 p0, 0x1

    return p0

    .line 378
    :cond_21
    return v0
.end method

.method private static blacklist isUidForeground(Landroid/content/Context;I)Z
    .registers 3

    .line 361
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 362
    if-eqz p0, :cond_14

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result p0

    const/16 p1, 0x64

    if-ne p0, p1, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    .line 364
    :goto_15
    return p0
.end method

.method public static blacklist isValidCountryCode(Ljava/lang/String;)Z
    .registers 2

    .line 404
    const-string v0, "^[A-Za-z]{2}$"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/util/TelephonyUtils;->isValidPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static blacklist isValidPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 388
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1f

    .line 391
    :cond_e
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 392
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 393
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_1d

    .line 394
    return v1

    .line 396
    :cond_1d
    const/4 p0, 0x1

    return p0

    .line 389
    :cond_1f
    :goto_1f
    return v1
.end method

.method public static blacklist isValidPlmn(Ljava/lang/String;)Z
    .registers 2

    .line 412
    const-string v0, "^(?:[0-9]{3})(?:[0-9]{2}|[0-9]{3})$"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/util/TelephonyUtils;->isValidPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isValidService(I)Z
    .registers 3

    .line 420
    const/4 v0, 0x1

    if-lt p0, v0, :cond_8

    const/4 v1, 0x6

    if-le p0, v1, :cond_7

    goto :goto_8

    .line 423
    :cond_7
    return v0

    .line 421
    :cond_8
    :goto_8
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$runWithCleanCallingIdentity$0(Ljava/lang/Runnable;)V
    .registers 1

    .line 138
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$runWithCleanCallingIdentity$1(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 1

    .line 179
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist mobileDataPolicyToString(I)Ljava/lang/String;
    .registers 3

    .line 254
    packed-switch p0, :pswitch_data_26

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 260
    :pswitch_1d
    const-string p0, "AUTO_DATA_SWITCH"

    return-object p0

    .line 258
    :pswitch_20
    const-string p0, "MMS_ALWAYS_ALLOWED"

    return-object p0

    .line 256
    :pswitch_23
    const-string p0, "DATA_ON_NON_DEFAULT_DURING_VOICE_CALL"

    return-object p0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 156
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 158
    :try_start_4
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 160
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    return-object p0

    .line 160
    :catchall_c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    throw p0
.end method

.method public static blacklist runWithCleanCallingIdentity(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 175
    const/4 v0, 0x0

    if-eqz p0, :cond_36

    .line 176
    if-eqz p1, :cond_31

    .line 178
    :try_start_5
    new-instance v1, Lcom/android/internal/telephony/util/TelephonyUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/util/TelephonyUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Supplier;)V

    invoke-static {v1, p1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    .line 179
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_12
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_12} :catch_13
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_12} :catch_13

    .line 178
    return-object p0

    .line 180
    :catch_13
    move-exception p0

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyUtils : runWithCleanCallingIdentity exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 181
    const-string p1, "TelephonyUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-object v0

    .line 186
    :cond_31
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 189
    :cond_36
    return-object v0
.end method

.method public static blacklist runWithCleanCallingIdentity(Ljava/lang/Runnable;)V
    .registers 3

    .line 118
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 120
    :try_start_4
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 122
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    nop

    .line 124
    return-void

    .line 122
    :catchall_c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    throw p0
.end method

.method public static blacklist runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 136
    if-eqz p0, :cond_10

    .line 137
    if-eqz p1, :cond_d

    .line 138
    new-instance v0, Lcom/android/internal/telephony/util/TelephonyUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/util/TelephonyUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_10

    .line 140
    :cond_d
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    .line 143
    :cond_10
    :goto_10
    return-void
.end method

.method public static blacklist showSwitchToManagedProfileDialogIfAppropriate(Landroid/content/Context;IILjava/lang/String;)V
    .registers 7

    .line 319
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 321
    :try_start_4
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 324
    invoke-static {p0, p2}, Lcom/android/internal/telephony/util/TelephonyUtils;->isUidForeground(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_78

    .line 325
    invoke-static {p0, p3, v2}, Lcom/android/internal/telephony/util/TelephonyUtils;->isPackageSMSRoleHolderForUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p2

    if-nez p2, :cond_15

    goto :goto_78

    .line 330
    :cond_15
    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    .line 332
    invoke-virtual {p2, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result p3
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_7c

    const-string v2, "TelephonyUtils"

    if-nez p3, :cond_3f

    .line 333
    :try_start_25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tried to send message with an inactive subscription "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_7c

    .line 356
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 334
    return-void

    .line 336
    :cond_3f
    :try_start_3f
    invoke-virtual {p2, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionUserHandle(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 337
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 339
    if-eqz p1, :cond_73

    .line 340
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 339
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0

    if-eqz p0, :cond_73

    .line 344
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object p0

    .line 345
    invoke-virtual {p0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object p0

    .line 346
    invoke-virtual {p0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object p0

    .line 342
    invoke-static {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object p0
    :try_end_67
    .catchall {:try_start_3f .. :try_end_67} :catchall_7c

    .line 347
    if-eqz p0, :cond_73

    .line 349
    :try_start_69
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->showSwitchToManagedProfileDialog()V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_6c} :catch_6d
    .catchall {:try_start_69 .. :try_end_6c} :catchall_7c

    .line 352
    goto :goto_73

    .line 350
    :catch_6d
    move-exception p0

    .line 351
    :try_start_6e
    const-string p0, "Failed to launch switch to managed profile dialog."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_7c

    .line 356
    :cond_73
    :goto_73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 357
    nop

    .line 358
    return-void

    .line 356
    :cond_78
    :goto_78
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 327
    return-void

    .line 356
    :catchall_7c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 357
    throw p0
.end method

.method public static blacklist waitUntilReady(Ljava/util/concurrent/CountDownLatch;J)V
    .registers 4

    .line 222
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 224
    goto :goto_7

    .line 223
    :catch_6
    move-exception p0

    .line 225
    :goto_7
    return-void
.end method
