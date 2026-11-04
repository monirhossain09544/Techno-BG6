.class public abstract Landroid/os/ITradeInMode$Stub;
.super Landroid/os/Binder;
.source "ITradeInMode.java"

# interfaces
.implements Landroid/os/ITradeInMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ITradeInMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ITradeInMode$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_enterEvaluationMode:I = 0x3

.field static final blacklist TRANSACTION_getFoldCount:I = 0x9

.field static final blacklist TRANSACTION_getHingeCount:I = 0x8

.field static final blacklist TRANSACTION_getHingeLifeSpan:I = 0xa

.field static final blacklist TRANSACTION_getMoistureIntrusionDetected:I = 0xc

.field static final blacklist TRANSACTION_getScreenPartStatus:I = 0xb

.field static final blacklist TRANSACTION_isEvaluationModeAllowed:I = 0x2

.field static final blacklist TRANSACTION_isTesting:I = 0x7

.field static final blacklist TRANSACTION_scheduleWipeForTesting:I = 0x4

.field static final blacklist TRANSACTION_start:I = 0x1

.field static final blacklist TRANSACTION_startTesting:I = 0x5

.field static final blacklist TRANSACTION_stopTesting:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 138
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 139
    const-string v0, "android.os.ITradeInMode"

    invoke-virtual {p0, p0, v0}, Landroid/os/ITradeInMode$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/ITradeInMode;
    .registers 3

    .line 147
    if-nez p0, :cond_4

    .line 148
    const/4 p0, 0x0

    return-object p0

    .line 150
    :cond_4
    const-string v0, "android.os.ITradeInMode"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/ITradeInMode;

    if-eqz v1, :cond_13

    .line 152
    check-cast v0, Landroid/os/ITradeInMode;

    return-object v0

    .line 154
    :cond_13
    new-instance v0, Landroid/os/ITradeInMode$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/ITradeInMode$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 163
    packed-switch p0, :pswitch_data_2e

    .line 215
    const/4 p0, 0x0

    return-object p0

    .line 211
    :pswitch_5
    const-string p0, "getMoistureIntrusionDetected"

    return-object p0

    .line 207
    :pswitch_8
    const-string p0, "getScreenPartStatus"

    return-object p0

    .line 203
    :pswitch_b
    const-string p0, "getHingeLifeSpan"

    return-object p0

    .line 199
    :pswitch_e
    const-string p0, "getFoldCount"

    return-object p0

    .line 195
    :pswitch_11
    const-string p0, "getHingeCount"

    return-object p0

    .line 191
    :pswitch_14
    const-string p0, "isTesting"

    return-object p0

    .line 187
    :pswitch_17
    const-string/jumbo p0, "stopTesting"

    return-object p0

    .line 183
    :pswitch_1b
    const-string/jumbo p0, "startTesting"

    return-object p0

    .line 179
    :pswitch_1f
    const-string/jumbo p0, "scheduleWipeForTesting"

    return-object p0

    .line 175
    :pswitch_23
    const-string p0, "enterEvaluationMode"

    return-object p0

    .line 171
    :pswitch_26
    const-string p0, "isEvaluationModeAllowed"

    return-object p0

    .line 167
    :pswitch_29
    const-string/jumbo p0, "start"

    return-object p0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_14
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

    .line 628
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 222
    invoke-static {p1}, Landroid/os/ITradeInMode$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    nop

    .line 227
    const-string v0, "android.os.ITradeInMode"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 228
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 231
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    return v1

    .line 234
    :cond_17
    packed-switch p1, :pswitch_data_b0

    .line 328
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 319
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v2, v3}, Landroid/os/ITradeInMode$Stub;->getMoistureIntrusionDetected(J)I

    move-result p1

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    goto/16 :goto_ae

    .line 311
    :pswitch_32
    invoke-virtual {p0}, Landroid/os/ITradeInMode$Stub;->getScreenPartStatus()[I

    move-result-object p1

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 314
    goto/16 :goto_ae

    .line 302
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, p1}, Landroid/os/ITradeInMode$Stub;->getHingeLifeSpan(I)I

    move-result p1

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    goto :goto_ae

    .line 292
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, p1}, Landroid/os/ITradeInMode$Stub;->getFoldCount(I)I

    move-result p1

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    goto :goto_ae

    .line 284
    :pswitch_62
    invoke-virtual {p0}, Landroid/os/ITradeInMode$Stub;->getHingeCount()I

    move-result p1

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    goto :goto_ae

    .line 277
    :pswitch_6d
    invoke-virtual {p0}, Landroid/os/ITradeInMode$Stub;->isTesting()Z

    move-result p1

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 280
    goto :goto_ae

    .line 271
    :pswitch_78
    invoke-virtual {p0}, Landroid/os/ITradeInMode$Stub;->stopTesting()V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto :goto_ae

    .line 265
    :pswitch_7f
    invoke-virtual {p0}, Landroid/os/ITradeInMode$Stub;->startTesting()V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    goto :goto_ae

    .line 259
    :pswitch_86
    invoke-virtual {p0}, Landroid/os/ITradeInMode$Stub;->scheduleWipeForTesting()V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto :goto_ae

    .line 252
    :pswitch_8d
    invoke-virtual {p0}, Landroid/os/ITradeInMode$Stub;->enterEvaluationMode()Z

    move-result p1

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 255
    goto :goto_ae

    .line 245
    :pswitch_98
    invoke-virtual {p0}, Landroid/os/ITradeInMode$Stub;->isEvaluationModeAllowed()Z

    move-result p1

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 248
    goto :goto_ae

    .line 238
    :pswitch_a3
    invoke-virtual {p0}, Landroid/os/ITradeInMode$Stub;->start()Z

    move-result p1

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 241
    nop

    .line 331
    :goto_ae
    return v1

    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_98
        :pswitch_8d
        :pswitch_86
        :pswitch_7f
        :pswitch_78
        :pswitch_6d
        :pswitch_62
        :pswitch_50
        :pswitch_3e
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
