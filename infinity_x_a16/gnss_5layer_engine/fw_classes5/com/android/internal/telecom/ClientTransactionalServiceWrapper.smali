.class public Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;
.super Ljava/lang/Object;
.source "ClientTransactionalServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$ReceiverWrapper;
    }
.end annotation


# static fields
.field private static final blacklist EXECUTOR_FAIL_MSG:Ljava/lang/String; = "Telecom hit an exception while handling a CallEventCallback on an executor: "

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCallEventCallback:Lcom/android/internal/telecom/ICallEventCallback;

.field private final blacklist mCallIdToTransactionalCall:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telecom/TransactionalCall;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final blacklist mRepository:Lcom/android/internal/telecom/ClientTransactionalServiceRepository;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallIdToTransactionalCall(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->mCallIdToTransactionalCall:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    const-class v0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telecom/ClientTransactionalServiceRepository;)V
    .registers 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->mCallIdToTransactionalCall:Ljava/util/concurrent/ConcurrentHashMap;

    .line 143
    new-instance v0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper$1;-><init>(Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;)V

    iput-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->mCallEventCallback:Lcom/android/internal/telecom/ICallEventCallback;

    .line 62
    iput-object p1, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 63
    iput-object p2, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->mRepository:Lcom/android/internal/telecom/ClientTransactionalServiceRepository;

    .line 64
    return-void
.end method


# virtual methods
.method public blacklist getCallEventCallback()Lcom/android/internal/telecom/ICallEventCallback;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->mCallEventCallback:Lcom/android/internal/telecom/ICallEventCallback;

    return-object v0
.end method

.method public blacklist trackCall(Landroid/telecom/CallAttributes;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telecom/CallControlCallback;Landroid/telecom/CallEventCallback;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/CallAttributes;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telecom/CallControl;",
            "Landroid/telecom/CallException;",
            ">;",
            "Landroid/telecom/CallControlCallback;",
            "Landroid/telecom/CallEventCallback;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 103
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->mCallIdToTransactionalCall:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/internal/telecom/TransactionalCall;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telecom/TransactionalCall;-><init>(Ljava/lang/String;Landroid/telecom/CallAttributes;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telecom/CallControlCallback;Landroid/telecom/CallEventCallback;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-object v2
.end method

.method public blacklist untrackCall(Ljava/lang/String;)V
    .registers 5

    .line 72
    sget-object v0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->TAG:Ljava/lang/String;

    const-string v1, "removeCall: with id=[%s]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->mCallIdToTransactionalCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 75
    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->mCallIdToTransactionalCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telecom/TransactionalCall;

    .line 77
    invoke-virtual {p1}, Lcom/android/internal/telecom/TransactionalCall;->getCallControl()Landroid/telecom/CallControl;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_29

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/telecom/TransactionalCall;->setCallControl(Landroid/telecom/CallControl;)V

    .line 83
    :cond_29
    iget-object p1, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->mCallIdToTransactionalCall:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-nez p1, :cond_38

    .line 84
    iget-object p1, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->mRepository:Lcom/android/internal/telecom/ClientTransactionalServiceRepository;

    iget-object v0, p0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, v0}, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->removeServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Z

    .line 86
    :cond_38
    return-void
.end method
