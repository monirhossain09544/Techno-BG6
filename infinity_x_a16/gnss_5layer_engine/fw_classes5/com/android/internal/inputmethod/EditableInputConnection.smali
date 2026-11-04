.class public final Lcom/android/internal/inputmethod/EditableInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "EditableInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/DumpableInputConnection;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "EditableInputConnection"


# instance fields
.field private blacklist mBatchEditNesting:I

.field private final blacklist mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/TextView;)V
    .registers 3

    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 77
    iput-object p1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    .line 78
    return-void
.end method

.method static synthetic blacklist lambda$performHandwritingGesture$1(Ljava/util/function/IntConsumer;I)V
    .registers 2

    .line 322
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestTextBoundsInfo$0(Ljava/util/function/Consumer;Landroid/view/inputmethod/TextBoundsInfoResult;)V
    .registers 2

    .line 285
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist beginBatchEdit()Z
    .registers 3

    .line 91
    monitor-enter p0

    .line 92
    :try_start_1
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    if-ltz v0, :cond_12

    .line 93
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 94
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    .line 95
    monitor-exit p0

    return v1

    .line 97
    :cond_12
    monitor-exit p0

    .line 98
    const/4 v0, 0x0

    return v0

    .line 97
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public whitelist clearMetaKeyStates(I)Z
    .registers 5

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 138
    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 139
    :cond_8
    iget-object v1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    .line 140
    if-eqz v1, :cond_17

    .line 142
    :try_start_10
    iget-object v2, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-interface {v1, v2, v0, p1}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    :try_end_15
    .catch Ljava/lang/AbstractMethodError; {:try_start_10 .. :try_end_15} :catch_16

    .line 146
    goto :goto_17

    .line 143
    :catch_16
    move-exception p1

    .line 148
    :cond_17
    :goto_17
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist closeConnection()V
    .registers 2

    .line 125
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->closeConnection()V

    .line 126
    monitor-enter p0

    .line 127
    :goto_4
    :try_start_4
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    if-lez v0, :cond_c

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/EditableInputConnection;->endBatchEdit()Z

    goto :goto_4

    .line 131
    :cond_c
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    .line 132
    monitor-exit p0

    .line 133
    return-void

    .line 132
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public whitelist commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 155
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    .line 156
    iget-object p1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->endBatchEdit()V

    .line 157
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 167
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 168
    iget-object p1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->endBatchEdit()V

    .line 169
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;I)Z
    .registers 4

    .line 216
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_9

    .line 217
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1

    .line 219
    :cond_9
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    .line 220
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    .line 221
    iget-object p2, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 223
    return p1
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 335
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 336
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_22

    .line 338
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 339
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 340
    const-wide v2, 0x10500000003L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 341
    const-wide v1, 0x10500000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 343
    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/inputmethod/EditableInputConnection;->getCursorCapsMode(I)I

    move-result v0

    const-wide v1, 0x10500000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 344
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 345
    return-void
.end method

.method public whitelist endBatchEdit()Z
    .registers 4

    .line 103
    monitor-enter p0

    .line 104
    :try_start_1
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    const/4 v1, 0x0

    if-lez v0, :cond_18

    .line 109
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 110
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    .line 111
    iget v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mBatchEditNesting:I

    if-lez v0, :cond_16

    move v1, v2

    :cond_16
    monitor-exit p0

    return v1

    .line 113
    :cond_18
    monitor-exit p0

    .line 114
    return v1

    .line 113
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public blacklist endComposingRegionEditInternal()V
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->notifyContentCaptureTextChanged()V

    .line 121
    return-void
.end method

.method public whitelist getEditable()Landroid/text/Editable;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    .line 83
    if-eqz v0, :cond_9

    .line 84
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 86
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 5

    .line 190
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    .line 191
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 192
    iget-object v1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 193
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1a

    .line 194
    iget-object p2, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V

    .line 196
    :cond_1a
    return-object v0

    .line 199
    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist performContextMenuAction(I)Z
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 183
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 184
    iget-object p1, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->endBatchEdit()V

    .line 185
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist performEditorAction(I)Z
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onEditorAction(I)V

    .line 176
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist performHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 5

    .line 302
    instance-of v0, p1, Landroid/view/inputmethod/SelectGesture;

    if-eqz v0, :cond_d

    .line 303
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    check-cast p1, Landroid/view/inputmethod/SelectGesture;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->performHandwritingSelectGesture(Landroid/view/inputmethod/SelectGesture;)I

    move-result p1

    goto :goto_69

    .line 304
    :cond_d
    instance-of v0, p1, Landroid/view/inputmethod/SelectRangeGesture;

    if-eqz v0, :cond_1a

    .line 305
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    check-cast p1, Landroid/view/inputmethod/SelectRangeGesture;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->performHandwritingSelectRangeGesture(Landroid/view/inputmethod/SelectRangeGesture;)I

    move-result p1

    goto :goto_69

    .line 306
    :cond_1a
    instance-of v0, p1, Landroid/view/inputmethod/DeleteGesture;

    if-eqz v0, :cond_27

    .line 307
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    check-cast p1, Landroid/view/inputmethod/DeleteGesture;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->performHandwritingDeleteGesture(Landroid/view/inputmethod/DeleteGesture;)I

    move-result p1

    goto :goto_69

    .line 308
    :cond_27
    instance-of v0, p1, Landroid/view/inputmethod/DeleteRangeGesture;

    if-eqz v0, :cond_34

    .line 309
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    check-cast p1, Landroid/view/inputmethod/DeleteRangeGesture;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->performHandwritingDeleteRangeGesture(Landroid/view/inputmethod/DeleteRangeGesture;)I

    move-result p1

    goto :goto_69

    .line 310
    :cond_34
    instance-of v0, p1, Landroid/view/inputmethod/InsertGesture;

    if-eqz v0, :cond_41

    .line 311
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    check-cast p1, Landroid/view/inputmethod/InsertGesture;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->performHandwritingInsertGesture(Landroid/view/inputmethod/InsertGesture;)I

    move-result p1

    goto :goto_69

    .line 312
    :cond_41
    instance-of v0, p1, Landroid/view/inputmethod/RemoveSpaceGesture;

    if-eqz v0, :cond_4e

    .line 313
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    check-cast p1, Landroid/view/inputmethod/RemoveSpaceGesture;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->performHandwritingRemoveSpaceGesture(Landroid/view/inputmethod/RemoveSpaceGesture;)I

    move-result p1

    goto :goto_69

    .line 314
    :cond_4e
    instance-of v0, p1, Landroid/view/inputmethod/JoinOrSplitGesture;

    if-eqz v0, :cond_5b

    .line 315
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    check-cast p1, Landroid/view/inputmethod/JoinOrSplitGesture;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->performHandwritingJoinOrSplitGesture(Landroid/view/inputmethod/JoinOrSplitGesture;)I

    move-result p1

    goto :goto_69

    .line 316
    :cond_5b
    instance-of v0, p1, Landroid/view/inputmethod/InsertModeGesture;

    if-eqz v0, :cond_68

    .line 317
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    check-cast p1, Landroid/view/inputmethod/InsertModeGesture;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->performHandwritingInsertModeGesture(Landroid/view/inputmethod/InsertModeGesture;)I

    move-result p1

    goto :goto_69

    .line 319
    :cond_68
    const/4 p1, 0x2

    .line 321
    :goto_69
    if-eqz p2, :cond_75

    if-eqz p3, :cond_75

    .line 322
    new-instance v0, Lcom/android/internal/inputmethod/EditableInputConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3, p1}, Lcom/android/internal/inputmethod/EditableInputConnection$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 324
    :cond_75
    return-void
.end method

.method public whitelist performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 211
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist performSpellCheck()Z
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onPerformSpellCheck()V

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist previewHandwritingGesture(Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroid/os/CancellationSignal;)Z
    .registers 4

    .line 330
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->previewHandwritingGesture(Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroid/os/CancellationSignal;)Z

    move-result p1

    return p1
.end method

.method public whitelist requestCursorUpdates(I)Z
    .registers 4

    .line 248
    and-int/lit8 v0, p1, -0x80

    .line 249
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 254
    return v1

    .line 257
    :cond_6
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_b

    .line 261
    return v1

    .line 263
    :cond_b
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->setUpdateCursorAnchorInfoMode(I)V

    .line 264
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1d

    .line 265
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    and-int/lit8 v1, p1, 0x3

    and-int/lit8 p1, p1, 0x7c

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->onRequestCursorUpdatesInternal(II)V

    .line 268
    :cond_1d
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist requestCursorUpdates(II)Z
    .registers 3

    .line 230
    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/EditableInputConnection;->requestCursorUpdates(I)Z

    move-result p1

    return p1
.end method

.method public whitelist requestTextBoundsInfo(Landroid/graphics/RectF;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/TextBoundsInfoResult;",
            ">;)V"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->getTextBoundsInfo(Landroid/graphics/RectF;)Landroid/view/inputmethod/TextBoundsInfo;

    move-result-object p1

    .line 277
    if-eqz p1, :cond_a

    .line 278
    const/4 v0, 0x1

    goto :goto_b

    .line 280
    :cond_a
    const/4 v0, 0x2

    .line 282
    :goto_b
    new-instance v1, Landroid/view/inputmethod/TextBoundsInfoResult;

    invoke-direct {v1, v0, p1}, Landroid/view/inputmethod/TextBoundsInfoResult;-><init>(ILandroid/view/inputmethod/TextBoundsInfo;)V

    .line 285
    new-instance p1, Lcom/android/internal/inputmethod/EditableInputConnection$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3, v1}, Lcom/android/internal/inputmethod/EditableInputConnection$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/view/inputmethod/TextBoundsInfoResult;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 286
    return-void
.end method

.method public whitelist setImeConsumesInput(Z)Z
    .registers 3

    .line 290
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_9

    .line 291
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->setImeConsumesInput(Z)Z

    move-result p1

    return p1

    .line 293
    :cond_9
    iget-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImeConsumesInput(Z)V

    .line 294
    const/4 p1, 0x1

    return p1
.end method
