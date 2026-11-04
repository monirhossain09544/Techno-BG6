.class public abstract Landroid/security/apc/IProtectedConfirmation$Stub;
.super Landroid/os/Binder;
.source "IProtectedConfirmation.java"

# interfaces
.implements Landroid/security/apc/IProtectedConfirmation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/apc/IProtectedConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/apc/IProtectedConfirmation$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelPrompt:I = 0x2

.field static final blacklist TRANSACTION_isSupported:I = 0x3

.field static final blacklist TRANSACTION_presentPrompt:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.security.apc.IProtectedConfirmation"

    invoke-virtual {p0, p0, v0}, Landroid/security/apc/IProtectedConfirmation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/apc/IProtectedConfirmation;
    .registers 3

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_4
    const-string v0, "android.security.apc.IProtectedConfirmation"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/apc/IProtectedConfirmation;

    if-eqz v1, :cond_13

    .line 79
    check-cast v0, Landroid/security/apc/IProtectedConfirmation;

    return-object v0

    .line 81
    :cond_13
    new-instance v0, Landroid/security/apc/IProtectedConfirmation$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/apc/IProtectedConfirmation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 85
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    nop

    .line 90
    const-string v0, "android.security.apc.IProtectedConfirmation"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 94
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 97
    :cond_17
    packed-switch p1, :pswitch_data_60

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 127
    :pswitch_1f
    invoke-virtual {p0}, Landroid/security/apc/IProtectedConfirmation$Stub;->isSupported()Z

    move-result p1

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 130
    goto :goto_5f

    .line 119
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/security/apc/IConfirmationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/apc/IConfirmationCallback;

    move-result-object p1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, p1}, Landroid/security/apc/IProtectedConfirmation$Stub;->cancelPrompt(Landroid/security/apc/IConfirmationCallback;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    goto :goto_5f

    .line 102
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/security/apc/IConfirmationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/apc/IConfirmationCallback;

    move-result-object v3

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/security/apc/IProtectedConfirmation$Stub;->presentPrompt(Landroid/security/apc/IConfirmationCallback;Ljava/lang/String;[BLjava/lang/String;I)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    nop

    .line 137
    :goto_5f
    return v1

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
