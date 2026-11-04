.class public final Landroid/net/metrics/ApfProgramEvent;
.super Ljava/lang/Object;
.source "ApfProgramEvent.java"

# interfaces
.implements Landroid/net/metrics/IpConnectivityLog$Event;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/ApfProgramEvent$Decoder;,
        Landroid/net/metrics/ApfProgramEvent$Builder;,
        Landroid/net/metrics/ApfProgramEvent$Flags;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/metrics/ApfProgramEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o FLAG_HAS_IPV4_ADDRESS:I = 0x1

.field public static final greylist-max-o FLAG_MULTICAST_FILTER_ON:I


# instance fields
.field public final greylist-max-r actualLifetime:J

.field public final greylist-max-r currentRas:I

.field public final greylist-max-r filteredRas:I

.field public final greylist-max-r flags:I

.field public final greylist-max-r lifetime:J

.field public final greylist-max-r programLength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 213
    new-instance v0, Landroid/net/metrics/ApfProgramEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/ApfProgramEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/ApfProgramEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JJIIII)V
    .registers 9

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-wide p1, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    .line 84
    iput-wide p3, p0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    .line 85
    iput p5, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    .line 86
    iput p6, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    .line 87
    iput p7, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    .line 88
    iput p8, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    .line 89
    return-void
.end method

.method synthetic constructor blacklist <init>(JJIIIILandroid/net/metrics/ApfProgramEvent-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/net/metrics/ApfProgramEvent;-><init>(JJIIII)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    .line 98
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/metrics/ApfProgramEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/metrics/ApfProgramEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-r flagsFor(ZZ)I
    .registers 2

    .line 227
    nop

    .line 228
    if-eqz p0, :cond_5

    .line 229
    const/4 p0, 0x2

    goto :goto_6

    .line 228
    :cond_5
    const/4 p0, 0x0

    .line 231
    :goto_6
    if-eqz p1, :cond_a

    .line 232
    or-int/lit8 p0, p0, 0x1

    .line 234
    :cond_a
    return p0
.end method

.method private static greylist-max-o namesOf(I)Ljava/lang/String;
    .registers 5

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    const v1, 0x7fffffff

    and-int/2addr p0, v1

    int-to-long v1, p0

    const/4 p0, 0x1

    new-array p0, p0, [J

    const/4 v3, 0x0

    aput-wide v1, p0, v3

    invoke-static {p0}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object p0

    .line 241
    invoke-virtual {p0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    :goto_1c
    if-ltz v1, :cond_30

    .line 242
    sget-object v2, Landroid/net/metrics/ApfProgramEvent$Decoder;->constants:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_1c

    .line 244
    :cond_30
    const-string/jumbo p0, "|"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 202
    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/net/metrics/ApfProgramEvent;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_3c

    .line 203
    :cond_10
    check-cast p1, Landroid/net/metrics/ApfProgramEvent;

    .line 204
    iget-wide v1, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    iget-wide v3, p1, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_3b

    iget-wide v1, p0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    iget-wide v3, p1, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_3b

    iget v1, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    iget v2, p1, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    if-ne v1, v2, :cond_3b

    iget v1, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    iget v2, p1, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    if-ne v1, v2, :cond_3b

    iget v1, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    iget v2, p1, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    if-ne v1, v2, :cond_3b

    iget v1, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    iget p1, p1, Landroid/net/metrics/ApfProgramEvent;->flags:I

    if-ne v1, p1, :cond_3b

    const/4 v0, 0x1

    :cond_3b
    return v0

    .line 202
    :cond_3c
    :goto_3c
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 195
    iget-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_22
    const-string v0, "forever"

    :goto_24
    move-object v5, v0

    .line 196
    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v6, p0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v0, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    invoke-static {v0}, Landroid/net/metrics/ApfProgramEvent;->namesOf(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 196
    const-string v1, "ApfProgramEvent(%d/%d RAs %dB %ds/%s %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 178
    iget-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 179
    iget-wide v0, p0, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 180
    iget p2, p0, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget p2, p0, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget p2, p0, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget p2, p0, Landroid/net/metrics/ApfProgramEvent;->flags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    return-void
.end method
