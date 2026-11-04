.class public abstract Lcom/android/internal/app/IAppSessionListener$Stub;
.super Landroid/os/Binder;
.source "IAppSessionListener.java"

# interfaces
.implements Lcom/android/internal/app/IAppSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAppLocked:I = 0x2

.field static final blacklist TRANSACTION_onAppUnlocked:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.android.internal.app.IAppSessionListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IAppSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppSessionListener;
    .registers 3

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_4
    const-string v0, "com.android.internal.app.IAppSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/app/IAppSessionListener;

    if-eqz v1, :cond_13

    .line 46
    check-cast v0, Lcom/android/internal/app/IAppSessionListener;

    return-object v0

    .line 48
    :cond_13
    new-instance v0, Lcom/android/internal/app/IAppSessionListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/app/IAppSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 57
    packed-switch p0, :pswitch_data_c

    .line 69
    const/4 p0, 0x0

    return-object p0

    .line 65
    :pswitch_5
    const-string p0, "onAppLocked"

    return-object p0

    .line 61
    :pswitch_8
    const-string p0, "onAppUnlocked"

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

    .line 52
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 76
    invoke-static {p1}, Lcom/android/internal/app/IAppSessionListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 80
    nop

    .line 81
    const-string v0, "com.android.internal.app.IAppSessionListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 82
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 85
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v1

    .line 88
    :cond_17
    packed-switch p1, :pswitch_data_3e

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 103
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/app/IAppSessionListener$Stub;->onAppLocked(Ljava/lang/String;I)V

    .line 108
    goto :goto_3d

    .line 93
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 97
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/app/IAppSessionListener$Stub;->onAppUnlocked(Ljava/lang/String;I)V

    .line 98
    nop

    .line 115
    :goto_3d
    return v1

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
