.class public abstract Landroid/net/INetworkScoreService$Stub;
.super Landroid/os/Binder;
.source "INetworkScoreService.java"

# interfaces
.implements Landroid/net/INetworkScoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkScoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkScoreService"

.field static final greylist-max-o TRANSACTION_clearScores:I = 0x2

.field static final greylist-max-o TRANSACTION_disableScoring:I = 0x4

.field static final greylist-max-o TRANSACTION_getActiveScorer:I = 0xa

.field static final greylist-max-o TRANSACTION_getActiveScorerPackage:I = 0x9

.field static final greylist-max-o TRANSACTION_getAllValidScorers:I = 0xb

.field static final greylist-max-o TRANSACTION_isCallerActiveScorer:I = 0x8

.field static final greylist-max-o TRANSACTION_registerNetworkScoreCache:I = 0x5

.field static final greylist-max-o TRANSACTION_requestScores:I = 0x7

.field static final greylist-max-o TRANSACTION_setActiveScorer:I = 0x3

.field static final greylist-max-o TRANSACTION_unregisterNetworkScoreCache:I = 0x6

.field static final greylist-max-o TRANSACTION_updateScores:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 138
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 139
    const-string v0, "android.net.INetworkScoreService"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkScoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreService;
    .registers 3

    .line 147
    if-nez p0, :cond_4

    .line 148
    const/4 p0, 0x0

    return-object p0

    .line 150
    :cond_4
    const-string v0, "android.net.INetworkScoreService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/INetworkScoreService;

    if-eqz v1, :cond_13

    .line 152
    check-cast v0, Landroid/net/INetworkScoreService;

    return-object v0

    .line 154
    :cond_13
    new-instance v0, Landroid/net/INetworkScoreService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetworkScoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 163
    packed-switch p0, :pswitch_data_2c

    .line 211
    const/4 p0, 0x0

    return-object p0

    .line 207
    :pswitch_5
    const-string p0, "getAllValidScorers"

    return-object p0

    .line 203
    :pswitch_8
    const-string p0, "getActiveScorer"

    return-object p0

    .line 199
    :pswitch_b
    const-string p0, "getActiveScorerPackage"

    return-object p0

    .line 195
    :pswitch_e
    const-string p0, "isCallerActiveScorer"

    return-object p0

    .line 191
    :pswitch_11
    const-string/jumbo p0, "requestScores"

    return-object p0

    .line 187
    :pswitch_15
    const-string/jumbo p0, "unregisterNetworkScoreCache"

    return-object p0

    .line 183
    :pswitch_19
    const-string/jumbo p0, "registerNetworkScoreCache"

    return-object p0

    .line 179
    :pswitch_1d
    const-string p0, "disableScoring"

    return-object p0

    .line 175
    :pswitch_20
    const-string/jumbo p0, "setActiveScorer"

    return-object p0

    .line 171
    :pswitch_24
    const-string p0, "clearScores"

    return-object p0

    .line 167
    :pswitch_27
    const-string/jumbo p0, "updateScores"

    return-object p0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_24
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 158
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 623
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 218
    invoke-static {p1}, Landroid/net/INetworkScoreService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 222
    nop

    .line 223
    const-string v0, "android.net.INetworkScoreService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 224
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 227
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    return v1

    .line 230
    :cond_17
    packed-switch p1, :pswitch_data_d8

    .line 332
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 325
    :pswitch_1f
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->getAllValidScorers()Ljava/util/List;

    move-result-object p1

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 328
    goto/16 :goto_d6

    .line 318
    :pswitch_2b
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object p1

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 321
    goto/16 :goto_d6

    .line 311
    :pswitch_37
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object p1

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    goto/16 :goto_d6

    .line 302
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, p1}, Landroid/net/INetworkScoreService$Stub;->isCallerActiveScorer(I)Z

    move-result p1

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 307
    goto/16 :goto_d6

    .line 292
    :pswitch_56
    sget-object p1, Landroid/net/NetworkKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/NetworkKey;

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, p1}, Landroid/net/INetworkScoreService$Stub;->requestScores([Landroid/net/NetworkKey;)Z

    move-result p1

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 297
    goto :goto_d6

    .line 281
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/net/INetworkScoreCache$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreCache;

    move-result-object p4

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, p1, p4}, Landroid/net/INetworkScoreService$Stub;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    goto :goto_d6

    .line 268
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/net/INetworkScoreCache$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreCache;

    move-result-object p4

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {p0, p1, p4, v0}, Landroid/net/INetworkScoreService$Stub;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    goto :goto_d6

    .line 261
    :pswitch_9c
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->disableScoring()V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto :goto_d6

    .line 252
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, p1}, Landroid/net/INetworkScoreService$Stub;->setActiveScorer(Ljava/lang/String;)Z

    move-result p1

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 257
    goto :goto_d6

    .line 244
    :pswitch_b5
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->clearScores()Z

    move-result p1

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 247
    goto :goto_d6

    .line 235
    :pswitch_c0
    sget-object p1, Landroid/net/ScoredNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/ScoredNetwork;

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, p1}, Landroid/net/INetworkScoreService$Stub;->updateScores([Landroid/net/ScoredNetwork;)Z

    move-result p1

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 240
    nop

    .line 335
    :goto_d6
    return v1

    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_c0
        :pswitch_b5
        :pswitch_a3
        :pswitch_9c
        :pswitch_82
        :pswitch_6c
        :pswitch_56
        :pswitch_43
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
