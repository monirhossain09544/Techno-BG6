.class public abstract Lcom/android/internal/os/IDropBoxManagerService$Stub;
.super Landroid/os/Binder;
.source "IDropBoxManagerService.java"

# interfaces
.implements Lcom/android/internal/os/IDropBoxManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/IDropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/IDropBoxManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.os.IDropBoxManagerService"

.field static final blacklist TRANSACTION_addData:I = 0x1

.field static final blacklist TRANSACTION_addFile:I = 0x2

.field static final greylist-max-o TRANSACTION_getNextEntry:I = 0x4

.field static final blacklist TRANSACTION_getNextEntryWithAttribution:I = 0x5

.field static final greylist-max-o TRANSACTION_isTagEnabled:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "com.android.internal.os.IDropBoxManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IDropBoxManagerService;
    .registers 3

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_4
    const-string v0, "com.android.internal.os.IDropBoxManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/os/IDropBoxManagerService;

    if-eqz v1, :cond_13

    .line 67
    check-cast v0, Lcom/android/internal/os/IDropBoxManagerService;

    return-object v0

    .line 69
    :cond_13
    new-instance v0, Lcom/android/internal/os/IDropBoxManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/os/IDropBoxManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 73
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    nop

    .line 78
    const-string v0, "com.android.internal.os.IDropBoxManagerService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 82
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return v1

    .line 85
    :cond_17
    packed-switch p1, :pswitch_data_a0

    .line 155
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 140
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->getNextEntryWithAttribution(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/IDropBoxManagerService$Entry;

    move-result-object p1

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 151
    goto :goto_9f

    .line 126
    :pswitch_3f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, p1, v4, v5, p4}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->getNextEntry(Ljava/lang/String;JLjava/lang/String;)Lcom/android/internal/os/IDropBoxManagerService$Entry;

    move-result-object p1

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 135
    goto :goto_9f

    .line 116
    :pswitch_5a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->isTagEnabled(Ljava/lang/String;)Z

    move-result p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 121
    goto :goto_9f

    .line 103
    :pswitch_6d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 105
    sget-object p4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ParcelFileDescriptor;

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->addFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;I)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    goto :goto_9f

    .line 90
    :pswitch_88
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->addData(Ljava/lang/String;[BI)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    nop

    .line 158
    :goto_9f
    return v1

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_88
        :pswitch_6d
        :pswitch_5a
        :pswitch_3f
        :pswitch_20
    .end packed-switch
.end method
