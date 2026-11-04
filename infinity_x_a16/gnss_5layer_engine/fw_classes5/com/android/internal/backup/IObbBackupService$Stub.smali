.class public abstract Lcom/android/internal/backup/IObbBackupService$Stub;
.super Landroid/os/Binder;
.source "IObbBackupService.java"

# interfaces
.implements Lcom/android/internal/backup/IObbBackupService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IObbBackupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.backup.IObbBackupService"

.field static final greylist-max-o TRANSACTION_backupObbs:I = 0x1

.field static final greylist-max-o TRANSACTION_restoreObbFile:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "com.android.internal.backup.IObbBackupService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/backup/IObbBackupService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IObbBackupService;
    .registers 3

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_4
    const-string v0, "com.android.internal.backup.IObbBackupService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/backup/IObbBackupService;

    if-eqz v1, :cond_13

    .line 58
    check-cast v0, Lcom/android/internal/backup/IObbBackupService;

    return-object v0

    .line 60
    :cond_13
    new-instance v0, Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/backup/IObbBackupService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 69
    packed-switch p0, :pswitch_data_c

    .line 81
    const/4 p0, 0x0

    return-object p0

    .line 77
    :pswitch_5
    const-string p0, "restoreObbFile"

    return-object p0

    .line 73
    :pswitch_8
    const-string p0, "backupObbs"

    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 88
    invoke-static {p1}, Lcom/android/internal/backup/IObbBackupService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 93
    const-string v2, "com.android.internal.backup.IObbBackupService"

    const/4 v3, 0x1

    if-lt v0, v3, :cond_11

    const v4, 0xffffff

    if-gt v0, v4, :cond_11

    .line 94
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_11
    const v4, 0x5f4e5446

    if-ne v0, v4, :cond_1c

    .line 97
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v3

    .line 100
    :cond_1c
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_80

    .line 142
    move-object/from16 v6, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 119
    :pswitch_28
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 121
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 127
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 133
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v16

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v16}, Lcom/android/internal/backup/IObbBackupService$Stub;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V

    .line 138
    goto :goto_7f

    .line 105
    :pswitch_5e
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 107
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v5

    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    move-object/from16 v6, p0

    invoke-virtual {v6, v0, v2, v4, v5}, Lcom/android/internal/backup/IObbBackupService$Stub;->backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 114
    nop

    .line 145
    :goto_7f
    return v3

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_28
    .end packed-switch
.end method
