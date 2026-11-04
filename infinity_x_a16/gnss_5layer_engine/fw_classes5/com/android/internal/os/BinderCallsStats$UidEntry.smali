.class public Lcom/android/internal/os/BinderCallsStats$UidEntry;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidEntry"
.end annotation


# instance fields
.field public blacklist callCount:J

.field public blacklist cpuTimeMicros:J

.field public blacklist incrementalCallCount:J

.field private blacklist mCallStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/os/BinderCallsStats$CallStatKey;",
            "Lcom/android/internal/os/BinderCallsStats$CallStat;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTempKey:Lcom/android/internal/os/BinderCallsStats$CallStatKey;

.field public blacklist recordAllTransactions:Z

.field public blacklist recordedCallCount:J

.field public blacklist workSourceUid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallStats(Lcom/android/internal/os/BinderCallsStats$UidEntry;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Landroid/util/ArrayMap;

    return-object p0
.end method

.method constructor blacklist <init>(I)V
    .registers 3

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Landroid/util/ArrayMap;

    .line 1039
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats$CallStatKey;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mTempKey:Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    .line 1034
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    .line 1035
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1100
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1101
    return v0

    .line 1104
    :cond_4
    check-cast p1, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 1105
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    iget p1, p1, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    if-ne v1, p1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method blacklist get(ILjava/lang/Class;IZ)Lcom/android/internal/os/BinderCallsStats$CallStat;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;IZ)",
            "Lcom/android/internal/os/BinderCallsStats$CallStat;"
        }
    .end annotation

    .line 1045
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mTempKey:Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    iput p1, v0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->callingUid:I

    .line 1046
    iget-object p1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mTempKey:Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    iput-object p2, p1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->binderClass:Ljava/lang/Class;

    .line 1047
    iget-object p1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mTempKey:Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    iput p3, p1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->transactionCode:I

    .line 1048
    iget-object p1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mTempKey:Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    invoke-static {p1, p4}, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->-$$Nest$fputscreenInteractive(Lcom/android/internal/os/BinderCallsStats$CallStatKey;Z)V

    .line 1049
    iget-object p1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Landroid/util/ArrayMap;

    iget-object p2, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mTempKey:Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/BinderCallsStats$CallStat;

    return-object p1
.end method

.method public blacklist getCallStatsList()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/internal/os/BinderCallsStats$CallStat;",
            ">;"
        }
    .end annotation

    .line 1086
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method blacklist getOrCreate(ILjava/lang/Class;IZZ)Lcom/android/internal/os/BinderCallsStats$CallStat;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;IZZ)",
            "Lcom/android/internal/os/BinderCallsStats$CallStat;"
        }
    .end annotation

    .line 1054
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->get(ILjava/lang/Class;IZ)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v0

    .line 1056
    if-nez v0, :cond_36

    .line 1057
    if-eqz p5, :cond_1e

    .line 1058
    invoke-static {}, Lcom/android/internal/os/BinderCallsStats;->-$$Nest$sfgetOVERFLOW_BINDER()Ljava/lang/Class;

    move-result-object p1

    const/4 p2, -0x1

    const/4 p4, 0x0

    invoke-virtual {p0, p2, p1, p2, p4}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->get(ILjava/lang/Class;IZ)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object p1

    .line 1060
    if-eqz p1, :cond_15

    .line 1061
    return-object p1

    .line 1064
    :cond_15
    nop

    .line 1065
    invoke-static {}, Lcom/android/internal/os/BinderCallsStats;->-$$Nest$sfgetOVERFLOW_BINDER()Ljava/lang/Class;

    move-result-object p1

    .line 1066
    nop

    .line 1067
    move p3, p2

    move-object p2, p1

    move p1, p3

    .line 1070
    :cond_1e
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$CallStat;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BinderCallsStats$CallStat;-><init>(ILjava/lang/Class;IZ)V

    .line 1072
    new-instance p5, Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    invoke-direct {p5}, Lcom/android/internal/os/BinderCallsStats$CallStatKey;-><init>()V

    .line 1073
    iput p1, p5, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->callingUid:I

    .line 1074
    iput-object p2, p5, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->binderClass:Ljava/lang/Class;

    .line 1075
    iput p3, p5, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->transactionCode:I

    .line 1076
    invoke-static {p5, p4}, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->-$$Nest$fputscreenInteractive(Lcom/android/internal/os/BinderCallsStats$CallStatKey;Z)V

    .line 1077
    iget-object p1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Landroid/util/ArrayMap;

    invoke-virtual {p1, p5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    :cond_36
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1110
    iget v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UidEntry{cpuTimeMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
