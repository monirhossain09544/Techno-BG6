.class Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;
.super Landroid/os/AsyncTask;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupConnectionAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/speech/tts/TextToSpeech$Connection;


# direct methods
.method private constructor blacklist <init>(Landroid/speech/tts/TextToSpeech$Connection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2284
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/speech/tts/TextToSpeech$Connection;Landroid/speech/tts/TextToSpeech-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;-><init>(Landroid/speech/tts/TextToSpeech$Connection;)V

    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 9

    .line 2288
    iget-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object p1, p1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {p1}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmStartLock(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2289
    :try_start_9
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2290
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_ac

    const/4 p1, 0x0

    return-object p1

    .line 2294
    :cond_12
    :try_start_12
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech$Connection;->-$$Nest$fgetmService(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechService;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech$Connection;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-static {v2}, Landroid/speech/tts/TextToSpeech$Connection;->-$$Nest$fgetmCallback(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechCallback$Stub;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/speech/tts/ITextToSpeechService;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    .line 2296
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmParams(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_90

    .line 2297
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech$Connection;->-$$Nest$fgetmService(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechService;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/tts/ITextToSpeechService;->getClientDefaultLanguage()[Ljava/lang/String;

    move-result-object v0

    .line 2298
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v2, v2, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v2}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmParams(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "language"

    aget-object v4, v0, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v2, v2, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v2}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmParams(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "country"

    const/4 v4, 0x1

    aget-object v5, v0, v4

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v2, v2, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v2}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmParams(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "variant"

    const/4 v5, 0x2

    aget-object v6, v0, v5

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-static {v2}, Landroid/speech/tts/TextToSpeech$Connection;->-$$Nest$fgetmService(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechService;

    move-result-object v2

    aget-object v3, v0, v1

    aget-object v4, v0, v4

    aget-object v0, v0, v5

    invoke-interface {v2, v3, v4, v0}, Landroid/speech/tts/ITextToSpeechService;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2305
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v2, v2, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v2}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmParams(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "voiceName"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    :cond_90
    const-string v0, "TextToSpeech"

    const-string v2, "Setting up the connection to TTS engine..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_9b} :catch_9d
    .catchall {:try_start_12 .. :try_end_9b} :catchall_ac

    :try_start_9b
    monitor-exit p1

    return-object v0

    .line 2310
    :catch_9d
    move-exception v0

    .line 2311
    const-string v0, "TextToSpeech"

    const-string v1, "Error connecting to service, setCallback() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 2314
    :catchall_ac
    move-exception v0

    monitor-exit p1
    :try_end_ae
    .catchall {:try_start_9b .. :try_end_ae} :catchall_ac

    throw v0
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2284
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o onPostExecute(Ljava/lang/Integer;)V
    .registers 5

    .line 2319
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmStartLock(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2320
    :try_start_9
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech$Connection;->-$$Nest$fgetmOnSetupConnectionAsyncTask(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    move-result-object v1

    if-ne v1, p0, :cond_17

    .line 2321
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/speech/tts/TextToSpeech$Connection;->-$$Nest$fputmOnSetupConnectionAsyncTask(Landroid/speech/tts/TextToSpeech$Connection;Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;)V

    .line 2323
    :cond_17
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/speech/tts/TextToSpeech$Connection;->-$$Nest$fputmEstablished(Landroid/speech/tts/TextToSpeech$Connection;Z)V

    .line 2324
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Landroid/speech/tts/TextToSpeech;->-$$Nest$mdispatchOnInit(Landroid/speech/tts/TextToSpeech;I)V

    .line 2325
    monitor-exit v0

    .line 2326
    return-void

    .line 2325
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2284
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
