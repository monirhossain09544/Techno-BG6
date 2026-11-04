.class public abstract Landroid/os/instrumentation/IOffsetCallback$Stub;
.super Landroid/os/Binder;
.source "IOffsetCallback.java"

# interfaces
.implements Landroid/os/instrumentation/IOffsetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/instrumentation/IOffsetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/instrumentation/IOffsetCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onResult:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.os.instrumentation.IOffsetCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/instrumentation/IOffsetCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/instrumentation/IOffsetCallback;
    .registers 3

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_4
    const-string v0, "android.os.instrumentation.IOffsetCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/instrumentation/IOffsetCallback;

    if-eqz v1, :cond_13

    .line 48
    check-cast v0, Landroid/os/instrumentation/IOffsetCallback;

    return-object v0

    .line 50
    :cond_13
    new-instance v0, Landroid/os/instrumentation/IOffsetCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/instrumentation/IOffsetCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 54
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    nop

    .line 59
    const-string v0, "android.os.instrumentation.IOffsetCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 60
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 63
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return v1

    .line 66
    :cond_17
    packed-switch p1, :pswitch_data_30

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 71
    :pswitch_1f
    sget-object p1, Landroid/os/instrumentation/ExecutableMethodFileOffsets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/instrumentation/ExecutableMethodFileOffsets;

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 73
    invoke-virtual {p0, p1}, Landroid/os/instrumentation/IOffsetCallback$Stub;->onResult(Landroid/os/instrumentation/ExecutableMethodFileOffsets;)V

    .line 74
    nop

    .line 81
    return v1

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
