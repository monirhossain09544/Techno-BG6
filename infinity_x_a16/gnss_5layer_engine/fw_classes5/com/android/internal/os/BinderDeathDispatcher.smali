.class public Lcom/android/internal/os/BinderDeathDispatcher;
.super Ljava/lang/Object;
.source "BinderDeathDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BinderDeathDispatcher"


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mTargets:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/os/BinderDeathDispatcher<",
            "TT;>.RecipientsInfo;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/os/BinderDeathDispatcher;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTargets(Lcom/android/internal/os/BinderDeathDispatcher;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    .line 133
    iget-object v0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_3
    const-string v1, "# of watched binders: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 137
    const-string v1, "# of death recipients: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 138
    nop

    .line 139
    iget-object v1, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;

    .line 140
    iget-object v3, v3, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mRecipients:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 141
    goto :goto_22

    .line 142
    :cond_36
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 143
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public blacklist getTargetsForTest()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/os/BinderDeathDispatcher<",
            "TT;>.RecipientsInfo;>;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/IBinder$DeathRecipient;",
            ")I"
        }
    .end annotation

    .line 97
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;

    .line 100
    if-nez v1, :cond_26

    .line 101
    new-instance v1, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;-><init>(Lcom/android/internal/os/BinderDeathDispatcher;Landroid/os/IBinder;Lcom/android/internal/os/BinderDeathDispatcher-IA;)V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_33

    .line 105
    const/4 v2, 0x0

    :try_start_18
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_22
    .catchall {:try_start_18 .. :try_end_1b} :catchall_33

    .line 108
    nop

    .line 109
    :try_start_1c
    iget-object v2, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 106
    :catch_22
    move-exception p1

    .line 107
    monitor-exit v0

    const/4 p1, -0x1

    return p1

    .line 111
    :cond_26
    :goto_26
    iget-object p1, v1, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mRecipients:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object p1, v1, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mRecipients:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    monitor-exit v0

    return p1

    .line 113
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1c .. :try_end_35} :catchall_33

    throw p1
.end method

.method public blacklist unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/IBinder$DeathRecipient;",
            ")V"
        }
    .end annotation

    .line 117
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 119
    iget-object v0, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;

    .line 121
    if-nez p1, :cond_13

    .line 122
    monitor-exit v0

    return-void

    .line 124
    :cond_13
    iget-object v1, p1, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mRecipients:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_30

    iget-object p2, p1, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mRecipients:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-nez p2, :cond_30

    .line 125
    iget-object p2, p1, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mTarget:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 126
    iget-object p2, p0, Lcom/android/internal/os/BinderDeathDispatcher;->mTargets:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mTarget:Landroid/os/IBinder;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_30
    monitor-exit v0

    .line 129
    return-void

    .line 128
    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw p1
.end method
