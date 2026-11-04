.class public abstract Landroid/os/instrumentation/IDynamicInstrumentationManager$Stub;
.super Landroid/os/Binder;
.source "IDynamicInstrumentationManager.java"

# interfaces
.implements Landroid/os/instrumentation/IDynamicInstrumentationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/instrumentation/IDynamicInstrumentationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/instrumentation/IDynamicInstrumentationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getExecutableMethodFileOffsets:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.os.instrumentation.IDynamicInstrumentationManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/instrumentation/IDynamicInstrumentationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/instrumentation/IDynamicInstrumentationManager;
    .registers 3

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_4
    const-string v0, "android.os.instrumentation.IDynamicInstrumentationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/instrumentation/IDynamicInstrumentationManager;

    if-eqz v1, :cond_13

    .line 49
    check-cast v0, Landroid/os/instrumentation/IDynamicInstrumentationManager;

    return-object v0

    .line 51
    :cond_13
    new-instance v0, Landroid/os/instrumentation/IDynamicInstrumentationManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/instrumentation/IDynamicInstrumentationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 55
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    nop

    .line 60
    const-string v0, "android.os.instrumentation.IDynamicInstrumentationManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 61
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 64
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v1

    .line 67
    :cond_17
    packed-switch p1, :pswitch_data_42

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 72
    :pswitch_1f
    sget-object p1, Landroid/os/instrumentation/TargetProcess;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/instrumentation/TargetProcess;

    .line 74
    sget-object p4, Landroid/os/instrumentation/MethodDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/instrumentation/MethodDescriptor;

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/instrumentation/IOffsetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/instrumentation/IOffsetCallback;

    move-result-object v0

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 78
    invoke-virtual {p0, p1, p4, v0}, Landroid/os/instrumentation/IDynamicInstrumentationManager$Stub;->getExecutableMethodFileOffsets(Landroid/os/instrumentation/TargetProcess;Landroid/os/instrumentation/MethodDescriptor;Landroid/os/instrumentation/IOffsetCallback;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    nop

    .line 87
    return v1

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
