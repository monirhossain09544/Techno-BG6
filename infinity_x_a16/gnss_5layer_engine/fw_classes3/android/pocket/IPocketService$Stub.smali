.class public abstract Landroid/pocket/IPocketService$Stub;
.super Landroid/os/Binder;
.source "IPocketService.java"

# interfaces
.implements Landroid/pocket/IPocketService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pocket/IPocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pocket/IPocketService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addCallback:I = 0x1

.field static final blacklist TRANSACTION_isDeviceInPocket:I = 0x5

.field static final blacklist TRANSACTION_isPocketLockVisible:I = 0x7

.field static final blacklist TRANSACTION_onInteractiveChanged:I = 0x3

.field static final blacklist TRANSACTION_removeCallback:I = 0x2

.field static final blacklist TRANSACTION_setListeningExternal:I = 0x4

.field static final blacklist TRANSACTION_setPocketLockVisible:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.pocket.IPocketService"

    invoke-virtual {p0, p0, v0}, Landroid/pocket/IPocketService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/pocket/IPocketService;
    .registers 3

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_4
    const-string v0, "android.pocket.IPocketService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/pocket/IPocketService;

    if-eqz v1, :cond_13

    .line 71
    check-cast v0, Landroid/pocket/IPocketService;

    return-object v0

    .line 73
    :cond_13
    new-instance v0, Landroid/pocket/IPocketService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/pocket/IPocketService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 82
    packed-switch p0, :pswitch_data_1e

    .line 114
    const/4 p0, 0x0

    return-object p0

    .line 110
    :pswitch_5
    const-string p0, "isPocketLockVisible"

    return-object p0

    .line 106
    :pswitch_8
    const-string/jumbo p0, "setPocketLockVisible"

    return-object p0

    .line 102
    :pswitch_c
    const-string p0, "isDeviceInPocket"

    return-object p0

    .line 98
    :pswitch_f
    const-string/jumbo p0, "setListeningExternal"

    return-object p0

    .line 94
    :pswitch_13
    const-string/jumbo p0, "onInteractiveChanged"

    return-object p0

    .line 90
    :pswitch_17
    const-string/jumbo p0, "removeCallback"

    return-object p0

    .line 86
    :pswitch_1b
    const-string p0, "addCallback"

    return-object p0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_17
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

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 343
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 121
    invoke-static {p1}, Landroid/pocket/IPocketService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 125
    nop

    .line 126
    const-string v0, "android.pocket.IPocketService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 127
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 130
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v1

    .line 133
    :cond_17
    packed-switch p1, :pswitch_data_84

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 189
    :pswitch_1f
    invoke-virtual {p0}, Landroid/pocket/IPocketService$Stub;->isPocketLockVisible()Z

    move-result p1

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 192
    goto :goto_83

    .line 181
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, p1}, Landroid/pocket/IPocketService$Stub;->setPocketLockVisible(Z)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    goto :goto_83

    .line 173
    :pswitch_38
    invoke-virtual {p0}, Landroid/pocket/IPocketService$Stub;->isDeviceInPocket()Z

    move-result p1

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 176
    goto :goto_83

    .line 165
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, p1}, Landroid/pocket/IPocketService$Stub;->setListeningExternal(Z)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_83

    .line 156
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, p1}, Landroid/pocket/IPocketService$Stub;->onInteractiveChanged(Z)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto :goto_83

    .line 147
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/pocket/IPocketCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/pocket/IPocketCallback;

    move-result-object p1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, p1}, Landroid/pocket/IPocketService$Stub;->removeCallback(Landroid/pocket/IPocketCallback;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_83

    .line 138
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/pocket/IPocketCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/pocket/IPocketCallback;

    move-result-object p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, p1}, Landroid/pocket/IPocketService$Stub;->addCallback(Landroid/pocket/IPocketCallback;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    nop

    .line 199
    :goto_83
    return v1

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_71
        :pswitch_5f
        :pswitch_51
        :pswitch_43
        :pswitch_38
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
