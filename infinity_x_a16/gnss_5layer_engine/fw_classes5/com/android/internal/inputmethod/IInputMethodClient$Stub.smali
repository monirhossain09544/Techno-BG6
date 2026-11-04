.class public abstract Lcom/android/internal/inputmethod/IInputMethodClient$Stub;
.super Landroid/os/Binder;
.source "IInputMethodClient.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IInputMethodClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IInputMethodClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IInputMethodClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onBindAccessibilityService:I = 0x3

.field static final blacklist TRANSACTION_onBindMethod:I = 0x1

.field static final blacklist TRANSACTION_onStartInputResult:I = 0x2

.field static final blacklist TRANSACTION_onUnbindAccessibilityService:I = 0x5

.field static final blacklist TRANSACTION_onUnbindMethod:I = 0x4

.field static final blacklist TRANSACTION_reportFullscreenMode:I = 0xa

.field static final blacklist TRANSACTION_scheduleStartInputIfNecessary:I = 0x9

.field static final blacklist TRANSACTION_setActive:I = 0x6

.field static final blacklist TRANSACTION_setImeTraceEnabled:I = 0xb

.field static final blacklist TRANSACTION_setImeVisibility:I = 0x8

.field static final blacklist TRANSACTION_setInteractive:I = 0x7

.field static final blacklist TRANSACTION_throwExceptionFromSystem:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "com.android.internal.inputmethod.IInputMethodClient"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;
    .registers 3

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IInputMethodClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/inputmethod/IInputMethodClient;

    if-eqz v1, :cond_13

    .line 80
    check-cast v0, Lcom/android/internal/inputmethod/IInputMethodClient;

    return-object v0

    .line 82
    :cond_13
    new-instance v0, Lcom/android/internal/inputmethod/IInputMethodClient$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 91
    packed-switch p0, :pswitch_data_2a

    .line 143
    const/4 p0, 0x0

    return-object p0

    .line 139
    :pswitch_5
    const-string p0, "throwExceptionFromSystem"

    return-object p0

    .line 135
    :pswitch_8
    const-string p0, "setImeTraceEnabled"

    return-object p0

    .line 131
    :pswitch_b
    const-string p0, "reportFullscreenMode"

    return-object p0

    .line 127
    :pswitch_e
    const-string p0, "scheduleStartInputIfNecessary"

    return-object p0

    .line 123
    :pswitch_11
    const-string p0, "setImeVisibility"

    return-object p0

    .line 119
    :pswitch_14
    const-string p0, "setInteractive"

    return-object p0

    .line 115
    :pswitch_17
    const-string p0, "setActive"

    return-object p0

    .line 111
    :pswitch_1a
    const-string p0, "onUnbindAccessibilityService"

    return-object p0

    .line 107
    :pswitch_1d
    const-string p0, "onUnbindMethod"

    return-object p0

    .line 103
    :pswitch_20
    const-string p0, "onBindAccessibilityService"

    return-object p0

    .line 99
    :pswitch_23
    const-string p0, "onStartInputResult"

    return-object p0

    .line 95
    :pswitch_26
    const-string p0, "onBindMethod"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
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

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 463
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 150
    invoke-static {p1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 154
    nop

    .line 155
    const-string v0, "com.android.internal.inputmethod.IInputMethodClient"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 156
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 159
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return v1

    .line 162
    :cond_17
    packed-switch p1, :pswitch_data_d6

    .line 276
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 269
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->throwExceptionFromSystem(Ljava/lang/String;)V

    .line 272
    goto/16 :goto_d4

    .line 261
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->setImeTraceEnabled(Z)V

    .line 264
    goto/16 :goto_d4

    .line 253
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->reportFullscreenMode(Z)V

    .line 256
    goto/16 :goto_d4

    .line 245
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->scheduleStartInputIfNecessary(Z)V

    .line 248
    goto/16 :goto_d4

    .line 235
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 237
    sget-object p3, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/inputmethod/ImeTracker$Token;

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 240
    goto/16 :goto_d4

    .line 225
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->setInteractive(ZZ)V

    .line 230
    goto :goto_d4

    .line 215
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->setActive(ZZ)V

    .line 220
    goto :goto_d4

    .line 205
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->onUnbindAccessibilityService(II)V

    .line 210
    goto :goto_d4

    .line 195
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->onUnbindMethod(II)V

    .line 200
    goto :goto_d4

    .line 185
    :pswitch_9f
    sget-object p1, Lcom/android/internal/inputmethod/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/inputmethod/InputBindResult;

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->onBindAccessibilityService(Lcom/android/internal/inputmethod/InputBindResult;I)V

    .line 190
    goto :goto_d4

    .line 175
    :pswitch_b2
    sget-object p1, Lcom/android/internal/inputmethod/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/inputmethod/InputBindResult;

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->onStartInputResult(Lcom/android/internal/inputmethod/InputBindResult;I)V

    .line 180
    goto :goto_d4

    .line 167
    :pswitch_c5
    sget-object p1, Lcom/android/internal/inputmethod/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/inputmethod/InputBindResult;

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->onBindMethod(Lcom/android/internal/inputmethod/InputBindResult;)V

    .line 170
    nop

    .line 279
    :goto_d4
    return v1

    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_c5
        :pswitch_b2
        :pswitch_9f
        :pswitch_90
        :pswitch_81
        :pswitch_72
        :pswitch_63
        :pswitch_4f
        :pswitch_43
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
