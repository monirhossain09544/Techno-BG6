.class public Lcom/android/internal/view/BaseIWindow;
.super Landroid/view/IWindow$Stub;
.source "BaseIWindow.java"


# instance fields
.field private blacklist mLastSeqId:I

.field private greylist-max-o mSession:Landroid/view/IWindowSession;


# direct methods
.method public constructor greylist-max-p <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/BaseIWindow;->mLastSeqId:I

    .line 42
    return-void
.end method


# virtual methods
.method public greylist-max-o closeSystemDialogs(Ljava/lang/String;)V
    .registers 2

    .line 102
    return-void
.end method

.method public blacklist dispatchAppVisibility(ZI)V
    .registers 3

    .line 83
    return-void
.end method

.method public greylist-max-o dispatchDragEvent(Landroid/view/DragEvent;)V
    .registers 3

    .line 110
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_f

    .line 112
    :try_start_7
    iget-object p1, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    .line 114
    goto :goto_f

    .line 113
    :catch_e
    move-exception p1

    .line 116
    :cond_f
    :goto_f
    return-void
.end method

.method public greylist-max-o dispatchGetNewSurface()V
    .registers 1

    .line 87
    return-void
.end method

.method public blacklist dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 6

    .line 120
    return-void
.end method

.method public blacklist dispatchWallpaperOffsets(FFFFF)V
    .registers 6

    .line 106
    return-void
.end method

.method public greylist-max-o dispatchWindowShown()V
    .registers 1

    .line 124
    return-void
.end method

.method public blacklist dumpWindow(Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    .line 144
    return-void
.end method

.method public greylist-max-o executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 5

    .line 91
    if-eqz p3, :cond_1a

    .line 93
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported command "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_18} :catch_19

    .line 96
    goto :goto_1a

    .line 94
    :catch_19
    move-exception p1

    .line 98
    :cond_1a
    :goto_1a
    return-void
.end method

.method public blacklist hideInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    .line 75
    return-void
.end method

.method public blacklist insetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V
    .registers 3

    .line 67
    return-void
.end method

.method public greylist-max-o moved(II)V
    .registers 3

    .line 79
    return-void
.end method

.method public greylist-max-o requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 3

    .line 128
    return-void
.end method

.method public blacklist requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .registers 4

    .line 133
    :try_start_0
    new-instance v0, Landroid/view/ScrollCaptureResponse$Builder;

    invoke-direct {v0}, Landroid/view/ScrollCaptureResponse$Builder;-><init>()V

    const-string v1, "Not Implemented"

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/ScrollCaptureResponse$Builder;->setDescription(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ScrollCaptureResponse$Builder;->build()Landroid/view/ScrollCaptureResponse;

    move-result-object v0

    .line 133
    invoke-interface {p1, v0}, Landroid/view/IScrollCaptureResponseListener;->onScrollCaptureResponse(Landroid/view/ScrollCaptureResponse;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 138
    goto :goto_14

    .line 136
    :catch_13
    move-exception p1

    .line 139
    :goto_14
    return-void
.end method

.method public blacklist resized(Landroid/view/WindowRelayoutResult;ZZIZZ)V
    .registers 7

    .line 55
    iget p3, p1, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    iget p4, p0, Lcom/android/internal/view/BaseIWindow;->mLastSeqId:I

    if-gt p3, p4, :cond_8

    if-eqz p2, :cond_16

    .line 56
    :cond_8
    iget p2, p1, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    iput p2, p0, Lcom/android/internal/view/BaseIWindow;->mLastSeqId:I

    .line 58
    :try_start_c
    iget-object p2, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    iget p1, p1, Landroid/view/WindowRelayoutResult;->syncSeqId:I

    const/4 p3, 0x0

    invoke-interface {p2, p0, p3, p1}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15

    .line 60
    goto :goto_16

    .line 59
    :catch_15
    move-exception p1

    .line 62
    :cond_16
    :goto_16
    return-void
.end method

.method public greylist-max-o setSession(Landroid/view/IWindowSession;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    .line 50
    return-void
.end method

.method public blacklist showInsets(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    .line 71
    return-void
.end method
