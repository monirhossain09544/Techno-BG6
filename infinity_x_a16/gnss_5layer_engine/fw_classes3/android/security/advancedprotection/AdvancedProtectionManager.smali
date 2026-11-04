.class public final Landroid/security/advancedprotection/AdvancedProtectionManager;
.super Ljava/lang/Object;
.source "AdvancedProtectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;,
        Landroid/security/advancedprotection/AdvancedProtectionManager$SupportDialogType;,
        Landroid/security/advancedprotection/AdvancedProtectionManager$FeatureId;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_SHOW_ADVANCED_PROTECTION_SUPPORT_DIALOG:Ljava/lang/String; = "android.security.advancedprotection.action.SHOW_ADVANCED_PROTECTION_SUPPORT_DIALOG"

.field public static final blacklist ADVANCED_PROTECTION_SYSTEM_ENTITY:Ljava/lang/String; = "android.security.advancedprotection"

.field private static final blacklist ALL_FEATURE_IDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ALL_SUPPORT_DIALOG_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXTRA_SUPPORT_DIALOG_FEATURE:Ljava/lang/String; = "android.security.advancedprotection.extra.SUPPORT_DIALOG_FEATURE"

.field public static final blacklist EXTRA_SUPPORT_DIALOG_TYPE:Ljava/lang/String; = "android.security.advancedprotection.extra.SUPPORT_DIALOG_TYPE"

.field public static final whitelist FEATURE_ID_DISALLOW_CELLULAR_2G:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_ID_DISALLOW_INSTALL_UNKNOWN_SOURCES:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_ID_DISALLOW_USB:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_ID_DISALLOW_WEP:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_ID_ENABLE_MTE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist MEMORY_TAGGING_POLICY:Ljava/lang/String; = "memoryTagging"

.field private static final blacklist PKG_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field public static final blacklist SUPPORT_DIALOG_TYPE_BLOCKED_INTERACTION:I = 0x1

.field public static final blacklist SUPPORT_DIALOG_TYPE_DISABLED_SETTING:I = 0x2

.field public static final blacklist SUPPORT_DIALOG_TYPE_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "AdvancedProtectionMgr"


# instance fields
.field private final blacklist mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;",
            "Landroid/security/advancedprotection/IAdvancedProtectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mService:Landroid/security/advancedprotection/IAdvancedProtectionService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 135
    nop

    .line 136
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 137
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 138
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 139
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 135
    invoke-static {v0, v1, v2, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    sput-object v3, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_FEATURE_IDS:Ljava/util/Set;

    .line 214
    nop

    .line 215
    nop

    .line 216
    nop

    .line 217
    nop

    .line 214
    invoke-static {v0, v1, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_SUPPORT_DIALOG_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/security/advancedprotection/IAdvancedProtectionService;)V
    .registers 3

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 227
    iput-object p1, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    .line 228
    return-void
.end method

.method public static blacklist createSupportIntent(II)Landroid/content/Intent;
    .registers 4

    .line 355
    sget-object v0, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_FEATURE_IDS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 359
    sget-object v0, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_SUPPORT_DIALOG_TYPES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.advancedprotection.action.SHOW_ADVANCED_PROTECTION_SUPPORT_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 367
    const-string v1, "android.security.advancedprotection.extra.SUPPORT_DIALOG_FEATURE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    const-string p0, "android.security.advancedprotection.extra.SUPPORT_DIALOG_TYPE"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    return-object v0

    .line 360
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not a valid type. See SUPPORT_DIALOG_TYPE_* APIs."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 356
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " is not a valid feature ID. See FEATURE_ID_* APIs."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist createSupportIntentForPolicyIdentifierOrRestriction(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 4

    .line 395
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_SUPPORT_DIALOG_TYPES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 401
    nop

    .line 402
    const-string/jumbo v0, "no_install_unknown_sources_globally"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 403
    const/4 p0, 0x1

    goto :goto_3c

    .line 404
    :cond_1b
    const-string/jumbo v0, "no_cellular_2g"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2d

    .line 405
    nop

    .line 406
    if-nez p1, :cond_2a

    .line 407
    move p1, v1

    goto :goto_2b

    :cond_2a
    nop

    :goto_2b
    const/4 p0, 0x0

    goto :goto_3c

    .line 408
    :cond_2d
    const-string v0, "memoryTagging"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 409
    nop

    .line 410
    if-nez p1, :cond_3a

    .line 411
    move p1, v1

    goto :goto_3b

    :cond_3a
    nop

    :goto_3b
    const/4 p0, 0x4

    .line 415
    :goto_3c
    invoke-static {p0, p1}, Landroid/security/advancedprotection/AdvancedProtectionManager;->createSupportIntent(II)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 413
    :cond_41
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported identifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 397
    :cond_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not a valid type. See SUPPORT_DIALOG_TYPE_* APIs."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist featureIdToString(I)Ljava/lang/String;
    .registers 1

    .line 126
    packed-switch p0, :pswitch_data_12

    .line 131
    :pswitch_3
    const-string p0, "UNKNOWN"

    goto :goto_11

    .line 130
    :pswitch_6
    const-string p0, "ENABLE_MTE"

    goto :goto_11

    .line 129
    :pswitch_9
    const-string p0, "DISALLOW_USB"

    goto :goto_11

    .line 128
    :pswitch_c
    const-string p0, "DISALLOW_INSTALL_UNKNOWN_SOURCES"

    goto :goto_11

    .line 127
    :pswitch_f
    const-string p0, "DISALLOW_CELLULAR_2G"

    .line 126
    :goto_11
    return-object p0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist supportDialogTypeToString(I)Ljava/lang/String;
    .registers 2

    .line 206
    const-string v0, "UNKNOWN"

    packed-switch p0, :pswitch_data_e

    .line 210
    goto :goto_d

    .line 209
    :pswitch_6
    const-string v0, "DISABLED_SETTING"

    goto :goto_d

    .line 208
    :pswitch_9
    const-string v0, "BLOCKED_INTERACTION"

    goto :goto_d

    .line 207
    :pswitch_c
    nop

    .line 206
    :goto_d
    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist getAdvancedProtectionFeatures()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/advancedprotection/AdvancedProtectionFeature;",
            ">;"
        }
    .end annotation

    .line 331
    :try_start_0
    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {v0}, Landroid/security/advancedprotection/IAdvancedProtectionService;->getAdvancedProtectionFeatures()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 332
    :catch_7
    move-exception v0

    .line 333
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isAdvancedProtectionEnabled()Z
    .registers 2

    .line 238
    :try_start_0
    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {v0}, Landroid/security/advancedprotection/IAdvancedProtectionService;->isAdvancedProtectionEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 239
    :catch_7
    move-exception v0

    .line 240
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist logDialogShown(IIZ)V
    .registers 5

    .line 423
    :try_start_0
    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/advancedprotection/IAdvancedProtectionService;->logDialogShown(IIZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 426
    nop

    .line 427
    return-void

    .line 424
    :catch_7
    move-exception p1

    .line 425
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist registerAdvancedProtectionCallback(Ljava/util/concurrent/Executor;Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;)V
    .registers 4

    .line 257
    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 258
    const-string p1, "AdvancedProtectionMgr"

    const-string/jumbo p2, "registerAdvancedProtectionCallback callback already present"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 262
    :cond_11
    new-instance v0, Landroid/security/advancedprotection/AdvancedProtectionManager$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/security/advancedprotection/AdvancedProtectionManager$1;-><init>(Landroid/security/advancedprotection/AdvancedProtectionManager;Ljava/util/concurrent/Executor;Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;)V

    .line 275
    :try_start_16
    iget-object p1, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {p1, v0}, Landroid/security/advancedprotection/IAdvancedProtectionService;->registerAdvancedProtectionCallback(Landroid/security/advancedprotection/IAdvancedProtectionCallback;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_22

    .line 278
    nop

    .line 280
    iget-object p1, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    return-void

    .line 276
    :catch_22
    move-exception p1

    .line 277
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setAdvancedProtectionEnabled(Z)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 315
    :try_start_0
    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {v0, p1}, Landroid/security/advancedprotection/IAdvancedProtectionService;->setAdvancedProtectionEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 318
    nop

    .line 319
    return-void

    .line 316
    :catch_7
    move-exception p1

    .line 317
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist unregisterAdvancedProtectionCallback(Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;)V
    .registers 4

    .line 290
    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/advancedprotection/IAdvancedProtectionCallback;

    .line 291
    if-nez v0, :cond_13

    .line 292
    const-string p1, "AdvancedProtectionMgr"

    const-string/jumbo v0, "unregisterAdvancedProtectionCallback callback not present"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    .line 297
    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {v1, v0}, Landroid/security/advancedprotection/IAdvancedProtectionService;->unregisterAdvancedProtectionCallback(Landroid/security/advancedprotection/IAdvancedProtectionCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_1f

    .line 300
    nop

    .line 302
    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    return-void

    .line 298
    :catch_1f
    move-exception p1

    .line 299
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
