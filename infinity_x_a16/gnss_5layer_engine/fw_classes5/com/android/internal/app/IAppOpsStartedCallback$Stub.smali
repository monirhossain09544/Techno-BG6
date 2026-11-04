.class public abstract Lcom/android/internal/app/IAppOpsStartedCallback$Stub;
.super Landroid/os/Binder;
.source "IAppOpsStartedCallback.java"

# interfaces
.implements Lcom/android/internal/app/IAppOpsStartedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAppOpsStartedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppOpsStartedCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_opStarted:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.android.internal.app.IAppOpsStartedCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IAppOpsStartedCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsStartedCallback;
    .registers 3

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_4
    const-string v0, "com.android.internal.app.IAppOpsStartedCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/app/IAppOpsStartedCallback;

    if-eqz v1, :cond_13

    .line 44
    check-cast v0, Lcom/android/internal/app/IAppOpsStartedCallback;

    return-object v0

    .line 46
    :cond_13
    new-instance v0, Lcom/android/internal/app/IAppOpsStartedCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/app/IAppOpsStartedCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 55
    packed-switch p0, :pswitch_data_8

    .line 63
    const/4 p0, 0x0

    return-object p0

    .line 59
    :pswitch_5
    const-string p0, "opStarted"

    return-object p0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 70
    invoke-static {p1}, Lcom/android/internal/app/IAppOpsStartedCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    nop

    .line 75
    const-string v0, "com.android.internal.app.IAppOpsStartedCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 76
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    :cond_e
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_19

    .line 79
    move-object/from16 v3, p3

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v1

    .line 82
    :cond_19
    move-object/from16 v3, p3

    packed-switch p1, :pswitch_data_54

    .line 112
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 87
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    move-object v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/app/IAppOpsStartedCallback$Stub;->opStarted(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    .line 108
    nop

    .line 115
    return v1

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_23
    .end packed-switch
.end method
