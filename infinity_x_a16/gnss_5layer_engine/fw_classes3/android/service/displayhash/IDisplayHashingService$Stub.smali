.class public abstract Landroid/service/displayhash/IDisplayHashingService$Stub;
.super Landroid/os/Binder;
.source "IDisplayHashingService.java"

# interfaces
.implements Landroid/service/displayhash/IDisplayHashingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/displayhash/IDisplayHashingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/displayhash/IDisplayHashingService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_generateDisplayHash:I = 0x1

.field static final blacklist TRANSACTION_getDisplayHashAlgorithms:I = 0x3

.field static final blacklist TRANSACTION_getIntervalBetweenRequestsMillis:I = 0x4

.field static final blacklist TRANSACTION_verifyDisplayHash:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    const-string v0, "android.service.displayhash.IDisplayHashingService"

    invoke-virtual {p0, p0, v0}, Landroid/service/displayhash/IDisplayHashingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/displayhash/IDisplayHashingService;
    .registers 3

    .line 84
    if-nez p0, :cond_4

    .line 85
    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_4
    const-string v0, "android.service.displayhash.IDisplayHashingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/displayhash/IDisplayHashingService;

    if-eqz v1, :cond_13

    .line 89
    check-cast v0, Landroid/service/displayhash/IDisplayHashingService;

    return-object v0

    .line 91
    :cond_13
    new-instance v0, Landroid/service/displayhash/IDisplayHashingService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/displayhash/IDisplayHashingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 100
    packed-switch p0, :pswitch_data_12

    .line 120
    const/4 p0, 0x0

    return-object p0

    .line 116
    :pswitch_5
    const-string p0, "getIntervalBetweenRequestsMillis"

    return-object p0

    .line 112
    :pswitch_8
    const-string p0, "getDisplayHashAlgorithms"

    return-object p0

    .line 108
    :pswitch_b
    const-string/jumbo p0, "verifyDisplayHash"

    return-object p0

    .line 104
    :pswitch_f
    const-string p0, "generateDisplayHash"

    return-object p0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 95
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 301
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 127
    invoke-static {p1}, Landroid/service/displayhash/IDisplayHashingService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 131
    nop

    .line 132
    const-string v0, "android.service.displayhash.IDisplayHashingService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 133
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 136
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    return v1

    .line 139
    :cond_17
    packed-switch p1, :pswitch_data_84

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 180
    :pswitch_1f
    sget-object p1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallback;

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, p1}, Landroid/service/displayhash/IDisplayHashingService$Stub;->getIntervalBetweenRequestsMillis(Landroid/os/RemoteCallback;)V

    .line 183
    goto :goto_83

    .line 172
    :pswitch_2e
    sget-object p1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallback;

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, p1}, Landroid/service/displayhash/IDisplayHashingService$Stub;->getDisplayHashAlgorithms(Landroid/os/RemoteCallback;)V

    .line 175
    goto :goto_83

    .line 160
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 162
    sget-object p3, Landroid/view/displayhash/DisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/displayhash/DisplayHash;

    .line 164
    sget-object p4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/RemoteCallback;

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/displayhash/IDisplayHashingService$Stub;->verifyDisplayHash([BLandroid/view/displayhash/DisplayHash;Landroid/os/RemoteCallback;)V

    .line 167
    goto :goto_83

    .line 144
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 146
    sget-object p1, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/hardware/HardwareBuffer;

    .line 148
    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/graphics/Rect;

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 152
    sget-object p1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/os/RemoteCallback;

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/service/displayhash/IDisplayHashingService$Stub;->generateDisplayHash([BLandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 155
    nop

    .line 190
    :goto_83
    return v1

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_58
        :pswitch_3d
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
