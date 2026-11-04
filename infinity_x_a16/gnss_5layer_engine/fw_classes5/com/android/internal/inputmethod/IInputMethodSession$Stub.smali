.class public abstract Lcom/android/internal/inputmethod/IInputMethodSession$Stub;
.super Landroid/os/Binder;
.source "IInputMethodSession.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IInputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IInputMethodSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IInputMethodSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_appPrivateCommand:I = 0x6

.field static final blacklist TRANSACTION_displayCompletions:I = 0x5

.field static final blacklist TRANSACTION_finishInput:I = 0xa

.field static final blacklist TRANSACTION_finishSession:I = 0x7

.field static final blacklist TRANSACTION_invalidateInput:I = 0xb

.field static final blacklist TRANSACTION_removeImeSurface:I = 0x9

.field static final blacklist TRANSACTION_updateCursor:I = 0x4

.field static final blacklist TRANSACTION_updateCursorAnchorInfo:I = 0x8

.field static final blacklist TRANSACTION_updateExtractedText:I = 0x1

.field static final blacklist TRANSACTION_updateSelection:I = 0x2

.field static final blacklist TRANSACTION_viewClicked:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "com.android.internal.inputmethod.IInputMethodSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodSession;
    .registers 3

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IInputMethodSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v1, :cond_13

    .line 77
    check-cast v0, Lcom/android/internal/inputmethod/IInputMethodSession;

    return-object v0

    .line 79
    :cond_13
    new-instance v0, Lcom/android/internal/inputmethod/IInputMethodSession$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 88
    packed-switch p0, :pswitch_data_26

    .line 136
    const/4 p0, 0x0

    return-object p0

    .line 132
    :pswitch_5
    const-string p0, "invalidateInput"

    return-object p0

    .line 128
    :pswitch_8
    const-string p0, "finishInput"

    return-object p0

    .line 124
    :pswitch_b
    const-string p0, "removeImeSurface"

    return-object p0

    .line 120
    :pswitch_e
    const-string p0, "updateCursorAnchorInfo"

    return-object p0

    .line 116
    :pswitch_11
    const-string p0, "finishSession"

    return-object p0

    .line 112
    :pswitch_14
    const-string p0, "appPrivateCommand"

    return-object p0

    .line 108
    :pswitch_17
    const-string p0, "displayCompletions"

    return-object p0

    .line 104
    :pswitch_1a
    const-string p0, "updateCursor"

    return-object p0

    .line 100
    :pswitch_1d
    const-string p0, "viewClicked"

    return-object p0

    .line 96
    :pswitch_20
    const-string p0, "updateSelection"

    return-object p0

    .line 92
    :pswitch_23
    const-string p0, "updateExtractedText"

    return-object p0

    :pswitch_data_26
    .packed-switch 0x1
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

    .line 83
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 429
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 143
    invoke-static {p1}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 147
    nop

    .line 148
    const-string v0, "com.android.internal.inputmethod.IInputMethodSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 149
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 152
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return v1

    .line 155
    :cond_17
    packed-switch p1, :pswitch_data_cc

    .line 256
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 245
    :pswitch_20
    sget-object p1, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/EditorInfo;

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object p3

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    .line 252
    goto/16 :goto_cb

    .line 239
    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->finishInput()V

    .line 240
    goto/16 :goto_cb

    .line 234
    :pswitch_41
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->removeImeSurface()V

    .line 235
    goto/16 :goto_cb

    .line 227
    :pswitch_46
    sget-object p1, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/CursorAnchorInfo;

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 230
    goto/16 :goto_cb

    .line 221
    :pswitch_56
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->finishSession()V

    .line 222
    goto/16 :goto_cb

    .line 212
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 214
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 217
    goto :goto_cb

    .line 204
    :pswitch_6e
    sget-object p1, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/inputmethod/CompletionInfo;

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 207
    goto :goto_cb

    .line 196
    :pswitch_7d
    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->updateCursor(Landroid/graphics/Rect;)V

    .line 199
    goto :goto_cb

    .line 188
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->viewClicked(Z)V

    .line 191
    goto :goto_cb

    .line 170
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->updateSelection(IIIIII)V

    .line 183
    goto :goto_cb

    .line 160
    :pswitch_b7
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 162
    sget-object p3, Landroid/view/inputmethod/ExtractedText;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/inputmethod/ExtractedText;

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethodSession$Stub;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 165
    nop

    .line 259
    :goto_cb
    return v1

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_b7
        :pswitch_97
        :pswitch_8c
        :pswitch_7d
        :pswitch_6e
        :pswitch_5b
        :pswitch_56
        :pswitch_46
        :pswitch_41
        :pswitch_3c
        :pswitch_20
    .end packed-switch
.end method
