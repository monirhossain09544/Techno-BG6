.class public abstract Landroid/security/metrics/IKeystoreMetrics$Stub;
.super Landroid/os/Binder;
.source "IKeystoreMetrics.java"

# interfaces
.implements Landroid/security/metrics/IKeystoreMetrics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/metrics/IKeystoreMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/metrics/IKeystoreMetrics$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_pullMetrics:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.security.metrics.IKeystoreMetrics"

    invoke-virtual {p0, p0, v0}, Landroid/security/metrics/IKeystoreMetrics$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/metrics/IKeystoreMetrics;
    .registers 3

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_4
    const-string v0, "android.security.metrics.IKeystoreMetrics"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/metrics/IKeystoreMetrics;

    if-eqz v1, :cond_13

    .line 62
    check-cast v0, Landroid/security/metrics/IKeystoreMetrics;

    return-object v0

    .line 64
    :cond_13
    new-instance v0, Landroid/security/metrics/IKeystoreMetrics$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/metrics/IKeystoreMetrics$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 73
    packed-switch p0, :pswitch_data_a

    .line 81
    const/4 p0, 0x0

    return-object p0

    .line 77
    :pswitch_5
    const-string/jumbo p0, "pullMetrics"

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

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 88
    invoke-static {p1}, Landroid/security/metrics/IKeystoreMetrics$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 92
    nop

    .line 93
    const-string v0, "android.security.metrics.IKeystoreMetrics"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 100
    :cond_17
    packed-switch p1, :pswitch_data_32

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 105
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, p1}, Landroid/security/metrics/IKeystoreMetrics$Stub;->pullMetrics(I)[Landroid/security/metrics/KeystoreAtom;

    move-result-object p1

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 110
    nop

    .line 117
    return v1

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1f
    .end packed-switch
.end method
