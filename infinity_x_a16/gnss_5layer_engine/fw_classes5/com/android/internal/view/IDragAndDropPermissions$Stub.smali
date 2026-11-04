.class public abstract Lcom/android/internal/view/IDragAndDropPermissions$Stub;
.super Landroid/os/Binder;
.source "IDragAndDropPermissions.java"

# interfaces
.implements Lcom/android/internal/view/IDragAndDropPermissions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IDragAndDropPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IDragAndDropPermissions$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IDragAndDropPermissions"

.field static final greylist-max-o TRANSACTION_release:I = 0x3

.field static final greylist-max-o TRANSACTION_take:I = 0x1

.field static final greylist-max-o TRANSACTION_takeTransient:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.android.internal.view.IDragAndDropPermissions"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IDragAndDropPermissions;
    .registers 3

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_4
    const-string v0, "com.android.internal.view.IDragAndDropPermissions"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/view/IDragAndDropPermissions;

    if-eqz v1, :cond_13

    .line 53
    check-cast v0, Lcom/android/internal/view/IDragAndDropPermissions;

    return-object v0

    .line 55
    :cond_13
    new-instance v0, Lcom/android/internal/view/IDragAndDropPermissions$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 64
    packed-switch p0, :pswitch_data_e

    .line 80
    const/4 p0, 0x0

    return-object p0

    .line 76
    :pswitch_5
    const-string p0, "release"

    return-object p0

    .line 72
    :pswitch_8
    const-string p0, "takeTransient"

    return-object p0

    .line 68
    :pswitch_b
    const-string p0, "take"

    return-object p0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 196
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 87
    invoke-static {p1}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 91
    nop

    .line 92
    const-string v0, "com.android.internal.view.IDragAndDropPermissions"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 99
    :cond_17
    packed-switch p1, :pswitch_data_3c

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 118
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;->release()V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    goto :goto_3b

    .line 112
    :pswitch_26
    invoke-virtual {p0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;->takeTransient()V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    goto :goto_3b

    .line 104
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;->take(Landroid/os/IBinder;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    nop

    .line 127
    :goto_3b
    return v1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_26
        :pswitch_1f
    .end packed-switch
.end method
