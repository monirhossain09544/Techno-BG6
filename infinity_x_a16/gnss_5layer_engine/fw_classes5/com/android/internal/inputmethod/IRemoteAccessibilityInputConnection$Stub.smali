.class public abstract Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;
.super Landroid/os/Binder;
.source "IRemoteAccessibilityInputConnection.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearMetaKeyStates:I = 0x9

.field static final blacklist TRANSACTION_commitText:I = 0x1

.field static final blacklist TRANSACTION_deleteSurroundingText:I = 0x4

.field static final blacklist TRANSACTION_getCursorCapsMode:I = 0x8

.field static final blacklist TRANSACTION_getSurroundingText:I = 0x3

.field static final blacklist TRANSACTION_performContextMenuAction:I = 0x7

.field static final blacklist TRANSACTION_performEditorAction:I = 0x6

.field static final blacklist TRANSACTION_sendKeyEvent:I = 0x5

.field static final blacklist TRANSACTION_setSelection:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "com.android.internal.inputmethod.IRemoteAccessibilityInputConnection"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .registers 3

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IRemoteAccessibilityInputConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    if-eqz v1, :cond_13

    .line 71
    check-cast v0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    return-object v0

    .line 73
    :cond_13
    new-instance v0, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 82
    packed-switch p0, :pswitch_data_20

    .line 122
    const/4 p0, 0x0

    return-object p0

    .line 118
    :pswitch_5
    const-string p0, "clearMetaKeyStates"

    return-object p0

    .line 114
    :pswitch_8
    const-string p0, "getCursorCapsMode"

    return-object p0

    .line 110
    :pswitch_b
    const-string p0, "performContextMenuAction"

    return-object p0

    .line 106
    :pswitch_e
    const-string p0, "performEditorAction"

    return-object p0

    .line 102
    :pswitch_11
    const-string p0, "sendKeyEvent"

    return-object p0

    .line 98
    :pswitch_14
    const-string p0, "deleteSurroundingText"

    return-object p0

    .line 94
    :pswitch_17
    const-string p0, "getSurroundingText"

    return-object p0

    .line 90
    :pswitch_1a
    const-string p0, "setSelection"

    return-object p0

    .line 86
    :pswitch_1d
    const-string p0, "commitText"

    return-object p0

    :pswitch_data_20
    .packed-switch 0x1
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

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 415
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 129
    invoke-static {p1}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    nop

    .line 134
    const-string v0, "com.android.internal.inputmethod.IRemoteAccessibilityInputConnection"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 135
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 138
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    return v1

    .line 141
    :cond_17
    packed-switch p1, :pswitch_data_10a

    .line 251
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 242
    :pswitch_20
    sget-object p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 247
    goto/16 :goto_109

    .line 230
    :pswitch_34
    sget-object p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 234
    sget-object p4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/infra/AndroidFuture;

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V

    .line 237
    goto/16 :goto_109

    .line 220
    :pswitch_50
    sget-object p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 225
    goto/16 :goto_109

    .line 210
    :pswitch_64
    sget-object p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    .line 215
    goto/16 :goto_109

    .line 200
    :pswitch_78
    sget-object p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 202
    sget-object p3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/KeyEvent;

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    .line 205
    goto/16 :goto_109

    .line 188
    :pswitch_90
    sget-object p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 195
    goto :goto_109

    .line 172
    :pswitch_a7
    sget-object p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 180
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/android/internal/infra/AndroidFuture;

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V

    .line 183
    goto :goto_109

    .line 160
    :pswitch_cd
    move-object v2, p0

    sget-object p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    .line 167
    goto :goto_109

    .line 146
    :pswitch_e5
    move-object v2, p0

    sget-object p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 148
    sget-object p3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 152
    sget-object v0, Landroid/view/inputmethod/TextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/TextAttribute;

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    .line 155
    nop

    .line 254
    :goto_109
    return v1

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_e5
        :pswitch_cd
        :pswitch_a7
        :pswitch_90
        :pswitch_78
        :pswitch_64
        :pswitch_50
        :pswitch_34
        :pswitch_20
    .end packed-switch
.end method
