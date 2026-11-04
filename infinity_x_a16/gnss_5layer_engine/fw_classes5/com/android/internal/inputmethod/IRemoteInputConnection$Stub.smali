.class public abstract Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;
.super Landroid/os/Binder;
.source "IRemoteInputConnection.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IRemoteInputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IRemoteInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_beginBatchEdit:I = 0x11

.field static final blacklist TRANSACTION_cancelCancellationSignal:I = 0x23

.field static final blacklist TRANSACTION_clearMetaKeyStates:I = 0x14

.field static final blacklist TRANSACTION_commitCompletion:I = 0xc

.field static final blacklist TRANSACTION_commitContent:I = 0x1f

.field static final blacklist TRANSACTION_commitCorrection:I = 0xd

.field static final blacklist TRANSACTION_commitText:I = 0xa

.field static final blacklist TRANSACTION_commitTextWithTextAttribute:I = 0xb

.field static final blacklist TRANSACTION_deleteSurroundingText:I = 0x5

.field static final blacklist TRANSACTION_deleteSurroundingTextInCodePoints:I = 0x6

.field static final blacklist TRANSACTION_endBatchEdit:I = 0x12

.field static final blacklist TRANSACTION_finishComposingText:I = 0x9

.field static final blacklist TRANSACTION_forgetCancellationSignal:I = 0x24

.field static final blacklist TRANSACTION_getCursorCapsMode:I = 0x3

.field static final blacklist TRANSACTION_getExtractedText:I = 0x4

.field static final blacklist TRANSACTION_getSelectedText:I = 0x1b

.field static final blacklist TRANSACTION_getSurroundingText:I = 0x20

.field static final blacklist TRANSACTION_getTextAfterCursor:I = 0x2

.field static final blacklist TRANSACTION_getTextBeforeCursor:I = 0x1

.field static final blacklist TRANSACTION_performContextMenuAction:I = 0x10

.field static final blacklist TRANSACTION_performEditorAction:I = 0xf

.field static final blacklist TRANSACTION_performHandwritingGesture:I = 0x17

.field static final blacklist TRANSACTION_performPrivateCommand:I = 0x16

.field static final blacklist TRANSACTION_performSpellCheck:I = 0x15

.field static final blacklist TRANSACTION_previewHandwritingGesture:I = 0x18

.field static final blacklist TRANSACTION_replaceText:I = 0x22

.field static final blacklist TRANSACTION_requestCursorUpdates:I = 0x1c

.field static final blacklist TRANSACTION_requestCursorUpdatesWithFilter:I = 0x1d

.field static final blacklist TRANSACTION_requestTextBoundsInfo:I = 0x1e

.field static final blacklist TRANSACTION_sendKeyEvent:I = 0x13

.field static final blacklist TRANSACTION_setComposingRegion:I = 0x19

.field static final blacklist TRANSACTION_setComposingRegionWithTextAttribute:I = 0x1a

.field static final blacklist TRANSACTION_setComposingText:I = 0x7

.field static final blacklist TRANSACTION_setComposingTextWithTextAttribute:I = 0x8

.field static final blacklist TRANSACTION_setImeConsumesInput:I = 0x21

.field static final blacklist TRANSACTION_setSelection:I = 0xe


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 138
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 139
    const-string v0, "com.android.internal.inputmethod.IRemoteInputConnection"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .registers 3

    .line 147
    if-nez p0, :cond_4

    .line 148
    const/4 p0, 0x0

    return-object p0

    .line 150
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IRemoteInputConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/inputmethod/IRemoteInputConnection;

    if-eqz v1, :cond_13

    .line 152
    check-cast v0, Lcom/android/internal/inputmethod/IRemoteInputConnection;

    return-object v0

    .line 154
    :cond_13
    new-instance v0, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 163
    packed-switch p0, :pswitch_data_72

    .line 311
    const/4 p0, 0x0

    return-object p0

    .line 307
    :pswitch_5
    const-string p0, "forgetCancellationSignal"

    return-object p0

    .line 303
    :pswitch_8
    const-string p0, "cancelCancellationSignal"

    return-object p0

    .line 299
    :pswitch_b
    const-string p0, "replaceText"

    return-object p0

    .line 295
    :pswitch_e
    const-string p0, "setImeConsumesInput"

    return-object p0

    .line 291
    :pswitch_11
    const-string p0, "getSurroundingText"

    return-object p0

    .line 287
    :pswitch_14
    const-string p0, "commitContent"

    return-object p0

    .line 283
    :pswitch_17
    const-string p0, "requestTextBoundsInfo"

    return-object p0

    .line 279
    :pswitch_1a
    const-string p0, "requestCursorUpdatesWithFilter"

    return-object p0

    .line 275
    :pswitch_1d
    const-string p0, "requestCursorUpdates"

    return-object p0

    .line 271
    :pswitch_20
    const-string p0, "getSelectedText"

    return-object p0

    .line 267
    :pswitch_23
    const-string p0, "setComposingRegionWithTextAttribute"

    return-object p0

    .line 263
    :pswitch_26
    const-string p0, "setComposingRegion"

    return-object p0

    .line 259
    :pswitch_29
    const-string p0, "previewHandwritingGesture"

    return-object p0

    .line 255
    :pswitch_2c
    const-string p0, "performHandwritingGesture"

    return-object p0

    .line 251
    :pswitch_2f
    const-string p0, "performPrivateCommand"

    return-object p0

    .line 247
    :pswitch_32
    const-string p0, "performSpellCheck"

    return-object p0

    .line 243
    :pswitch_35
    const-string p0, "clearMetaKeyStates"

    return-object p0

    .line 239
    :pswitch_38
    const-string p0, "sendKeyEvent"

    return-object p0

    .line 235
    :pswitch_3b
    const-string p0, "endBatchEdit"

    return-object p0

    .line 231
    :pswitch_3e
    const-string p0, "beginBatchEdit"

    return-object p0

    .line 227
    :pswitch_41
    const-string p0, "performContextMenuAction"

    return-object p0

    .line 223
    :pswitch_44
    const-string p0, "performEditorAction"

    return-object p0

    .line 219
    :pswitch_47
    const-string p0, "setSelection"

    return-object p0

    .line 215
    :pswitch_4a
    const-string p0, "commitCorrection"

    return-object p0

    .line 211
    :pswitch_4d
    const-string p0, "commitCompletion"

    return-object p0

    .line 207
    :pswitch_50
    const-string p0, "commitTextWithTextAttribute"

    return-object p0

    .line 203
    :pswitch_53
    const-string p0, "commitText"

    return-object p0

    .line 199
    :pswitch_56
    const-string p0, "finishComposingText"

    return-object p0

    .line 195
    :pswitch_59
    const-string p0, "setComposingTextWithTextAttribute"

    return-object p0

    .line 191
    :pswitch_5c
    const-string p0, "setComposingText"

    return-object p0

    .line 187
    :pswitch_5f
    const-string p0, "deleteSurroundingTextInCodePoints"

    return-object p0

    .line 183
    :pswitch_62
    const-string p0, "deleteSurroundingText"

    return-object p0

    .line 179
    :pswitch_65
    const-string p0, "getExtractedText"

    return-object p0

    .line 175
    :pswitch_68
    const-string p0, "getCursorCapsMode"

    return-object p0

    .line 171
    :pswitch_6b
    const-string p0, "getTextAfterCursor"

    return-object p0

    .line 167
    :pswitch_6e
    const-string p0, "getTextBeforeCursor"

    return-object p0

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 158
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1351
    const/16 v0, 0x23

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 318
    invoke-static {p1}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    nop

    .line 323
    const-string v3, "com.android.internal.inputmethod.IRemoteInputConnection"

    const/4 v7, 0x1

    if-lt p1, v7, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 324
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 327
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    return v7

    .line 330
    :cond_17
    packed-switch p1, :pswitch_data_3f4

    .line 760
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 753
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->forgetCancellationSignal(Landroid/os/IBinder;)V

    .line 756
    goto/16 :goto_3f2

    .line 745
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 746
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 747
    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->cancelCancellationSignal(Landroid/os/IBinder;)V

    .line 748
    goto/16 :goto_3f2

    .line 727
    :pswitch_37
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 731
    move v4, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 733
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 735
    move v6, v4

    move-object v4, v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 737
    sget-object v8, Landroid/view/inputmethod/TextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/TextAttribute;

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    move-object v0, p0

    move v2, v6

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->replaceText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    .line 740
    goto/16 :goto_3f2

    .line 717
    :pswitch_69
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 720
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->setImeConsumesInput(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V

    .line 722
    goto/16 :goto_3f2

    .line 701
    :pswitch_7d
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 705
    move v4, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 707
    move v5, v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 709
    sget-object v6, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/infra/AndroidFuture;

    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    move-object v0, p0

    move v2, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V

    .line 712
    goto/16 :goto_3f2

    .line 685
    :pswitch_a6
    sget-object v0, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 687
    sget-object v0, Landroid/view/inputmethod/InputContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputContentInfo;

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 691
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 693
    sget-object v5, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/infra/AndroidFuture;

    .line 694
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 695
    move-object v2, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->commitContent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)V

    .line 696
    goto/16 :goto_3f2

    .line 673
    :pswitch_d5
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 675
    sget-object v3, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    .line 677
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 679
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->requestTextBoundsInfo(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/graphics/RectF;Landroid/os/ResultReceiver;)V

    .line 680
    goto/16 :goto_3f2

    .line 657
    :pswitch_f5
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 661
    move v4, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 663
    move v5, v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 665
    sget-object v6, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/infra/AndroidFuture;

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 667
    move-object v0, p0

    move v2, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->requestCursorUpdatesWithFilter(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V

    .line 668
    goto/16 :goto_3f2

    .line 643
    :pswitch_11e
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 649
    sget-object v5, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/infra/AndroidFuture;

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 651
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->requestCursorUpdates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V

    .line 652
    goto/16 :goto_3f2

    .line 631
    :pswitch_13e
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 635
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->getSelectedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V

    .line 638
    goto/16 :goto_3f2

    .line 617
    :pswitch_15a
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 619
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 621
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 623
    sget-object v5, Landroid/view/inputmethod/TextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/TextAttribute;

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 625
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->setComposingRegionWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V

    .line 626
    goto/16 :goto_3f2

    .line 605
    :pswitch_17a
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->setComposingRegion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 612
    goto/16 :goto_3f2

    .line 593
    :pswitch_192
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 595
    sget-object v3, Landroid/view/inputmethod/ParcelableHandwritingGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ParcelableHandwritingGesture;

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->previewHandwritingGesture(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ParcelableHandwritingGesture;Landroid/os/IBinder;)V

    .line 600
    goto/16 :goto_3f2

    .line 581
    :pswitch_1ae
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 583
    sget-object v3, Landroid/view/inputmethod/ParcelableHandwritingGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ParcelableHandwritingGesture;

    .line 585
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->performHandwritingGesture(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ParcelableHandwritingGesture;Landroid/os/ResultReceiver;)V

    .line 588
    goto/16 :goto_3f2

    .line 569
    :pswitch_1ce
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 573
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->performPrivateCommand(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 576
    goto/16 :goto_3f2

    .line 561
    :pswitch_1ea
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->performSpellCheck(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    .line 564
    goto/16 :goto_3f2

    .line 551
    :pswitch_1fa
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 556
    goto/16 :goto_3f2

    .line 541
    :pswitch_20e
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 543
    sget-object v3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/KeyEvent;

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    .line 546
    goto/16 :goto_3f2

    .line 533
    :pswitch_226
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->endBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    .line 536
    goto/16 :goto_3f2

    .line 525
    :pswitch_236
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->beginBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    .line 528
    goto/16 :goto_3f2

    .line 515
    :pswitch_246
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 520
    goto/16 :goto_3f2

    .line 505
    :pswitch_25a
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 510
    goto/16 :goto_3f2

    .line 493
    :pswitch_26e
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 500
    goto/16 :goto_3f2

    .line 483
    :pswitch_286
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 485
    sget-object v3, Landroid/view/inputmethod/CorrectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/CorrectionInfo;

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->commitCorrection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V

    .line 488
    goto/16 :goto_3f2

    .line 473
    :pswitch_29e
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 475
    sget-object v3, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/CompletionInfo;

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->commitCompletion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V

    .line 478
    goto/16 :goto_3f2

    .line 459
    :pswitch_2b6
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 461
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 465
    sget-object v5, Landroid/view/inputmethod/TextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/TextAttribute;

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 467
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->commitTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    .line 468
    goto/16 :goto_3f2

    .line 447
    :pswitch_2da
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 449
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    .line 454
    goto/16 :goto_3f2

    .line 439
    :pswitch_2f6
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->finishComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    .line 442
    goto/16 :goto_3f2

    .line 425
    :pswitch_306
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 427
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 431
    sget-object v5, Landroid/view/inputmethod/TextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/TextAttribute;

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->setComposingTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    .line 434
    goto/16 :goto_3f2

    .line 413
    :pswitch_32a
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 415
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->setComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    .line 420
    goto/16 :goto_3f2

    .line 401
    :pswitch_346
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->deleteSurroundingTextInCodePoints(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 408
    goto/16 :goto_3f2

    .line 389
    :pswitch_35e
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 396
    goto/16 :goto_3f2

    .line 375
    :pswitch_376
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 377
    sget-object v3, Landroid/view/inputmethod/ExtractedTextRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/ExtractedTextRequest;

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 381
    sget-object v5, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/infra/AndroidFuture;

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->getExtractedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;ILcom/android/internal/infra/AndroidFuture;)V

    .line 384
    goto :goto_3f2

    .line 363
    :pswitch_399
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 367
    sget-object v4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V

    .line 370
    goto :goto_3f2

    .line 349
    :pswitch_3b4
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 355
    sget-object v5, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/infra/AndroidFuture;

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->getTextAfterCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V

    .line 358
    goto :goto_3f2

    .line 335
    :pswitch_3d3
    sget-object v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 341
    sget-object v5, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/infra/AndroidFuture;

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->getTextBeforeCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V

    .line 344
    nop

    .line 763
    :goto_3f2
    return v7

    nop

    :pswitch_data_3f4
    .packed-switch 0x1
        :pswitch_3d3
        :pswitch_3b4
        :pswitch_399
        :pswitch_376
        :pswitch_35e
        :pswitch_346
        :pswitch_32a
        :pswitch_306
        :pswitch_2f6
        :pswitch_2da
        :pswitch_2b6
        :pswitch_29e
        :pswitch_286
        :pswitch_26e
        :pswitch_25a
        :pswitch_246
        :pswitch_236
        :pswitch_226
        :pswitch_20e
        :pswitch_1fa
        :pswitch_1ea
        :pswitch_1ce
        :pswitch_1ae
        :pswitch_192
        :pswitch_17a
        :pswitch_15a
        :pswitch_13e
        :pswitch_11e
        :pswitch_f5
        :pswitch_d5
        :pswitch_a6
        :pswitch_7d
        :pswitch_69
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
