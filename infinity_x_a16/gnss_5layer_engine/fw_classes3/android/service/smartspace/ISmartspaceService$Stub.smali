.class public abstract Landroid/service/smartspace/ISmartspaceService$Stub;
.super Landroid/os/Binder;
.source "ISmartspaceService.java"

# interfaces
.implements Landroid/service/smartspace/ISmartspaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/smartspace/ISmartspaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/smartspace/ISmartspaceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_notifySmartspaceEvent:I = 0x2

.field static final blacklist TRANSACTION_onCreateSmartspaceSession:I = 0x1

.field static final blacklist TRANSACTION_onDestroySmartspaceSession:I = 0x6

.field static final blacklist TRANSACTION_registerSmartspaceUpdates:I = 0x4

.field static final blacklist TRANSACTION_requestSmartspaceUpdate:I = 0x3

.field static final blacklist TRANSACTION_unregisterSmartspaceUpdates:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.service.smartspace.ISmartspaceService"

    invoke-virtual {p0, p0, v0}, Landroid/service/smartspace/ISmartspaceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/smartspace/ISmartspaceService;
    .registers 3

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_4
    const-string v0, "android.service.smartspace.ISmartspaceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/smartspace/ISmartspaceService;

    if-eqz v1, :cond_13

    .line 63
    check-cast v0, Landroid/service/smartspace/ISmartspaceService;

    return-object v0

    .line 65
    :cond_13
    new-instance v0, Landroid/service/smartspace/ISmartspaceService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/smartspace/ISmartspaceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 74
    packed-switch p0, :pswitch_data_1e

    .line 102
    const/4 p0, 0x0

    return-object p0

    .line 98
    :pswitch_5
    const-string/jumbo p0, "onDestroySmartspaceSession"

    return-object p0

    .line 94
    :pswitch_9
    const-string/jumbo p0, "unregisterSmartspaceUpdates"

    return-object p0

    .line 90
    :pswitch_d
    const-string/jumbo p0, "registerSmartspaceUpdates"

    return-object p0

    .line 86
    :pswitch_11
    const-string/jumbo p0, "requestSmartspaceUpdate"

    return-object p0

    .line 82
    :pswitch_15
    const-string/jumbo p0, "notifySmartspaceEvent"

    return-object p0

    .line 78
    :pswitch_19
    const-string/jumbo p0, "onCreateSmartspaceSession"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
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

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 287
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 109
    invoke-static {p1}, Landroid/service/smartspace/ISmartspaceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 113
    nop

    .line 114
    const-string v0, "android.service.smartspace.ISmartspaceService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v1

    .line 121
    :cond_17
    packed-switch p1, :pswitch_data_9a

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 174
    :pswitch_1f
    sget-object p1, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/smartspace/SmartspaceSessionId;

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, p1}, Landroid/service/smartspace/ISmartspaceService$Stub;->onDestroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 177
    goto :goto_99

    .line 164
    :pswitch_2e
    sget-object p1, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/smartspace/SmartspaceSessionId;

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/app/smartspace/ISmartspaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/smartspace/ISmartspaceCallback;

    move-result-object p3

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, p1, p3}, Landroid/service/smartspace/ISmartspaceService$Stub;->unregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    .line 169
    goto :goto_99

    .line 154
    :pswitch_45
    sget-object p1, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/smartspace/SmartspaceSessionId;

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/app/smartspace/ISmartspaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/smartspace/ISmartspaceCallback;

    move-result-object p3

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, p1, p3}, Landroid/service/smartspace/ISmartspaceService$Stub;->registerSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    .line 159
    goto :goto_99

    .line 146
    :pswitch_5c
    sget-object p1, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/smartspace/SmartspaceSessionId;

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, p1}, Landroid/service/smartspace/ISmartspaceService$Stub;->requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 149
    goto :goto_99

    .line 136
    :pswitch_6b
    sget-object p1, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/smartspace/SmartspaceSessionId;

    .line 138
    sget-object p3, Landroid/app/smartspace/SmartspaceTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/smartspace/SmartspaceTargetEvent;

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, p1, p3}, Landroid/service/smartspace/ISmartspaceService$Stub;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V

    .line 141
    goto :goto_99

    .line 126
    :pswitch_82
    sget-object p1, Landroid/app/smartspace/SmartspaceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/smartspace/SmartspaceConfig;

    .line 128
    sget-object p3, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/smartspace/SmartspaceSessionId;

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, p1, p3}, Landroid/service/smartspace/ISmartspaceService$Stub;->onCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 131
    nop

    .line 184
    :goto_99
    return v1

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_82
        :pswitch_6b
        :pswitch_5c
        :pswitch_45
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
