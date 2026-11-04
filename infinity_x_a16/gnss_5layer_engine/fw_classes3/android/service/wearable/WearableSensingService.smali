.class public abstract Landroid/service/wearable/WearableSensingService;
.super Landroid/app/Service;
.source "WearableSensingService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist HOTWORD_AUDIO_STREAM_BUNDLE_KEY:Ljava/lang/String; = "android.app.wearable.HotwordAudioStreamBundleKey"

.field private static final blacklist OPEN_FILE_TIMEOUT:Ljava/time/Duration;

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.wearable.WearableSensingService"

.field public static final blacklist STATUS_RESPONSE_BUNDLE_KEY:Ljava/lang/String; = "android.app.wearable.WearableSensingStatusBundleKey"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mDataRequestObserverIdToRequesterMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/wearable/WearableSensingDataRequester;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDataRequestObserverIdToRequesterMap(Landroid/service/wearable/WearableSensingService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/service/wearable/WearableSensingService;->mDataRequestObserverIdToRequesterMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWearableSensingCallback(Landroid/service/wearable/WearableSensingService;Landroid/app/wearable/IWearableSensingCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/service/wearable/WearableSensingService;->mWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/wearable/WearableSensingService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateDataRequester(Landroid/os/RemoteCallback;)Landroid/service/wearable/WearableSensingDataRequester;
    .registers 1

    invoke-static {p0}, Landroid/service/wearable/WearableSensingService;->createDataRequester(Landroid/os/RemoteCallback;)Landroid/service/wearable/WearableSensingDataRequester;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateWearableStatusConsumer(Landroid/os/RemoteCallback;)Ljava/util/function/Consumer;
    .registers 1

    invoke-static {p0}, Landroid/service/wearable/WearableSensingService;->createWearableStatusConsumer(Landroid/os/RemoteCallback;)Ljava/util/function/Consumer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smintArrayToIntegerArray([I)[Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Landroid/service/wearable/WearableSensingService;->intArrayToIntegerArray([I)[Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 91
    const-class v0, Landroid/service/wearable/WearableSensingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/wearable/WearableSensingService;->TAG:Ljava/lang/String;

    .line 119
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Landroid/service/wearable/WearableSensingService;->OPEN_FILE_TIMEOUT:Ljava/time/Duration;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 90
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/service/wearable/WearableSensingService;->mDataRequestObserverIdToRequesterMap:Landroid/util/SparseArray;

    return-void
.end method

.method private static blacklist createDataRequester(Landroid/os/RemoteCallback;)Landroid/service/wearable/WearableSensingDataRequester;
    .registers 2

    .line 751
    new-instance v0, Landroid/service/wearable/WearableSensingService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/service/wearable/WearableSensingService$$ExternalSyntheticLambda2;-><init>(Landroid/os/RemoteCallback;)V

    return-object v0
.end method

.method private static blacklist createWearableStatusConsumer(Landroid/os/RemoteCallback;)Ljava/util/function/Consumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            ")",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 770
    new-instance v0, Landroid/service/wearable/WearableSensingService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/service/wearable/WearableSensingService$$ExternalSyntheticLambda1;-><init>(Landroid/os/RemoteCallback;)V

    return-object v0
.end method

.method private static blacklist intArrayToIntegerArray([I)[Ljava/lang/Integer;
    .registers 7

    .line 741
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 742
    nop

    .line 743
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v2, v1, :cond_17

    aget v4, p0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 744
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3

    .line 743
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_7

    .line 746
    :cond_17
    return-object v0
.end method

.method static synthetic blacklist lambda$createDataRequester$0(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 3

    .line 757
    nop

    .line 758
    const-string v0, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 757
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 760
    return-void
.end method

.method static synthetic blacklist lambda$createDataRequester$1(Landroid/os/RemoteCallback;Landroid/app/wearable/WearableSensingDataRequest;Ljava/util/function/Consumer;)V
    .registers 5

    .line 752
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 753
    const-string v1, "android.app.wearable.WearableSensingDataRequestBundleKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 754
    new-instance p1, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/service/wearable/WearableSensingService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroid/service/wearable/WearableSensingService$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {p1, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 761
    const-string p2, "android.app.wearable.WearableSensingDataRequestStatusCallbackBundleKey"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 764
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 765
    return-void
.end method

.method static synthetic blacklist lambda$createWearableStatusConsumer$2(Landroid/os/RemoteCallback;Ljava/lang/Integer;)V
    .registers 4

    .line 771
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 772
    const-string v1, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 773
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 774
    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 129
    const-string v0, "android.service.wearable.WearableSensingService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 130
    new-instance p1, Landroid/service/wearable/WearableSensingService$1;

    invoke-direct {p1, p0}, Landroid/service/wearable/WearableSensingService$1;-><init>(Landroid/service/wearable/WearableSensingService;)V

    return-object p1

    .line 365
    :cond_12
    sget-object p1, Landroid/service/wearable/WearableSensingService;->TAG:Ljava/lang/String;

    const-string v0, "Incorrect service interface, returning null."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract whitelist onDataProvided(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersistableBundle;",
            "Landroid/os/SharedMemory;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public whitelist onDataRequestObserverRegistered(ILjava/lang/String;Landroid/service/wearable/WearableSensingDataRequester;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/service/wearable/WearableSensingDataRequester;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 509
    const/4 p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 510
    return-void
.end method

.method public whitelist onDataRequestObserverUnregistered(ILjava/lang/String;Landroid/service/wearable/WearableSensingDataRequester;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/service/wearable/WearableSensingDataRequester;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 536
    const/4 p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 537
    return-void
.end method

.method public abstract whitelist onDataStreamProvided(Landroid/os/ParcelFileDescriptor;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onQueryServiceStatus(Ljava/util/Set;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public whitelist onReadOnlyParcelFileDescriptorProvided(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 441
    const/4 p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 442
    return-void
.end method

.method public whitelist onSecureConnectionProvided(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 418
    const/4 p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 419
    return-void
.end method

.method public whitelist onSecureConnectionProvided(Landroid/os/ParcelFileDescriptor;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 393
    const/4 p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 394
    return-void
.end method

.method public abstract whitelist onStartDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ambientcontext/AmbientContextEventRequest;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/service/ambientcontext/AmbientContextDetectionResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public whitelist onStartHotwordRecognition(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/voice/HotwordAudioStream;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 570
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/Flags;->enableUnsupportedOperationStatusCode()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 571
    const/4 p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 573
    :cond_e
    return-void
.end method

.method public abstract whitelist onStopDetection(Ljava/lang/String;)V
.end method

.method public whitelist onStopHotwordAudioStream()V
    .registers 1

    .line 631
    return-void
.end method

.method public whitelist onStopHotwordRecognition(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 589
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/wearable/Flags;->enableUnsupportedOperationStatusCode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 590
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 592
    :cond_e
    return-void
.end method

.method public whitelist onValidatedByHotwordDetectionService()V
    .registers 1

    .line 613
    return-void
.end method

.method public whitelist openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 708
    if-eqz p1, :cond_67

    .line 712
    :try_start_2
    iget-object v0, p0, Landroid/service/wearable/WearableSensingService;->mWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    if-eqz v0, :cond_3a

    .line 717
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 718
    iget-object v1, p0, Landroid/service/wearable/WearableSensingService;->mWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    invoke-interface {v1, p1, v0}, Landroid/app/wearable/IWearableSensingCallback;->openFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 719
    sget-object v1, Landroid/service/wearable/WearableSensingService;->OPEN_FILE_TIMEOUT:Ljava/time/Duration;

    .line 720
    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 721
    if-eqz v0, :cond_2a

    .line 727
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object p1

    .line 722
    :cond_2a
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "File %s not found or unable to be opened in read-only mode."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 723
    invoke-static {v1, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot open file from WearableSensingService. WearableSensingCallback is not available."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_42} :catch_58
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_42} :catch_58
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_42} :catch_58
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_42} :catch_42

    .line 732
    :catch_42
    move-exception p1

    .line 733
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 734
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Interrupted when opening a file."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v0, p1}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/FileNotFoundException;

    throw p1

    .line 728
    :catch_58
    move-exception p1

    .line 729
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Cannot open file due to remote service failure"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0, p1}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/FileNotFoundException;

    throw p1

    .line 709
    :cond_67
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filename cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
