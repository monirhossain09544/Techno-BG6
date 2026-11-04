.class public abstract Landroid/security/identity/IWritableCredential$Stub;
.super Landroid/os/Binder;
.source "IWritableCredential.java"

# interfaces
.implements Landroid/security/identity/IWritableCredential;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/IWritableCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/IWritableCredential$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCredentialKeyCertificateChain:I = 0x1

.field static final blacklist TRANSACTION_personalize:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.security.identity.IWritableCredential"

    invoke-virtual {p0, p0, v0}, Landroid/security/identity/IWritableCredential$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/identity/IWritableCredential;
    .registers 3

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_4
    const-string v0, "android.security.identity.IWritableCredential"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/identity/IWritableCredential;

    if-eqz v1, :cond_13

    .line 49
    check-cast v0, Landroid/security/identity/IWritableCredential;

    return-object v0

    .line 51
    :cond_13
    new-instance v0, Landroid/security/identity/IWritableCredential$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/identity/IWritableCredential$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 60
    packed-switch p0, :pswitch_data_c

    .line 72
    const/4 p0, 0x0

    return-object p0

    .line 68
    :pswitch_5
    const-string/jumbo p0, "personalize"

    return-object p0

    .line 64
    :pswitch_9
    const-string p0, "getCredentialKeyCertificateChain"

    return-object p0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 55
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 79
    invoke-static {p1}, Landroid/security/identity/IWritableCredential$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    nop

    .line 84
    const-string v0, "android.security.identity.IWritableCredential"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return v1

    .line 91
    :cond_17
    packed-switch p1, :pswitch_data_54

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 106
    :pswitch_1f
    sget-object p1, Landroid/security/identity/AccessControlProfileParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/security/identity/AccessControlProfileParcel;

    .line 108
    sget-object p4, Landroid/security/identity/EntryNamespaceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/security/identity/EntryNamespaceParcel;

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, p1, p4, v2, v3}, Landroid/security/identity/IWritableCredential$Stub;->personalize([Landroid/security/identity/AccessControlProfileParcel;[Landroid/security/identity/EntryNamespaceParcel;J)[B

    move-result-object p1

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 115
    goto :goto_53

    .line 96
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    invoke-virtual {p0, p1}, Landroid/security/identity/IWritableCredential$Stub;->getCredentialKeyCertificateChain([B)[B

    move-result-object p1

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 101
    nop

    .line 122
    :goto_53
    return v1

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_41
        :pswitch_1f
    .end packed-switch
.end method
