.class public abstract Lcom/android/internal/inputmethod/IInputMethod$Stub;
.super Landroid/os/Binder;
.source "IInputMethod.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IInputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IInputMethod$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_bindInput:I = 0x3

.field static final blacklist TRANSACTION_canStartStylusHandwriting:I = 0xd

.field static final blacklist TRANSACTION_changeInputMethodSubtype:I = 0xc

.field static final blacklist TRANSACTION_commitHandwritingDelegationTextIfAvailable:I = 0xf

.field static final blacklist TRANSACTION_createSession:I = 0x7

.field static final blacklist TRANSACTION_discardHandwritingDelegationText:I = 0x10

.field static final blacklist TRANSACTION_finishStylusHandwriting:I = 0x12

.field static final blacklist TRANSACTION_hideSoftInput:I = 0xa

.field static final blacklist TRANSACTION_initInkWindow:I = 0x11

.field static final blacklist TRANSACTION_initializeInternal:I = 0x1

.field static final blacklist TRANSACTION_onCreateInlineSuggestionsRequest:I = 0x2

.field static final blacklist TRANSACTION_onNavButtonFlagsChanged:I = 0x6

.field static final blacklist TRANSACTION_removeStylusHandwritingWindow:I = 0x13

.field static final blacklist TRANSACTION_setSessionEnabled:I = 0x8

.field static final blacklist TRANSACTION_setStylusWindowIdleTimeoutForTest:I = 0x14

.field static final blacklist TRANSACTION_showSoftInput:I = 0x9

.field static final blacklist TRANSACTION_startInput:I = 0x5

.field static final blacklist TRANSACTION_startStylusHandwriting:I = 0xe

.field static final blacklist TRANSACTION_unbindInput:I = 0x4

.field static final blacklist TRANSACTION_updateEditorToolType:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 88
    const-string v0, "com.android.internal.inputmethod.IInputMethod"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethod;
    .registers 3

    .line 96
    if-nez p0, :cond_4

    .line 97
    const/4 p0, 0x0

    return-object p0

    .line 99
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IInputMethod"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/inputmethod/IInputMethod;

    if-eqz v1, :cond_13

    .line 101
    check-cast v0, Lcom/android/internal/inputmethod/IInputMethod;

    return-object v0

    .line 103
    :cond_13
    new-instance v0, Lcom/android/internal/inputmethod/IInputMethod$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/inputmethod/IInputMethod$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 112
    packed-switch p0, :pswitch_data_42

    .line 196
    const/4 p0, 0x0

    return-object p0

    .line 192
    :pswitch_5
    const-string p0, "setStylusWindowIdleTimeoutForTest"

    return-object p0

    .line 188
    :pswitch_8
    const-string p0, "removeStylusHandwritingWindow"

    return-object p0

    .line 184
    :pswitch_b
    const-string p0, "finishStylusHandwriting"

    return-object p0

    .line 180
    :pswitch_e
    const-string p0, "initInkWindow"

    return-object p0

    .line 176
    :pswitch_11
    const-string p0, "discardHandwritingDelegationText"

    return-object p0

    .line 172
    :pswitch_14
    const-string p0, "commitHandwritingDelegationTextIfAvailable"

    return-object p0

    .line 168
    :pswitch_17
    const-string p0, "startStylusHandwriting"

    return-object p0

    .line 164
    :pswitch_1a
    const-string p0, "canStartStylusHandwriting"

    return-object p0

    .line 160
    :pswitch_1d
    const-string p0, "changeInputMethodSubtype"

    return-object p0

    .line 156
    :pswitch_20
    const-string p0, "updateEditorToolType"

    return-object p0

    .line 152
    :pswitch_23
    const-string p0, "hideSoftInput"

    return-object p0

    .line 148
    :pswitch_26
    const-string p0, "showSoftInput"

    return-object p0

    .line 144
    :pswitch_29
    const-string p0, "setSessionEnabled"

    return-object p0

    .line 140
    :pswitch_2c
    const-string p0, "createSession"

    return-object p0

    .line 136
    :pswitch_2f
    const-string p0, "onNavButtonFlagsChanged"

    return-object p0

    .line 132
    :pswitch_32
    const-string p0, "startInput"

    return-object p0

    .line 128
    :pswitch_35
    const-string p0, "unbindInput"

    return-object p0

    .line 124
    :pswitch_38
    const-string p0, "bindInput"

    return-object p0

    .line 120
    :pswitch_3b
    const-string p0, "onCreateInlineSuggestionsRequest"

    return-object p0

    .line 116
    :pswitch_3e
    const-string p0, "initializeInternal"

    return-object p0

    nop

    :pswitch_data_42
    .packed-switch 0x1
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

    .line 107
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 663
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 203
    invoke-static {p1}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    nop

    .line 208
    const-string v0, "com.android.internal.inputmethod.IInputMethod"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 209
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 212
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    return v1

    .line 215
    :cond_17
    packed-switch p1, :pswitch_data_138

    .line 377
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 370
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->setStylusWindowIdleTimeoutForTest(J)V

    .line 373
    goto/16 :goto_137

    .line 364
    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->removeStylusHandwritingWindow()V

    .line 365
    goto/16 :goto_137

    .line 359
    :pswitch_30
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->finishStylusHandwriting()V

    .line 360
    goto/16 :goto_137

    .line 354
    :pswitch_35
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->initInkWindow()V

    .line 355
    goto/16 :goto_137

    .line 349
    :pswitch_3a
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->discardHandwritingDelegationText()V

    .line 350
    goto/16 :goto_137

    .line 344
    :pswitch_3f
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->commitHandwritingDelegationTextIfAvailable()V

    .line 345
    goto/16 :goto_137

    .line 333
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 335
    sget-object p3, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/InputChannel;

    .line 337
    sget-object p4, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p4

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V

    .line 340
    goto/16 :goto_137

    .line 319
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    move-result-object p3

    .line 323
    sget-object p4, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/inputmethod/CursorAnchorInfo;

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->canStartStylusHandwriting(ILcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)V

    .line 328
    goto/16 :goto_137

    .line 311
    :pswitch_7e
    sget-object p1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodSubtype;

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 314
    goto/16 :goto_137

    .line 303
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->updateEditorToolType(I)V

    .line 306
    goto/16 :goto_137

    .line 295
    :pswitch_9a
    sget-object p1, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/ImeTracker$Token;

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->hideSoftInput(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 298
    goto/16 :goto_137

    .line 287
    :pswitch_aa
    sget-object p1, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/ImeTracker$Token;

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->showSoftInput(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 290
    goto/16 :goto_137

    .line 277
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodSession;

    move-result-object p1

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->setSessionEnabled(Lcom/android/internal/inputmethod/IInputMethodSession;Z)V

    .line 282
    goto :goto_137

    .line 267
    :pswitch_cd
    sget-object p1, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputChannel;

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/inputmethod/IInputMethodSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodSessionCallback;

    move-result-object p3

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->createSession(Landroid/view/InputChannel;Lcom/android/internal/inputmethod/IInputMethodSessionCallback;)V

    .line 272
    goto :goto_137

    .line 259
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->onNavButtonFlagsChanged(I)V

    .line 262
    goto :goto_137

    .line 251
    :pswitch_ef
    sget-object p1, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->startInput(Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;)V

    .line 254
    goto :goto_137

    .line 245
    :pswitch_fe
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->unbindInput()V

    .line 246
    goto :goto_137

    .line 238
    :pswitch_102
    sget-object p1, Landroid/view/inputmethod/InputBinding;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputBinding;

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    .line 241
    goto :goto_137

    .line 228
    :pswitch_111
    sget-object p1, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object p3

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V

    .line 233
    goto :goto_137

    .line 220
    :pswitch_128
    sget-object p1, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/inputmethod/IInputMethod$InitParams;

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->initializeInternal(Lcom/android/internal/inputmethod/IInputMethod$InitParams;)V

    .line 223
    nop

    .line 380
    :goto_137
    return v1

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_128
        :pswitch_111
        :pswitch_102
        :pswitch_fe
        :pswitch_ef
        :pswitch_e4
        :pswitch_cd
        :pswitch_ba
        :pswitch_aa
        :pswitch_9a
        :pswitch_8e
        :pswitch_7e
        :pswitch_5e
        :pswitch_44
        :pswitch_3f
        :pswitch_3a
        :pswitch_35
        :pswitch_30
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
