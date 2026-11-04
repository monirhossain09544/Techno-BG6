.class public Landroid/service/voice/VoiceInteractionService;
.super Landroid/app/Service;
.source "VoiceInteractionService.java"


# static fields
.field static final blacklist MULTIPLE_ACTIVE_HOTWORD_DETECTORS:J = 0xb847d3fL

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.voice.VoiceInteractionService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.voice_interaction"

.field private static final blacklist SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

.field static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mActiveDetectors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/service/voice/HotwordDetector;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

.field private blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field greylist-max-o mInterface:Landroid/service/voice/IVoiceInteractionService;

.field private greylist-max-o mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field greylist-max-o mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field private blacklist mTestModuleForAlwaysOnHotwordDetectorEnabled:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$JMYx-6yfhchP63Tz168rKFGpq2Y(Landroid/service/voice/VoiceInteractionService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->lambda$new$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$P6N6t5pC6a5IBmC3sK_4dtkgwLI(Landroid/service/voice/VoiceInteractionService;Landroid/service/voice/HotwordDetector;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/voice/VoiceInteractionService;->onHotwordDetectorDestroyed(Landroid/service/voice/HotwordDetector;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YR2k9aseeGgZ6fiR6G00PM050Lo(Landroid/service/voice/VoiceInteractionService;ZLandroid/service/voice/HotwordDetector;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/voice/VoiceInteractionService;->lambda$safelyShutdownAllHotwordDetectors$4(ZLandroid/service/voice/HotwordDetector;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wfImATncamP2VQNcSOIvVvfph5M(Landroid/service/voice/VoiceInteractionService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->onShutdownInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDetectorRemoteException(Landroid/service/voice/VoiceInteractionService;Landroid/os/IBinder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/voice/VoiceInteractionService;->onDetectorRemoteException(Landroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monHandleVoiceActionCheck(Landroid/service/voice/VoiceInteractionService;Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/voice/VoiceInteractionService;->onHandleVoiceActionCheck(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monShutdownInternal(Landroid/service/voice/VoiceInteractionService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->onShutdownInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSoundModelsChangedInternal(Landroid/service/voice/VoiceInteractionService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->onSoundModelsChangedInternal()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 86
    const-class v0, Landroid/service/voice/VoiceInteractionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    .line 137
    nop

    .line 138
    const-string/jumbo v0, "ro.hotword.visual_query_service_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/service/voice/VoiceInteractionService;->SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

    .line 137
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 140
    new-instance v0, Landroid/service/voice/VoiceInteractionService$1;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionService$1;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mInterface:Landroid/service/voice/IVoiceInteractionService;

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    .line 208
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionService;->mTestModuleForAlwaysOnHotwordDetectorEnabled:Z

    .line 384
    new-instance v0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda2;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private blacklist createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .registers 23

    .line 717
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_95

    .line 720
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 721
    const-wide/32 v2, 0xb847d3f

    :try_start_a
    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_17

    .line 723
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/voice/VoiceInteractionService;->safelyShutdownAllHotwordDetectors(Z)V

    move/from16 v12, p3

    goto :goto_48

    .line 725
    :cond_17
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/HotwordDetector;

    .line 726
    invoke-interface {v2}, Landroid/service/voice/HotwordDetector;->isUsingSandboxedDetectionService()Z

    move-result v3

    move/from16 v12, p3

    if-ne v3, v12, :cond_3e

    .line 731
    instance-of v2, v2, Landroid/service/voice/AlwaysOnHotwordDetector;

    if-nez v2, :cond_36

    .line 736
    goto :goto_1d

    .line 732
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "There is already an active AlwaysOnHotwordDetector. It must be destroyed to create a new one."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "It disallows to create trusted and non-trusted detectors at the same time."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_46
    move/from16 v12, p3

    .line 739
    :goto_48
    new-instance v4, Landroid/service/voice/AlwaysOnHotwordDetector;

    iget-object v9, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    iget-object v10, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 741
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 742
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getAttributionTag()Ljava/lang/String;

    move-result-object v13

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v4 .. v13}, Landroid/service/voice/AlwaysOnHotwordDetector;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;Lcom/android/internal/app/IVoiceInteractionManagerService;IZLjava/lang/String;)V

    .line 743
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6b
    .catchall {:try_start_a .. :try_end_6b} :catchall_92

    .line 746
    :try_start_6b
    new-instance v0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    invoke-virtual {v4, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->registerOnDestroyListener(Ljava/util/function/Consumer;)V

    .line 748
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionService;->mTestModuleForAlwaysOnHotwordDetectorEnabled:Z

    if-eqz v0, :cond_7c

    .line 749
    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->getTestModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0

    goto :goto_7e

    .line 748
    :cond_7c
    move-object/from16 v0, p6

    .line 752
    :goto_7e
    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v4, v2, v3, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_85} :catch_88
    .catchall {:try_start_6b .. :try_end_85} :catchall_92

    .line 757
    nop

    .line 758
    :try_start_86
    monitor-exit v1

    return-object v4

    .line 753
    :catch_88
    move-exception v0

    .line 754
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 755
    invoke-virtual {v4}, Landroid/service/voice/AlwaysOnHotwordDetector;->destroy()V

    .line 756
    throw v0

    .line 759
    :catchall_92
    move-exception v0

    monitor-exit v1
    :try_end_94
    .catchall {:try_start_86 .. :try_end_94} :catchall_92

    throw v0

    .line 718
    :cond_95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not available until onReady() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist createHotwordDetectorInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)Landroid/service/voice/HotwordDetector;
    .registers 13

    .line 880
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_72

    .line 883
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 884
    const-wide/32 v2, 0xb847d3f

    :try_start_a
    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_15

    .line 886
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/voice/VoiceInteractionService;->safelyShutdownAllHotwordDetectors(Z)V

    goto :goto_42

    .line 888
    :cond_15
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/HotwordDetector;

    .line 889
    invoke-interface {v2}, Landroid/service/voice/HotwordDetector;->isUsingSandboxedDetectionService()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 893
    instance-of v2, v2, Landroid/service/voice/SoftwareHotwordDetector;

    if-nez v2, :cond_32

    .line 898
    goto :goto_1b

    .line 894
    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is already an active SoftwareHotwordDetector. It must be destroyed to create a new one."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 890
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "It disallows to create trusted and non-trusted detectors at the same time."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 901
    :cond_42
    :goto_42
    new-instance v2, Landroid/service/voice/SoftwareHotwordDetector;

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 903
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/service/voice/SoftwareHotwordDetector;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/media/AudioFormat;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;Ljava/lang/String;)V

    .line 904
    iget-object p3, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_a .. :try_end_55} :catchall_6e

    .line 907
    :try_start_55
    new-instance p3, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    invoke-virtual {v2, p3}, Landroid/service/voice/SoftwareHotwordDetector;->registerOnDestroyListener(Ljava/util/function/Consumer;)V

    .line 909
    invoke-virtual {v2, p1, p2}, Landroid/service/voice/SoftwareHotwordDetector;->initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_60} :catch_63
    .catchall {:try_start_55 .. :try_end_60} :catchall_6e

    .line 914
    nop

    .line 915
    :try_start_61
    monitor-exit v1

    return-object v2

    .line 910
    :catch_63
    move-exception v0

    move-object p1, v0

    .line 911
    iget-object p2, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {p2, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 912
    invoke-virtual {v2}, Landroid/service/voice/SoftwareHotwordDetector;->destroy()V

    .line 913
    throw p1

    .line 916
    :catchall_6e
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_61 .. :try_end_71} :catchall_6e

    throw p1

    .line 881
    :cond_72
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not available until onReady() is called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final blacklist getTestModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 3

    .line 1051
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->listModuleProperties()Ljava/util/List;

    move-result-object v0

    .line 1052
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda7;-><init>()V

    .line 1053
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1055
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 1056
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 1057
    if-eqz v0, :cond_1f

    .line 1060
    return-object v0

    .line 1058
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fake ST HAL should always be available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist isActiveService(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 4

    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "voice_interaction_service"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 283
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_21

    .line 286
    :cond_15
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    .line 287
    if-nez p0, :cond_1c

    .line 288
    return v0

    .line 290
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 284
    :cond_21
    :goto_21
    return v0
.end method

.method static synthetic blacklist lambda$dump$5(Ljava/io/PrintWriter;Landroid/service/voice/HotwordDetector;)V
    .registers 3

    .line 1187
    const-string v0, "  Using sandboxed detection service="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1188
    invoke-interface {p1}, Landroid/service/voice/HotwordDetector;->isUsingSandboxedDetectionService()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1189
    const-string v0, "    "

    invoke-interface {p1, v0, p0}, Landroid/service/voice/HotwordDetector;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1190
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1191
    return-void
.end method

.method static synthetic blacklist lambda$getTestModuleProperties$3(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Z
    .registers 2

    .line 1054
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object p0

    const-string v0, "injection"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$new$1()V
    .registers 3

    .line 385
    sget-object v0, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "system service binder died shutting down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    .line 388
    return-void
.end method

.method static synthetic blacklist lambda$onDetectorRemoteException$0(ILandroid/os/IBinder;Landroid/service/voice/HotwordDetector;)V
    .registers 4

    .line 219
    const/4 v0, 0x1

    if-ne p0, v0, :cond_13

    instance-of v0, p2, Landroid/service/voice/AlwaysOnHotwordDetector;

    if-eqz v0, :cond_13

    .line 221
    check-cast p2, Landroid/service/voice/AlwaysOnHotwordDetector;

    .line 222
    invoke-virtual {p2, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->isSameToken(Landroid/os/IBinder;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 223
    invoke-virtual {p2}, Landroid/service/voice/AlwaysOnHotwordDetector;->onDetectorRemoteException()V

    goto :goto_26

    .line 225
    :cond_13
    const/4 v0, 0x2

    if-ne p0, v0, :cond_26

    instance-of p0, p2, Landroid/service/voice/SoftwareHotwordDetector;

    if-eqz p0, :cond_26

    .line 227
    check-cast p2, Landroid/service/voice/SoftwareHotwordDetector;

    .line 228
    invoke-virtual {p2, p1}, Landroid/service/voice/SoftwareHotwordDetector;->isSameToken(Landroid/os/IBinder;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 229
    invoke-virtual {p2}, Landroid/service/voice/SoftwareHotwordDetector;->onDetectorRemoteException()V

    goto :goto_27

    .line 225
    :cond_26
    :goto_26
    nop

    .line 232
    :cond_27
    :goto_27
    return-void
.end method

.method static synthetic blacklist lambda$onSoundModelsChangedInternal$2(Landroid/service/voice/HotwordDetector;)V
    .registers 2

    .line 412
    instance-of v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;

    if-eqz v0, :cond_9

    .line 413
    check-cast p0, Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-virtual {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->onSoundModelsChanged()V

    .line 415
    :cond_9
    return-void
.end method

.method private synthetic blacklist lambda$safelyShutdownAllHotwordDetectors$4(ZLandroid/service/voice/HotwordDetector;)V
    .registers 4

    .line 1083
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    .line 1084
    invoke-virtual {v0}, Landroid/service/voice/VisualQueryDetector;->getInitializationDelegate()Landroid/service/voice/HotwordDetector;

    move-result-object v0

    if-ne p2, v0, :cond_e

    if-eqz p1, :cond_11

    .line 1086
    :cond_e
    invoke-interface {p2}, Landroid/service/voice/HotwordDetector;->destroy()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 1090
    :cond_11
    goto :goto_1a

    .line 1088
    :catch_12
    move-exception p1

    .line 1089
    sget-object p2, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    const-string v0, "exception destroying HotwordDetector"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1091
    :goto_1a
    return-void
.end method

.method private blacklist onDetectorRemoteException(Landroid/os/IBinder;I)V
    .registers 6

    .line 215
    sget-object v0, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDetectorRemoteException for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/service/voice/HotwordDetector;->detectorTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    new-instance v1, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2, p1}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda5;-><init>(ILandroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 233
    return-void
.end method

.method private blacklist onHandleVoiceActionCheck(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/IVoiceActionCheckCallback;",
            ")V"
        }
    .end annotation

    .line 421
    if-eqz p2, :cond_15

    .line 423
    :try_start_2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 424
    invoke-virtual {p0, v0}, Landroid/service/voice/VoiceInteractionService;->onGetSupportedVoiceActions(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v0}, Lcom/android/internal/app/IVoiceActionCheckCallback;->onComplete(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    .line 427
    goto :goto_15

    .line 426
    :catch_14
    move-exception p1

    .line 429
    :cond_15
    :goto_15
    return-void
.end method

.method private blacklist onHotwordDetectorDestroyed(Landroid/service/voice/HotwordDetector;)V
    .registers 4

    .line 1096
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1097
    :try_start_3
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    .line 1098
    invoke-virtual {v1}, Landroid/service/voice/VisualQueryDetector;->getInitializationDelegate()Landroid/service/voice/HotwordDetector;

    move-result-object v1

    if-ne p1, v1, :cond_12

    .line 1099
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    .line 1101
    :cond_12
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1102
    monitor-exit v0

    .line 1103
    return-void

    .line 1102
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private greylist-max-o onShutdownInternal()V
    .registers 2

    .line 391
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->onShutdown()V

    .line 397
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/service/voice/VoiceInteractionService;->safelyShutdownAllHotwordDetectors(Z)V

    .line 398
    return-void
.end method

.method private greylist-max-o onSoundModelsChangedInternal()V
    .registers 3

    .line 409
    monitor-enter p0

    .line 411
    :try_start_1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    new-instance v1, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 416
    monitor-exit p0

    .line 417
    return-void

    .line 416
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private blacklist safelyShutdownAllHotwordDetectors(Z)V
    .registers 5

    .line 1079
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_3
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    new-instance v2, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda6;-><init>(Landroid/service/voice/VoiceInteractionService;Z)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 1092
    monitor-exit v0

    .line 1093
    return-void

    .line 1092
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method


# virtual methods
.method public final whitelist createAlwaysOnHotwordDetector(Ljava/lang/String;Ljava/util/Locale;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .registers 15
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 616
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist createAlwaysOnHotwordDetector(Ljava/lang/String;Ljava/util/Locale;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .registers 16
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 669
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist createAlwaysOnHotwordDetector(Ljava/lang/String;Ljava/util/Locale;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .registers 13
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 486
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist createAlwaysOnHotwordDetector(Ljava/lang/String;Ljava/util/Locale;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .registers 14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 526
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist createAlwaysOnHotwordDetectorForTest(Ljava/lang/String;Ljava/util/Locale;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .registers 15

    .line 551
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist createAlwaysOnHotwordDetectorForTest(Ljava/lang/String;Ljava/util/Locale;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .registers 17

    .line 695
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist createHotwordDetector(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/HotwordDetector$Callback;)Landroid/service/voice/HotwordDetector;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 816
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/service/voice/VoiceInteractionService;->createHotwordDetectorInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)Landroid/service/voice/HotwordDetector;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist createHotwordDetector(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)Landroid/service/voice/HotwordDetector;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 870
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/voice/VoiceInteractionService;->createHotwordDetectorInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)Landroid/service/voice/HotwordDetector;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist createKeyphraseModelManager()Landroid/media/voice/KeyphraseModelManager;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1008
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_13

    .line 1011
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1012
    :try_start_7
    new-instance v1, Landroid/media/voice/KeyphraseModelManager;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-direct {v1, v2}, Landroid/media/voice/KeyphraseModelManager;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;)V

    monitor-exit v0

    return-object v1

    .line 1013
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1

    .line 1009
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not available until onReady() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist createVisualQueryDetector(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Landroid/service/voice/VisualQueryDetector$Callback;)Landroid/service/voice/VisualQueryDetector;
    .registers 13
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 955
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    sget-boolean v0, Landroid/service/voice/VoiceInteractionService;->SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

    if-eqz v0, :cond_7d

    .line 962
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_75

    .line 965
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 966
    :try_start_11
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    if-nez v0, :cond_69

    .line 971
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/HotwordDetector;

    .line 972
    invoke-interface {v2}, Landroid/service/voice/HotwordDetector;->isUsingSandboxedDetectionService()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 977
    goto :goto_1b

    .line 973
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "It disallows to create trusted and non-trusted detectors at the same time."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 979
    :cond_36
    new-instance v2, Landroid/service/voice/VisualQueryDetector;

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 981
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    move-object v6, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Landroid/service/voice/VisualQueryDetector;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Ljava/util/concurrent/Executor;Landroid/service/voice/VisualQueryDetector$Callback;Landroid/content/Context;Ljava/lang/String;)V

    .line 982
    nop

    .line 983
    invoke-virtual {v2}, Landroid/service/voice/VisualQueryDetector;->getInitializationDelegate()Landroid/service/voice/HotwordDetector;

    move-result-object p3

    .line 984
    iget-object p4, v6, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {p4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_11 .. :try_end_4e} :catchall_71

    .line 987
    :try_start_4e
    new-instance p4, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    invoke-virtual {v2, p4}, Landroid/service/voice/VisualQueryDetector;->registerOnDestroyListener(Ljava/util/function/Consumer;)V

    .line 988
    invoke-virtual {v2, p1, p2}, Landroid/service/voice/VisualQueryDetector;->initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_59} :catch_5e
    .catchall {:try_start_4e .. :try_end_59} :catchall_71

    .line 993
    nop

    .line 994
    :try_start_5a
    iput-object v2, v6, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    .line 995
    monitor-exit v1

    return-object v2

    .line 989
    :catch_5e
    move-exception v0

    move-object p1, v0

    .line 990
    iget-object p2, v6, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 991
    invoke-virtual {v2}, Landroid/service/voice/VisualQueryDetector;->destroy()V

    .line 992
    throw p1

    .line 967
    :cond_69
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is already an active VisualQueryDetector. It must be destroyed to create a new one."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 996
    :catchall_71
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_71

    throw p1

    .line 963
    :cond_75
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not available until onReady() is called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 959
    :cond_7d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "VisualQueryDetectionService is not enabled on this system. Please set ro.hotword.visual_query_service_enabled to true."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 1180
    const-string p1, "VOICE INTERACTION"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1181
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1182
    :try_start_8
    const-string p3, "  Sandboxed Detector(s):"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1183
    iget-object p3, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    if-nez p3, :cond_1b

    .line 1184
    const-string p3, "    No detector."

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_25

    .line 1186
    :cond_1b
    iget-object p3, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    new-instance v0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {p3, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 1193
    :goto_25
    const-string p3, "Available Model Enrollment Applications:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1195
    monitor-exit p1

    .line 1196
    return-void

    .line 1195
    :catchall_44
    move-exception p2

    monitor-exit p1
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_44

    throw p2
.end method

.method public whitelist getDisabledShowContext()I
    .registers 2

    .line 312
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getDisabledShowContext()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 313
    :catch_7
    move-exception v0

    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method protected final greylist-max-o getKeyphraseEnrollmentInfo()Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;
    .registers 2

    .line 1022
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    return-object v0
.end method

.method public final greylist isKeyphraseAndLocaleSupportedForHotword(Ljava/lang/String;Ljava/util/Locale;)Z
    .registers 5

    .line 1072
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1073
    return v1

    .line 1075
    :cond_6
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseMetadata(Ljava/lang/String;Ljava/util/Locale;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object p1

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public final blacklist listModuleProperties()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;"
        }
    .end annotation

    .line 438
    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    .line 439
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 441
    :try_start_b
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->listModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12

    return-object v0

    .line 442
    :catch_12
    move-exception v0

    .line 443
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 360
    const-string v0, "android.service.voice.VoiceInteractionService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 361
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionService;->mInterface:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 363
    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onGetSupportedVoiceActions(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 355
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onLaunchVoiceAssistFromKeyguard()V
    .registers 1

    .line 246
    return-void
.end method

.method public whitelist onPrepareToShowSession(Landroid/os/Bundle;I)V
    .registers 3

    .line 261
    return-void
.end method

.method public whitelist onReady()V
    .registers 4

    .line 373
    nop

    .line 374
    const-string/jumbo v0, "voiceinteraction"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 373
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 375
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :try_start_13
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1f} :catch_20

    .line 380
    goto :goto_29

    .line 378
    :catch_20
    move-exception v0

    .line 379
    sget-object v0, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unable to link to death with system service"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_29
    new-instance v0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    .line 382
    return-void
.end method

.method public whitelist onShowSessionFailed(Landroid/os/Bundle;)V
    .registers 2

    .line 274
    return-void
.end method

.method public whitelist onShutdown()V
    .registers 1

    .line 406
    return-void
.end method

.method public whitelist setDisabledShowContext(I)V
    .registers 3

    .line 302
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setDisabledShowContext(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 304
    goto :goto_7

    .line 303
    :catch_6
    move-exception p1

    .line 305
    :goto_7
    return-void
.end method

.method public final whitelist setInvocationEffectEnabled(Z)V
    .registers 3

    .line 1168
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/voice/flags/Flags;->setInvocationEffectEnabledApi()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1172
    :try_start_6
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setInvocationEffectEnabled(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 1175
    nop

    .line 1176
    return-void

    .line 1173
    :catch_d
    move-exception p1

    .line 1174
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1169
    :cond_13
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Flagged API usage while flag disabled."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final blacklist setTestModuleForAlwaysOnHotwordDetectorEnabled(Z)V
    .registers 3

    .line 1038
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1039
    :try_start_3
    iput-boolean p1, p0, Landroid/service/voice/VoiceInteractionService;->mTestModuleForAlwaysOnHotwordDetectorEnabled:Z

    .line 1040
    monitor-exit v0

    .line 1041
    return-void

    .line 1040
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final whitelist setUiHints(Landroid/os/Bundle;)V
    .registers 3

    .line 1111
    if-eqz p1, :cond_f

    .line 1116
    :try_start_2
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setUiHints(Landroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_9

    .line 1119
    nop

    .line 1120
    return-void

    .line 1117
    :catch_9
    move-exception p1

    .line 1118
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1112
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Hints must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist showSession(Landroid/os/Bundle;I)V
    .registers 5

    .line 331
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_10

    .line 335
    :try_start_4
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSession(Landroid/os/Bundle;ILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 337
    goto :goto_f

    .line 336
    :catch_e
    move-exception p1

    .line 338
    :goto_f
    return-void

    .line 332
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not available until onReady() is called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
