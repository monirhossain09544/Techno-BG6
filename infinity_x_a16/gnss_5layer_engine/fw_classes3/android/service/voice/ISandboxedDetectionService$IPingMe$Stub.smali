.class public abstract Landroid/service/voice/ISandboxedDetectionService$IPingMe$Stub;
.super Landroid/os/Binder;
.source "ISandboxedDetectionService.java"

# interfaces
.implements Landroid/service/voice/ISandboxedDetectionService$IPingMe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/ISandboxedDetectionService$IPingMe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/ISandboxedDetectionService$IPingMe$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onPing:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 471
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 472
    const-string v0, "android.service.voice.ISandboxedDetectionService.IPingMe"

    invoke-virtual {p0, p0, v0}, Landroid/service/voice/ISandboxedDetectionService$IPingMe$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/voice/ISandboxedDetectionService$IPingMe;
    .registers 3

    .line 480
    if-nez p0, :cond_4

    .line 481
    const/4 p0, 0x0

    return-object p0

    .line 483
    :cond_4
    const-string v0, "android.service.voice.ISandboxedDetectionService.IPingMe"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/voice/ISandboxedDetectionService$IPingMe;

    if-eqz v1, :cond_13

    .line 485
    check-cast v0, Landroid/service/voice/ISandboxedDetectionService$IPingMe;

    return-object v0

    .line 487
    :cond_13
    new-instance v0, Landroid/service/voice/ISandboxedDetectionService$IPingMe$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/voice/ISandboxedDetectionService$IPingMe$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 496
    packed-switch p0, :pswitch_data_a

    .line 504
    const/4 p0, 0x0

    return-object p0

    .line 500
    :pswitch_5
    const-string/jumbo p0, "onPing"

    return-object p0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 491
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 511
    invoke-static {p1}, Landroid/service/voice/ISandboxedDetectionService$IPingMe$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 515
    nop

    .line 516
    const-string v0, "android.service.voice.ISandboxedDetectionService.IPingMe"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 517
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 520
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 521
    return v1

    .line 523
    :cond_17
    packed-switch p1, :pswitch_data_28

    .line 533
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 527
    :pswitch_1f
    invoke-virtual {p0}, Landroid/service/voice/ISandboxedDetectionService$IPingMe$Stub;->onPing()V

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    nop

    .line 536
    return v1

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
