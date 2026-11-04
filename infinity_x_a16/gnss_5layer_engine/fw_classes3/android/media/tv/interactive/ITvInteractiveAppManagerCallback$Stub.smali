.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppManagerCallback.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onInteractiveAppServiceAdded:I = 0x1

.field static final blacklist TRANSACTION_onInteractiveAppServiceRemoved:I = 0x2

.field static final blacklist TRANSACTION_onInteractiveAppServiceUpdated:I = 0x3

.field static final blacklist TRANSACTION_onStateChanged:I = 0x5

.field static final blacklist TRANSACTION_onTvInteractiveAppServiceInfoUpdated:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
    .registers 3

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppManagerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    if-eqz v1, :cond_13

    .line 59
    check-cast v0, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    return-object v0

    .line 61
    :cond_13
    new-instance v0, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 70
    packed-switch p0, :pswitch_data_1a

    .line 94
    const/4 p0, 0x0

    return-object p0

    .line 90
    :pswitch_5
    const-string/jumbo p0, "onStateChanged"

    return-object p0

    .line 86
    :pswitch_9
    const-string/jumbo p0, "onTvInteractiveAppServiceInfoUpdated"

    return-object p0

    .line 82
    :pswitch_d
    const-string/jumbo p0, "onInteractiveAppServiceUpdated"

    return-object p0

    .line 78
    :pswitch_11
    const-string/jumbo p0, "onInteractiveAppServiceRemoved"

    return-object p0

    .line 74
    :pswitch_15
    const-string/jumbo p0, "onInteractiveAppServiceAdded"

    return-object p0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
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

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 255
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 101
    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 105
    nop

    .line 106
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppManagerCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v1

    .line 113
    :cond_17
    packed-switch p1, :pswitch_data_68

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 150
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->onStateChanged(Ljava/lang/String;III)V

    .line 159
    goto :goto_66

    .line 142
    :pswitch_36
    sget-object p1, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->onTvInteractiveAppServiceInfoUpdated(Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)V

    .line 145
    goto :goto_66

    .line 134
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->onInteractiveAppServiceUpdated(Ljava/lang/String;)V

    .line 137
    goto :goto_66

    .line 126
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->onInteractiveAppServiceRemoved(Ljava/lang/String;)V

    .line 129
    goto :goto_66

    .line 118
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->onInteractiveAppServiceAdded(Ljava/lang/String;)V

    .line 121
    nop

    .line 166
    :goto_66
    return v1

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_50
        :pswitch_45
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
