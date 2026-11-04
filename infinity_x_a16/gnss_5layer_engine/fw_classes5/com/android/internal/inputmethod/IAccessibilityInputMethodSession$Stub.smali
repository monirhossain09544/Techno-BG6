.class public abstract Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityInputMethodSession.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_finishInput:I = 0x2

.field static final blacklist TRANSACTION_finishSession:I = 0x3

.field static final blacklist TRANSACTION_invalidateInput:I = 0x4

.field static final blacklist TRANSACTION_updateSelection:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.android.internal.inputmethod.IAccessibilityInputMethodSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    .registers 3

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IAccessibilityInputMethodSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    if-eqz v1, :cond_13

    .line 53
    check-cast v0, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    return-object v0

    .line 55
    :cond_13
    new-instance v0, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 64
    packed-switch p0, :pswitch_data_12

    .line 84
    const/4 p0, 0x0

    return-object p0

    .line 80
    :pswitch_5
    const-string p0, "invalidateInput"

    return-object p0

    .line 76
    :pswitch_8
    const-string p0, "finishSession"

    return-object p0

    .line 72
    :pswitch_b
    const-string p0, "finishInput"

    return-object p0

    .line 68
    :pswitch_e
    const-string p0, "updateSelection"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 228
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 91
    invoke-static {p1}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 95
    nop

    .line 96
    const-string v0, "com.android.internal.inputmethod.IAccessibilityInputMethodSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 103
    :cond_17
    packed-switch p1, :pswitch_data_64

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 136
    :pswitch_1f
    sget-object p1, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/EditorInfo;

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object p3

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    .line 143
    goto :goto_62

    .line 130
    :pswitch_3a
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->finishSession()V

    .line 131
    goto :goto_62

    .line 125
    :pswitch_3e
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->finishInput()V

    .line 126
    goto :goto_62

    .line 108
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession$Stub;->updateSelection(IIIIII)V

    .line 121
    nop

    .line 150
    :goto_62
    return v1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_1f
    .end packed-switch
.end method
