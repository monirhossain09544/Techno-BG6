.class public abstract Landroid/service/wallpaper/IWallpaperService$Stub;
.super Landroid/os/Binder;
.source "IWallpaperService.java"

# interfaces
.implements Landroid/service/wallpaper/IWallpaperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/IWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.wallpaper.IWallpaperService"

.field static final greylist-max-o TRANSACTION_attach:I = 0x1

.field static final blacklist TRANSACTION_detach:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.service.wallpaper.IWallpaperService"

    invoke-virtual {p0, p0, v0}, Landroid/service/wallpaper/IWallpaperService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;
    .registers 3

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_4
    const-string v0, "android.service.wallpaper.IWallpaperService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/wallpaper/IWallpaperService;

    if-eqz v1, :cond_13

    .line 47
    check-cast v0, Landroid/service/wallpaper/IWallpaperService;

    return-object v0

    .line 49
    :cond_13
    new-instance v0, Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/IWallpaperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 58
    packed-switch p0, :pswitch_data_c

    .line 70
    const/4 p0, 0x0

    return-object p0

    .line 66
    :pswitch_5
    const-string p0, "detach"

    return-object p0

    .line 62
    :pswitch_8
    const-string p0, "attach"

    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 77
    invoke-static {p1}, Landroid/service/wallpaper/IWallpaperService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 82
    const-string v2, "android.service.wallpaper.IWallpaperService"

    const/4 v3, 0x1

    if-lt v0, v3, :cond_11

    const v4, 0xffffff

    if-gt v0, v4, :cond_11

    .line 83
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    :cond_11
    const v4, 0x5f4e5446

    if-ne v0, v4, :cond_1c

    .line 86
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v3

    .line 89
    :cond_1c
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_7c

    .line 129
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 122
    :pswitch_26
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    move-object/from16 v4, p0

    invoke-virtual {v4, v0}, Landroid/service/wallpaper/IWallpaperService$Stub;->detach(Landroid/os/IBinder;)V

    .line 125
    goto :goto_7b

    .line 94
    :pswitch_33
    move-object/from16 v4, p0

    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperConnection;

    move-result-object v5

    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 98
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 106
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/graphics/Rect;

    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 110
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 112
    sget-object v0, Landroid/app/WallpaperInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/app/WallpaperInfo;

    .line 114
    sget-object v0, Landroid/app/wallpaper/WallpaperDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/app/wallpaper/WallpaperDescription;

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual/range {v4 .. v15}, Landroid/service/wallpaper/IWallpaperService$Stub;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;IILandroid/app/WallpaperInfo;Landroid/app/wallpaper/WallpaperDescription;)V

    .line 117
    nop

    .line 132
    :goto_7b
    return v3

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_33
        :pswitch_26
    .end packed-switch
.end method
