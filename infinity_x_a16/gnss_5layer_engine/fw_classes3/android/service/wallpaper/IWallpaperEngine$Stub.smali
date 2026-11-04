.class public abstract Landroid/service/wallpaper/IWallpaperEngine$Stub;
.super Landroid/os/Binder;
.source "IWallpaperEngine.java"

# interfaces
.implements Landroid/service/wallpaper/IWallpaperEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/IWallpaperEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.wallpaper.IWallpaperEngine"

.field static final blacklist TRANSACTION_addLocalColorsAreas:I = 0xe

.field static final blacklist TRANSACTION_applyDimming:I = 0x10

.field static final greylist-max-o TRANSACTION_destroy:I = 0xa

.field static final greylist-max-o TRANSACTION_dispatchPointer:I = 0x7

.field static final greylist-max-o TRANSACTION_dispatchWallpaperCommand:I = 0x8

.field static final blacklist TRANSACTION_mirrorSurfaceControl:I = 0xf

.field static final blacklist TRANSACTION_onApplyWallpaper:I = 0x12

.field static final blacklist TRANSACTION_onScreenTurnedOn:I = 0x5

.field static final blacklist TRANSACTION_onScreenTurningOn:I = 0x4

.field static final blacklist TRANSACTION_removeLocalColorsAreas:I = 0xd

.field static final greylist-max-o TRANSACTION_requestWallpaperColors:I = 0x9

.field static final blacklist TRANSACTION_resizePreview:I = 0xc

.field static final greylist-max-o TRANSACTION_setDesiredSize:I = 0x1

.field static final greylist-max-o TRANSACTION_setDisplayPadding:I = 0x2

.field static final greylist-max-o TRANSACTION_setInAmbientMode:I = 0x6

.field static final greylist-max-o TRANSACTION_setVisibility:I = 0x3

.field static final blacklist TRANSACTION_setWallpaperFlags:I = 0x11

.field static final blacklist TRANSACTION_setZoomOut:I = 0xb


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 84
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    invoke-virtual {p0, p0, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperEngine;
    .registers 3

    .line 92
    if-nez p0, :cond_4

    .line 93
    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_4
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_13

    .line 97
    check-cast v0, Landroid/service/wallpaper/IWallpaperEngine;

    return-object v0

    .line 99
    :cond_13
    new-instance v0, Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 108
    packed-switch p0, :pswitch_data_48

    .line 184
    const/4 p0, 0x0

    return-object p0

    .line 180
    :pswitch_5
    const-string/jumbo p0, "onApplyWallpaper"

    return-object p0

    .line 176
    :pswitch_9
    const-string/jumbo p0, "setWallpaperFlags"

    return-object p0

    .line 172
    :pswitch_d
    const-string p0, "applyDimming"

    return-object p0

    .line 168
    :pswitch_10
    const-string p0, "mirrorSurfaceControl"

    return-object p0

    .line 164
    :pswitch_13
    const-string p0, "addLocalColorsAreas"

    return-object p0

    .line 160
    :pswitch_16
    const-string/jumbo p0, "removeLocalColorsAreas"

    return-object p0

    .line 156
    :pswitch_1a
    const-string/jumbo p0, "resizePreview"

    return-object p0

    .line 152
    :pswitch_1e
    const-string/jumbo p0, "setZoomOut"

    return-object p0

    .line 148
    :pswitch_22
    const-string p0, "destroy"

    return-object p0

    .line 144
    :pswitch_25
    const-string/jumbo p0, "requestWallpaperColors"

    return-object p0

    .line 140
    :pswitch_29
    const-string p0, "dispatchWallpaperCommand"

    return-object p0

    .line 136
    :pswitch_2c
    const-string p0, "dispatchPointer"

    return-object p0

    .line 132
    :pswitch_2f
    const-string/jumbo p0, "setInAmbientMode"

    return-object p0

    .line 128
    :pswitch_33
    const-string/jumbo p0, "onScreenTurnedOn"

    return-object p0

    .line 124
    :pswitch_37
    const-string/jumbo p0, "onScreenTurningOn"

    return-object p0

    .line 120
    :pswitch_3b
    const-string/jumbo p0, "setVisibility"

    return-object p0

    .line 116
    :pswitch_3f
    const-string/jumbo p0, "setDisplayPadding"

    return-object p0

    .line 112
    :pswitch_43
    const-string/jumbo p0, "setDesiredSize"

    return-object p0

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_25
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 103
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 625
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 191
    invoke-static {p1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    nop

    .line 196
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 197
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 200
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    return v1

    .line 203
    :cond_17
    packed-switch p1, :pswitch_data_112

    .line 352
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 343
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->onApplyWallpaper(I)Landroid/app/wallpaper/WallpaperDescription;

    move-result-object p1

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 348
    goto/16 :goto_110

    .line 335
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setWallpaperFlags(I)V

    .line 338
    goto/16 :goto_110

    .line 327
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->applyDimming(F)V

    .line 330
    goto/16 :goto_110

    .line 319
    :pswitch_4b
    invoke-virtual {p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->mirrorSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 322
    goto/16 :goto_110

    .line 312
    :pswitch_57
    sget-object p1, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->addLocalColorsAreas(Ljava/util/List;)V

    .line 315
    goto/16 :goto_110

    .line 304
    :pswitch_65
    sget-object p1, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->removeLocalColorsAreas(Ljava/util/List;)V

    .line 307
    goto/16 :goto_110

    .line 296
    :pswitch_73
    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->resizePreview(Landroid/graphics/Rect;)V

    .line 299
    goto/16 :goto_110

    .line 288
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setZoomOut(F)V

    .line 291
    goto/16 :goto_110

    .line 282
    :pswitch_8f
    invoke-virtual {p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->destroy()V

    .line 283
    goto/16 :goto_110

    .line 277
    :pswitch_94
    invoke-virtual {p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->requestWallpaperColors()V

    .line 278
    goto/16 :goto_110

    .line 262
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 270
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/os/Bundle;

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 273
    goto :goto_110

    .line 254
    :pswitch_ba
    move-object v2, p0

    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->dispatchPointer(Landroid/view/MotionEvent;)V

    .line 257
    goto :goto_110

    .line 244
    :pswitch_ca
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setInAmbientMode(ZJ)V

    .line 249
    goto :goto_110

    .line 238
    :pswitch_da
    move-object v2, p0

    invoke-virtual {p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->onScreenTurnedOn()V

    .line 239
    goto :goto_110

    .line 233
    :pswitch_df
    move-object v2, p0

    invoke-virtual {p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->onScreenTurningOn()V

    .line 234
    goto :goto_110

    .line 226
    :pswitch_e4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setVisibility(Z)V

    .line 229
    goto :goto_110

    .line 218
    :pswitch_f0
    move-object v2, p0

    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setDisplayPadding(Landroid/graphics/Rect;)V

    .line 221
    goto :goto_110

    .line 208
    :pswitch_100
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, p1, p3}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setDesiredSize(II)V

    .line 213
    nop

    .line 355
    :goto_110
    return v1

    nop

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_100
        :pswitch_f0
        :pswitch_e4
        :pswitch_df
        :pswitch_da
        :pswitch_ca
        :pswitch_ba
        :pswitch_99
        :pswitch_94
        :pswitch_8f
        :pswitch_83
        :pswitch_73
        :pswitch_65
        :pswitch_57
        :pswitch_4b
        :pswitch_3f
        :pswitch_33
        :pswitch_20
    .end packed-switch
.end method
