.class public abstract Landroid/system/keystore2/IKeystoreOperation$Stub;
.super Landroid/os/Binder;
.source "IKeystoreOperation.java"

# interfaces
.implements Landroid/system/keystore2/IKeystoreOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/keystore2/IKeystoreOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/keystore2/IKeystoreOperation$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abort:I = 0x4

.field static final blacklist TRANSACTION_finish:I = 0x3

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_update:I = 0x2

.field static final blacklist TRANSACTION_updateAad:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->markVintfStability()V

    .line 59
    sget-object v0, Landroid/system/keystore2/IKeystoreOperation$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/system/keystore2/IKeystoreOperation;
    .registers 3

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_4
    sget-object v0, Landroid/system/keystore2/IKeystoreOperation$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/system/keystore2/IKeystoreOperation;

    if-eqz v1, :cond_13

    .line 72
    check-cast v0, Landroid/system/keystore2/IKeystoreOperation;

    return-object v0

    .line 74
    :cond_13
    new-instance v0, Landroid/system/keystore2/IKeystoreOperation$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/system/keystore2/IKeystoreOperation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 83
    sparse-switch p0, :sswitch_data_1a

    .line 111
    const/4 p0, 0x0

    return-object p0

    .line 103
    :sswitch_5
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 107
    :sswitch_8
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 99
    :sswitch_b
    const-string p0, "abort"

    return-object p0

    .line 95
    :sswitch_e
    const-string p0, "finish"

    return-object p0

    .line 91
    :sswitch_11
    const-string/jumbo p0, "update"

    return-object p0

    .line 87
    :sswitch_15
    const-string/jumbo p0, "updateAad"

    return-object p0

    nop

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_11
        0x3 -> :sswitch_e
        0x4 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 329
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 118
    invoke-static {p1}, Landroid/system/keystore2/IKeystoreOperation$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 122
    sget-object v0, Landroid/system/keystore2/IKeystoreOperation$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 123
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 127
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v2

    .line 130
    :cond_16
    if-ne p1, v1, :cond_23

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return v2

    .line 135
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    return v2

    .line 140
    :cond_33
    packed-switch p1, :pswitch_data_7a

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 175
    :pswitch_3b
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->abort()V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_78

    .line 164
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, p1, p4}, Landroid/system/keystore2/IKeystoreOperation$Stub;->finish([B[B)[B

    move-result-object p1

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 171
    goto :goto_78

    .line 154
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, p1}, Landroid/system/keystore2/IKeystoreOperation$Stub;->update([B)[B

    move-result-object p1

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 159
    goto :goto_78

    .line 145
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, p1}, Landroid/system/keystore2/IKeystoreOperation$Stub;->updateAad([B)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    nop

    .line 184
    :goto_78
    return v2

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_58
        :pswitch_42
        :pswitch_3b
    .end packed-switch
.end method
