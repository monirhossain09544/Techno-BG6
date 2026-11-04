.class public Landroid/security/AndroidProtectedConfirmation;
.super Ljava/lang/Object;
.source "AndroidProtectedConfirmation.java"


# static fields
.field public static final blacklist ERROR_ABORTED:I = 0x2

.field public static final blacklist ERROR_CANCELED:I = 0x1

.field public static final blacklist ERROR_IGNORED:I = 0x4

.field public static final blacklist ERROR_OK:I = 0x0

.field public static final blacklist ERROR_OPERATION_PENDING:I = 0x3

.field public static final blacklist ERROR_SYSTEM_ERROR:I = 0x5

.field public static final blacklist ERROR_UNIMPLEMENTED:I = 0x6

.field public static final blacklist FLAG_UI_OPTION_INVERTED:I = 0x1

.field public static final blacklist FLAG_UI_OPTION_MAGNIFIED:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "AndroidProtectedConfirmation"


# instance fields
.field private blacklist mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/AndroidProtectedConfirmation;->mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;

    .line 50
    return-void
.end method

.method private declared-synchronized blacklist getService()Landroid/security/apc/IProtectedConfirmation;
    .registers 2

    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Landroid/security/AndroidProtectedConfirmation;->mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;

    if-nez v0, :cond_11

    .line 54
    const-string v0, "android.security.apc"

    .line 55
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/security/apc/IProtectedConfirmation$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/apc/IProtectedConfirmation;

    move-result-object v0

    iput-object v0, p0, Landroid/security/AndroidProtectedConfirmation;->mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;

    .line 57
    :cond_11
    iget-object v0, p0, Landroid/security/AndroidProtectedConfirmation;->mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    .line 52
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method


# virtual methods
.method public blacklist cancelConfirmationPrompt(Landroid/security/apc/IConfirmationCallback;)I
    .registers 4

    .line 94
    :try_start_0
    invoke-direct {p0}, Landroid/security/AndroidProtectedConfirmation;->getService()Landroid/security/apc/IProtectedConfirmation;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/security/apc/IProtectedConfirmation;->cancelPrompt(Landroid/security/apc/IConfirmationCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_7} :catch_9

    .line 95
    const/4 p1, 0x0

    return p1

    .line 99
    :catch_9
    move-exception p1

    .line 100
    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    return p1

    .line 96
    :catch_d
    move-exception p1

    .line 97
    const-string v0, "AndroidProtectedConfirmation"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    const/4 p1, 0x5

    return p1
.end method

.method public blacklist isConfirmationPromptSupported()Z
    .registers 4

    .line 111
    :try_start_0
    invoke-direct {p0}, Landroid/security/AndroidProtectedConfirmation;->getService()Landroid/security/apc/IProtectedConfirmation;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/apc/IProtectedConfirmation;->isSupported()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 112
    :catch_9
    move-exception v0

    .line 113
    const-string v1, "AndroidProtectedConfirmation"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist presentConfirmationPrompt(Landroid/security/apc/IConfirmationCallback;Ljava/lang/String;[BLjava/lang/String;I)I
    .registers 7

    .line 74
    :try_start_0
    invoke-direct {p0}, Landroid/security/AndroidProtectedConfirmation;->getService()Landroid/security/apc/IProtectedConfirmation;

    move-result-object v0

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/security/apc/IProtectedConfirmation;->presentPrompt(Landroid/security/apc/IConfirmationCallback;Ljava/lang/String;[BLjava/lang/String;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_f
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_8} :catch_a

    .line 76
    const/4 p1, 0x0

    return p1

    .line 80
    :catch_a
    move-exception v0

    move-object p1, v0

    .line 81
    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    return p1

    .line 77
    :catch_f
    move-exception v0

    move-object p1, v0

    .line 78
    const-string p2, "AndroidProtectedConfirmation"

    const-string p3, "Cannot connect to keystore"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    const/4 p1, 0x5

    return p1
.end method
