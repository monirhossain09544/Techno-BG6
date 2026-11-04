.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppManager.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createBiInteractiveApp:I = 0x9

.field static final blacklist TRANSACTION_createMediaView:I = 0x36

.field static final blacklist TRANSACTION_createSession:I = 0x22

.field static final blacklist TRANSACTION_destroyBiInteractiveApp:I = 0xa

.field static final blacklist TRANSACTION_dispatchSurfaceChanged:I = 0x31

.field static final blacklist TRANSACTION_getAppLinkInfoList:I = 0x2

.field static final blacklist TRANSACTION_getTvInteractiveAppServiceList:I = 0x1

.field static final blacklist TRANSACTION_notifyAdBufferConsumed:I = 0x34

.field static final blacklist TRANSACTION_notifyAdResponse:I = 0x33

.field static final blacklist TRANSACTION_notifyBroadcastInfoResponse:I = 0x32

.field static final blacklist TRANSACTION_notifyContentAllowed:I = 0x2a

.field static final blacklist TRANSACTION_notifyContentBlocked:I = 0x2b

.field static final blacklist TRANSACTION_notifyError:I = 0x18

.field static final blacklist TRANSACTION_notifyRecordingConnectionFailed:I = 0x1d

.field static final blacklist TRANSACTION_notifyRecordingDisconnected:I = 0x1e

.field static final blacklist TRANSACTION_notifyRecordingError:I = 0x20

.field static final blacklist TRANSACTION_notifyRecordingScheduled:I = 0x21

.field static final blacklist TRANSACTION_notifyRecordingStarted:I = 0x2d

.field static final blacklist TRANSACTION_notifyRecordingStopped:I = 0x2e

.field static final blacklist TRANSACTION_notifyRecordingTuned:I = 0x1f

.field static final blacklist TRANSACTION_notifySignalStrength:I = 0x2c

.field static final blacklist TRANSACTION_notifyTimeShiftCurrentPositionChanged:I = 0x1c

.field static final blacklist TRANSACTION_notifyTimeShiftPlaybackParams:I = 0x19

.field static final blacklist TRANSACTION_notifyTimeShiftStartPositionChanged:I = 0x1b

.field static final blacklist TRANSACTION_notifyTimeShiftStatusChanged:I = 0x1a

.field static final blacklist TRANSACTION_notifyTrackSelected:I = 0x25

.field static final blacklist TRANSACTION_notifyTracksChanged:I = 0x26

.field static final blacklist TRANSACTION_notifyTuned:I = 0x24

.field static final blacklist TRANSACTION_notifyTvMessage:I = 0x2f

.field static final blacklist TRANSACTION_notifyVideoAvailable:I = 0x27

.field static final blacklist TRANSACTION_notifyVideoFreezeUpdated:I = 0x29

.field static final blacklist TRANSACTION_notifyVideoUnavailable:I = 0x28

.field static final blacklist TRANSACTION_registerAppLinkInfo:I = 0x3

.field static final blacklist TRANSACTION_registerCallback:I = 0x39

.field static final blacklist TRANSACTION_relayoutMediaView:I = 0x37

.field static final blacklist TRANSACTION_releaseSession:I = 0x23

.field static final blacklist TRANSACTION_removeMediaView:I = 0x38

.field static final blacklist TRANSACTION_resetInteractiveApp:I = 0x8

.field static final blacklist TRANSACTION_sendAppLinkCommand:I = 0x5

.field static final blacklist TRANSACTION_sendAvailableSpeeds:I = 0x13

.field static final blacklist TRANSACTION_sendCertificate:I = 0x15

.field static final blacklist TRANSACTION_sendCurrentChannelLcn:I = 0xe

.field static final blacklist TRANSACTION_sendCurrentChannelUri:I = 0xd

.field static final blacklist TRANSACTION_sendCurrentTvInputId:I = 0x11

.field static final blacklist TRANSACTION_sendCurrentVideoBounds:I = 0xc

.field static final blacklist TRANSACTION_sendSelectedTrackInfo:I = 0x35

.field static final blacklist TRANSACTION_sendSigningResult:I = 0x14

.field static final blacklist TRANSACTION_sendStreamVolume:I = 0xf

.field static final blacklist TRANSACTION_sendTimeShiftMode:I = 0x12

.field static final blacklist TRANSACTION_sendTrackInfoList:I = 0x10

.field static final blacklist TRANSACTION_sendTvRecordingInfo:I = 0x16

.field static final blacklist TRANSACTION_sendTvRecordingInfoList:I = 0x17

.field static final blacklist TRANSACTION_setSurface:I = 0x30

.field static final blacklist TRANSACTION_setTeletextAppEnabled:I = 0xb

.field static final blacklist TRANSACTION_startInteractiveApp:I = 0x6

.field static final blacklist TRANSACTION_stopInteractiveApp:I = 0x7

.field static final blacklist TRANSACTION_unregisterAppLinkInfo:I = 0x4

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x3a


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 206
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 207
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppManager;
    .registers 3

    .line 215
    if-nez p0, :cond_4

    .line 216
    const/4 p0, 0x0

    return-object p0

    .line 218
    :cond_4
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppManager;

    if-eqz v1, :cond_13

    .line 220
    check-cast v0, Landroid/media/tv/interactive/ITvInteractiveAppManager;

    return-object v0

    .line 222
    :cond_13
    new-instance v0, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 231
    packed-switch p0, :pswitch_data_e6

    .line 467
    const/4 p0, 0x0

    return-object p0

    .line 463
    :pswitch_5
    const-string/jumbo p0, "unregisterCallback"

    return-object p0

    .line 459
    :pswitch_9
    const-string/jumbo p0, "registerCallback"

    return-object p0

    .line 455
    :pswitch_d
    const-string/jumbo p0, "removeMediaView"

    return-object p0

    .line 451
    :pswitch_11
    const-string/jumbo p0, "relayoutMediaView"

    return-object p0

    .line 447
    :pswitch_15
    const-string p0, "createMediaView"

    return-object p0

    .line 443
    :pswitch_18
    const-string/jumbo p0, "sendSelectedTrackInfo"

    return-object p0

    .line 439
    :pswitch_1c
    const-string/jumbo p0, "notifyAdBufferConsumed"

    return-object p0

    .line 435
    :pswitch_20
    const-string/jumbo p0, "notifyAdResponse"

    return-object p0

    .line 431
    :pswitch_24
    const-string/jumbo p0, "notifyBroadcastInfoResponse"

    return-object p0

    .line 427
    :pswitch_28
    const-string p0, "dispatchSurfaceChanged"

    return-object p0

    .line 423
    :pswitch_2b
    const-string/jumbo p0, "setSurface"

    return-object p0

    .line 419
    :pswitch_2f
    const-string/jumbo p0, "notifyTvMessage"

    return-object p0

    .line 415
    :pswitch_33
    const-string/jumbo p0, "notifyRecordingStopped"

    return-object p0

    .line 411
    :pswitch_37
    const-string/jumbo p0, "notifyRecordingStarted"

    return-object p0

    .line 407
    :pswitch_3b
    const-string/jumbo p0, "notifySignalStrength"

    return-object p0

    .line 403
    :pswitch_3f
    const-string/jumbo p0, "notifyContentBlocked"

    return-object p0

    .line 399
    :pswitch_43
    const-string/jumbo p0, "notifyContentAllowed"

    return-object p0

    .line 395
    :pswitch_47
    const-string/jumbo p0, "notifyVideoFreezeUpdated"

    return-object p0

    .line 391
    :pswitch_4b
    const-string/jumbo p0, "notifyVideoUnavailable"

    return-object p0

    .line 387
    :pswitch_4f
    const-string/jumbo p0, "notifyVideoAvailable"

    return-object p0

    .line 383
    :pswitch_53
    const-string/jumbo p0, "notifyTracksChanged"

    return-object p0

    .line 379
    :pswitch_57
    const-string/jumbo p0, "notifyTrackSelected"

    return-object p0

    .line 375
    :pswitch_5b
    const-string/jumbo p0, "notifyTuned"

    return-object p0

    .line 371
    :pswitch_5f
    const-string/jumbo p0, "releaseSession"

    return-object p0

    .line 367
    :pswitch_63
    const-string p0, "createSession"

    return-object p0

    .line 363
    :pswitch_66
    const-string/jumbo p0, "notifyRecordingScheduled"

    return-object p0

    .line 359
    :pswitch_6a
    const-string/jumbo p0, "notifyRecordingError"

    return-object p0

    .line 355
    :pswitch_6e
    const-string/jumbo p0, "notifyRecordingTuned"

    return-object p0

    .line 351
    :pswitch_72
    const-string/jumbo p0, "notifyRecordingDisconnected"

    return-object p0

    .line 347
    :pswitch_76
    const-string/jumbo p0, "notifyRecordingConnectionFailed"

    return-object p0

    .line 343
    :pswitch_7a
    const-string/jumbo p0, "notifyTimeShiftCurrentPositionChanged"

    return-object p0

    .line 339
    :pswitch_7e
    const-string/jumbo p0, "notifyTimeShiftStartPositionChanged"

    return-object p0

    .line 335
    :pswitch_82
    const-string/jumbo p0, "notifyTimeShiftStatusChanged"

    return-object p0

    .line 331
    :pswitch_86
    const-string/jumbo p0, "notifyTimeShiftPlaybackParams"

    return-object p0

    .line 327
    :pswitch_8a
    const-string/jumbo p0, "notifyError"

    return-object p0

    .line 323
    :pswitch_8e
    const-string/jumbo p0, "sendTvRecordingInfoList"

    return-object p0

    .line 319
    :pswitch_92
    const-string/jumbo p0, "sendTvRecordingInfo"

    return-object p0

    .line 315
    :pswitch_96
    const-string/jumbo p0, "sendCertificate"

    return-object p0

    .line 311
    :pswitch_9a
    const-string/jumbo p0, "sendSigningResult"

    return-object p0

    .line 307
    :pswitch_9e
    const-string/jumbo p0, "sendAvailableSpeeds"

    return-object p0

    .line 303
    :pswitch_a2
    const-string/jumbo p0, "sendTimeShiftMode"

    return-object p0

    .line 299
    :pswitch_a6
    const-string/jumbo p0, "sendCurrentTvInputId"

    return-object p0

    .line 295
    :pswitch_aa
    const-string/jumbo p0, "sendTrackInfoList"

    return-object p0

    .line 291
    :pswitch_ae
    const-string/jumbo p0, "sendStreamVolume"

    return-object p0

    .line 287
    :pswitch_b2
    const-string/jumbo p0, "sendCurrentChannelLcn"

    return-object p0

    .line 283
    :pswitch_b6
    const-string/jumbo p0, "sendCurrentChannelUri"

    return-object p0

    .line 279
    :pswitch_ba
    const-string/jumbo p0, "sendCurrentVideoBounds"

    return-object p0

    .line 275
    :pswitch_be
    const-string/jumbo p0, "setTeletextAppEnabled"

    return-object p0

    .line 271
    :pswitch_c2
    const-string p0, "destroyBiInteractiveApp"

    return-object p0

    .line 267
    :pswitch_c5
    const-string p0, "createBiInteractiveApp"

    return-object p0

    .line 263
    :pswitch_c8
    const-string/jumbo p0, "resetInteractiveApp"

    return-object p0

    .line 259
    :pswitch_cc
    const-string/jumbo p0, "stopInteractiveApp"

    return-object p0

    .line 255
    :pswitch_d0
    const-string/jumbo p0, "startInteractiveApp"

    return-object p0

    .line 251
    :pswitch_d4
    const-string/jumbo p0, "sendAppLinkCommand"

    return-object p0

    .line 247
    :pswitch_d8
    const-string/jumbo p0, "unregisterAppLinkInfo"

    return-object p0

    .line 243
    :pswitch_dc
    const-string/jumbo p0, "registerAppLinkInfo"

    return-object p0

    .line 239
    :pswitch_e0
    const-string p0, "getAppLinkInfoList"

    return-object p0

    .line 235
    :pswitch_e3
    const-string p0, "getTvInteractiveAppServiceList"

    return-object p0

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_e3
        :pswitch_e0
        :pswitch_dc
        :pswitch_d8
        :pswitch_d4
        :pswitch_d0
        :pswitch_cc
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_be
        :pswitch_ba
        :pswitch_b6
        :pswitch_b2
        :pswitch_ae
        :pswitch_aa
        :pswitch_a6
        :pswitch_a2
        :pswitch_9e
        :pswitch_9a
        :pswitch_96
        :pswitch_92
        :pswitch_8e
        :pswitch_8a
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
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

    .line 226
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2344
    const/16 v0, 0x39

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 474
    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    nop

    .line 479
    const-string v3, "android.media.tv.interactive.ITvInteractiveAppManager"

    const/4 v6, 0x1

    if-lt p1, v6, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 480
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 483
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    return v6

    .line 486
    :cond_17
    packed-switch p1, :pswitch_data_5e2

    .line 1262
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1252
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    move-result-object v1

    .line 1254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1255
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1256
    invoke-virtual {p0, v1, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;I)V

    .line 1257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    goto/16 :goto_5e0

    .line 1241
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    move-result-object v1

    .line 1243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1244
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1245
    invoke-virtual {p0, v1, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;I)V

    .line 1246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    goto/16 :goto_5e0

    .line 1230
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1233
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1234
    invoke-virtual {p0, v1, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->removeMediaView(Landroid/os/IBinder;I)V

    .line 1235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    goto/16 :goto_5e0

    .line 1217
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1219
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 1221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1222
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1223
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->relayoutMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 1224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    goto/16 :goto_5e0

    .line 1202
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1204
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1206
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 1208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1210
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->createMediaView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 1211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    goto/16 :goto_5e0

    .line 1189
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1191
    sget-object v3, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1194
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1195
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendSelectedTrackInfo(Landroid/os/IBinder;Ljava/util/List;I)V

    .line 1196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    goto/16 :goto_5e0

    .line 1176
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1178
    sget-object v3, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/AdBuffer;

    .line 1180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1182
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyAdBufferConsumed(Landroid/os/IBinder;Landroid/media/tv/AdBuffer;I)V

    .line 1183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    goto/16 :goto_5e0

    .line 1163
    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1165
    sget-object v3, Landroid/media/tv/AdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/AdResponse;

    .line 1167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1169
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyAdResponse(Landroid/os/IBinder;Landroid/media/tv/AdResponse;I)V

    .line 1170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    goto/16 :goto_5e0

    .line 1150
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1152
    sget-object v3, Landroid/media/tv/BroadcastInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/BroadcastInfoResponse;

    .line 1154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1155
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1156
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyBroadcastInfoResponse(Landroid/os/IBinder;Landroid/media/tv/BroadcastInfoResponse;I)V

    .line 1157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1158
    goto/16 :goto_5e0

    .line 1133
    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1143
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V

    .line 1144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    goto/16 :goto_5e0

    .line 1120
    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1122
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 1124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V

    .line 1127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    goto/16 :goto_5e0

    .line 1105
    :pswitch_13f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1109
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1112
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1113
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyTvMessage(Landroid/os/IBinder;ILandroid/os/Bundle;I)V

    .line 1114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    goto/16 :goto_5e0

    .line 1092
    :pswitch_15e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1094
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1096
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1097
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyRecordingStopped(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 1099
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    goto/16 :goto_5e0

    .line 1077
    :pswitch_175
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1079
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1081
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1084
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1085
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyRecordingStarted(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1086
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    goto/16 :goto_5e0

    .line 1064
    :pswitch_190
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1066
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1068
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1069
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1070
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifySignalStrength(Landroid/os/IBinder;II)V

    .line 1071
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    goto/16 :goto_5e0

    .line 1051
    :pswitch_1a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1053
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1055
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1056
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1057
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyContentBlocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 1058
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    goto/16 :goto_5e0

    .line 1040
    :pswitch_1be
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1042
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1043
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1044
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyContentAllowed(Landroid/os/IBinder;I)V

    .line 1045
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    goto/16 :goto_5e0

    .line 1027
    :pswitch_1d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1031
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1032
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyVideoFreezeUpdated(Landroid/os/IBinder;ZI)V

    .line 1034
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    goto/16 :goto_5e0

    .line 1014
    :pswitch_1e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1016
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1018
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1019
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyVideoUnavailable(Landroid/os/IBinder;II)V

    .line 1021
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    goto/16 :goto_5e0

    .line 1003
    :pswitch_1ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1005
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1006
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1007
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyVideoAvailable(Landroid/os/IBinder;I)V

    .line 1008
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    goto/16 :goto_5e0

    .line 990
    :pswitch_212
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 992
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 994
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 995
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 996
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyTracksChanged(Landroid/os/IBinder;Ljava/util/List;I)V

    .line 997
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    goto/16 :goto_5e0

    .line 975
    :pswitch_22b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 977
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 979
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 981
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 982
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 983
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyTrackSelected(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 984
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    goto/16 :goto_5e0

    .line 962
    :pswitch_246
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 964
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 966
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 967
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyTuned(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    goto/16 :goto_5e0

    .line 951
    :pswitch_261
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 953
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 954
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->releaseSession(Landroid/os/IBinder;I)V

    .line 956
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    goto/16 :goto_5e0

    .line 934
    :pswitch_274
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    .line 936
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 940
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 942
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 943
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 944
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->createSession(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;III)V

    .line 945
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    goto/16 :goto_5e0

    .line 919
    :pswitch_298
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 921
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 923
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 925
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 926
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyRecordingScheduled(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    goto/16 :goto_5e0

    .line 904
    :pswitch_2b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 906
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 908
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 910
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 911
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 912
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyRecordingError(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    goto/16 :goto_5e0

    .line 889
    :pswitch_2ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 891
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 893
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 895
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 897
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyRecordingTuned(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    goto/16 :goto_5e0

    .line 874
    :pswitch_2ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 876
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 878
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 880
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyRecordingDisconnected(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 883
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    goto/16 :goto_5e0

    .line 859
    :pswitch_308
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 861
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 863
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 865
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 866
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 867
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyRecordingConnectionFailed(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 868
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    goto/16 :goto_5e0

    .line 844
    :pswitch_323
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 846
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 848
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 851
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyTimeShiftCurrentPositionChanged(Landroid/os/IBinder;Ljava/lang/String;JI)V

    .line 853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    goto/16 :goto_5e0

    .line 829
    :pswitch_33f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 831
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 836
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 837
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyTimeShiftStartPositionChanged(Landroid/os/IBinder;Ljava/lang/String;JI)V

    .line 838
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    goto/16 :goto_5e0

    .line 814
    :pswitch_35b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 820
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 821
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyTimeShiftStatusChanged(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 823
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    goto/16 :goto_5e0

    .line 801
    :pswitch_376
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 803
    sget-object v2, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlaybackParams;

    .line 805
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 807
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyTimeShiftPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V

    .line 808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    goto/16 :goto_5e0

    .line 786
    :pswitch_391
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 790
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 793
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->notifyError(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 795
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    goto/16 :goto_5e0

    .line 773
    :pswitch_3b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 775
    sget-object v2, Landroid/media/tv/TvRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 777
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 778
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendTvRecordingInfoList(Landroid/os/IBinder;Ljava/util/List;I)V

    .line 780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    goto/16 :goto_5e0

    .line 760
    :pswitch_3c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 762
    sget-object v2, Landroid/media/tv/TvRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvRecordingInfo;

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 765
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendTvRecordingInfo(Landroid/os/IBinder;Landroid/media/tv/TvRecordingInfo;I)V

    .line 767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    goto/16 :goto_5e0

    .line 743
    :pswitch_3e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 749
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 752
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 753
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendCertificate(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    goto/16 :goto_5e0

    .line 728
    :pswitch_408
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 735
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendSigningResult(Landroid/os/IBinder;Ljava/lang/String;[BI)V

    .line 737
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    goto/16 :goto_5e0

    .line 715
    :pswitch_423
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 720
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendAvailableSpeeds(Landroid/os/IBinder;[FI)V

    .line 722
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    goto/16 :goto_5e0

    .line 702
    :pswitch_43a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 708
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendTimeShiftMode(Landroid/os/IBinder;II)V

    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    goto/16 :goto_5e0

    .line 689
    :pswitch_451
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 691
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 694
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 695
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendCurrentTvInputId(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 696
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    goto/16 :goto_5e0

    .line 676
    :pswitch_468
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 678
    sget-object v2, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendTrackInfoList(Landroid/os/IBinder;Ljava/util/List;I)V

    .line 683
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    goto/16 :goto_5e0

    .line 663
    :pswitch_481
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendStreamVolume(Landroid/os/IBinder;FI)V

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    goto/16 :goto_5e0

    .line 650
    :pswitch_498
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendCurrentChannelLcn(Landroid/os/IBinder;II)V

    .line 657
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    goto/16 :goto_5e0

    .line 637
    :pswitch_4af
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 639
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 642
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendCurrentChannelUri(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    goto/16 :goto_5e0

    .line 624
    :pswitch_4ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 626
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendCurrentVideoBounds(Landroid/os/IBinder;Landroid/graphics/Rect;I)V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    goto/16 :goto_5e0

    .line 611
    :pswitch_4e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->setTeletextAppEnabled(Landroid/os/IBinder;ZI)V

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    goto/16 :goto_5e0

    .line 598
    :pswitch_4fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->destroyBiInteractiveApp(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    goto/16 :goto_5e0

    .line 583
    :pswitch_513
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 585
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 587
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->createBiInteractiveApp(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    goto/16 :goto_5e0

    .line 572
    :pswitch_536
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->resetInteractiveApp(Landroid/os/IBinder;I)V

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    goto/16 :goto_5e0

    .line 561
    :pswitch_549
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->stopInteractiveApp(Landroid/os/IBinder;I)V

    .line 566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    goto/16 :goto_5e0

    .line 550
    :pswitch_55c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->startInteractiveApp(Landroid/os/IBinder;I)V

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    goto :goto_5e0

    .line 537
    :pswitch_56e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 539
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    goto :goto_5e0

    .line 524
    :pswitch_588
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 526
    sget-object v2, Landroid/media/tv/interactive/AppLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/AppLinkInfo;

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->unregisterAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;I)V

    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    goto :goto_5e0

    .line 511
    :pswitch_5a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 513
    sget-object v2, Landroid/media/tv/interactive/AppLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/AppLinkInfo;

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 517
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->registerAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;I)V

    .line 518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    goto :goto_5e0

    .line 501
    :pswitch_5bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->getAppLinkInfoList(I)Ljava/util/List;

    move-result-object v0

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 506
    goto :goto_5e0

    .line 491
    :pswitch_5ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {p0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppManager$Stub;->getTvInteractiveAppServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 496
    nop

    .line 1265
    :goto_5e0
    return v6

    nop

    :pswitch_data_5e2
    .packed-switch 0x1
        :pswitch_5ce
        :pswitch_5bc
        :pswitch_5a2
        :pswitch_588
        :pswitch_56e
        :pswitch_55c
        :pswitch_549
        :pswitch_536
        :pswitch_513
        :pswitch_4fc
        :pswitch_4e5
        :pswitch_4ca
        :pswitch_4af
        :pswitch_498
        :pswitch_481
        :pswitch_468
        :pswitch_451
        :pswitch_43a
        :pswitch_423
        :pswitch_408
        :pswitch_3e4
        :pswitch_3c9
        :pswitch_3b0
        :pswitch_391
        :pswitch_376
        :pswitch_35b
        :pswitch_33f
        :pswitch_323
        :pswitch_308
        :pswitch_2ed
        :pswitch_2ce
        :pswitch_2b3
        :pswitch_298
        :pswitch_274
        :pswitch_261
        :pswitch_246
        :pswitch_22b
        :pswitch_212
        :pswitch_1ff
        :pswitch_1e8
        :pswitch_1d1
        :pswitch_1be
        :pswitch_1a7
        :pswitch_190
        :pswitch_175
        :pswitch_15e
        :pswitch_13f
        :pswitch_124
        :pswitch_104
        :pswitch_e9
        :pswitch_ce
        :pswitch_b3
        :pswitch_9a
        :pswitch_7b
        :pswitch_60
        :pswitch_4d
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
