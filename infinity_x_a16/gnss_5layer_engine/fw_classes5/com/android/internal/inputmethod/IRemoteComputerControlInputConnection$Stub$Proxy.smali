.class Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRemoteComputerControlInputConnection.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 196
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 225
    :try_start_8
    const-string v1, "com.android.internal.inputmethod.IRemoteComputerControlInputConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 226
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 227
    const/4 p1, 0x1

    if-eqz p2, :cond_1b

    .line 228
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    invoke-static {p2, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 232
    :cond_1b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    :goto_1e
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object p2, p0, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p3, 0x0

    invoke-interface {p2, p1, v0, p3, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2c

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 239
    nop

    .line 240
    return-void

    .line 238
    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 239
    throw p1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 203
    const-string v0, "com.android.internal.inputmethod.IRemoteComputerControlInputConnection"

    return-object v0
.end method

.method public blacklist replaceText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 262
    :try_start_8
    const-string v1, "com.android.internal.inputmethod.IRemoteComputerControlInputConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 263
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 264
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    const/4 p1, 0x1

    if-eqz p4, :cond_21

    .line 267
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    invoke-static {p4, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_24

    .line 271
    :cond_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    :goto_24
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget-object p2, p0, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p4, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_33

    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 278
    nop

    .line 279
    return-void

    .line 277
    :catchall_33
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 278
    throw p1
.end method

.method public blacklist sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 294
    :try_start_8
    const-string v1, "com.android.internal.inputmethod.IRemoteComputerControlInputConnection"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 295
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 296
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 297
    iget-object p1, p0, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 301
    nop

    .line 302
    return-void

    .line 300
    :catchall_21
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 301
    throw p1
.end method
