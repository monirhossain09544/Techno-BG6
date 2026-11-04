.class public abstract Landroid/media/tv/extension/screenmode/IScreenModeSettings$Stub;
.super Landroid/os/Binder;
.source "IScreenModeSettings.java"

# interfaces
.implements Landroid/media/tv/extension/screenmode/IScreenModeSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/screenmode/IScreenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/screenmode/IScreenModeSettings$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getOverScanIndex:I = 0x2

.field static final blacklist TRANSACTION_getSupportApplyOverScan:I = 0x3

.field static final blacklist TRANSACTION_setScreenModeSettings:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.media.tv.extension.screenmode.IScreenModeSettings"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/screenmode/IScreenModeSettings$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/screenmode/IScreenModeSettings;
    .registers 3

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_4
    const-string v0, "android.media.tv.extension.screenmode.IScreenModeSettings"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/screenmode/IScreenModeSettings;

    if-eqz v1, :cond_13

    .line 55
    check-cast v0, Landroid/media/tv/extension/screenmode/IScreenModeSettings;

    return-object v0

    .line 57
    :cond_13
    new-instance v0, Landroid/media/tv/extension/screenmode/IScreenModeSettings$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/screenmode/IScreenModeSettings$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 66
    packed-switch p0, :pswitch_data_10

    .line 82
    const/4 p0, 0x0

    return-object p0

    .line 78
    :pswitch_5
    const-string p0, "getSupportApplyOverScan"

    return-object p0

    .line 74
    :pswitch_8
    const-string p0, "getOverScanIndex"

    return-object p0

    .line 70
    :pswitch_b
    const-string/jumbo p0, "setScreenModeSettings"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 61
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 218
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 89
    invoke-static {p1}, Landroid/media/tv/extension/screenmode/IScreenModeSettings$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 93
    nop

    .line 94
    const-string v0, "android.media.tv.extension.screenmode.IScreenModeSettings"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 98
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return v1

    .line 101
    :cond_17
    packed-switch p1, :pswitch_data_56

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 127
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/screenmode/IScreenModeSettings$Stub;->getSupportApplyOverScan(Ljava/lang/String;)Z

    move-result p1

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    goto :goto_55

    .line 117
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/screenmode/IScreenModeSettings$Stub;->getOverScanIndex(Ljava/lang/String;)I

    move-result p1

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    goto :goto_55

    .line 106
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/screenmode/IScreenModeSettings$Stub;->setScreenModeSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    nop

    .line 139
    :goto_55
    return v1

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_43
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method
