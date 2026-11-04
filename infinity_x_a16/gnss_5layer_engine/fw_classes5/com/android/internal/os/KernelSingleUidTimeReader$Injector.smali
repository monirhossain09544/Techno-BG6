.class public Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;
.super Ljava/lang/Object;
.source "KernelSingleUidTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelSingleUidTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist addDeltaForTest(IJJ[[J[J)Z
.end method

.method private static native blacklist addDeltaFromBpf(IJJ[J)Z
.end method


# virtual methods
.method public blacklist addDelta(ILcom/android/internal/os/LongArrayMultiStateCounter;J[J)Z
    .registers 8

    .line 277
    iget-wide v0, p2, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    move p0, p1

    move-wide p1, v0

    invoke-static/range {p0 .. p5}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;->addDeltaFromBpf(IJJ[J)Z

    move-result p1

    return p1
.end method

.method public blacklist addDeltaForTest(ILcom/android/internal/os/LongArrayMultiStateCounter;J[[J[J)Z
    .registers 9

    .line 292
    iget-wide v0, p2, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    move p0, p1

    move-wide p1, v0

    invoke-static/range {p0 .. p6}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;->addDeltaForTest(IJJ[[J[J)Z

    move-result p1

    return p1
.end method

.method public native blacklist readBpfData(I)[J
.end method

.method public greylist-max-o readData(Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p1

    return-object p1
.end method
