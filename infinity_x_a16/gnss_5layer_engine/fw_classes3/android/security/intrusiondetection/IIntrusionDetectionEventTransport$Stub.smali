.class public abstract Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;
.super Landroid/os/Binder;
.source "IIntrusionDetectionEventTransport.java"

# interfaces
.implements Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addData:I = 0x2

.field static final blacklist TRANSACTION_initialize:I = 0x1

.field static final blacklist TRANSACTION_release:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.security.intrusiondetection.IIntrusionDetectionEventTransport"

    invoke-virtual {p0, p0, v0}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;
    .registers 3

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_4
    const-string v0, "android.security.intrusiondetection.IIntrusionDetectionEventTransport"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    if-eqz v1, :cond_13

    .line 58
    check-cast v0, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    return-object v0

    .line 60
    :cond_13
    new-instance v0, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 69
    packed-switch p0, :pswitch_data_10

    .line 85
    const/4 p0, 0x0

    return-object p0

    .line 81
    :pswitch_5
    const-string/jumbo p0, "release"

    return-object p0

    .line 77
    :pswitch_9
    const-string p0, "addData"

    return-object p0

    .line 73
    :pswitch_c
    const-string p0, "initialize"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 206
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 92
    invoke-static {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 96
    nop

    .line 97
    const-string v0, "android.security.intrusiondetection.IIntrusionDetectionEventTransport"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 101
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 104
    :cond_17
    packed-switch p1, :pswitch_data_54

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 127
    :pswitch_1f
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, p1}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;->release(Lcom/android/internal/infra/AndroidFuture;)V

    .line 130
    goto :goto_52

    .line 117
    :pswitch_2e
    sget-object p1, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 119
    sget-object p3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/infra/AndroidFuture;

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, p1, p3}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;->addData(Ljava/util/List;Lcom/android/internal/infra/AndroidFuture;)V

    .line 122
    goto :goto_52

    .line 109
    :pswitch_43
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, p1}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport$Stub;->initialize(Lcom/android/internal/infra/AndroidFuture;)V

    .line 112
    nop

    .line 137
    :goto_52
    return v1

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_43
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
