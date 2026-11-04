.class public abstract Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub;
.super Landroid/os/Binder;
.source "ISelectionToolbarRenderService.java"

# interfaces
.implements Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onConnected:I = 0x1

.field static final blacklist TRANSACTION_onDismiss:I = 0x4

.field static final blacklist TRANSACTION_onHide:I = 0x3

.field static final blacklist TRANSACTION_onShow:I = 0x2

.field static final blacklist TRANSACTION_onUidDied:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.service.selectiontoolbar.ISelectionToolbarRenderService"

    invoke-virtual {p0, p0, v0}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;
    .registers 3

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_4
    const-string v0, "android.service.selectiontoolbar.ISelectionToolbarRenderService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;

    if-eqz v1, :cond_13

    .line 60
    check-cast v0, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;

    return-object v0

    .line 62
    :cond_13
    new-instance v0, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 71
    packed-switch p0, :pswitch_data_1a

    .line 95
    const/4 p0, 0x0

    return-object p0

    .line 91
    :pswitch_5
    const-string/jumbo p0, "onUidDied"

    return-object p0

    .line 87
    :pswitch_9
    const-string/jumbo p0, "onDismiss"

    return-object p0

    .line 83
    :pswitch_d
    const-string/jumbo p0, "onHide"

    return-object p0

    .line 79
    :pswitch_11
    const-string/jumbo p0, "onShow"

    return-object p0

    .line 75
    :pswitch_15
    const-string/jumbo p0, "onConnected"

    return-object p0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 253
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 102
    invoke-static {p1}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 106
    nop

    .line 107
    const-string v0, "android.service.selectiontoolbar.ISelectionToolbarRenderService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 114
    :cond_17
    packed-switch p1, :pswitch_data_68

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 155
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, p1}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub;->onUidDied(I)V

    .line 158
    goto :goto_66

    .line 147
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, p1}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub;->onDismiss(I)V

    .line 150
    goto :goto_66

    .line 139
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, p1}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub;->onHide(I)V

    .line 142
    goto :goto_66

    .line 127
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 129
    sget-object p3, Landroid/view/selectiontoolbar/ShowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/selectiontoolbar/ShowInfo;

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/selectiontoolbar/ISelectionToolbarCallback;

    move-result-object p4

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub;->onShow(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V

    .line 134
    goto :goto_66

    .line 119
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, p1}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub;->onConnected(Landroid/os/IBinder;)V

    .line 122
    nop

    .line 165
    :goto_66
    return v1

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_40
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
