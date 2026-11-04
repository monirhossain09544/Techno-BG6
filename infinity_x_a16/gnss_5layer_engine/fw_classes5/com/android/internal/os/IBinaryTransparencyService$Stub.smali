.class public abstract Lcom/android/internal/os/IBinaryTransparencyService$Stub;
.super Landroid/os/Binder;
.source "IBinaryTransparencyService.java"

# interfaces
.implements Lcom/android/internal/os/IBinaryTransparencyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/IBinaryTransparencyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/IBinaryTransparencyService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_collectAllApexInfo:I = 0x3

.field static final blacklist TRANSACTION_collectAllSilentInstalledMbaInfo:I = 0x5

.field static final blacklist TRANSACTION_collectAllUpdatedPreloadInfo:I = 0x4

.field static final blacklist TRANSACTION_getSignedImageInfo:I = 0x1

.field static final blacklist TRANSACTION_recordMeasurementsForAllPackages:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "com.android.internal.os.IBinaryTransparencyService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IBinaryTransparencyService;
    .registers 3

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_4
    const-string v0, "com.android.internal.os.IBinaryTransparencyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/os/IBinaryTransparencyService;

    if-eqz v1, :cond_13

    .line 67
    check-cast v0, Lcom/android/internal/os/IBinaryTransparencyService;

    return-object v0

    .line 69
    :cond_13
    new-instance v0, Lcom/android/internal/os/IBinaryTransparencyService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/os/IBinaryTransparencyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 78
    packed-switch p0, :pswitch_data_14

    .line 102
    const/4 p0, 0x0

    return-object p0

    .line 98
    :pswitch_5
    const-string p0, "collectAllSilentInstalledMbaInfo"

    return-object p0

    .line 94
    :pswitch_8
    const-string p0, "collectAllUpdatedPreloadInfo"

    return-object p0

    .line 90
    :pswitch_b
    const-string p0, "collectAllApexInfo"

    return-object p0

    .line 86
    :pswitch_e
    const-string p0, "recordMeasurementsForAllPackages"

    return-object p0

    .line 82
    :pswitch_11
    const-string p0, "getSignedImageInfo"

    return-object p0

    :pswitch_data_14
    .packed-switch 0x1
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

    .line 73
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 283
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 109
    invoke-static {p1}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 113
    nop

    .line 114
    const-string v0, "com.android.internal.os.IBinaryTransparencyService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v1

    .line 121
    :cond_17
    packed-switch p1, :pswitch_data_70

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 159
    :pswitch_1f
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;->collectAllSilentInstalledMbaInfo(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 164
    goto :goto_6f

    .line 149
    :pswitch_35
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;->collectAllUpdatedPreloadInfo(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 154
    goto :goto_6f

    .line 139
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;->collectAllApexInfo(Z)Ljava/util/List;

    move-result-object p1

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 144
    goto :goto_6f

    .line 132
    :pswitch_5d
    invoke-virtual {p0}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;->recordMeasurementsForAllPackages()V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    goto :goto_6f

    .line 125
    :pswitch_64
    invoke-virtual {p0}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;->getSignedImageInfo()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    nop

    .line 171
    :goto_6f
    return v1

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_64
        :pswitch_5d
        :pswitch_4b
        :pswitch_35
        :pswitch_1f
    .end packed-switch
.end method
