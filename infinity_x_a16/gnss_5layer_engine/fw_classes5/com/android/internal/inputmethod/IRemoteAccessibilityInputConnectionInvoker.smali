.class final Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;
.super Ljava/lang/Object;
.source "IRemoteAccessibilityInputConnectionInvoker.java"


# instance fields
.field private final blacklist mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field private final blacklist mSessionId:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 39
    iput p2, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mSessionId:I

    .line 40
    return-void
.end method

.method public static blacklist create(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;
    .registers 3

    .line 51
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;-><init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-object v0
.end method


# virtual methods
.method public blacklist clearMetaKeyStates(I)V
    .registers 4

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 229
    goto :goto_b

    .line 228
    :catch_a
    move-exception p1

    .line 230
    :goto_b
    return-void
.end method

.method public blacklist cloneWithSessionId(I)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;
    .registers 4

    .line 64
    new-instance v0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;

    iget-object v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;-><init>(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-object v0
.end method

.method public blacklist commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .registers 6

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 99
    goto :goto_b

    .line 98
    :catch_a
    move-exception p1

    .line 100
    :goto_b
    return-void
.end method

.method blacklist createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;
    .registers 3

    .line 82
    new-instance v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mSessionId:I

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;-><init>(I)V

    return-object v0
.end method

.method public blacklist deleteSurroundingText(II)V
    .registers 5

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 153
    goto :goto_b

    .line 152
    :catch_a
    move-exception p1

    .line 154
    :goto_b
    return-void
.end method

.method public blacklist getCursorCapsMode(I)Lcom/android/internal/infra/AndroidFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 211
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 214
    goto :goto_13

    .line 212
    :catch_f
    move-exception p1

    .line 213
    invoke-virtual {v0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 215
    :goto_13
    return-object v0
.end method

.method public blacklist getSurroundingText(III)Lcom/android/internal/infra/AndroidFuture;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/view/inputmethod/SurroundingText;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v5, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v5}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 133
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    .line 137
    goto :goto_17

    .line 135
    :catch_12
    move-exception v0

    move-object p1, v0

    .line 136
    invoke-virtual {v5, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 138
    :goto_17
    return-object v5
.end method

.method public blacklist isSameConnection(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;)Z
    .registers 4

    .line 74
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 75
    return v0

    .line 77
    :cond_4
    iget-object v1, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v1, p1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public blacklist performContextMenuAction(I)V
    .registers 4

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 195
    goto :goto_b

    .line 194
    :catch_a
    move-exception p1

    .line 196
    :goto_b
    return-void
.end method

.method public blacklist performEditorAction(I)V
    .registers 4

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 181
    goto :goto_b

    .line 180
    :catch_a
    move-exception p1

    .line 182
    :goto_b
    return-void
.end method

.method public blacklist sendKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 167
    goto :goto_b

    .line 166
    :catch_a
    move-exception p1

    .line 168
    :goto_b
    return-void
.end method

.method public blacklist setSelection(II)V
    .registers 5

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->mConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnectionInvoker;->createHeader()Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;->setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 114
    goto :goto_b

    .line 113
    :catch_a
    move-exception p1

    .line 115
    :goto_b
    return-void
.end method
