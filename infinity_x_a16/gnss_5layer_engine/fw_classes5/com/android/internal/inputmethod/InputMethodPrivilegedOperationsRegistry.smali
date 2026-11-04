.class public final Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;
.super Ljava/lang/Object;
.source "InputMethodPrivilegedOperationsRegistry.java"


# static fields
.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sNop:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

.field private static blacklist sRegistry:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static blacklist get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
    .registers 3

    .line 93
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_3
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    if-nez v1, :cond_d

    .line 95
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->getNopOps()Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 97
    :cond_d
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 98
    if-nez p0, :cond_1d

    .line 99
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->getNopOps()Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 101
    :cond_1d
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    .line 102
    if-nez p0, :cond_2b

    .line 103
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->getNopOps()Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 105
    :cond_2b
    monitor-exit v0

    return-object p0

    .line 106
    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method private static blacklist getNopOps()Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
    .registers 1

    .line 54
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sNop:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    if-nez v0, :cond_b

    .line 55
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sNop:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    .line 57
    :cond_b
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sNop:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    return-object v0
.end method

.method public static blacklist put(Landroid/os/IBinder;Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;)V
    .registers 5

    .line 73
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    if-nez v1, :cond_e

    .line 75
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    .line 77
    :cond_e
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public static blacklist remove(Landroid/os/IBinder;)V
    .registers 3

    .line 120
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_3
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    if-nez v1, :cond_9

    .line 122
    monitor-exit v0

    return-void

    .line 124
    :cond_9
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_19

    .line 126
    const/4 p0, 0x0

    sput-object p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    .line 128
    :cond_19
    monitor-exit v0

    .line 129
    return-void

    .line 128
    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method
