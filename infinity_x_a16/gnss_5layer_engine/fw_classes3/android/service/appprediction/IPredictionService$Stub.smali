.class public abstract Landroid/service/appprediction/IPredictionService$Stub;
.super Landroid/os/Binder;
.source "IPredictionService.java"

# interfaces
.implements Landroid/service/appprediction/IPredictionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/appprediction/IPredictionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/appprediction/IPredictionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_notifyAppTargetEvent:I = 0x2

.field static final blacklist TRANSACTION_notifyLaunchLocationShown:I = 0x3

.field static final blacklist TRANSACTION_onCreatePredictionSession:I = 0x1

.field static final blacklist TRANSACTION_onDestroyPredictionSession:I = 0x8

.field static final blacklist TRANSACTION_registerPredictionUpdates:I = 0x5

.field static final blacklist TRANSACTION_requestPredictionUpdate:I = 0x7

.field static final blacklist TRANSACTION_requestServiceFeatures:I = 0x9

.field static final blacklist TRANSACTION_sortAppTargets:I = 0x4

.field static final blacklist TRANSACTION_unregisterPredictionUpdates:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "android.service.appprediction.IPredictionService"

    invoke-virtual {p0, p0, v0}, Landroid/service/appprediction/IPredictionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/appprediction/IPredictionService;
    .registers 3

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_4
    const-string v0, "android.service.appprediction.IPredictionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/appprediction/IPredictionService;

    if-eqz v1, :cond_13

    .line 72
    check-cast v0, Landroid/service/appprediction/IPredictionService;

    return-object v0

    .line 74
    :cond_13
    new-instance v0, Landroid/service/appprediction/IPredictionService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/appprediction/IPredictionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 83
    packed-switch p0, :pswitch_data_2a

    .line 123
    const/4 p0, 0x0

    return-object p0

    .line 119
    :pswitch_5
    const-string/jumbo p0, "requestServiceFeatures"

    return-object p0

    .line 115
    :pswitch_9
    const-string/jumbo p0, "onDestroyPredictionSession"

    return-object p0

    .line 111
    :pswitch_d
    const-string/jumbo p0, "requestPredictionUpdate"

    return-object p0

    .line 107
    :pswitch_11
    const-string/jumbo p0, "unregisterPredictionUpdates"

    return-object p0

    .line 103
    :pswitch_15
    const-string/jumbo p0, "registerPredictionUpdates"

    return-object p0

    .line 99
    :pswitch_19
    const-string/jumbo p0, "sortAppTargets"

    return-object p0

    .line 95
    :pswitch_1d
    const-string/jumbo p0, "notifyLaunchLocationShown"

    return-object p0

    .line 91
    :pswitch_21
    const-string/jumbo p0, "notifyAppTargetEvent"

    return-object p0

    .line 87
    :pswitch_25
    const-string/jumbo p0, "onCreatePredictionSession"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_21
        :pswitch_1d
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

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 386
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 130
    invoke-static {p1}, Landroid/service/appprediction/IPredictionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 134
    nop

    .line 135
    const-string v0, "android.service.appprediction.IPredictionService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 136
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 139
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v1

    .line 142
    :cond_17
    packed-switch p1, :pswitch_data_f0

    .line 236
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 227
    :pswitch_1f
    sget-object p1, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/prediction/AppPredictionSessionId;

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object p3

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, p1, p3}, Landroid/service/appprediction/IPredictionService$Stub;->requestServiceFeatures(Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IRemoteCallback;)V

    .line 232
    goto/16 :goto_ee

    .line 219
    :pswitch_37
    sget-object p1, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/prediction/AppPredictionSessionId;

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, p1}, Landroid/service/appprediction/IPredictionService$Stub;->onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V

    .line 222
    goto/16 :goto_ee

    .line 211
    :pswitch_47
    sget-object p1, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/prediction/AppPredictionSessionId;

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, p1}, Landroid/service/appprediction/IPredictionService$Stub;->requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V

    .line 214
    goto/16 :goto_ee

    .line 201
    :pswitch_57
    sget-object p1, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/prediction/AppPredictionSessionId;

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/app/prediction/IPredictionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/prediction/IPredictionCallback;

    move-result-object p3

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, p1, p3}, Landroid/service/appprediction/IPredictionService$Stub;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    .line 206
    goto/16 :goto_ee

    .line 191
    :pswitch_6f
    sget-object p1, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/prediction/AppPredictionSessionId;

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/app/prediction/IPredictionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/prediction/IPredictionCallback;

    move-result-object p3

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, p1, p3}, Landroid/service/appprediction/IPredictionService$Stub;->registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    .line 196
    goto :goto_ee

    .line 179
    :pswitch_86
    sget-object p1, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/prediction/AppPredictionSessionId;

    .line 181
    sget-object p3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ParceledListSlice;

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/app/prediction/IPredictionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/prediction/IPredictionCallback;

    move-result-object p4

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/appprediction/IPredictionService$Stub;->sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    .line 186
    goto :goto_ee

    .line 167
    :pswitch_a5
    sget-object p1, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/prediction/AppPredictionSessionId;

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 171
    sget-object p4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/pm/ParceledListSlice;

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/appprediction/IPredictionService$Stub;->notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 174
    goto :goto_ee

    .line 157
    :pswitch_c0
    sget-object p1, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/prediction/AppPredictionSessionId;

    .line 159
    sget-object p3, Landroid/app/prediction/AppTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/prediction/AppTargetEvent;

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, p1, p3}, Landroid/service/appprediction/IPredictionService$Stub;->notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    .line 162
    goto :goto_ee

    .line 147
    :pswitch_d7
    sget-object p1, Landroid/app/prediction/AppPredictionContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/prediction/AppPredictionContext;

    .line 149
    sget-object p3, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/prediction/AppPredictionSessionId;

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, p1, p3}, Landroid/service/appprediction/IPredictionService$Stub;->onCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    .line 152
    nop

    .line 239
    :goto_ee
    return v1

    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_d7
        :pswitch_c0
        :pswitch_a5
        :pswitch_86
        :pswitch_6f
        :pswitch_57
        :pswitch_47
        :pswitch_37
        :pswitch_1f
    .end packed-switch
.end method
