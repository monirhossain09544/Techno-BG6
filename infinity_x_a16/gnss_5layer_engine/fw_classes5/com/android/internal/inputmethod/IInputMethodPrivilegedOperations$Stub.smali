.class public abstract Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;
.super Landroid/os/Binder;
.source "IInputMethodPrivilegedOperations.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createInputContentUriToken:I = 0x3

.field static final blacklist TRANSACTION_hideMySoftInput:I = 0x7

.field static final blacklist TRANSACTION_notifyUserActionAsync:I = 0xe

.field static final blacklist TRANSACTION_onImeSwitchButtonClickFromClient:I = 0xd

.field static final blacklist TRANSACTION_onStylusHandwritingReady:I = 0xf

.field static final blacklist TRANSACTION_reportFullscreenModeAsync:I = 0x4

.field static final blacklist TRANSACTION_reportStartInputAsync:I = 0x2

.field static final blacklist TRANSACTION_resetStylusHandwriting:I = 0x10

.field static final blacklist TRANSACTION_setHandwritingSurfaceNotTouchable:I = 0x12

.field static final blacklist TRANSACTION_setHandwritingTouchableRegion:I = 0x13

.field static final blacklist TRANSACTION_setImeWindowStatusAsync:I = 0x1

.field static final blacklist TRANSACTION_setInputMethod:I = 0x5

.field static final blacklist TRANSACTION_setInputMethodAndSubtype:I = 0x6

.field static final blacklist TRANSACTION_shouldOfferSwitchingToNextInputMethod:I = 0xc

.field static final blacklist TRANSACTION_showMySoftInput:I = 0x8

.field static final blacklist TRANSACTION_switchKeyboardLayoutAsync:I = 0x11

.field static final blacklist TRANSACTION_switchToNextInputMethod:I = 0xb

.field static final blacklist TRANSACTION_switchToPreviousInputMethod:I = 0xa

.field static final blacklist TRANSACTION_updateStatusIconAsync:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 88
    const-string v0, "com.android.internal.inputmethod.IInputMethodPrivilegedOperations"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    .registers 3

    .line 96
    if-nez p0, :cond_4

    .line 97
    const/4 p0, 0x0

    return-object p0

    .line 99
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IInputMethodPrivilegedOperations"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    if-eqz v1, :cond_13

    .line 101
    check-cast v0, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    return-object v0

    .line 103
    :cond_13
    new-instance v0, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 112
    packed-switch p0, :pswitch_data_3e

    .line 192
    const/4 p0, 0x0

    return-object p0

    .line 188
    :pswitch_5
    const-string p0, "setHandwritingTouchableRegion"

    return-object p0

    .line 184
    :pswitch_8
    const-string p0, "setHandwritingSurfaceNotTouchable"

    return-object p0

    .line 180
    :pswitch_b
    const-string p0, "switchKeyboardLayoutAsync"

    return-object p0

    .line 176
    :pswitch_e
    const-string p0, "resetStylusHandwriting"

    return-object p0

    .line 172
    :pswitch_11
    const-string p0, "onStylusHandwritingReady"

    return-object p0

    .line 168
    :pswitch_14
    const-string p0, "notifyUserActionAsync"

    return-object p0

    .line 164
    :pswitch_17
    const-string p0, "onImeSwitchButtonClickFromClient"

    return-object p0

    .line 160
    :pswitch_1a
    const-string p0, "shouldOfferSwitchingToNextInputMethod"

    return-object p0

    .line 156
    :pswitch_1d
    const-string p0, "switchToNextInputMethod"

    return-object p0

    .line 152
    :pswitch_20
    const-string p0, "switchToPreviousInputMethod"

    return-object p0

    .line 148
    :pswitch_23
    const-string p0, "updateStatusIconAsync"

    return-object p0

    .line 144
    :pswitch_26
    const-string p0, "showMySoftInput"

    return-object p0

    .line 140
    :pswitch_29
    const-string p0, "hideMySoftInput"

    return-object p0

    .line 136
    :pswitch_2c
    const-string p0, "setInputMethodAndSubtype"

    return-object p0

    .line 132
    :pswitch_2f
    const-string p0, "setInputMethod"

    return-object p0

    .line 128
    :pswitch_32
    const-string p0, "reportFullscreenModeAsync"

    return-object p0

    .line 124
    :pswitch_35
    const-string p0, "createInputContentUriToken"

    return-object p0

    .line 120
    :pswitch_38
    const-string p0, "reportStartInputAsync"

    return-object p0

    .line 116
    :pswitch_3b
    const-string p0, "setImeWindowStatusAsync"

    return-object p0

    :pswitch_data_3e
    .packed-switch 0x1
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

    .line 667
    const/16 v0, 0x12

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 199
    invoke-static {p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 203
    nop

    .line 204
    const-string v0, "com.android.internal.inputmethod.IInputMethodPrivilegedOperations"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 205
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 208
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    return v1

    .line 211
    :cond_17
    packed-switch p1, :pswitch_data_156

    .line 386
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 379
    :pswitch_1f
    sget-object p1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Region;

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setHandwritingTouchableRegion(Landroid/graphics/Region;)V

    .line 382
    goto/16 :goto_155

    .line 371
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setHandwritingSurfaceNotTouchable(Z)V

    .line 374
    goto/16 :goto_155

    .line 363
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->switchKeyboardLayoutAsync(I)V

    .line 366
    goto/16 :goto_155

    .line 355
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->resetStylusHandwriting(I)V

    .line 358
    goto/16 :goto_155

    .line 345
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->onStylusHandwritingReady(II)V

    .line 350
    goto/16 :goto_155

    .line 339
    :pswitch_63
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->notifyUserActionAsync()V

    .line 340
    goto/16 :goto_155

    .line 332
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->onImeSwitchButtonClickFromClient(I)V

    .line 335
    goto/16 :goto_155

    .line 324
    :pswitch_74
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->shouldOfferSwitchingToNextInputMethod(Lcom/android/internal/infra/AndroidFuture;)V

    .line 327
    goto/16 :goto_155

    .line 314
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 316
    sget-object p3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/infra/AndroidFuture;

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->switchToNextInputMethod(ZLcom/android/internal/infra/AndroidFuture;)V

    .line 319
    goto/16 :goto_155

    .line 306
    :pswitch_98
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->switchToPreviousInputMethod(Lcom/android/internal/infra/AndroidFuture;)V

    .line 309
    goto/16 :goto_155

    .line 296
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->updateStatusIconAsync(Ljava/lang/String;I)V

    .line 301
    goto/16 :goto_155

    .line 286
    :pswitch_b8
    sget-object p1, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/ImeTracker$Token;

    .line 288
    sget-object p3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/infra/AndroidFuture;

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->showMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/internal/infra/AndroidFuture;)V

    .line 291
    goto/16 :goto_155

    .line 276
    :pswitch_d0
    sget-object p1, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/ImeTracker$Token;

    .line 278
    sget-object p3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/infra/AndroidFuture;

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->hideMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/internal/infra/AndroidFuture;)V

    .line 281
    goto :goto_155

    .line 264
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 266
    sget-object p3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 268
    sget-object p4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/infra/AndroidFuture;

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/internal/infra/AndroidFuture;)V

    .line 271
    goto :goto_155

    .line 254
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 256
    sget-object p3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/infra/AndroidFuture;

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setInputMethod(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 259
    goto :goto_155

    .line 246
    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->reportFullscreenModeAsync(Z)V

    .line 249
    goto :goto_155

    .line 234
    :pswitch_120
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 238
    sget-object p4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/infra/AndroidFuture;

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 241
    goto :goto_155

    .line 226
    :pswitch_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->reportStartInputAsync(Landroid/os/IBinder;)V

    .line 229
    goto :goto_155

    .line 216
    :pswitch_146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;->setImeWindowStatusAsync(II)V

    .line 221
    nop

    .line 389
    :goto_155
    return v1

    :pswitch_data_156
    .packed-switch 0x1
        :pswitch_146
        :pswitch_13b
        :pswitch_120
        :pswitch_115
        :pswitch_102
        :pswitch_e7
        :pswitch_d0
        :pswitch_b8
        :pswitch_a8
        :pswitch_98
        :pswitch_84
        :pswitch_74
        :pswitch_68
        :pswitch_63
        :pswitch_53
        :pswitch_47
        :pswitch_3b
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method
