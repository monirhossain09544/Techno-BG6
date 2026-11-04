.class public abstract Landroid/security/identity/ISession$Stub;
.super Landroid/os/Binder;
.source "ISession.java"

# interfaces
.implements Landroid/security/identity/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/ISession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAuthChallenge:I = 0x2

.field static final blacklist TRANSACTION_getCredentialForPresentation:I = 0x5

.field static final blacklist TRANSACTION_getEphemeralKeyPair:I = 0x1

.field static final blacklist TRANSACTION_setReaderEphemeralPublicKey:I = 0x3

.field static final blacklist TRANSACTION_setSessionTranscript:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.security.identity.ISession"

    invoke-virtual {p0, p0, v0}, Landroid/security/identity/ISession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/identity/ISession;
    .registers 3

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    const-string v0, "android.security.identity.ISession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/identity/ISession;

    if-eqz v1, :cond_13

    .line 59
    check-cast v0, Landroid/security/identity/ISession;

    return-object v0

    .line 61
    :cond_13
    new-instance v0, Landroid/security/identity/ISession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/identity/ISession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 70
    packed-switch p0, :pswitch_data_16

    .line 94
    const/4 p0, 0x0

    return-object p0

    .line 90
    :pswitch_5
    const-string p0, "getCredentialForPresentation"

    return-object p0

    .line 86
    :pswitch_8
    const-string/jumbo p0, "setSessionTranscript"

    return-object p0

    .line 82
    :pswitch_c
    const-string/jumbo p0, "setReaderEphemeralPublicKey"

    return-object p0

    .line 78
    :pswitch_10
    const-string p0, "getAuthChallenge"

    return-object p0

    .line 74
    :pswitch_13
    const-string p0, "getEphemeralKeyPair"

    return-object p0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 270
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 101
    invoke-static {p1}, Landroid/security/identity/ISession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 105
    nop

    .line 106
    const-string v0, "android.security.identity.ISession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v1

    .line 113
    :cond_17
    packed-switch p1, :pswitch_data_64

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 150
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, p1}, Landroid/security/identity/ISession$Stub;->getCredentialForPresentation(Ljava/lang/String;)Landroid/security/identity/ICredential;

    move-result-object p1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 155
    goto :goto_63

    .line 141
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, p1}, Landroid/security/identity/ISession$Stub;->setSessionTranscript([B)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    goto :goto_63

    .line 132
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, p1}, Landroid/security/identity/ISession$Stub;->setReaderEphemeralPublicKey([B)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    goto :goto_63

    .line 124
    :pswitch_4d
    invoke-virtual {p0}, Landroid/security/identity/ISession$Stub;->getAuthChallenge()J

    move-result-wide p1

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    goto :goto_63

    .line 117
    :pswitch_58
    invoke-virtual {p0}, Landroid/security/identity/ISession$Stub;->getEphemeralKeyPair()[B

    move-result-object p1

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 120
    nop

    .line 162
    :goto_63
    return v1

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_58
        :pswitch_4d
        :pswitch_3f
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method
