.class public abstract Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;
.super Landroid/os/Binder;
.source "IProtoLogConfigurationService.java"

# interfaces
.implements Lcom/android/internal/protolog/IProtoLogConfigurationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/IProtoLogConfigurationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_registerClient:I = 0x1

.field static final blacklist TRANSACTION_registerGroups:I = 0x2

.field static final blacklist TRANSACTION_unregisterClient:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "com.android.internal.protolog.IProtoLogConfigurationService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/protolog/IProtoLogConfigurationService;
    .registers 3

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_4
    const-string v0, "com.android.internal.protolog.IProtoLogConfigurationService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService;

    if-eqz v1, :cond_13

    .line 71
    check-cast v0, Lcom/android/internal/protolog/IProtoLogConfigurationService;

    return-object v0

    .line 73
    :cond_13
    new-instance v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 82
    packed-switch p0, :pswitch_data_e

    .line 98
    const/4 p0, 0x0

    return-object p0

    .line 94
    :pswitch_5
    const-string p0, "unregisterClient"

    return-object p0

    .line 90
    :pswitch_8
    const-string p0, "registerGroups"

    return-object p0

    .line 86
    :pswitch_b
    const-string p0, "registerClient"

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

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 214
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 105
    invoke-static {p1}, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 109
    nop

    .line 110
    const-string v0, "com.android.internal.protolog.IProtoLogConfigurationService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 117
    :cond_17
    packed-switch p1, :pswitch_data_5e

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 142
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/protolog/IProtoLogClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/protolog/IProtoLogClient;

    move-result-object p1

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;->unregisterClient(Lcom/android/internal/protolog/IProtoLogClient;)V

    .line 145
    goto :goto_5c

    .line 132
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/protolog/IProtoLogClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/protolog/IProtoLogClient;

    move-result-object p1

    .line 134
    sget-object p3, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;->registerGroups(Lcom/android/internal/protolog/IProtoLogClient;Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;)V

    .line 137
    goto :goto_5c

    .line 122
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/protolog/IProtoLogClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/protolog/IProtoLogClient;

    move-result-object p1

    .line 124
    sget-object p3, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;->registerClient(Lcom/android/internal/protolog/IProtoLogClient;Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;)V

    .line 127
    nop

    .line 152
    :goto_5c
    return v1

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_45
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
