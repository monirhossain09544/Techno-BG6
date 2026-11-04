.class public Lcom/android/internal/os/ProcTimeInStateReader;
.super Ljava/lang/Object;
.source "ProcTimeInStateReader.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ProcTimeInStateReader"

.field private static final blacklist TIME_IN_STATE_HEADER_LINE_FORMAT:[I

.field private static final blacklist TIME_IN_STATE_LINE_FREQUENCY_FORMAT:[I

.field private static final blacklist TIME_IN_STATE_LINE_TIME_FORMAT:[I


# instance fields
.field private blacklist mFrequenciesKhz:[J

.field private blacklist mTimeInStateTimeFormat:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 66
    const/16 v0, 0x2020

    const/16 v1, 0xa

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_FREQUENCY_FORMAT:[I

    .line 74
    const/16 v0, 0x20

    const/16 v2, 0x200a

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_TIME_FORMAT:[I

    .line 82
    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_HEADER_LINE_FORMAT:[I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/nio/file/Path;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-direct {p0, p1}, Lcom/android/internal/os/ProcTimeInStateReader;->initializeTimeInStateFormat(Ljava/nio/file/Path;)V

    .line 107
    return-void
.end method

.method private blacklist initializeTimeInStateFormat(Ljava/nio/file/Path;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 165
    new-instance p1, Landroid/util/IntArray;

    invoke-direct {p1}, Landroid/util/IntArray;-><init>()V

    .line 166
    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    .line 167
    nop

    .line 168
    const/4 v1, 0x0

    move v2, v1

    :goto_11
    array-length v3, v0

    if-ge v1, v3, :cond_42

    .line 170
    aget-byte v3, v0, v1

    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-nez v3, :cond_27

    .line 171
    sget-object v3, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_HEADER_LINE_FORMAT:[I

    invoke-virtual {p1, v3}, Landroid/util/IntArray;->addAll([I)V

    .line 172
    sget-object v3, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_HEADER_LINE_FORMAT:[I

    invoke-virtual {v7, v3}, Landroid/util/IntArray;->addAll([I)V

    goto :goto_33

    .line 174
    :cond_27
    sget-object v3, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_FREQUENCY_FORMAT:[I

    invoke-virtual {p1, v3}, Landroid/util/IntArray;->addAll([I)V

    .line 175
    sget-object v3, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_TIME_FORMAT:[I

    invoke-virtual {v7, v3}, Landroid/util/IntArray;->addAll([I)V

    .line 176
    add-int/lit8 v2, v2, 0x1

    .line 179
    :goto_33
    array-length v3, v0

    if-ge v1, v3, :cond_3f

    aget-byte v3, v0, v1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3f

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 168
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 184
    :cond_42
    if-eqz v2, :cond_65

    .line 190
    new-array v5, v2, [J

    .line 191
    array-length v2, v0

    .line 193
    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    .line 191
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result p1

    .line 194
    if-eqz p1, :cond_5d

    .line 198
    invoke-virtual {v7}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mTimeInStateTimeFormat:[I

    .line 199
    iput-object v5, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mFrequenciesKhz:[J

    .line 200
    return-void

    .line 195
    :cond_5d
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to parse time_in_state file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_65
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Empty time_in_state file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist getFrequenciesKhz()[J
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mFrequenciesKhz:[J

    return-object v0
.end method

.method public blacklist getUsageTimesMillis(Ljava/nio/file/Path;)[J
    .registers 8

    .line 119
    iget-object v0, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mFrequenciesKhz:[J

    array-length v0, v0

    new-array v1, v0, [J

    .line 120
    nop

    .line 121
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mTimeInStateTimeFormat:[I

    .line 120
    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v1, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result p1

    .line 124
    if-nez p1, :cond_14

    .line 125
    return-object v3

    .line 128
    :cond_14
    const/4 p1, 0x0

    :goto_15
    if-ge p1, v0, :cond_21

    .line 129
    aget-wide v2, v1, p1

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    aput-wide v2, v1, p1

    .line 128
    add-int/lit8 p1, p1, 0x1

    goto :goto_15

    .line 131
    :cond_21
    return-object v1
.end method
