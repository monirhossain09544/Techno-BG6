.class Lcom/android/internal/policy/PhoneWindow$RotationWatcher;
.super Landroid/view/IRotationWatcher$Stub;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationWatcher"
.end annotation


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsWatching:Z

.field private final blacklist mRotationChanged:Ljava/lang/Runnable;

.field private final blacklist mWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/policy/PhoneWindow;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 3832
    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    .line 3834
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher$1;-><init>(Lcom/android/internal/policy/PhoneWindow$RotationWatcher;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mRotationChanged:Ljava/lang/Runnable;

    .line 3839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist addWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 6

    .line 3849
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3850
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mIsWatching:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_33

    if-nez v1, :cond_27

    .line 3852
    :try_start_7
    sget-object v1, Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    .line 3853
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 3852
    invoke-interface {v1, p0, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I

    .line 3854
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mHandler:Landroid/os/Handler;

    .line 3855
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mIsWatching:Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1e} :catch_1f
    .catchall {:try_start_7 .. :try_end_1e} :catchall_33

    .line 3858
    goto :goto_27

    .line 3856
    :catch_1f
    move-exception v1

    .line 3857
    :try_start_20
    const-string v2, "PhoneWindow"

    const-string v3, "Couldn\'t start watching for device rotation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3860
    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3861
    monitor-exit v0

    .line 3862
    return-void

    .line 3861
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_33

    throw p1
.end method

.method blacklist dispatchRotationChanged()V
    .registers 4

    .line 3880
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3881
    const/4 v1, 0x0

    .line 3882
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 3883
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 3884
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/PhoneWindow;

    .line 3885
    if-eqz v2, :cond_22

    .line 3886
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->onOptionsPanelRotationChanged()V

    .line 3887
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 3889
    :cond_22
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3891
    :goto_27
    goto :goto_4

    .line 3892
    :cond_28
    monitor-exit v0

    .line 3893
    return-void

    .line 3892
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public blacklist onRotationChanged(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3845
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mRotationChanged:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3846
    return-void
.end method

.method public blacklist removeWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 5

    .line 3865
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3866
    const/4 v1, 0x0

    .line 3867
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 3868
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 3869
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/PhoneWindow;

    .line 3870
    if-eqz v2, :cond_22

    if-ne v2, p1, :cond_1f

    goto :goto_22

    .line 3873
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 3871
    :cond_22
    :goto_22
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3875
    :goto_27
    goto :goto_4

    .line 3876
    :cond_28
    monitor-exit v0

    .line 3877
    return-void

    .line 3876
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2a

    throw p1
.end method
