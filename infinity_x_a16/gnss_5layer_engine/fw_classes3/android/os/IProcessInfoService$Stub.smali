.class public abstract Landroid/os/IProcessInfoService$Stub;
.super Landroid/os/Binder;
.source "IProcessInfoService.java"

# interfaces
.implements Landroid/os/IProcessInfoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IProcessInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IProcessInfoService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IProcessInfoService"

.field static final greylist-max-o TRANSACTION_getProcessStatesAndOomScoresFromPids:I = 0x2

.field static final greylist-max-o TRANSACTION_getProcessStatesFromPids:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.os.IProcessInfoService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IProcessInfoService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IProcessInfoService;
    .registers 3

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_4
    const-string v0, "android.os.IProcessInfoService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IProcessInfoService;

    if-eqz v1, :cond_13

    .line 57
    check-cast v0, Landroid/os/IProcessInfoService;

    return-object v0

    .line 59
    :cond_13
    new-instance v0, Landroid/os/IProcessInfoService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IProcessInfoService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    nop

    .line 68
    const-string v0, "android.os.IProcessInfoService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 69
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 72
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return v1

    .line 75
    :cond_17
    const/4 v0, 0x0

    const-string v2, "Array too large: "

    const v3, 0xf4240

    packed-switch p1, :pswitch_data_b2

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 99
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 102
    if-gt p4, v3, :cond_67

    .line 104
    if-gez p4, :cond_33

    .line 105
    move-object p4, v0

    goto :goto_35

    .line 107
    :cond_33
    new-array p4, p4, [I

    .line 110
    :goto_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 111
    if-gt v4, v3, :cond_50

    .line 113
    if-gez v4, :cond_3e

    .line 114
    goto :goto_40

    .line 116
    :cond_3e
    new-array v0, v4, [I

    .line 118
    :goto_40
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, p1, p4, v0}, Landroid/os/IProcessInfoService$Stub;->getProcessStatesAndOomScoresFromPids([I[I[I)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 122
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 123
    goto :goto_9a

    .line 112
    :cond_50
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_67
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 83
    if-gt p4, v3, :cond_9b

    .line 85
    if-gez p4, :cond_8b

    .line 86
    goto :goto_8d

    .line 88
    :cond_8b
    new-array v0, p4, [I

    .line 90
    :goto_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 91
    invoke-virtual {p0, p1, v0}, Landroid/os/IProcessInfoService$Stub;->getProcessStatesFromPids([I[I)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 94
    nop

    .line 130
    :goto_9a
    return v1

    .line 84
    :cond_9b
    new-instance p1, Landroid/os/BadParcelableException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_25
    .end packed-switch
.end method
