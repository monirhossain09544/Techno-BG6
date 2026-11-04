.class public Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;
.super Lcom/android/internal/os/KernelCpuUidTimeReader;
.source "KernelCpuUidTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuUidTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelCpuUidClusterTimeReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelCpuUidTimeReader<",
        "[J>;"
    }
.end annotation


# instance fields
.field private blacklist mBuffer:[J

.field private blacklist mCoresOnClusters:[I

.field private blacklist mCurTime:[J

.field private blacklist mDeltaTime:[J

.field private blacklist mNumClusters:I

.field private blacklist mNumCores:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;Z)V
    .registers 5

    .line 794
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;ZLcom/android/internal/os/Clock;)V

    .line 795
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3

    .line 783
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;-><init>(ZLcom/android/internal/os/Clock;)V

    .line 784
    return-void
.end method

.method public constructor blacklist <init>(ZLcom/android/internal/os/Clock;)V
    .registers 5

    .line 787
    invoke-static {}, Lcom/android/internal/os/KernelCpuProcStringReader;->getClusterTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;

    move-result-object v0

    .line 788
    invoke-static {}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->getClusterTimeReaderInstance()Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    move-result-object v1

    .line 787
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/os/KernelCpuUidTimeReader;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;ZLcom/android/internal/os/Clock;)V

    .line 789
    return-void
.end method

.method private blacklist checkPrecondition(Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;)Z
    .registers 13

    .line 921
    const/4 v0, 0x0

    if-eqz p1, :cond_a6

    invoke-virtual {p1}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->hasNextLine()Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_a6

    .line 925
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object p1

    .line 926
    iget v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    const/4 v2, 0x1

    if-lez v1, :cond_15

    .line 927
    return v2

    .line 929
    :cond_15
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 930
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 931
    iget-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mTag:Ljava/lang/String;

    const-string v1, "Empty uid_concurrent_policy_time"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    return v0

    .line 935
    :cond_2b
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 936
    array-length v3, v1

    rem-int/lit8 v3, v3, 0x2

    const-string v4, "Malformed uid_concurrent_policy_time line: "

    if-eqz v3, :cond_4f

    .line 937
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return v0

    .line 940
    :cond_4f
    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    new-array v5, v3, [I

    .line 941
    nop

    .line 942
    move v6, v0

    move v7, v6

    :goto_57
    if-ge v6, v3, :cond_8e

    .line 943
    mul-int/lit8 v8, v6, 0x2

    aget-object v9, v1, v8

    const-string v10, "policy"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7c

    .line 944
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return v0

    .line 947
    :cond_7c
    add-int/lit8 v8, v8, 0x1

    aget-object v8, v1, v8

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    aput v8, v5, v6

    .line 948
    aget v8, v5, v6

    add-int/2addr v7, v8

    .line 942
    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    .line 950
    :cond_8e
    iput v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    .line 951
    iput v7, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumCores:I

    .line 952
    iput-object v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCoresOnClusters:[I

    .line 953
    add-int/2addr v7, v2

    new-array p1, v7, [J

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    .line 954
    iget p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCurTime:[J

    .line 955
    iget p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mDeltaTime:[J

    .line 956
    return v2

    .line 923
    :cond_a6
    :goto_a6
    return v0
.end method

.method private blacklist checkPrecondition(Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;)Z
    .registers 8

    .line 894
    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 895
    iput-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBpfTimesAvailable:Z

    .line 896
    return v0

    .line 898
    :cond_6
    iget p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    const/4 v1, 0x1

    if-lez p1, :cond_c

    .line 899
    return v1

    .line 901
    :cond_c
    iget-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    invoke-virtual {p1}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->getDataDimensions()[J

    move-result-object p1

    .line 902
    if-eqz p1, :cond_4a

    array-length v2, p1

    if-ge v2, v1, :cond_18

    goto :goto_4a

    .line 906
    :cond_18
    array-length v2, p1

    iput v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    .line 907
    iget v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCoresOnClusters:[I

    .line 908
    nop

    .line 909
    move v2, v0

    :goto_23
    iget v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    if-ge v0, v3, :cond_36

    .line 910
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCoresOnClusters:[I

    aget-wide v4, p1, v0

    long-to-int v4, v4

    aput v4, v3, v0

    .line 911
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCoresOnClusters:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    .line 909
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 913
    :cond_36
    iput v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumCores:I

    .line 914
    add-int/2addr v2, v1

    new-array p1, v2, [J

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    .line 915
    iget p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCurTime:[J

    .line 916
    iget p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mDeltaTime:[J

    .line 917
    return v1

    .line 903
    :cond_4a
    :goto_4a
    iput-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBpfTimesAvailable:Z

    .line 904
    return v0
.end method

.method private blacklist sumClusterTime()V
    .registers 15

    .line 881
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBpfTimesAvailable:Z

    if-eqz v0, :cond_7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_9

    :cond_7
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 883
    :goto_9
    nop

    .line 884
    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v2

    :goto_d
    iget v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    if-ge v3, v5, :cond_32

    .line 885
    nop

    .line 886
    const-wide/16 v5, 0x0

    move v7, v2

    :goto_15
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCoresOnClusters:[I

    aget v8, v8, v3

    if-gt v7, v8, :cond_2a

    .line 887
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    add-int/lit8 v9, v4, 0x1

    aget-wide v10, v8, v4

    long-to-double v10, v10

    mul-double/2addr v10, v0

    int-to-double v12, v7

    div-double/2addr v10, v12

    add-double/2addr v5, v10

    .line 886
    add-int/lit8 v7, v7, 0x1

    move v4, v9

    goto :goto_15

    .line 889
    :cond_2a
    iget-object v7, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCurTime:[J

    double-to-long v5, v5

    aput-wide v5, v7, v3

    .line 884
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 891
    :cond_32
    return-void
.end method


# virtual methods
.method blacklist processUidDelta(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;)V"
        }
    .end annotation

    .line 798
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    long-to-int v0, v2

    .line 799
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 800
    if-nez v2, :cond_19

    .line 801
    iget v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    new-array v2, v2, [J

    .line 802
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 804
    :cond_19
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->sumClusterTime()V

    .line 805
    nop

    .line 806
    nop

    .line 807
    move v3, v1

    move v4, v3

    :goto_20
    iget v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    if-ge v3, v5, :cond_6f

    .line 808
    iget-object v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mDeltaTime:[J

    iget-object v6, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCurTime:[J

    aget-wide v6, v6, v3

    aget-wide v8, v2, v3

    sub-long/2addr v6, v8

    aput-wide v6, v5, v3

    .line 809
    iget-object v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mDeltaTime:[J

    aget-wide v5, v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_60

    .line 810
    iget-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative delta from cluster time for uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delta: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mDeltaTime:[J

    aget-wide v1, v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    return-void

    .line 814
    :cond_60
    iget-object v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mDeltaTime:[J

    aget-wide v5, v5, v3

    cmp-long v5, v5, v7

    if-lez v5, :cond_6a

    const/4 v5, 0x1

    goto :goto_6b

    :cond_6a
    move v5, v1

    :goto_6b
    or-int/2addr v4, v5

    .line 807
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 816
    :cond_6f
    if-eqz v4, :cond_7f

    .line 817
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCurTime:[J

    iget v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mNumClusters:I

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 818
    if-eqz p1, :cond_7f

    .line 819
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mDeltaTime:[J

    invoke-interface {p1, v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V

    .line 822
    :cond_7f
    return-void
.end method

.method blacklist readAbsoluteImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;)V"
        }
    .end annotation

    .line 853
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBpfTimesAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 854
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    iget-boolean v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mThrottle:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->open(Z)Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    move-result-object v0

    .line 855
    :try_start_f
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 856
    :goto_15
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    invoke-virtual {v0, v2}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->getNextUid([J)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 857
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->sumClusterTime()V

    .line 858
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    aget-wide v2, v2, v1

    long-to-int v2, v2

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCurTime:[J

    invoke-interface {p1, v2, v3}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_37

    goto :goto_15

    .line 862
    :cond_2b
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    .line 860
    :cond_30
    return-void

    .line 862
    :cond_31
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    goto :goto_43

    .line 854
    :catchall_37
    move-exception p1

    if-eqz v0, :cond_42

    :try_start_3a
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    throw p1

    .line 864
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mReader:Lcom/android/internal/os/KernelCpuProcStringReader;

    iget-boolean v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mThrottle:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object v0

    .line 865
    :try_start_4d
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;)Z

    move-result v2
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_9b

    if-nez v2, :cond_59

    .line 877
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 866
    :cond_58
    return-void

    .line 869
    :cond_59
    :goto_59
    :try_start_59
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v2

    if-eqz v2, :cond_95

    .line 870
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    invoke-static {v2, v3}, Lcom/android/internal/os/KernelCpuProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    array-length v4, v4

    if-eq v3, v4, :cond_87

    .line 871
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    goto :goto_59

    .line 874
    :cond_87
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->sumClusterTime()V

    .line 875
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    aget-wide v2, v2, v1

    long-to-int v2, v2

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mCurTime:[J

    invoke-interface {p1, v2, v3}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V
    :try_end_94
    .catchall {:try_start_59 .. :try_end_94} :catchall_9b

    goto :goto_59

    .line 877
    :cond_95
    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 878
    :cond_9a
    return-void

    .line 864
    :catchall_9b
    move-exception p1

    if-eqz v0, :cond_a6

    :try_start_9e
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_a2

    goto :goto_a6

    :catchall_a2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a6
    :goto_a6
    throw p1
.end method

.method blacklist readDeltaImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;Z)V"
        }
    .end annotation

    .line 826
    iget-boolean p2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBpfTimesAvailable:Z

    if-eqz p2, :cond_38

    .line 827
    iget-object p2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mThrottle:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->open(Z)Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    move-result-object p2

    .line 828
    :try_start_e
    invoke-direct {p0, p2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 829
    :goto_14
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    invoke-virtual {p2, v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->getNextUid([J)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 830
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->processUidDelta(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_2c

    goto :goto_14

    .line 834
    :cond_20
    if-eqz p2, :cond_25

    invoke-virtual {p2}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    .line 832
    :cond_25
    return-void

    .line 834
    :cond_26
    if-eqz p2, :cond_38

    invoke-virtual {p2}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    goto :goto_38

    .line 827
    :catchall_2c
    move-exception p1

    if-eqz p2, :cond_37

    :try_start_2f
    invoke-virtual {p2}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    throw p1

    .line 836
    :cond_38
    :goto_38
    iget-object p2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mReader:Lcom/android/internal/os/KernelCpuProcStringReader;

    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mThrottle:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object p2

    .line 837
    :try_start_42
    invoke-direct {p0, p2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;)Z

    move-result v0
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_86

    if-nez v0, :cond_4e

    .line 848
    if-eqz p2, :cond_4d

    invoke-virtual {p2}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 838
    :cond_4d
    return-void

    .line 841
    :cond_4e
    :goto_4e
    :try_start_4e
    invoke-virtual {p2}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 842
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    invoke-static {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mBuffer:[J

    array-length v2, v2

    if-eq v1, v2, :cond_7c

    .line 843
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    goto :goto_4e

    .line 846
    :cond_7c
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->processUidDelta(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    :try_end_7f
    .catchall {:try_start_4e .. :try_end_7f} :catchall_86

    goto :goto_4e

    .line 848
    :cond_80
    if-eqz p2, :cond_85

    invoke-virtual {p2}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 849
    :cond_85
    return-void

    .line 836
    :catchall_86
    move-exception p1

    if-eqz p2, :cond_91

    :try_start_89
    invoke-virtual {p2}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    goto :goto_91

    :catchall_8d
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_91
    :goto_91
    throw p1
.end method
