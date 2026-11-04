.class public final Lcom/android/internal/os/SelectedProcessCpuThreadReader;
.super Ljava/lang/Object;
.source "SelectedProcessCpuThreadReader.java"


# instance fields
.field private final blacklist mCmdline:[Ljava/lang/String;

.field private blacklist mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

.field private blacklist mPid:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mCmdline:[Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist readAbsolute()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;
    .registers 5

    .line 44
    iget-object v0, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mCmdline:[Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    .line 45
    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    goto :goto_2c

    .line 48
    :cond_e
    const/4 v2, 0x0

    aget v0, v0, v2

    .line 49
    iget v2, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mPid:I

    if-ne v2, v0, :cond_1c

    .line 50
    iget-object v0, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getProcessCpuUsage()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;

    move-result-object v0

    return-object v0

    .line 52
    :cond_1c
    iput v0, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mPid:I

    .line 53
    iget v0, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mPid:I

    invoke-static {v0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->create(I)Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    .line 54
    iget-object v0, p0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->startTrackingThreadCpuTimes()V

    .line 55
    return-object v1

    .line 46
    :cond_2c
    :goto_2c
    return-object v1
.end method
