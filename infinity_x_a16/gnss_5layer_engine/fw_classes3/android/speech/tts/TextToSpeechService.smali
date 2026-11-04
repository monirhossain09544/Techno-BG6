.class public abstract Landroid/speech/tts/TextToSpeechService;
.super Landroid/app/Service;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeechService$SynthThread;,
        Landroid/speech/tts/TextToSpeechService$SynthHandler;,
        Landroid/speech/tts/TextToSpeechService$CallbackMap;,
        Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;,
        Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;,
        Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;,
        Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;,
        Landroid/speech/tts/TextToSpeechService$SpeechItem;,
        Landroid/speech/tts/TextToSpeechService$AudioOutputParams;,
        Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o SYNTH_THREAD_NAME:Ljava/lang/String; = "SynthThread"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TextToSpeechService"


# instance fields
.field private greylist-max-o mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

.field private final greylist-max-o mBinder:Landroid/speech/tts/ITextToSpeechService$Stub;

.field private greylist-max-o mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

.field private greylist-max-o mEngineHelper:Landroid/speech/tts/TtsEngines;

.field private greylist-max-o mPackageName:Ljava/lang/String;

.field private greylist-max-o mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

.field private final greylist-max-o mVoicesInfoLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAudioPlaybackHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;
    .registers 1

    iget-object p0, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;
    .registers 1

    iget-object p0, p0, Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/speech/tts/TextToSpeechService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/speech/tts/TextToSpeechService;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;
    .registers 1

    iget-object p0, p0, Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDefaultPitch(Landroid/speech/tts/TextToSpeechService;)I
    .registers 1

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;->getDefaultPitch()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDefaultSpeechRate(Landroid/speech/tts/TextToSpeechService;)I
    .registers 1

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;->getDefaultSpeechRate()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSettingsLocale(Landroid/speech/tts/TextToSpeechService;)[Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;->getSettingsLocale()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 104
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mVoicesInfoLock:Ljava/lang/Object;

    .line 1274
    new-instance v0, Landroid/speech/tts/TextToSpeechService$1;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeechService$1;-><init>(Landroid/speech/tts/TextToSpeechService;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mBinder:Landroid/speech/tts/ITextToSpeechService$Stub;

    return-void
.end method

.method private greylist-max-o getDefaultPitch()I
    .registers 3

    .line 413
    const-string/jumbo v0, "tts_default_pitch"

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService;->getSecureSettingInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getDefaultSpeechRate()I
    .registers 3

    .line 409
    const-string/jumbo v0, "tts_default_rate"

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService;->getSecureSettingInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getExpectedLanguageAvailableStatus(Ljava/util/Locale;)I
    .registers 3

    .line 253
    nop

    .line 254
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 255
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 256
    const/4 p1, 0x0

    goto :goto_1a

    .line 258
    :cond_17
    const/4 p1, 0x1

    goto :goto_1a

    .line 254
    :cond_19
    const/4 p1, 0x2

    .line 261
    :goto_1a
    return p1
.end method

.method private greylist-max-o getSecureSettingInt(Ljava/lang/String;I)I
    .registers 4

    .line 422
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private greylist-max-o getSettingsLocale()[Ljava/lang/String;
    .registers 3

    .line 417
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mEngineHelper:Landroid/speech/tts/TtsEngines;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 418
    invoke-static {v0}, Landroid/speech/tts/TtsEngines;->toOldLocaleStringFormat(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 1261
    const-string v0, "android.intent.action.TTS_SERVICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1262
    iget-object p1, p0, Landroid/speech/tts/TextToSpeechService;->mBinder:Landroid/speech/tts/ITextToSpeechService$Stub;

    invoke-virtual {p1}, Landroid/speech/tts/ITextToSpeechService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1263
    iget-object p1, p0, Landroid/speech/tts/TextToSpeechService;->mBinder:Landroid/speech/tts/ITextToSpeechService$Stub;

    return-object p1

    .line 1265
    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onCreate()V
    .registers 5

    .line 126
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 128
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SynthThread;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeechService$SynthThread;-><init>(Landroid/speech/tts/TextToSpeechService;)V

    .line 129
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SynthThread;->start()V

    .line 130
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SynthThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;-><init>(Landroid/speech/tts/TextToSpeechService;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    .line 132
    new-instance v0, Landroid/speech/tts/AudioPlaybackHandler;

    invoke-direct {v0}, Landroid/speech/tts/AudioPlaybackHandler;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    .line 133
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v0}, Landroid/speech/tts/AudioPlaybackHandler;->start()V

    .line 135
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-direct {v0, p0}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mEngineHelper:Landroid/speech/tts/TtsEngines;

    .line 137
    new-instance v0, Landroid/speech/tts/TextToSpeechService$CallbackMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;-><init>(Landroid/speech/tts/TextToSpeechService;Landroid/speech/tts/TextToSpeechService-IA;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

    .line 139
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mPackageName:Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;->getSettingsLocale()[Ljava/lang/String;

    move-result-object v0

    .line 144
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {p0, v1, v2, v0}, Landroid/speech/tts/TextToSpeechService;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->quit()V

    .line 154
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v0}, Landroid/speech/tts/AudioPlaybackHandler;->quit()V

    .line 156
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->kill()V

    .line 158
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 159
    return-void
.end method

.method public whitelist onGetDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 320
    invoke-virtual {p0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 321
    nop

    .line 322
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_2c

    .line 333
    return-object v1

    .line 330
    :pswitch_a
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    goto :goto_1c

    .line 327
    :pswitch_10
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    goto :goto_1c

    .line 324
    :pswitch_16
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 325
    nop

    .line 335
    :goto_1c
    invoke-static {v0}, Landroid/speech/tts/TtsEngines;->normalizeTTSLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object p1

    .line 336
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    .line 337
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeechService;->onIsValidVoiceName(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_2b

    .line 338
    return-object p1

    .line 340
    :cond_2b
    return-object v1

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_16
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method

.method protected whitelist onGetFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1
.end method

.method protected abstract whitelist onGetLanguage()[Ljava/lang/String;
.end method

.method public whitelist onGetVoices()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v4, v0

    :goto_c
    if-ge v4, v3, :cond_5b

    aget-object v7, v2, v4

    .line 282
    invoke-direct {p0, v7}, Landroid/speech/tts/TextToSpeechService;->getExpectedLanguageAvailableStatus(Ljava/util/Locale;)I

    move-result v0

    .line 284
    :try_start_14
    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    .line 285
    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v8

    .line 284
    invoke-virtual {p0, v5, v6, v8}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5
    :try_end_24
    .catch Ljava/util/MissingResourceException; {:try_start_14 .. :try_end_24} :catch_56

    .line 286
    if-eq v5, v0, :cond_27

    .line 287
    goto :goto_58

    .line 292
    :cond_27
    nop

    .line 293
    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-virtual {p0, v0, v5, v6}, Landroid/speech/tts/TextToSpeechService;->onGetFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v11

    .line 295
    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    .line 295
    invoke-virtual {p0, v0, v5, v6}, Landroid/speech/tts/TextToSpeechService;->onGetDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 297
    new-instance v5, Landroid/speech/tts/Voice;

    const/16 v9, 0x12c

    const/4 v10, 0x0

    const/16 v8, 0x12c

    invoke-direct/range {v5 .. v11}, Landroid/speech/tts/Voice;-><init>(Ljava/lang/String;Ljava/util/Locale;IIZLjava/util/Set;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 289
    :catch_56
    move-exception v0

    .line 291
    nop

    .line 281
    :goto_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 300
    :cond_5b
    return-object v1
.end method

.method protected abstract whitelist onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public whitelist onIsValidVoiceName(Ljava/lang/String;)I
    .registers 6

    .line 391
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    .line 392
    const/4 v0, -0x1

    if-nez p1, :cond_8

    .line 393
    return v0

    .line 395
    :cond_8
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService;->getExpectedLanguageAvailableStatus(Ljava/util/Locale;)I

    move-result v1

    .line 397
    :try_start_c
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    .line 398
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p1

    .line 397
    invoke-virtual {p0, v2, v3, p1}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_1c
    .catch Ljava/util/MissingResourceException; {:try_start_c .. :try_end_1c} :catch_21

    .line 399
    if-eq p1, v1, :cond_1f

    .line 400
    return v0

    .line 402
    :cond_1f
    const/4 p1, 0x0

    return p1

    .line 403
    :catch_21
    move-exception p1

    .line 404
    return v0
.end method

.method protected abstract whitelist onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public whitelist onLoadVoice(Ljava/lang/String;)I
    .registers 7

    .line 360
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    .line 361
    const/4 v0, -0x1

    if-nez p1, :cond_8

    .line 362
    return v0

    .line 364
    :cond_8
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService;->getExpectedLanguageAvailableStatus(Ljava/util/Locale;)I

    move-result v1

    .line 366
    :try_start_c
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 366
    invoke-virtual {p0, v2, v3, v4}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 368
    if-eq v2, v1, :cond_1f

    .line 369
    return v0

    .line 371
    :cond_1f
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-virtual {p0, v1, v2, p1}, Landroid/speech/tts/TextToSpeechService;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/util/MissingResourceException; {:try_start_c .. :try_end_2e} :catch_30

    .line 373
    const/4 p1, 0x0

    return p1

    .line 374
    :catch_30
    move-exception p1

    .line 375
    return v0
.end method

.method protected abstract whitelist onStop()V
.end method

.method protected abstract whitelist onSynthesizeText(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V
.end method
