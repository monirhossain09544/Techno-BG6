.class public abstract Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;
.super Landroid/os/Binder;
.source "ICallRedirectionAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallRedirectionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallRedirectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelCall:I = 0x1

.field static final blacklist TRANSACTION_placeCallUnmodified:I = 0x2

.field static final blacklist TRANSACTION_redirectCall:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "com.android.internal.telecom.ICallRedirectionAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallRedirectionAdapter;
    .registers 3

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_4
    const-string v0, "com.android.internal.telecom.ICallRedirectionAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/ICallRedirectionAdapter;

    if-eqz v1, :cond_13

    .line 56
    check-cast v0, Lcom/android/internal/telecom/ICallRedirectionAdapter;

    return-object v0

    .line 58
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 67
    packed-switch p0, :pswitch_data_e

    .line 83
    const/4 p0, 0x0

    return-object p0

    .line 79
    :pswitch_5
    const-string p0, "redirectCall"

    return-object p0

    .line 75
    :pswitch_8
    const-string p0, "placeCallUnmodified"

    return-object p0

    .line 71
    :pswitch_b
    const-string p0, "cancelCall"

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

    .line 62
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 191
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 90
    invoke-static {p1}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 94
    nop

    .line 95
    const-string v0, "com.android.internal.telecom.ICallRedirectionAdapter"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 99
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return v1

    .line 102
    :cond_17
    packed-switch p1, :pswitch_data_44

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 117
    :pswitch_1f
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 119
    sget-object p3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/PhoneAccountHandle;

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;->redirectCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 124
    goto :goto_42

    .line 111
    :pswitch_3a
    invoke-virtual {p0}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;->placeCallUnmodified()V

    .line 112
    goto :goto_42

    .line 106
    :pswitch_3e
    invoke-virtual {p0}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;->cancelCall()V

    .line 107
    nop

    .line 131
    :goto_42
    return v1

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3a
        :pswitch_1f
    .end packed-switch
.end method
