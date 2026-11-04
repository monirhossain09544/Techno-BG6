.class public abstract Lcom/android/internal/app/IAppOpsCallback$Stub;
.super Landroid/os/Binder;
.source "IAppOpsCallback.java"

# interfaces
.implements Lcom/android/internal/app/IAppOpsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppOpsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppOpsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IAppOpsCallback"

.field static final greylist-max-o TRANSACTION_opChanged:I = 0x1


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.android.internal.app.IAppOpsCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IAppOpsCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsCallback;
    .registers 3

    .line 38
    if-nez p0, :cond_4

    .line 39
    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_4
    const-string v0, "com.android.internal.app.IAppOpsCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/app/IAppOpsCallback;

    if-eqz v1, :cond_13

    .line 43
    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;

    return-object v0

    .line 45
    :cond_13
    new-instance v0, Lcom/android/internal/app/IAppOpsCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/app/IAppOpsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 49
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    nop

    .line 54
    const-string v0, "com.android.internal.app.IAppOpsCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 55
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 58
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v1

    .line 61
    :cond_17
    packed-switch p1, :pswitch_data_38

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 66
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 74
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/app/IAppOpsCallback$Stub;->opChanged(IILjava/lang/String;Ljava/lang/String;)V

    .line 75
    nop

    .line 82
    return v1

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
