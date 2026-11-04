.class public abstract Landroid/security/talisman/ITalismanManager$Stub;
.super Landroid/os/Binder;
.source "ITalismanManager.java"

# interfaces
.implements Landroid/security/talisman/ITalismanManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/talisman/ITalismanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/talisman/ITalismanManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquirePreparedIdentitySet:I = 0x2

.field static final blacklist TRANSACTION_acquireVerifiedDeviceTalisman:I = 0x1

.field static final blacklist TRANSACTION_updatePreparedIdentities:I = 0x5

.field static final blacklist TRANSACTION_verifyIdentityTalismans:I = 0x4

.field static final blacklist TRANSACTION_verifyTalismanAndChallenge:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.security.talisman.ITalismanManager"

    invoke-virtual {p0, p0, v0}, Landroid/security/talisman/ITalismanManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/talisman/ITalismanManager;
    .registers 3

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_4
    const-string v0, "android.security.talisman.ITalismanManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/talisman/ITalismanManager;

    if-eqz v1, :cond_13

    .line 63
    check-cast v0, Landroid/security/talisman/ITalismanManager;

    return-object v0

    .line 65
    :cond_13
    new-instance v0, Landroid/security/talisman/ITalismanManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/talisman/ITalismanManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 74
    packed-switch p0, :pswitch_data_18

    .line 98
    const/4 p0, 0x0

    return-object p0

    .line 94
    :pswitch_5
    const-string/jumbo p0, "updatePreparedIdentities"

    return-object p0

    .line 90
    :pswitch_9
    const-string/jumbo p0, "verifyIdentityTalismans"

    return-object p0

    .line 86
    :pswitch_d
    const-string/jumbo p0, "verifyTalismanAndChallenge"

    return-object p0

    .line 82
    :pswitch_11
    const-string p0, "acquirePreparedIdentitySet"

    return-object p0

    .line 78
    :pswitch_14
    const-string p0, "acquireVerifiedDeviceTalisman"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 287
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 105
    invoke-static {p1}, Landroid/security/talisman/ITalismanManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 109
    nop

    .line 110
    const-string v0, "android.security.talisman.ITalismanManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 117
    :cond_17
    packed-switch p1, :pswitch_data_80

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 162
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, p1}, Landroid/security/talisman/ITalismanManager$Stub;->updatePreparedIdentities(Ljava/util/List;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    goto :goto_7f

    .line 150
    :pswitch_2d
    sget-object p1, Landroid/security/talisman/Talisman;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/talisman/Talisman;

    .line 152
    sget-object p4, Landroid/security/talisman/Talisman;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/security/talisman/Talisman;

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, p1, p4}, Landroid/security/talisman/ITalismanManager$Stub;->verifyIdentityTalismans(Landroid/security/talisman/Talisman;[Landroid/security/talisman/Talisman;)[I

    move-result-object p1

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 157
    goto :goto_7f

    .line 136
    :pswitch_4b
    sget-object p1, Landroid/security/talisman/Talisman;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/talisman/Talisman;

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, p1, p4, v0}, Landroid/security/talisman/ITalismanManager$Stub;->verifyTalismanAndChallenge(Landroid/security/talisman/Talisman;[B[B)I

    move-result p1

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    goto :goto_7f

    .line 128
    :pswitch_69
    invoke-virtual {p0}, Landroid/security/talisman/ITalismanManager$Stub;->acquirePreparedIdentitySet()Landroid/security/talisman/TalismanIdentitySet;

    move-result-object p1

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 131
    goto :goto_7f

    .line 121
    :pswitch_74
    invoke-virtual {p0}, Landroid/security/talisman/ITalismanManager$Stub;->acquireVerifiedDeviceTalisman()Landroid/security/talisman/Talisman;

    move-result-object p1

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 124
    nop

    .line 173
    :goto_7f
    return v1

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_74
        :pswitch_69
        :pswitch_4b
        :pswitch_2d
        :pswitch_1f
    .end packed-switch
.end method
