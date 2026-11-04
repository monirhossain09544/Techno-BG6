.class public abstract Landroid/service/wallpaper/IWallpaperConnection$Stub;
.super Landroid/os/Binder;
.source "IWallpaperConnection.java"

# interfaces
.implements Landroid/service/wallpaper/IWallpaperConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/IWallpaperConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/IWallpaperConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.wallpaper.IWallpaperConnection"

.field static final greylist-max-o TRANSACTION_attachEngine:I = 0x1

.field static final greylist-max-o TRANSACTION_engineShown:I = 0x2

.field static final blacklist TRANSACTION_onLocalWallpaperColorsChanged:I = 0x5

.field static final greylist-max-o TRANSACTION_onWallpaperColorsChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_setWallpaper:I = 0x3


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.service.wallpaper.IWallpaperConnection"

    invoke-virtual {p0, p0, v0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperConnection;
    .registers 3

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_4
    const-string v0, "android.service.wallpaper.IWallpaperConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/wallpaper/IWallpaperConnection;

    if-eqz v1, :cond_13

    .line 57
    check-cast v0, Landroid/service/wallpaper/IWallpaperConnection;

    return-object v0

    .line 59
    :cond_13
    new-instance v0, Landroid/service/wallpaper/IWallpaperConnection$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 68
    packed-switch p0, :pswitch_data_18

    .line 92
    const/4 p0, 0x0

    return-object p0

    .line 88
    :pswitch_5
    const-string/jumbo p0, "onLocalWallpaperColorsChanged"

    return-object p0

    .line 84
    :pswitch_9
    const-string/jumbo p0, "onWallpaperColorsChanged"

    return-object p0

    .line 80
    :pswitch_d
    const-string/jumbo p0, "setWallpaper"

    return-object p0

    .line 76
    :pswitch_11
    const-string p0, "engineShown"

    return-object p0

    .line 72
    :pswitch_14
    const-string p0, "attachEngine"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 282
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 99
    invoke-static {p1}, Landroid/service/wallpaper/IWallpaperConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 103
    nop

    .line 104
    const-string v0, "android.service.wallpaper.IWallpaperConnection"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 105
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 108
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v1

    .line 111
    :cond_17
    packed-switch p1, :pswitch_data_8e

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 157
    :pswitch_1f
    sget-object p1, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    .line 159
    sget-object p4, Landroid/app/WallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/WallpaperColors;

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, p1, p4, v0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;->onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    goto :goto_8d

    .line 146
    :pswitch_3d
    sget-object p1, Landroid/app/WallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperColors;

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, p1, p4}, Landroid/service/wallpaper/IWallpaperConnection$Stub;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;I)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    goto :goto_8d

    .line 136
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/IWallpaperConnection$Stub;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 141
    goto :goto_8d

    .line 127
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperEngine;

    move-result-object p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/IWallpaperConnection$Stub;->engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    goto :goto_8d

    .line 116
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperEngine;

    move-result-object p1

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, p1, p4}, Landroid/service/wallpaper/IWallpaperConnection$Stub;->attachEngine(Landroid/service/wallpaper/IWallpaperEngine;I)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    nop

    .line 172
    :goto_8d
    return v1

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_77
        :pswitch_65
        :pswitch_53
        :pswitch_3d
        :pswitch_1f
    .end packed-switch
.end method
