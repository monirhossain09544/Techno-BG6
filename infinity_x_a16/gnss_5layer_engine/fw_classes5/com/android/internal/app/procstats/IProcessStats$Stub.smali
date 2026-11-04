.class public abstract Lcom/android/internal/app/procstats/IProcessStats$Stub;
.super Landroid/os/Binder;
.source "IProcessStats.java"

# interfaces
.implements Lcom/android/internal/app/procstats/IProcessStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/IProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/IProcessStats$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCommittedStats:I = 0x4

.field static final blacklist TRANSACTION_getCommittedStatsMerged:I = 0x5

.field static final blacklist TRANSACTION_getCurrentMemoryState:I = 0x3

.field static final blacklist TRANSACTION_getCurrentStats:I = 0x1

.field static final blacklist TRANSACTION_getMinAssociationDumpDuration:I = 0x6

.field static final blacklist TRANSACTION_getStatsOverTime:I = 0x2


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
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

    invoke-direct {p0, v0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "com.android.internal.app.procstats.IProcessStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    if-eqz p1, :cond_d

    .line 71
    iput-object p1, p0, Lcom/android/internal/app/procstats/IProcessStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 72
    return-void

    .line 69
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;
    .registers 3

    .line 85
    if-nez p0, :cond_4

    .line 86
    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_4
    const-string v0, "com.android.internal.app.procstats.IProcessStats"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/app/procstats/IProcessStats;

    if-eqz v1, :cond_13

    .line 90
    check-cast v0, Lcom/android/internal/app/procstats/IProcessStats;

    return-object v0

    .line 92
    :cond_13
    new-instance v0, Lcom/android/internal/app/procstats/IProcessStats$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 101
    packed-switch p0, :pswitch_data_18

    .line 129
    const/4 p0, 0x0

    return-object p0

    .line 125
    :pswitch_5
    const-string p0, "getMinAssociationDumpDuration"

    return-object p0

    .line 121
    :pswitch_8
    const-string p0, "getCommittedStatsMerged"

    return-object p0

    .line 117
    :pswitch_b
    const-string p0, "getCommittedStats"

    return-object p0

    .line 113
    :pswitch_e
    const-string p0, "getCurrentMemoryState"

    return-object p0

    .line 109
    :pswitch_11
    const-string p0, "getStatsOverTime"

    return-object p0

    .line 105
    :pswitch_14
    const-string p0, "getCurrentStats"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 96
    return-object p0
.end method

.method protected blacklist getCommittedStatsMerged_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/android/internal/app/procstats/IProcessStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 392
    return-void
.end method

.method protected blacklist getCurrentStats_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/android/internal/app/procstats/IProcessStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 380
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 397
    const/4 v0, 0x5

    return v0
.end method

.method protected blacklist getStatsOverTime_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/android/internal/app/procstats/IProcessStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 385
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 136
    invoke-static {p1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    nop

    .line 141
    const-string v1, "com.android.internal.app.procstats.IProcessStats"

    const/4 v7, 0x1

    if-lt p1, v7, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 142
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    :cond_e
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_17

    .line 145
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v7

    .line 148
    :cond_17
    packed-switch p1, :pswitch_data_ae

    .line 224
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 217
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getMinAssociationDumpDuration()J

    move-result-wide v0

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 220
    goto/16 :goto_ac

    .line 198
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 204
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 206
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v6}, Lcom/android/internal/app/procstats/ProcessStats;-><init>()V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    move-result-wide v0

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 211
    invoke-virtual {p3, v5, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 212
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 213
    goto :goto_ac

    .line 181
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 187
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCommittedStats(JIZLjava/util/List;)J

    move-result-wide v0

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 192
    invoke-virtual {p3, v5, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 193
    goto :goto_ac

    .line 173
    :pswitch_79
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCurrentMemoryState()I

    move-result v0

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    goto :goto_ac

    .line 164
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 169
    goto :goto_ac

    .line 153
    :pswitch_96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCurrentStats(Ljava/util/List;)[B

    move-result-object v1

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 158
    invoke-virtual {p3, v0, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 159
    nop

    .line 227
    :goto_ac
    return v7

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_96
        :pswitch_84
        :pswitch_79
        :pswitch_56
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
