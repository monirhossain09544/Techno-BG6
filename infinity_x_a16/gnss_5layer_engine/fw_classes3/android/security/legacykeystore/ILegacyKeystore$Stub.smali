.class public abstract Landroid/security/legacykeystore/ILegacyKeystore$Stub;
.super Landroid/os/Binder;
.source "ILegacyKeystore.java"

# interfaces
.implements Landroid/security/legacykeystore/ILegacyKeystore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/legacykeystore/ILegacyKeystore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_get:I = 0x1

.field static final blacklist TRANSACTION_list:I = 0x4

.field static final blacklist TRANSACTION_put:I = 0x2

.field static final blacklist TRANSACTION_remove:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 89
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 90
    const-string v0, "android.security.legacykeystore.ILegacyKeystore"

    invoke-virtual {p0, p0, v0}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/legacykeystore/ILegacyKeystore;
    .registers 3

    .line 98
    if-nez p0, :cond_4

    .line 99
    const/4 p0, 0x0

    return-object p0

    .line 101
    :cond_4
    const-string v0, "android.security.legacykeystore.ILegacyKeystore"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/legacykeystore/ILegacyKeystore;

    if-eqz v1, :cond_13

    .line 103
    check-cast v0, Landroid/security/legacykeystore/ILegacyKeystore;

    return-object v0

    .line 105
    :cond_13
    new-instance v0, Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 114
    packed-switch p0, :pswitch_data_14

    .line 134
    const/4 p0, 0x0

    return-object p0

    .line 130
    :pswitch_5
    const-string p0, "list"

    return-object p0

    .line 126
    :pswitch_8
    const-string/jumbo p0, "remove"

    return-object p0

    .line 122
    :pswitch_c
    const-string/jumbo p0, "put"

    return-object p0

    .line 118
    :pswitch_10
    const-string p0, "get"

    return-object p0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 109
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 337
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 141
    invoke-static {p1}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 145
    nop

    .line 146
    const-string v0, "android.security.legacykeystore.ILegacyKeystore"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 147
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 150
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v1

    .line 153
    :cond_17
    packed-switch p1, :pswitch_data_74

    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 194
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, p1, p4}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 201
    goto :goto_73

    .line 183
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, p1, p4}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->remove(Ljava/lang/String;I)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto :goto_73

    .line 170
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, p1, p4, v0}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->put(Ljava/lang/String;I[B)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_73

    .line 158
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, p1, p4}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->get(Ljava/lang/String;I)[B

    move-result-object p1

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 165
    nop

    .line 208
    :goto_73
    return v1

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_47
        :pswitch_35
        :pswitch_1f
    .end packed-switch
.end method
