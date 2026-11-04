.class Landroid/speech/tts/TextToSpeechService$1;
.super Landroid/speech/tts/ITextToSpeechService$Stub;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1275
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;-><init>()V

    return-void
.end method

.method private varargs blacklist checkNonNull([Ljava/lang/Object;)Z
    .registers 6

    .line 1509
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_d

    aget-object v3, p1, v2

    .line 1510
    if-nez v3, :cond_a

    return v1

    .line 1509
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1512
    :cond_d
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist intern(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1505
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist getClientDefaultLanguage()[Ljava/lang/String;
    .registers 2

    .line 1388
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$mgetSettingsLocale(Landroid/speech/tts/TextToSpeechService;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1479
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 1480
    return-object v1

    .line 1482
    :cond_c
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1484
    if-eqz v0, :cond_1c

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1c

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1b

    goto :goto_1c

    .line 1489
    :cond_1b
    return-object v1

    .line 1487
    :cond_1c
    :goto_1c
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onGetDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 1407
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onGetFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 1408
    nop

    .line 1409
    if-eqz p1, :cond_13

    .line 1410
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 1411
    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_16

    .line 1413
    :cond_13
    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/String;

    .line 1415
    :goto_16
    return-object p2
.end method

.method public blacklist getLanguage()[Ljava/lang/String;
    .registers 2

    .line 1383
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService;->onGetLanguage()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVoices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation

    .line 1453
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService;->onGetVoices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 1397
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1398
    const/4 p1, -0x1

    return p1

    .line 1401
    :cond_c
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist isSpeaking()Z
    .registers 2

    .line 1369
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->isSpeaking()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmAudioPlaybackHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/AudioPlaybackHandler;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public blacklist loadLanguage(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16

    .line 1425
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_c

    .line 1426
    return v1

    .line 1428
    :cond_c
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1430
    const/4 v10, 0x1

    if-eqz v0, :cond_1a

    if-eq v0, v10, :cond_1a

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3a

    .line 1434
    :cond_1a
    new-instance v2, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 1437
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1438
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    iget-object p1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object p1

    invoke-virtual {p1, v10, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result p1

    if-eqz p1, :cond_3a

    .line 1445
    return v1

    .line 1448
    :cond_3a
    return v0
.end method

.method public blacklist loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 11

    .line 1458
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_c

    .line 1459
    return v1

    .line 1461
    :cond_c
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0, p2}, Landroid/speech/tts/TextToSpeechService;->onIsValidVoiceName(Ljava/lang/String;)I

    move-result v0

    .line 1463
    if-nez v0, :cond_33

    .line 1464
    new-instance v2, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 1467
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1468
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILjava/lang/String;)V

    .line 1470
    iget-object p1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result p1

    if-eqz p1, :cond_33

    .line 1472
    return v1

    .line 1475
    :cond_33
    return v0
.end method

.method public blacklist playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I
    .registers 14

    .line 1335
    filled-new-array {p1, p2, p4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1336
    const/4 p1, -0x1

    return p1

    .line 1339
    :cond_c
    new-instance v0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 1342
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1343
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v2, p1

    move-object v7, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/TextToSpeechService$AudioSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 1347
    iget-object p1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object p1

    invoke-virtual {p1, p3, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result p1

    return p1
.end method

.method public blacklist playSilence(Landroid/os/IBinder;JILjava/lang/String;)I
    .registers 14

    .line 1353
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1354
    const/4 p1, -0x1

    return p1

    .line 1357
    :cond_c
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 1360
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1361
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v2, p1

    move-wide v6, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILjava/lang/String;J)V

    .line 1364
    iget-object p1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object p1

    invoke-virtual {p1, p4, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result p1

    return p1
.end method

.method public blacklist setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V
    .registers 4

    .line 1496
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1497
    return-void

    .line 1500
    :cond_b
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmCallbacks(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    .line 1501
    return-void
.end method

.method public blacklist speak(Landroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    .registers 14

    .line 1283
    filled-new-array {p1, p2, p4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1284
    const/4 p1, -0x1

    return p1

    .line 1287
    :cond_c
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 1290
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1291
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v2, p1

    move-object v7, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1295
    iget-object p1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object p1

    invoke-virtual {p1, p3, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result p1

    return p1
.end method

.method public blacklist stop(Landroid/os/IBinder;)I
    .registers 3

    .line 1374
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1375
    const/4 p1, -0x1

    return p1

    .line 1378
    :cond_c
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public blacklist synthesizeToFileDescriptor(Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)I
    .registers 15

    .line 1305
    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$1;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1306
    const/4 p1, -0x1

    return p1

    .line 1312
    :cond_c
    nop

    .line 1313
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p3

    invoke-static {p3}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p3

    .line 1315
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 1318
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1319
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    new-instance v8, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v8, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v2, p1

    move-object v7, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/io/FileOutputStream;)V

    .line 1325
    iget-object p1, p0, Landroid/speech/tts/TextToSpeechService$1;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result p1

    return p1
.end method
