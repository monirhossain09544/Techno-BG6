.class public Lcom/android/internal/telecom/ClientTransactionalServiceRepository;
.super Ljava/lang/Object;
.source "ClientTransactionalServiceRepository.java"


# static fields
.field private static final blacklist LOOKUP_TABLE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/PhoneAccountHandle;",
            "Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->LOOKUP_TABLE:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist getTransactionalServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;
    .registers 3

    .line 57
    sget-object v0, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->LOOKUP_TABLE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    return-object p1
.end method

.method private blacklist hasExistingServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 3

    .line 61
    sget-object v0, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->LOOKUP_TABLE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public blacklist addNewCallForTransactionalServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;
    .registers 4

    .line 43
    nop

    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->hasExistingServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 45
    new-instance v0, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;-><init>(Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telecom/ClientTransactionalServiceRepository;)V

    goto :goto_11

    .line 47
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->getTransactionalServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    move-result-object v0

    .line 50
    :goto_11
    sget-object v1, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->LOOKUP_TABLE:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-object v0
.end method

.method public blacklist removeCallFromServiceWrapper(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .registers 4

    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->hasExistingServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 83
    const/4 p1, 0x0

    return p1

    .line 85
    :cond_8
    sget-object v0, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->LOOKUP_TABLE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    .line 86
    invoke-virtual {p1, p2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->untrackCall(Ljava/lang/String;)V

    .line 87
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist removeServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 3

    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->hasExistingServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 70
    const/4 p1, 0x0

    return p1

    .line 72
    :cond_8
    sget-object v0, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->LOOKUP_TABLE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const/4 p1, 0x1

    return p1
.end method
