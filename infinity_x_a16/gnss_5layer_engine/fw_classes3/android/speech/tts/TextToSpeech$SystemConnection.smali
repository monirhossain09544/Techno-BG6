.class Landroid/speech/tts/TextToSpeech$SystemConnection;
.super Landroid/speech/tts/TextToSpeech$Connection;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemConnection"
.end annotation


# instance fields
.field private volatile blacklist mSession:Landroid/speech/tts/ITextToSpeechSession;

.field final synthetic blacklist this$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmSession(Landroid/speech/tts/TextToSpeech$SystemConnection;Landroid/speech/tts/ITextToSpeechSession;)V
    .registers 2

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$SystemConnection;->mSession:Landroid/speech/tts/ITextToSpeechSession;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/speech/tts/TextToSpeech;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2436
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$SystemConnection;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/speech/tts/TextToSpeech$Connection;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech$SystemConnection;-><init>(Landroid/speech/tts/TextToSpeech;)V

    return-void
.end method


# virtual methods
.method blacklist connect(Ljava/lang/String;)Z
    .registers 5

    .line 2443
    const-string/jumbo v0, "texttospeech"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2445
    invoke-static {v0}, Landroid/speech/tts/ITextToSpeechManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechManager;

    move-result-object v0

    .line 2447
    const-string v1, "TextToSpeech"

    if-nez v0, :cond_16

    .line 2448
    const-string p1, "System service is not available!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    const/4 p1, 0x0

    return p1

    .line 2457
    :cond_16
    :try_start_16
    new-instance v2, Landroid/speech/tts/TextToSpeech$SystemConnection$1;

    invoke-direct {v2, p0}, Landroid/speech/tts/TextToSpeech$SystemConnection$1;-><init>(Landroid/speech/tts/TextToSpeech$SystemConnection;)V

    invoke-interface {v0, p1, v2}, Landroid/speech/tts/ITextToSpeechManager;->createSession(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_20

    .line 2480
    const/4 p1, 0x1

    return p1

    .line 2481
    :catch_20
    move-exception p1

    .line 2482
    const-string v0, "Error communicating with the System Server: "

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2483
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist disconnect()V
    .registers 4

    .line 2489
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$SystemConnection;->mSession:Landroid/speech/tts/ITextToSpeechSession;

    .line 2491
    if-eqz v0, :cond_13

    .line 2493
    :try_start_4
    invoke-interface {v0}, Landroid/speech/tts/ITextToSpeechSession;->disconnect()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 2496
    goto :goto_10

    .line 2494
    :catch_8
    move-exception v0

    .line 2495
    const-string v1, "TextToSpeech"

    const-string v2, "Error disconnecting session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2498
    :goto_10
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech$SystemConnection;->clearServiceConnection()Z

    .line 2500
    :cond_13
    return-void
.end method
