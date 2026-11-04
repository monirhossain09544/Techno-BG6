.class public abstract Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub;
.super Landroid/os/Binder;
.source "IRemoteComputerControlInputConnection.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_commitText:I = 0x1

.field static final blacklist TRANSACTION_replaceText:I = 0x2

.field static final blacklist TRANSACTION_sendKeyEvent:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 84
    const-string v0, "com.android.internal.inputmethod.IRemoteComputerControlInputConnection"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;
    .registers 3

    .line 92
    if-nez p0, :cond_4

    .line 93
    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_4
    const-string v0, "com.android.internal.inputmethod.IRemoteComputerControlInputConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;

    if-eqz v1, :cond_13

    .line 97
    check-cast v0, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;

    return-object v0

    .line 99
    :cond_13
    new-instance v0, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 108
    packed-switch p0, :pswitch_data_e

    .line 124
    const/4 p0, 0x0

    return-object p0

    .line 120
    :pswitch_5
    const-string p0, "sendKeyEvent"

    return-object p0

    .line 116
    :pswitch_8
    const-string p0, "replaceText"

    return-object p0

    .line 112
    :pswitch_b
    const-string p0, "commitText"

    return-object p0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 103
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 310
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 131
    invoke-static {p1}, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 135
    nop

    .line 136
    const-string v0, "com.android.internal.inputmethod.IRemoteComputerControlInputConnection"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 137
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 140
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    return v1

    .line 143
    :cond_17
    packed-switch p1, :pswitch_data_7a

    .line 185
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 176
    :pswitch_20
    sget-object p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 178
    sget-object p3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/KeyEvent;

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub;->sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    .line 181
    goto :goto_79

    .line 160
    :pswitch_37
    sget-object p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 166
    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub;->replaceText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;I)V

    .line 171
    goto :goto_79

    .line 148
    :pswitch_5d
    move-object v2, p0

    sget-object p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    .line 150
    sget-object p3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub;->commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    .line 155
    nop

    .line 188
    :goto_79
    return v1

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_37
        :pswitch_20
    .end packed-switch
.end method
