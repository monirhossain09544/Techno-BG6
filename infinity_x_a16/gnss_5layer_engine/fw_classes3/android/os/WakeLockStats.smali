.class public final Landroid/os/WakeLockStats;
.super Ljava/lang/Object;
.source "WakeLockStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/WakeLockStats$WakeLock;,
        Landroid/os/WakeLockStats$WakeLockData;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/WakeLockStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAggregatedWakeLocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/WakeLockStats$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWakeLocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/WakeLockStats$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 217
    new-instance v0, Landroid/os/WakeLockStats$1;

    invoke-direct {v0}, Landroid/os/WakeLockStats$1;-><init>()V

    sput-object v0, Landroid/os/WakeLockStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    .line 190
    const/4 v1, 0x0

    move v2, v1

    :goto_10
    const/4 v3, 0x0

    if-ge v2, v0, :cond_20

    .line 191
    iget-object v4, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    new-instance v5, Landroid/os/WakeLockStats$WakeLock;

    invoke-direct {v5, p1, v3}, Landroid/os/WakeLockStats$WakeLock;-><init>(Landroid/os/Parcel;Landroid/os/WakeLockStats-IA;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 193
    :cond_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/os/WakeLockStats;->mAggregatedWakeLocks:Ljava/util/List;

    .line 195
    nop

    :goto_2c
    if-ge v1, v0, :cond_3b

    .line 196
    iget-object v2, p0, Landroid/os/WakeLockStats;->mAggregatedWakeLocks:Ljava/util/List;

    new-instance v4, Landroid/os/WakeLockStats$WakeLock;

    invoke-direct {v4, p1, v3}, Landroid/os/WakeLockStats$WakeLock;-><init>(Landroid/os/Parcel;Landroid/os/WakeLockStats-IA;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 198
    :cond_3b
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/WakeLockStats-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/WakeLockStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/WakeLockStats$WakeLock;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/WakeLockStats$WakeLock;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    .line 174
    iput-object p2, p0, Landroid/os/WakeLockStats;->mAggregatedWakeLocks:Ljava/util/List;

    .line 175
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAggregatedWakeLocks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/WakeLockStats$WakeLock;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Landroid/os/WakeLockStats;->mAggregatedWakeLocks:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getWakeLocks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/WakeLockStats$WakeLock;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLockStats{mWakeLocks: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mAggregatedWakeLocks: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/WakeLockStats;->mAggregatedWakeLocks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 202
    iget-object p2, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 203
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, p2, :cond_1b

    .line 205
    iget-object v2, p0, Landroid/os/WakeLockStats;->mWakeLocks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WakeLockStats$WakeLock;

    .line 206
    invoke-static {v2, p1}, Landroid/os/WakeLockStats$WakeLock;->-$$Nest$mwriteToParcel(Landroid/os/WakeLockStats$WakeLock;Landroid/os/Parcel;)V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 208
    :cond_1b
    iget-object p2, p0, Landroid/os/WakeLockStats;->mAggregatedWakeLocks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 209
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    nop

    :goto_25
    if-ge v0, p2, :cond_35

    .line 211
    iget-object v1, p0, Landroid/os/WakeLockStats;->mAggregatedWakeLocks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WakeLockStats$WakeLock;

    .line 212
    invoke-static {v1, p1}, Landroid/os/WakeLockStats$WakeLock;->-$$Nest$mwriteToParcel(Landroid/os/WakeLockStats$WakeLock;Landroid/os/Parcel;)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 214
    :cond_35
    return-void
.end method
