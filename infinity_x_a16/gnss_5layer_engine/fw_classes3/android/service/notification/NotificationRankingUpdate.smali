.class public Landroid/service/notification/NotificationRankingUpdate;
.super Ljava/lang/Object;
.source "NotificationRankingUpdate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotificationRankingUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "NotificationRankingUpdate"


# instance fields
.field private final blacklist mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private blacklist mRankingMapFd:Landroid/os/SharedMemory;

.field private final blacklist mSharedMemoryName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 243
    new-instance v0, Landroid/service/notification/NotificationRankingUpdate$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationRankingUpdate$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    .line 49
    const-string v1, "NotificationRankingUpdatedSharedMemory"

    iput-object v1, p0, Landroid/service/notification/NotificationRankingUpdate;->mSharedMemoryName:Ljava/lang/String;

    .line 63
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 64
    nop

    .line 68
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/os/SharedMemory;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SharedMemory;

    iput-object v2, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    .line 73
    iget-object v2, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-nez v2, :cond_38

    .line 74
    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    :try_end_33
    .catch Landroid/system/ErrnoException; {:try_start_f .. :try_end_33} :catch_78
    .catchall {:try_start_f .. :try_end_33} :catchall_76

    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 95
    nop

    .line 75
    return-void

    .line 78
    :cond_38
    :try_start_38
    iget-object v2, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v2}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v3, v2, [B

    .line 80
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 81
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 82
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    nop

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 85
    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/NotificationListenerService$RankingMap;

    iput-object v2, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 89
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationRankingUpdate;->addSmartActionsFromBundleToRankingMap(Landroid/os/Bundle;)V
    :try_end_64
    .catch Landroid/system/ErrnoException; {:try_start_38 .. :try_end_64} :catch_78
    .catchall {:try_start_38 .. :try_end_64} :catchall_76

    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 95
    if-eqz v0, :cond_75

    iget-object p1, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz p1, :cond_75

    .line 96
    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 97
    iget-object p1, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {p1}, Landroid/os/SharedMemory;->close()V

    .line 100
    :cond_75
    return-void

    .line 94
    :catchall_76
    move-exception p1

    goto :goto_7f

    .line 91
    :catch_78
    move-exception p1

    .line 92
    :try_start_79
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7f
    .catchall {:try_start_79 .. :try_end_7f} :catchall_76

    .line 94
    :goto_7f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 95
    if-eqz v0, :cond_90

    iget-object v1, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz v1, :cond_90

    .line 96
    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 97
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 99
    :cond_90
    throw p1
.end method

.method public constructor blacklist <init>([Landroid/service/notification/NotificationListenerService$Ranking;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    .line 49
    const-string v0, "NotificationRankingUpdatedSharedMemory"

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSharedMemoryName:Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {v0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 56
    return-void
.end method

.method private blacklist addSmartActionsFromBundleToRankingMap(Landroid/os/Bundle;)V
    .registers 7

    .line 110
    if-nez p1, :cond_3

    .line 111
    return-void

    .line 114
    :cond_3
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    .line 115
    const/4 v1, 0x0

    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_21

    .line 116
    aget-object v2, v0, v1

    .line 117
    const-class v3, Landroid/app/Notification$Action;

    .line 118
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    .line 120
    iget-object v4, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v4, v2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRawRankingObject(Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v2

    .line 121
    invoke-virtual {v2, v3}, Landroid/service/notification/NotificationListenerService$Ranking;->setSmartActions(Ljava/util/ArrayList;)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 123
    :cond_21
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 155
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 156
    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 158
    :cond_11
    check-cast p1, Landroid/service/notification/NotificationRankingUpdate;

    .line 159
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object p1, p1, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 156
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method public final blacklist isFdNotNullAndClosed()Z
    .registers 3

    .line 132
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFd()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 14

    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 174
    iget-object v3, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v3

    .line 175
    const/4 v4, 0x0

    move v5, v4

    :goto_16
    array-length v6, v3

    const/4 v7, 0x0

    if-ge v5, v6, :cond_42

    .line 176
    aget-object v6, v3, v5

    .line 177
    iget-object v8, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v8, v6}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRawRankingObject(Ljava/lang/String;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v8

    .line 183
    invoke-virtual {v8}, Landroid/service/notification/NotificationListenerService$Ranking;->getSmartActions()Ljava/util/List;

    move-result-object v9

    .line 184
    if-eqz v9, :cond_31

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_31

    .line 185
    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 189
    :cond_31
    new-instance v6, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v6}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 191
    invoke-virtual {v6, v8}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 192
    invoke-virtual {v6, v7}, Landroid/service/notification/NotificationListenerService$Ranking;->setSmartActions(Ljava/util/ArrayList;)V

    .line 193
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 197
    :cond_42
    new-instance v3, Landroid/service/notification/NotificationListenerService$RankingMap;

    new-array v4, v4, [Landroid/service/notification/NotificationListenerService$Ranking;

    .line 199
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v3, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>([Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 203
    nop

    .line 207
    :try_start_50
    invoke-virtual {v0, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 208
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    .line 211
    const-string v3, "NotificationRankingUpdatedSharedMemory"

    invoke-static {v3, v1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    .line 214
    iget-object v1, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {v1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_65
    .catch Landroid/system/ErrnoException; {:try_start_50 .. :try_end_65} :catch_96
    .catchall {:try_start_50 .. :try_end_65} :catchall_94

    .line 216
    :try_start_65
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->marshall(Ljava/nio/ByteBuffer;)V

    .line 218
    iget-object v3, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    sget v4, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v3, v4}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 220
    iget-object v3, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 222
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result p2

    if-lez p2, :cond_7e

    .line 223
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_81

    .line 225
    :cond_7e
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_81
    .catch Landroid/system/ErrnoException; {:try_start_65 .. :try_end_81} :catch_91
    .catchall {:try_start_65 .. :try_end_81} :catchall_8e

    .line 230
    :goto_81
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    if-eqz v1, :cond_af

    iget-object p1, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz p1, :cond_af

    .line 234
    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    goto :goto_aa

    .line 230
    :catchall_8e
    move-exception p1

    move-object v7, v1

    goto :goto_b0

    .line 227
    :catch_91
    move-exception p1

    move-object v7, v1

    goto :goto_97

    .line 230
    :catchall_94
    move-exception p1

    goto :goto_b0

    .line 227
    :catch_96
    move-exception p1

    .line 228
    :goto_97
    :try_start_97
    const-string p2, "NotificationRankingUpdate"

    const-string v1, "Failed to write ranking map to shared memory"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9e
    .catchall {:try_start_97 .. :try_end_9e} :catchall_94

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    if-eqz v7, :cond_af

    iget-object p1, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz p1, :cond_af

    .line 234
    invoke-static {v7}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 235
    :goto_aa
    iget-object p1, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {p1}, Landroid/os/SharedMemory;->close()V

    .line 238
    :cond_af
    return-void

    .line 230
    :goto_b0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    if-eqz v7, :cond_c1

    iget-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    if-eqz p2, :cond_c1

    .line 234
    invoke-static {v7}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 235
    iget-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mRankingMapFd:Landroid/os/SharedMemory;

    invoke-virtual {p2}, Landroid/os/SharedMemory;->close()V

    .line 237
    :cond_c1
    throw p1
.end method
