.class public abstract Landroid/service/dreams/IDreamOverlayCallback$Stub;
.super Landroid/os/Binder;
.source "IDreamOverlayCallback.java"

# interfaces
.implements Landroid/service/dreams/IDreamOverlayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/IDreamOverlayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamOverlayCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onExitRequested:I = 0x1

.field static final blacklist TRANSACTION_onRedirectWake:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.service.dreams.IDreamOverlayCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/dreams/IDreamOverlayCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamOverlayCallback;
    .registers 3

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_4
    const-string v0, "android.service.dreams.IDreamOverlayCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/dreams/IDreamOverlayCallback;

    if-eqz v1, :cond_13

    .line 55
    check-cast v0, Landroid/service/dreams/IDreamOverlayCallback;

    return-object v0

    .line 57
    :cond_13
    new-instance v0, Landroid/service/dreams/IDreamOverlayCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/dreams/IDreamOverlayCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 66
    packed-switch p0, :pswitch_data_e

    .line 78
    const/4 p0, 0x0

    return-object p0

    .line 74
    :pswitch_5
    const-string/jumbo p0, "onRedirectWake"

    return-object p0

    .line 70
    :pswitch_9
    const-string/jumbo p0, "onExitRequested"

    return-object p0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 61
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 85
    invoke-static {p1}, Landroid/service/dreams/IDreamOverlayCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 89
    nop

    .line 90
    const-string v0, "android.service.dreams.IDreamOverlayCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 94
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 97
    :cond_17
    packed-switch p1, :pswitch_data_30

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 107
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, p1}, Landroid/service/dreams/IDreamOverlayCallback$Stub;->onRedirectWake(Z)V

    .line 110
    goto :goto_2e

    .line 101
    :pswitch_2a
    invoke-virtual {p0}, Landroid/service/dreams/IDreamOverlayCallback$Stub;->onExitRequested()V

    .line 102
    nop

    .line 117
    :goto_2e
    return v1

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
