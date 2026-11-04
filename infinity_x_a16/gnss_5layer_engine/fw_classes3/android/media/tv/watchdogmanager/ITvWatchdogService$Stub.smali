.class public abstract Landroid/media/tv/watchdogmanager/ITvWatchdogService$Stub;
.super Landroid/os/Binder;
.source "ITvWatchdogService.java"

# interfaces
.implements Landroid/media/tv/watchdogmanager/ITvWatchdogService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/watchdogmanager/ITvWatchdogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/watchdogmanager/ITvWatchdogService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addResourceOveruseListener:I = 0x4

.field static final blacklist TRANSACTION_addResourceOveruseListenerForSystem:I = 0x6

.field static final blacklist TRANSACTION_getAllResourceOveruseStats:I = 0x2

.field static final blacklist TRANSACTION_getPackageKillableStatesAsUser:I = 0x9

.field static final blacklist TRANSACTION_getResourceOveruseConfigurations:I = 0xb

.field static final blacklist TRANSACTION_getResourceOveruseStats:I = 0x1

.field static final blacklist TRANSACTION_getResourceOveruseStatsForUserPackage:I = 0x3

.field static final blacklist TRANSACTION_removeResourceOveruseListener:I = 0x5

.field static final blacklist TRANSACTION_removeResourceOveruseListenerForSystem:I = 0x7

.field static final blacklist TRANSACTION_setKillablePackageAsUser:I = 0x8

.field static final blacklist TRANSACTION_setResourceOveruseConfigurations:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "android.media.tv.watchdogmanager.ITvWatchdogService"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/watchdogmanager/ITvWatchdogService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/watchdogmanager/ITvWatchdogService;
    .registers 3

    .line 77
    if-nez p0, :cond_4

    .line 78
    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_4
    const-string v0, "android.media.tv.watchdogmanager.ITvWatchdogService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/watchdogmanager/ITvWatchdogService;

    if-eqz v1, :cond_13

    .line 82
    check-cast v0, Landroid/media/tv/watchdogmanager/ITvWatchdogService;

    return-object v0

    .line 84
    :cond_13
    new-instance v0, Landroid/media/tv/watchdogmanager/ITvWatchdogService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/watchdogmanager/ITvWatchdogService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 93
    packed-switch p0, :pswitch_data_2a

    .line 141
    const/4 p0, 0x0

    return-object p0

    .line 137
    :pswitch_5
    const-string p0, "getResourceOveruseConfigurations"

    return-object p0

    .line 133
    :pswitch_8
    const-string/jumbo p0, "setResourceOveruseConfigurations"

    return-object p0

    .line 129
    :pswitch_c
    const-string p0, "getPackageKillableStatesAsUser"

    return-object p0

    .line 125
    :pswitch_f
    const-string/jumbo p0, "setKillablePackageAsUser"

    return-object p0

    .line 121
    :pswitch_13
    const-string/jumbo p0, "removeResourceOveruseListenerForSystem"

    return-object p0

    .line 117
    :pswitch_17
    const-string p0, "addResourceOveruseListenerForSystem"

    return-object p0

    .line 113
    :pswitch_1a
    const-string/jumbo p0, "removeResourceOveruseListener"

    return-object p0

    .line 109
    :pswitch_1e
    const-string p0, "addResourceOveruseListener"

    return-object p0

    .line 105
    :pswitch_21
    const-string p0, "getResourceOveruseStatsForUserPackage"

    return-object p0

    .line 101
    :pswitch_24
    const-string p0, "getAllResourceOveruseStats"

    return-object p0

    .line 97
    :pswitch_27
    const-string p0, "getResourceOveruseStats"

    return-object p0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
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

    .line 88
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 518
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 148
    invoke-static {p1}, Landroid/media/tv/watchdogmanager/ITvWatchdogService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 152
    nop

    .line 153
    const-string v0, "android.media.tv.watchdogmanager.ITvWatchdogService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 154
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 157
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return v1

    .line 160
    :cond_17
    packed-switch p1, :pswitch_data_120

    .line 290
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 281
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, p1}, Landroid/media/tv/watchdogmanager/ITvWatchdogService$Stub;->getResourceOveruseConfigurations(I)Ljava/util/List;

    move-result-object p1

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 286
    goto/16 :goto_11e

    .line 269
    :pswitch_32
    sget-object p1, Landroid/media/tv/watchdogmanager/ResourceOveruseConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/watchdogmanager/ITvWatchdogService$Stub;->setResourceOveruseConfigurations(Ljava/util/List;I)I

    move-result p1

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    goto/16 :goto_11e

    .line 259
    :pswitch_4b
    sget-object p1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, p1}, Landroid/media/tv/watchdogmanager/ITvWatchdogService$Stub;->getPackageKillableStatesAsUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 264
    goto/16 :goto_11e

    .line 246
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 248
    sget-object p4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/UserHandle;

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/watchdogmanager/ITvWatchdogService$Stub;->setKillablePackageAsUser(Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    goto/16 :goto_11e

    .line 237
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/watchdogmanager/IResourceOveruseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/watchdogmanager/IResourceOveruseListener;

    move-result-object p1

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, p1}, Landroid/media/tv/watchdogmanager/ITvWatchdogService$Stub;->removeResourceOveruseListenerForSystem(Landroid/media/tv/watchdogmanager/IResourceOveruseListener;)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    goto/16 :goto_11e

    .line 226
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/media/tv/watchdogmanager/IResourceOveruseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/watchdogmanager/IResourceOveruseListener;

    move-result-object p4

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/watchdogmanager/ITvWatchdogService$Stub;->addResourceOveruseListenerForSystem(ILandroid/media/tv/watchdogmanager/IResourceOveruseListener;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    goto/16 :goto_11e

    .line 218
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/watchdogmanager/IResourceOveruseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/watchdogmanager/IResourceOveruseListener;

    move-result-object p1

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, p1}, Landroid/media/tv/watchdogmanager/ITvWatchdogService$Stub;->removeResourceOveruseListener(Landroid/media/tv/watchdogmanager/IResourceOveruseListener;)V

    .line 221
    goto :goto_11e

    .line 207
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/media/tv/watchdogmanager/IResourceOveruseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/watchdogmanager/IResourceOveruseListener;

    move-result-object p4

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/watchdogmanager/ITvWatchdogService$Stub;->addResourceOveruseListener(ILandroid/media/tv/watchdogmanager/IResourceOveruseListener;)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    goto :goto_11e

    .line 191
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 193
    sget-object p4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/UserHandle;

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/media/tv/watchdogmanager/ITvWatchdogService$Stub;->getResourceOveruseStatsForUserPackage(Ljava/lang/String;Landroid/os/UserHandle;II)Landroid/media/tv/watchdogmanager/ResourceOveruseStats;

    move-result-object p1

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 202
    goto :goto_11e

    .line 177
    :pswitch_ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/watchdogmanager/ITvWatchdogService$Stub;->getAllResourceOveruseStats(III)Ljava/util/List;

    move-result-object p1

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 186
    goto :goto_11e

    .line 165
    :pswitch_108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/watchdogmanager/ITvWatchdogService$Stub;->getResourceOveruseStats(II)Landroid/media/tv/watchdogmanager/ResourceOveruseStats;

    move-result-object p1

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 172
    nop

    .line 293
    :goto_11e
    return v1

    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_108
        :pswitch_ee
        :pswitch_cc
        :pswitch_b6
        :pswitch_a7
        :pswitch_90
        :pswitch_7d
        :pswitch_62
        :pswitch_4b
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
