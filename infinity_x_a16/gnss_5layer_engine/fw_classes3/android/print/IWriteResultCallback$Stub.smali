.class public abstract Landroid/print/IWriteResultCallback$Stub;
.super Landroid/os/Binder;
.source "IWriteResultCallback.java"

# interfaces
.implements Landroid/print/IWriteResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IWriteResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IWriteResultCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.print.IWriteResultCallback"

.field static final greylist-max-o TRANSACTION_onWriteCanceled:I = 0x4

.field static final greylist-max-o TRANSACTION_onWriteFailed:I = 0x3

.field static final greylist-max-o TRANSACTION_onWriteFinished:I = 0x2

.field static final greylist-max-o TRANSACTION_onWriteStarted:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.print.IWriteResultCallback"

    invoke-virtual {p0, p0, v0}, Landroid/print/IWriteResultCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/print/IWriteResultCallback;
    .registers 3

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_4
    const-string v0, "android.print.IWriteResultCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/print/IWriteResultCallback;

    if-eqz v1, :cond_13

    .line 57
    check-cast v0, Landroid/print/IWriteResultCallback;

    return-object v0

    .line 59
    :cond_13
    new-instance v0, Landroid/print/IWriteResultCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/print/IWriteResultCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 68
    packed-switch p0, :pswitch_data_16

    .line 88
    const/4 p0, 0x0

    return-object p0

    .line 84
    :pswitch_5
    const-string/jumbo p0, "onWriteCanceled"

    return-object p0

    .line 80
    :pswitch_9
    const-string/jumbo p0, "onWriteFailed"

    return-object p0

    .line 76
    :pswitch_d
    const-string/jumbo p0, "onWriteFinished"

    return-object p0

    .line 72
    :pswitch_11
    const-string/jumbo p0, "onWriteStarted"

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 236
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 95
    invoke-static {p1}, Landroid/print/IWriteResultCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    nop

    .line 100
    const-string v0, "android.print.IWriteResultCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_17
    packed-switch p1, :pswitch_data_64

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 142
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, p1}, Landroid/print/IWriteResultCallback$Stub;->onWriteCanceled(I)V

    .line 145
    goto :goto_63

    .line 132
    :pswitch_2a
    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, p1, p3}, Landroid/print/IWriteResultCallback$Stub;->onWriteFailed(Ljava/lang/CharSequence;I)V

    .line 137
    goto :goto_63

    .line 122
    :pswitch_3d
    sget-object p1, Landroid/print/PageRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/print/PageRange;

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, p1, p3}, Landroid/print/IWriteResultCallback$Stub;->onWriteFinished([Landroid/print/PageRange;I)V

    .line 127
    goto :goto_63

    .line 112
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object p1

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, p1, p3}, Landroid/print/IWriteResultCallback$Stub;->onWriteStarted(Landroid/os/ICancellationSignal;I)V

    .line 117
    nop

    .line 152
    :goto_63
    return v1

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_50
        :pswitch_3d
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
