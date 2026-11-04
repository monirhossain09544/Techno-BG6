.class public abstract Landroid/service/controls/IControlsSubscriber$Stub;
.super Landroid/os/Binder;
.source "IControlsSubscriber.java"

# interfaces
.implements Landroid/service/controls/IControlsSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/IControlsSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/IControlsSubscriber$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onComplete:I = 0x4

.field static final blacklist TRANSACTION_onError:I = 0x3

.field static final blacklist TRANSACTION_onNext:I = 0x2

.field static final blacklist TRANSACTION_onSubscribe:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.service.controls.IControlsSubscriber"

    invoke-virtual {p0, p0, v0}, Landroid/service/controls/IControlsSubscriber$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsSubscriber;
    .registers 3

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_4
    const-string v0, "android.service.controls.IControlsSubscriber"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/controls/IControlsSubscriber;

    if-eqz v1, :cond_13

    .line 53
    check-cast v0, Landroid/service/controls/IControlsSubscriber;

    return-object v0

    .line 55
    :cond_13
    new-instance v0, Landroid/service/controls/IControlsSubscriber$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/controls/IControlsSubscriber$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 64
    packed-switch p0, :pswitch_data_16

    .line 84
    const/4 p0, 0x0

    return-object p0

    .line 80
    :pswitch_5
    const-string/jumbo p0, "onComplete"

    return-object p0

    .line 76
    :pswitch_9
    const-string/jumbo p0, "onError"

    return-object p0

    .line 72
    :pswitch_d
    const-string/jumbo p0, "onNext"

    return-object p0

    .line 68
    :pswitch_11
    const-string/jumbo p0, "onSubscribe"

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

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 224
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 91
    invoke-static {p1}, Landroid/service/controls/IControlsSubscriber$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 95
    nop

    .line 96
    const-string v0, "android.service.controls.IControlsSubscriber"

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
    packed-switch p1, :pswitch_data_60

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 138
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, p1}, Landroid/service/controls/IControlsSubscriber$Stub;->onComplete(Landroid/os/IBinder;)V

    .line 141
    goto :goto_5f

    .line 128
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, p1, p3}, Landroid/service/controls/IControlsSubscriber$Stub;->onError(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 133
    goto :goto_5f

    .line 118
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 120
    sget-object p3, Landroid/service/controls/Control;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/service/controls/Control;

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, p1, p3}, Landroid/service/controls/IControlsSubscriber$Stub;->onNext(Landroid/os/IBinder;Landroid/service/controls/Control;)V

    .line 123
    goto :goto_5f

    .line 108
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/service/controls/IControlsSubscription$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsSubscription;

    move-result-object p3

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, p1, p3}, Landroid/service/controls/IControlsSubscriber$Stub;->onSubscribe(Landroid/os/IBinder;Landroid/service/controls/IControlsSubscription;)V

    .line 113
    nop

    .line 148
    :goto_5f
    return v1

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_39
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
