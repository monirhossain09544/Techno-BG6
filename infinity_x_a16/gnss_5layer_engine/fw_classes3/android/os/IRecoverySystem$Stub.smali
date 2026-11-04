.class public abstract Landroid/os/IRecoverySystem$Stub;
.super Landroid/os/Binder;
.source "IRecoverySystem.java"

# interfaces
.implements Landroid/os/IRecoverySystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IRecoverySystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IRecoverySystem$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IRecoverySystem"

.field static final blacklist TRANSACTION_allocateSpaceForUpdate:I = 0x1

.field static final greylist-max-o TRANSACTION_clearBcb:I = 0x4

.field static final blacklist TRANSACTION_clearLskf:I = 0x7

.field static final blacklist TRANSACTION_isLskfCaptured:I = 0x8

.field static final greylist-max-o TRANSACTION_rebootRecoveryWithCommand:I = 0x5

.field static final blacklist TRANSACTION_rebootWithLskf:I = 0xa

.field static final blacklist TRANSACTION_rebootWithLskfAssumeSlotSwitch:I = 0x9

.field static final blacklist TRANSACTION_requestLskf:I = 0x6

.field static final greylist-max-o TRANSACTION_setupBcb:I = 0x3

.field static final greylist-max-o TRANSACTION_uncrypt:I = 0x2


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    nop

    .line 77
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/IRecoverySystem$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.os.IRecoverySystem"

    invoke-virtual {p0, p0, v0}, Landroid/os/IRecoverySystem$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    if-eqz p1, :cond_d

    .line 71
    iput-object p1, p0, Landroid/os/IRecoverySystem$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 72
    return-void

    .line 69
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/IRecoverySystem;
    .registers 3

    .line 85
    if-nez p0, :cond_4

    .line 86
    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_4
    const-string v0, "android.os.IRecoverySystem"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IRecoverySystem;

    if-eqz v1, :cond_13

    .line 90
    check-cast v0, Landroid/os/IRecoverySystem;

    return-object v0

    .line 92
    :cond_13
    new-instance v0, Landroid/os/IRecoverySystem$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IRecoverySystem$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 101
    packed-switch p0, :pswitch_data_2a

    .line 145
    const/4 p0, 0x0

    return-object p0

    .line 141
    :pswitch_5
    const-string/jumbo p0, "rebootWithLskf"

    return-object p0

    .line 137
    :pswitch_9
    const-string/jumbo p0, "rebootWithLskfAssumeSlotSwitch"

    return-object p0

    .line 133
    :pswitch_d
    const-string p0, "isLskfCaptured"

    return-object p0

    .line 129
    :pswitch_10
    const-string p0, "clearLskf"

    return-object p0

    .line 125
    :pswitch_13
    const-string/jumbo p0, "requestLskf"

    return-object p0

    .line 121
    :pswitch_17
    const-string/jumbo p0, "rebootRecoveryWithCommand"

    return-object p0

    .line 117
    :pswitch_1b
    const-string p0, "clearBcb"

    return-object p0

    .line 113
    :pswitch_1e
    const-string/jumbo p0, "setupBcb"

    return-object p0

    .line 109
    :pswitch_22
    const-string/jumbo p0, "uncrypt"

    return-object p0

    .line 105
    :pswitch_26
    const-string p0, "allocateSpaceForUpdate"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist allocateSpaceForUpdate_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Landroid/os/IRecoverySystem$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/IRecoverySystem$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/IRecoverySystem$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.RECOVERY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 482
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 96
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 499
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 152
    invoke-static {p1}, Landroid/os/IRecoverySystem$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 156
    nop

    .line 157
    const-string v0, "android.os.IRecoverySystem"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 158
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 161
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    return v1

    .line 164
    :cond_17
    packed-switch p1, :pswitch_data_e8

    .line 274
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 261
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, p1, p4, v0}, Landroid/os/IRecoverySystem$Stub;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    goto/16 :goto_e7

    .line 249
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, p1, p4}, Landroid/os/IRecoverySystem$Stub;->rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    goto/16 :goto_e7

    .line 239
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, p1}, Landroid/os/IRecoverySystem$Stub;->isLskfCaptured(Ljava/lang/String;)Z

    move-result p1

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 244
    goto/16 :goto_e7

    .line 229
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, p1}, Landroid/os/IRecoverySystem$Stub;->clearLskf(Ljava/lang/String;)Z

    move-result p1

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 234
    goto :goto_e7

    .line 217
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 219
    sget-object p4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/IntentSender;

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, p1, p4}, Landroid/os/IRecoverySystem$Stub;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    move-result p1

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 224
    goto :goto_e7

    .line 208
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, p1}, Landroid/os/IRecoverySystem$Stub;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    goto :goto_e7

    .line 200
    :pswitch_9e
    invoke-virtual {p0}, Landroid/os/IRecoverySystem$Stub;->clearBcb()Z

    move-result p1

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 203
    goto :goto_e7

    .line 191
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, p1}, Landroid/os/IRecoverySystem$Stub;->setupBcb(Ljava/lang/String;)Z

    move-result p1

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 196
    goto :goto_e7

    .line 179
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/os/IRecoverySystemProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRecoverySystemProgressListener;

    move-result-object p4

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, p1, p4}, Landroid/os/IRecoverySystem$Stub;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result p1

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 186
    goto :goto_e7

    .line 169
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, p1}, Landroid/os/IRecoverySystem$Stub;->allocateSpaceForUpdate(Ljava/lang/String;)Z

    move-result p1

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 174
    nop

    .line 277
    :goto_e7
    return v1

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_d5
        :pswitch_bb
        :pswitch_a9
        :pswitch_9e
        :pswitch_90
        :pswitch_76
        :pswitch_64
        :pswitch_51
        :pswitch_3a
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist rebootWithLskfAssumeSlotSwitch_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Landroid/os/IRecoverySystem$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/IRecoverySystem$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/IRecoverySystem$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.RECOVERY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 494
    return-void
.end method
