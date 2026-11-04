.class public abstract Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;
.super Landroid/os/Binder;
.source "IIntrusionDetectionService.java"

# interfaces
.implements Landroid/security/intrusiondetection/IIntrusionDetectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/intrusiondetection/IIntrusionDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addStateCallback:I = 0x1

.field static final blacklist TRANSACTION_disable:I = 0x4

.field static final blacklist TRANSACTION_enable:I = 0x3

.field static final blacklist TRANSACTION_removeStateCallback:I = 0x2


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    nop

    .line 53
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.security.intrusiondetection.IIntrusionDetectionService"

    invoke-virtual {p0, p0, v0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    if-eqz p1, :cond_d

    .line 47
    iput-object p1, p0, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 48
    return-void

    .line 45
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/intrusiondetection/IIntrusionDetectionService;
    .registers 3

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_4
    const-string v0, "android.security.intrusiondetection.IIntrusionDetectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/intrusiondetection/IIntrusionDetectionService;

    if-eqz v1, :cond_13

    .line 66
    check-cast v0, Landroid/security/intrusiondetection/IIntrusionDetectionService;

    return-object v0

    .line 68
    :cond_13
    new-instance v0, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 77
    packed-switch p0, :pswitch_data_12

    .line 97
    const/4 p0, 0x0

    return-object p0

    .line 93
    :pswitch_5
    const-string p0, "disable"

    return-object p0

    .line 89
    :pswitch_8
    const-string p0, "enable"

    return-object p0

    .line 85
    :pswitch_b
    const-string/jumbo p0, "removeStateCallback"

    return-object p0

    .line 81
    :pswitch_f
    const-string p0, "addStateCallback"

    return-object p0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist addStateCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_INTRUSION_DETECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 241
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 72
    return-object p0
.end method

.method protected blacklist disable_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_INTRUSION_DETECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 256
    return-void
.end method

.method protected blacklist enable_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_INTRUSION_DETECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 251
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 260
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 104
    invoke-static {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 108
    nop

    .line 109
    const-string v0, "android.security.intrusiondetection.IIntrusionDetectionService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 110
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 113
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return v1

    .line 116
    :cond_17
    packed-switch p1, :pswitch_data_68

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 148
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;

    move-result-object p1

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, p1}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->disable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    goto :goto_67

    .line 139
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;

    move-result-object p1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, p1}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->enable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    goto :goto_67

    .line 130
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    move-result-object p1

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, p1}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->removeStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    goto :goto_67

    .line 121
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    move-result-object p1

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, p1}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->addStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    nop

    .line 159
    :goto_67
    return v1

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_55
        :pswitch_43
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist removeStateCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.READ_INTRUSION_DETECTION_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 246
    return-void
.end method
