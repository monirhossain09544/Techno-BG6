.class public abstract Landroid/service/dreams/IDreamOverlayClient$Stub;
.super Landroid/os/Binder;
.source "IDreamOverlayClient.java"

# interfaces
.implements Landroid/service/dreams/IDreamOverlayClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/IDreamOverlayClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamOverlayClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_comeToFront:I = 0x5

.field static final blacklist TRANSACTION_endDream:I = 0x3

.field static final blacklist TRANSACTION_onWakeRequested:I = 0x4

.field static final blacklist TRANSACTION_startDream:I = 0x1

.field static final blacklist TRANSACTION_wakeUp:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.service.dreams.IDreamOverlayClient"

    invoke-virtual {p0, p0, v0}, Landroid/service/dreams/IDreamOverlayClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamOverlayClient;
    .registers 3

    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_4
    const-string v0, "android.service.dreams.IDreamOverlayClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/dreams/IDreamOverlayClient;

    if-eqz v1, :cond_13

    .line 74
    check-cast v0, Landroid/service/dreams/IDreamOverlayClient;

    return-object v0

    .line 76
    :cond_13
    new-instance v0, Landroid/service/dreams/IDreamOverlayClient$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/dreams/IDreamOverlayClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 85
    packed-switch p0, :pswitch_data_18

    .line 109
    const/4 p0, 0x0

    return-object p0

    .line 105
    :pswitch_5
    const-string p0, "comeToFront"

    return-object p0

    .line 101
    :pswitch_8
    const-string/jumbo p0, "onWakeRequested"

    return-object p0

    .line 97
    :pswitch_c
    const-string p0, "endDream"

    return-object p0

    .line 93
    :pswitch_f
    const-string/jumbo p0, "wakeUp"

    return-object p0

    .line 89
    :pswitch_13
    const-string/jumbo p0, "startDream"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 291
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 116
    invoke-static {p1}, Landroid/service/dreams/IDreamOverlayClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 120
    nop

    .line 121
    const-string v0, "android.service.dreams.IDreamOverlayClient"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 122
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v1

    .line 128
    :cond_17
    packed-switch p1, :pswitch_data_64

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 167
    :pswitch_1f
    invoke-virtual {p0}, Landroid/service/dreams/IDreamOverlayClient$Stub;->comeToFront()V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_63

    .line 161
    :pswitch_26
    invoke-virtual {p0}, Landroid/service/dreams/IDreamOverlayClient$Stub;->onWakeRequested()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_63

    .line 155
    :pswitch_2d
    invoke-virtual {p0}, Landroid/service/dreams/IDreamOverlayClient$Stub;->endDream()V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    goto :goto_63

    .line 149
    :pswitch_34
    invoke-virtual {p0}, Landroid/service/dreams/IDreamOverlayClient$Stub;->wakeUp()V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_63

    .line 133
    :pswitch_3b
    sget-object p1, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/dreams/IDreamOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamOverlayCallback;

    move-result-object v4

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/service/dreams/IDreamOverlayClient$Stub;->startDream(Landroid/view/WindowManager$LayoutParams;Landroid/service/dreams/IDreamOverlayCallback;Ljava/lang/String;ZZ)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    nop

    .line 176
    :goto_63
    return v1

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_34
        :pswitch_2d
        :pswitch_26
        :pswitch_1f
    .end packed-switch
.end method
