.class public Lcom/android/internal/app/AssistUtils;
.super Ljava/lang/Object;
.source "AssistUtils.java"


# static fields
.field public static final blacklist INVOCATION_TYPE_ASSIST_BUTTON:I = 0x7

.field public static final blacklist INVOCATION_TYPE_GESTURE:I = 0x1

.field public static final blacklist INVOCATION_TYPE_HOME_BUTTON_LONG_PRESS:I = 0x5

.field public static final blacklist INVOCATION_TYPE_KEY:Ljava/lang/String; = "invocation_type"

.field public static final blacklist INVOCATION_TYPE_LAUNCHER_SYSTEM_SHORTCUT:I = 0x9

.field public static final blacklist INVOCATION_TYPE_NAV_HANDLE_LONG_PRESS:I = 0x8

.field public static final blacklist INVOCATION_TYPE_PHYSICAL_GESTURE:I = 0x2

.field public static final blacklist INVOCATION_TYPE_POWER_BUTTON_LONG_PRESS:I = 0x6

.field public static final blacklist INVOCATION_TYPE_QUICK_SEARCH_BAR:I = 0x4

.field public static final blacklist INVOCATION_TYPE_STATUS_BAR_ICON:I = 0xa

.field public static final blacklist INVOCATION_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist INVOCATION_TYPE_VOICE:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "AssistUtils"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    .line 75
    nop

    .line 76
    const-string p1, "voiceinteraction"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 75
    invoke-static {p1}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 77
    return-void
.end method

.method public static blacklist allowDisablingAssistDisclosure(Landroid/content/Context;)Z
    .registers 2

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111001d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static blacklist isDisclosureEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "assist_disclosure_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public static blacklist isPreinstalledAssistant(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 3

    .line 298
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 299
    return v0

    .line 303
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 304
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_10} :catch_1f

    .line 307
    nop

    .line 308
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-nez p1, :cond_1d

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_1d
    const/4 v0, 0x1

    :cond_1e
    return v0

    .line 305
    :catch_1f
    move-exception p0

    .line 306
    return v0
.end method

.method public static blacklist shouldDisclose(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 4

    .line 323
    invoke-static {p0}, Lcom/android/internal/app/AssistUtils;->allowDisablingAssistDisclosure(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 324
    return v1

    .line 327
    :cond_8
    invoke-static {p0}, Lcom/android/internal/app/AssistUtils;->isDisclosureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p0, p1}, Lcom/android/internal/app/AssistUtils;->isPreinstalledAssistant(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :cond_16
    :goto_16
    return v1
.end method

.method private blacklist showSessionForActiveServiceInternal(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 7

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_c

    .line 124
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSessionForActiveService(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    return p1

    .line 129
    :cond_c
    goto :goto_16

    .line 127
    :catch_d
    move-exception v0

    move-object p1, v0

    .line 128
    const-string p2, "AssistUtils"

    const-string p3, "Failed to call showSessionForActiveService"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :goto_16
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public blacklist activeServiceSupportsAssistGesture()Z
    .registers 5

    .line 169
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 170
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->activeServiceSupportsAssist()Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_11

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    nop

    .line 169
    :goto_10
    return v0

    .line 171
    :catch_11
    move-exception v1

    .line 172
    const-string v2, "AssistUtils"

    const-string v3, "Failed to call activeServiceSupportsAssistGesture"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    return v0
.end method

.method public blacklist activeServiceSupportsLaunchFromKeyguard()Z
    .registers 5

    .line 179
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 180
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->activeServiceSupportsLaunchFromKeyguard()Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_11

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    nop

    .line 179
    :goto_10
    return v0

    .line 181
    :catch_11
    move-exception v1

    .line 182
    const-string v2, "AssistUtils"

    const-string v3, "Failed to call activeServiceSupportsLaunchFromKeyguard"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    return v0
.end method

.method public blacklist disableVisualQueryDetection()V
    .registers 4

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_9

    .line 279
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->disableVisualQueryDetection()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 283
    :cond_9
    goto :goto_12

    .line 281
    :catch_a
    move-exception v0

    .line 282
    const-string v1, "AssistUtils"

    const-string v2, "Failed to register visual query detection attention listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    :goto_12
    return-void
.end method

.method public blacklist enableVisualQueryDetection(Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;)V
    .registers 4

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_9

    .line 266
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->enableVisualQueryDetection(Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 270
    :cond_9
    goto :goto_12

    .line 268
    :catch_a
    move-exception p1

    .line 269
    const-string v0, "AssistUtils"

    const-string v1, "Failed to register visual query detection attention listener"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    :goto_12
    return-void
.end method

.method public blacklist getActiveServiceComponentName()Landroid/content/ComponentName;
    .registers 5

    .line 189
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_c

    .line 190
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    return-object v0

    .line 192
    :cond_c
    return-object v0

    .line 194
    :catch_d
    move-exception v1

    .line 195
    const-string v2, "AssistUtils"

    const-string v3, "Failed to call getActiveServiceComponentName"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    return-object v0
.end method

.method public blacklist getActiveServiceSupportedActions(Ljava/util/Set;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/IVoiceActionCheckCallback;",
            ")V"
        }
    .end annotation

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_e

    .line 145
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 146
    invoke-interface {v0, v1, p2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 154
    :cond_e
    goto :goto_1d

    .line 148
    :catch_f
    move-exception p1

    .line 149
    const-string v0, "AssistUtils"

    const-string v1, "Failed to call activeServiceSupportedActions"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    const/4 p1, 0x0

    :try_start_18
    invoke-interface {p2, p1}, Lcom/android/internal/app/IVoiceActionCheckCallback;->onComplete(Ljava/util/List;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 153
    goto :goto_1d

    .line 152
    :catch_1c
    move-exception p1

    .line 155
    :goto_1d
    return-void
.end method

.method public greylist getAssistComponentForUser(I)Landroid/content/ComponentName;
    .registers 4

    .line 288
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 290
    if-eqz p1, :cond_13

    .line 291
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1

    .line 293
    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist hideCurrentSession()V
    .registers 4

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_9

    .line 213
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->hideCurrentSession()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 217
    :cond_9
    goto :goto_12

    .line 215
    :catch_a
    move-exception v0

    .line 216
    const-string v1, "AssistUtils"

    const-string v2, "Failed to call hideCurrentSession"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    :goto_12
    return-void
.end method

.method public blacklist isSessionRunning()Z
    .registers 5

    .line 202
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 203
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->isSessionRunning()Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_11

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    nop

    .line 202
    :goto_10
    return v0

    .line 204
    :catch_11
    move-exception v1

    .line 205
    const-string v2, "AssistUtils"

    const-string v3, "Failed to call isSessionRunning"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    return v0
.end method

.method public blacklist launchVoiceAssistFromKeyguard()V
    .registers 4

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_9

    .line 160
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->launchVoiceAssistFromKeyguard()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 164
    :cond_9
    goto :goto_12

    .line 162
    :catch_a
    move-exception v0

    .line 163
    const-string v1, "AssistUtils"

    const-string v2, "Failed to call launchVoiceAssistFromKeyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    :goto_12
    return-void
.end method

.method public blacklist onLockscreenShown()V
    .registers 4

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_9

    .line 223
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->onLockscreenShown()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 227
    :cond_9
    goto :goto_12

    .line 225
    :catch_a
    move-exception v0

    .line 226
    const-string v1, "AssistUtils"

    const-string v2, "Failed to call onLockscreenShown"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    :goto_12
    return-void
.end method

.method public blacklist registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V
    .registers 4

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_9

    .line 233
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 237
    :cond_9
    goto :goto_12

    .line 235
    :catch_a
    move-exception p1

    .line 236
    const-string v0, "AssistUtils"

    const-string v1, "Failed to register voice interaction listener"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    :goto_12
    return-void
.end method

.method public blacklist showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveServiceInternal(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p1

    return p1
.end method

.method public blacklist showSessionForActiveService(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 6

    .line 114
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveServiceInternal(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p1

    return p1
.end method

.method public blacklist subscribeVisualQueryRecognitionStatus(Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;)V
    .registers 4

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_9

    .line 250
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->subscribeVisualQueryRecognitionStatus(Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 254
    :cond_9
    goto :goto_12

    .line 252
    :catch_a
    move-exception p1

    .line 253
    const-string v0, "AssistUtils"

    const-string v1, "Failed to register visual query detection start listener"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    :goto_12
    return-void
.end method
