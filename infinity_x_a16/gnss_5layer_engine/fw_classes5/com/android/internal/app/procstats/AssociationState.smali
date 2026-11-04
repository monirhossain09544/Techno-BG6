.class public final Lcom/android/internal/app/procstats/AssociationState;
.super Ljava/lang/Object;
.source "AssociationState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/AssociationState$SourceKey;,
        Lcom/android/internal/app/procstats/AssociationState$SourceState;,
        Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;
    }
.end annotation


# static fields
.field static final blacklist ASSOCIATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/util/Pair<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ProcessStats"

.field private static final blacklist VALIDATE_TIMES:Z = false

.field private static final blacklist sTmpSourceKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPackageState:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

.field private blacklist mProc:Lcom/android/internal/app/procstats/ProcessState;

.field private final blacklist mProcessName:Ljava/lang/String;

.field private final blacklist mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

.field final blacklist mSources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTotalActiveCount:I

.field private blacklist mTotalActiveDuration:J

.field private blacklist mTotalActiveNesting:I

.field private blacklist mTotalActiveStartUptime:J

.field private blacklist mTotalCount:I

.field private blacklist mTotalDuration:J

.field private blacklist mTotalNesting:I

.field private blacklist mTotalStartUptime:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTotalActiveCount(Lcom/android/internal/app/procstats/AssociationState;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalActiveDuration(Lcom/android/internal/app/procstats/AssociationState;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalActiveNesting(Lcom/android/internal/app/procstats/AssociationState;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalActiveStartUptime(Lcom/android/internal/app/procstats/AssociationState;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalDuration(Lcom/android/internal/app/procstats/AssociationState;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalNesting(Lcom/android/internal/app/procstats/AssociationState;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalStartUptime(Lcom/android/internal/app/procstats/AssociationState;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalStartUptime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalActiveCount(Lcom/android/internal/app/procstats/AssociationState;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalActiveDuration(Lcom/android/internal/app/procstats/AssociationState;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalActiveNesting(Lcom/android/internal/app/procstats/AssociationState;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalActiveStartUptime(Lcom/android/internal/app/procstats/AssociationState;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalDuration(Lcom/android/internal/app/procstats/AssociationState;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTotalNesting(Lcom/android/internal/app/procstats/AssociationState;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 557
    new-instance v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/app/procstats/AssociationState;->sTmpSourceKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 793
    new-instance v0, Lcom/android/internal/app/procstats/AssociationState$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/AssociationState$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/AssociationState;->ASSOCIATION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V
    .registers 7

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    .line 563
    iput-object p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 564
    iput-object p2, p0, Lcom/android/internal/app/procstats/AssociationState;->mPackageState:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 565
    iput-object p3, p0, Lcom/android/internal/app/procstats/AssociationState;->mName:Ljava/lang/String;

    .line 566
    iput-object p4, p0, Lcom/android/internal/app/procstats/AssociationState;->mProcessName:Ljava/lang/String;

    .line 567
    iput-object p5, p0, Lcom/android/internal/app/procstats/AssociationState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 568
    return-void
.end method

.method static blacklist createSortedAssociations(JJLandroid/util/ArrayMap;)Ljava/util/ArrayList;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceState;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;",
            ">;>;"
        }
    .end annotation

    .line 815
    move-object/from16 v0, p4

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 816
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 817
    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_52

    .line 818
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 819
    new-instance v4, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    invoke-direct {v4, v7}, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;-><init>(Lcom/android/internal/app/procstats/AssociationState$SourceState;)V

    .line 820
    iget-wide v5, v7, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    .line 821
    iget v8, v7, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    if-lez v8, :cond_25

    .line 822
    iget-wide v8, v7, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    sub-long v8, p0, v8

    add-long/2addr v5, v8

    .line 824
    :cond_25
    iput-wide v5, v4, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mTotalTime:J

    .line 825
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide v10, p0

    move-wide/from16 v8, p2

    invoke-static/range {v5 .. v13}, Lcom/android/internal/app/procstats/AssociationState;->dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/procstats/AssociationState$SourceState;JJZZ)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    .line 826
    iget-wide v5, v4, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_41

    .line 827
    iget-wide v5, v4, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    neg-long v5, v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    .line 829
    :cond_41
    new-instance v5, Landroid/util/Pair;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 831
    :cond_52
    sget-object p0, Lcom/android/internal/app/procstats/AssociationState;->ASSOCIATION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 832
    return-object v2
.end method

.method static blacklist dumpActiveDurationSummary(Ljava/io/PrintWriter;Lcom/android/internal/app/procstats/AssociationState$SourceState;JJZ)V
    .registers 16

    .line 1005
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v8}, Lcom/android/internal/app/procstats/AssociationState;->dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/procstats/AssociationState$SourceState;JJZZ)J

    move-result-wide p1

    .line 1006
    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-gez p5, :cond_13

    const/4 p5, 0x1

    goto :goto_14

    :cond_13
    const/4 p5, 0x0

    .line 1007
    :goto_14
    if-eqz p5, :cond_17

    .line 1008
    neg-long p1, p1

    .line 1010
    :cond_17
    if-eqz p6, :cond_22

    .line 1011
    invoke-static {p1, p2, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1012
    const-string p5, " / "

    invoke-virtual {p0, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_27

    .line 1014
    :cond_22
    const-string p5, "time "

    invoke-virtual {p0, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1016
    :goto_27
    long-to-double p1, p1

    long-to-double p5, v3

    div-double/2addr p1, p5

    invoke-static {p0, p1, p2}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    .line 1017
    iget-wide p1, v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    cmp-long p1, p1, p3

    if-lez p1, :cond_38

    .line 1018
    const-string p1, " (running)"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1020
    :cond_38
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1021
    return-void
.end method

.method static blacklist dumpSources(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JJLjava/lang/String;ZZ)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;",
            ">;>;JJ",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 899
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-wide/from16 v2, p7

    move-object/from16 v11, p9

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 900
    const/4 v1, 0x0

    move v13, v1

    :goto_10
    if-ge v13, v12, :cond_1c0

    .line 901
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 902
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v14, v4

    check-cast v14, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    .line 903
    iget-object v4, v14, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 904
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 905
    const-string v5, "<- "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 906
    iget-object v5, v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 907
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 908
    iget v5, v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 909
    iget-object v5, v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    const-string v6, " ("

    const-string v15, ")"

    if-eqz v5, :cond_53

    .line 910
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 911
    iget-object v5, v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 917
    :cond_53
    if-eqz v11, :cond_6c

    iget-object v5, v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6c

    iget-object v1, v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    .line 918
    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 919
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 920
    move/from16 v16, v12

    goto/16 :goto_1b6

    .line 922
    :cond_6c
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 923
    iget v1, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    const-string v5, ": time "

    const-string v7, " / "

    const-wide/16 v16, 0x0

    const-string v8, ": "

    if-nez v1, :cond_96

    iget-object v1, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-nez v1, :cond_96

    iget-wide v10, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    cmp-long v1, v10, v16

    if-nez v1, :cond_96

    iget-wide v10, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    cmp-long v1, v10, v16

    if-eqz v1, :cond_8e

    goto :goto_96

    :cond_8e
    move-object v1, v4

    move-object v10, v5

    move-object v11, v7

    move/from16 v16, v12

    move-object v12, v8

    goto/16 :goto_128

    .line 925
    :cond_96
    :goto_96
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 926
    const-string v1, "   Active count "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 927
    iget v1, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 928
    if-eqz p10, :cond_116

    .line 929
    if-eqz p11, :cond_ca

    .line 930
    iget-object v1, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v1, :cond_b1

    .line 931
    const-string v1, " (multi-state)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ca

    .line 932
    :cond_b1
    iget v1, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    if-ltz v1, :cond_c5

    .line 933
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 934
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    iget v6, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_ca

    .line 937
    :cond_c5
    const-string v1, " (*UNKNOWN STATE*)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 940
    :cond_ca
    :goto_ca
    if-eqz p11, :cond_d8

    .line 941
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 942
    iget-wide v10, v14, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 943
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_db

    .line 945
    :cond_d8
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 947
    :goto_db
    iget-wide v10, v14, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    long-to-double v10, v10

    move-object v1, v5

    long-to-double v5, v2

    div-double/2addr v10, v5

    invoke-static {v0, v10, v11}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    .line 948
    iget-wide v5, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    cmp-long v5, v5, v16

    if-eqz v5, :cond_ef

    .line 949
    const-string v5, " (running)"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    :cond_ef
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 952
    iget-object v5, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v5, :cond_10d

    .line 953
    move-wide v5, v2

    move-object v2, v4

    move-wide v3, v5

    move-wide/from16 v5, p5

    move-object v10, v1

    move-object v11, v7

    move/from16 v16, v12

    move-object/from16 v1, p3

    move/from16 v7, p10

    move-object v12, v8

    move/from16 v8, p11

    invoke-static/range {v0 .. v8}, Lcom/android/internal/app/procstats/AssociationState;->dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/procstats/AssociationState$SourceState;JJZZ)J

    move-object v1, v2

    move-wide/from16 v2, p7

    goto :goto_128

    .line 952
    :cond_10d
    move-object v10, v1

    move-object v1, v4

    move-object v11, v7

    move/from16 v16, v12

    move-object v12, v8

    move-wide/from16 v2, p7

    goto :goto_128

    .line 956
    :cond_116
    move-object v1, v4

    move-object v10, v5

    move-object v11, v7

    move/from16 v16, v12

    move-object v12, v8

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 957
    move-wide/from16 v4, p5

    move-wide/from16 v2, p7

    move/from16 v6, p11

    invoke-static/range {v0 .. v6}, Lcom/android/internal/app/procstats/AssociationState;->dumpActiveDurationSummary(Ljava/io/PrintWriter;Lcom/android/internal/app/procstats/AssociationState$SourceState;JJZ)V

    .line 960
    :goto_128
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 961
    const-string v4, "   Total count "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 962
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 963
    if-eqz p11, :cond_143

    .line 964
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 965
    iget-wide v4, v14, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mTotalTime:J

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 966
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_146

    .line 968
    :cond_143
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 970
    :goto_146
    iget-wide v4, v14, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mTotalTime:J

    long-to-double v4, v4

    long-to-double v6, v2

    div-double/2addr v4, v6

    invoke-static {v0, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    .line 971
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    const/4 v5, -0x1

    if-lez v4, :cond_181

    .line 972
    const-string v4, " (running"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 973
    if-eqz p11, :cond_164

    .line 974
    const-string v4, " nest="

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 975
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 977
    :cond_164
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    if-eq v4, v5, :cond_17e

    .line 978
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 979
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 980
    const-string v4, " #"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 981
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 983
    :cond_17e
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 985
    :cond_181
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 986
    if-eqz p11, :cond_1b6

    .line 987
    iget-boolean v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    if-eqz v4, :cond_197

    .line 988
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 989
    const-string v4, "   mInTrackingList="

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 990
    iget-boolean v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mInTrackingList:Z

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 992
    :cond_197
    iget v4, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    if-eq v4, v5, :cond_1b6

    .line 993
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 994
    const-string v4, "   mProcState="

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 995
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    iget v5, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcState:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 996
    const-string v4, " mProcStateSeq="

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 997
    iget v1, v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mProcStateSeq:I

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 900
    :cond_1b6
    :goto_1b6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, p4

    move-object/from16 v11, p9

    move/from16 v12, v16

    goto/16 :goto_10

    .line 1001
    :cond_1c0
    return-void
.end method

.method static blacklist dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/procstats/AssociationState$SourceState;JJZZ)J
    .registers 23

    .line 1025
    move-object/from16 v0, p2

    .line 1026
    nop

    .line 1027
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    :goto_8
    const/16 v7, 0x10

    if-ge v3, v7, :cond_77

    .line 1029
    iget-object v7, v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v7, :cond_18

    .line 1030
    iget-object v7, v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v8, v3

    invoke-virtual {v7, v8}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v7

    goto :goto_20

    .line 1032
    :cond_18
    iget v7, v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    if-ne v7, v3, :cond_1f

    iget-wide v7, v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    goto :goto_20

    :cond_1f
    move-wide v7, v1

    .line 1035
    :goto_20
    iget-wide v9, v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    cmp-long v9, v9, v1

    if-eqz v9, :cond_35

    iget v9, v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    if-ne v9, v3, :cond_35

    .line 1036
    nop

    .line 1037
    nop

    .line 1038
    iget-wide v9, v0, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    sub-long v9, p5, v9

    add-long/2addr v7, v9

    const/4 v4, 0x1

    const-string v9, " (running)"

    goto :goto_36

    .line 1040
    :cond_35
    const/4 v9, 0x0

    .line 1042
    :goto_36
    cmp-long v10, v7, v1

    if-eqz v10, :cond_70

    .line 1043
    if-eqz p0, :cond_6c

    .line 1044
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1045
    sget-object v10, Lcom/android/internal/app/procstats/DumpUtils;->STATE_LABELS:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    const-string v10, ": "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    if-eqz p8, :cond_56

    .line 1048
    invoke-static {v7, v8, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1049
    const-string v10, " / "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5b

    .line 1051
    :cond_56
    const-string v10, "time "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1053
    :goto_5b
    long-to-double v10, v7

    move-wide/from16 v12, p3

    long-to-double v1, v12

    div-double/2addr v10, v1

    invoke-static {p0, v10, v11}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    .line 1054
    if-eqz v9, :cond_68

    .line 1055
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1057
    :cond_68
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    goto :goto_6e

    .line 1043
    :cond_6c
    move-wide/from16 v12, p3

    .line 1059
    :goto_6e
    add-long/2addr v5, v7

    goto :goto_72

    .line 1042
    :cond_70
    move-wide/from16 v12, p3

    .line 1027
    :goto_72
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v1, 0x0

    goto :goto_8

    .line 1062
    :cond_77
    if-eqz v4, :cond_7a

    neg-long v5, v5

    :cond_7a
    return-wide v5
.end method

.method static synthetic blacklist lambda$static$0(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 9

    .line 795
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    iget-wide v0, v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    iget-wide v2, v2, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_25

    .line 796
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    iget-wide v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    iget-wide p0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mActiveTime:J

    cmp-long p0, v3, p0

    if-lez p0, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    return v1

    .line 798
    :cond_25
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    iget-wide v3, v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mTotalTime:J

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    iget-wide v5, v0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mTotalTime:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_48

    .line 799
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    iget-wide v3, p0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mTotalTime:J

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;

    iget-wide p0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mTotalTime:J

    cmp-long p0, v3, p0

    if-lez p0, :cond_46

    goto :goto_47

    :cond_46
    move v1, v2

    :goto_47
    return v1

    .line 801
    :cond_48
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget v0, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget v3, v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    if-eq v0, v3, :cond_67

    .line 802
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget p0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget p1, p1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    if-ge p0, p1, :cond_65

    goto :goto_66

    :cond_65
    move v1, v2

    :goto_66
    return v1

    .line 804
    :cond_67
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v0, v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object v1, v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    if-eq v0, v1, :cond_88

    .line 805
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object p0, p0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iget-object p1, p1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    .line 806
    if-eqz p0, :cond_88

    .line 807
    return p0

    .line 810
    :cond_88
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/app/procstats/AssociationState;)V
    .registers 8

    .line 629
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    .line 630
    nop

    .line 631
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    iget-wide v2, p1, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    .line 632
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    .line 633
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    iget-wide v2, p1, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    .line 634
    iget-object v0, p1, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_25
    if-ltz v0, :cond_57

    .line 635
    iget-object v1, p1, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 636
    iget-object v2, p1, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 637
    iget-object v3, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 638
    nop

    .line 639
    if-nez v3, :cond_51

    .line 640
    new-instance v3, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v4, p0, Lcom/android/internal/app/procstats/AssociationState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v5, p0, Lcom/android/internal/app/procstats/AssociationState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-direct {v3, v4, p0, v5, v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    .line 641
    iget-object v4, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    nop

    .line 674
    :cond_51
    invoke-virtual {v3, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->add(Lcom/android/internal/app/procstats/AssociationState$SourceState;)V

    .line 634
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 676
    :cond_57
    return-void
.end method

.method public blacklist commitStateTime(J)V
    .registers 7

    .line 763
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/AssociationState;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 764
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_1e

    .line 765
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 766
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->commitStateTime(J)V

    .line 764
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 768
    :cond_1e
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    if-lez v0, :cond_2d

    .line 769
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalStartUptime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    .line 770
    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalStartUptime:J

    .line 772
    :cond_2d
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I

    if-lez v0, :cond_3c

    .line 773
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    iget-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    .line 774
    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J

    .line 777
    :cond_3c
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V
    .registers 30

    .line 1123
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v7, p4

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 1125
    const-wide v2, 0x10900000001L

    iget-object v4, v0, Lcom/android/internal/app/procstats/AssociationState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1127
    iget v2, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    const-wide v11, 0x10500000003L

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1128
    invoke-virtual {v0, v7, v8}, Lcom/android/internal/app/procstats/AssociationState;->getTotalDuration(J)J

    move-result-wide v2

    const-wide v13, 0x10300000004L

    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1129
    iget v2, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    const-wide v3, 0x10500000005L

    if-eqz v2, :cond_45

    .line 1130
    iget v2, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1131
    nop

    .line 1132
    invoke-virtual {v0, v7, v8}, Lcom/android/internal/app/procstats/AssociationState;->getActiveDuration(J)J

    move-result-wide v5

    .line 1131
    const-wide v3, 0x10300000006L

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1135
    :cond_45
    iget-object v2, v0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 1136
    const/16 v16, 0x0

    move/from16 v2, v16

    :goto_4f
    if-ge v2, v15, :cond_182

    .line 1137
    iget-object v3, v0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 1138
    iget-object v4, v0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 1139
    const-wide v5, 0x20b00000002L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 1140
    const-wide v13, 0x10900000002L

    iget-object v11, v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-virtual {v1, v13, v14, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1141
    const-wide v11, 0x10900000007L

    iget-object v13, v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1142
    const-wide v11, 0x10500000001L

    iget v3, v3, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    invoke-virtual {v1, v11, v12, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1143
    iget v3, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    const-wide v11, 0x10500000003L

    invoke-virtual {v1, v11, v12, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1144
    iget-wide v13, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    .line 1145
    iget v3, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    if-lez v3, :cond_9d

    .line 1146
    iget-wide v11, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    sub-long v11, v7, v11

    add-long/2addr v13, v11

    .line 1148
    :cond_9d
    const-wide v11, 0x10300000004L

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1149
    iget v3, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    if-eqz v3, :cond_b4

    .line 1150
    iget v3, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    const-wide v13, 0x10500000005L

    invoke-virtual {v1, v13, v14, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_b9

    .line 1149
    :cond_b4
    const-wide v13, 0x10500000005L

    .line 1153
    :goto_b9
    iget-wide v11, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    const-wide/16 v17, 0x0

    cmp-long v3, v11, v17

    if-eqz v3, :cond_c6

    iget-wide v11, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    sub-long v11, v7, v11

    goto :goto_c8

    :cond_c6
    move-wide/from16 v11, v17

    .line 1154
    :goto_c8
    iget-object v3, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    if-eqz v3, :cond_13a

    .line 1155
    iget-object v3, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v3

    .line 1156
    move/from16 v19, v2

    move/from16 v2, v16

    :goto_d6
    if-ge v2, v3, :cond_133

    .line 1157
    iget-object v13, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v13, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v13

    .line 1158
    iget-object v14, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v14, v13}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v17

    .line 1159
    iget v14, v4, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    if-ne v13, v14, :cond_ed

    .line 1160
    add-long v17, v17, v11

    move-wide/from16 v20, v17

    goto :goto_ef

    .line 1159
    :cond_ed
    move-wide/from16 v20, v17

    .line 1162
    :goto_ef
    invoke-static {v13}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v13

    .line 1163
    move/from16 v17, v2

    move v14, v3

    move-wide/from16 v22, v5

    const-wide v2, 0x20b00000006L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1165
    move-object v2, v4

    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    move-wide v7, v6

    const/4 v6, 0x1

    move-object v5, v2

    const-wide v2, 0x10e00000001L

    move-wide/from16 p2, v11

    move-wide v11, v7

    move v8, v14

    move-object v7, v5

    move v5, v13

    move-wide/from16 v13, v22

    const-wide v22, 0x10500000005L

    invoke-static/range {v1 .. v6}, Lcom/android/internal/app/procstats/DumpUtils;->printProto(Landroid/util/proto/ProtoOutputStream;J[III)I

    .line 1168
    move-wide/from16 v2, v20

    const-wide v4, 0x10300000002L

    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1170
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1156
    add-int/lit8 v2, v17, 0x1

    move-wide/from16 v11, p2

    move-object v4, v7

    move v3, v8

    move-wide v5, v13

    move-wide/from16 v7, p4

    goto :goto_d6

    .line 1172
    :cond_133
    move-wide v13, v5

    const-wide v22, 0x10500000005L

    goto :goto_16f

    .line 1173
    :cond_13a
    move/from16 v19, v2

    move-object v7, v4

    move-wide v13, v5

    move-wide/from16 p2, v11

    const-wide v22, 0x10500000005L

    iget-wide v2, v7, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    add-long v11, v2, p2

    .line 1174
    cmp-long v2, v11, v17

    if-eqz v2, :cond_16f

    .line 1175
    const-wide v2, 0x20b00000006L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1177
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_PROTO_ENUMS:[I

    iget v5, v7, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    const/4 v6, 0x1

    move-wide v7, v2

    const-wide v2, 0x10e00000001L

    invoke-static/range {v1 .. v6}, Lcom/android/internal/app/procstats/DumpUtils;->printProto(Landroid/util/proto/ProtoOutputStream;J[III)I

    .line 1180
    const-wide v4, 0x10300000002L

    invoke-virtual {v1, v4, v5, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1182
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1185
    :cond_16f
    :goto_16f
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1136
    add-int/lit8 v2, v19, 0x1

    move-wide/from16 v7, p4

    const-wide v11, 0x10500000003L

    const-wide v13, 0x10300000004L

    goto/16 :goto_4f

    .line 1188
    :cond_182
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1189
    return-void
.end method

.method public blacklist dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JJLjava/lang/String;ZZ)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;",
            ">;>;JJ",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 838
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "     "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 839
    iget-wide v9, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    .line 840
    iget v4, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I

    if-lez v4, :cond_28

    .line 841
    iget-wide v11, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J

    sub-long v11, v5, v11

    add-long/2addr v9, v11

    .line 843
    :cond_28
    const-wide/16 v11, 0x0

    cmp-long v4, v9, v11

    const-string v13, " / "

    const-string v14, ": "

    const-string v15, ": time "

    if-gtz v4, :cond_3c

    iget v4, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    if-eqz v4, :cond_39

    goto :goto_3c

    :cond_39
    move-wide/from16 v16, v11

    goto :goto_63

    .line 844
    :cond_3c
    :goto_3c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 845
    const-string v4, "Active count "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 846
    iget v4, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 847
    if-eqz p12, :cond_55

    .line 848
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 849
    invoke-static {v9, v10, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 850
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_58

    .line 852
    :cond_55
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 854
    :goto_58
    long-to-double v9, v9

    move-wide/from16 v16, v11

    long-to-double v11, v7

    div-double/2addr v9, v11

    invoke-static {v1, v9, v10}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    .line 855
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 857
    :goto_63
    if-eqz p12, :cond_83

    iget v4, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I

    if-eqz v4, :cond_83

    .line 858
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 859
    const-string v4, "mTotalActiveNesting="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 860
    iget v4, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 861
    const-string v4, " mTotalActiveStartUptime="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 862
    iget-wide v9, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J

    invoke-static {v9, v10, v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 863
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 865
    :cond_83
    iget-wide v9, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    .line 866
    iget v4, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    if-lez v4, :cond_8e

    .line 867
    iget-wide v11, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalStartUptime:J

    sub-long v11, v5, v11

    add-long/2addr v9, v11

    .line 869
    :cond_8e
    cmp-long v4, v9, v16

    if-gtz v4, :cond_96

    iget v4, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    if-eqz v4, :cond_bb

    .line 870
    :cond_96
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 871
    const-string v4, "Total count "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 872
    iget v4, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 873
    if-eqz p12, :cond_af

    .line 874
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 875
    invoke-static {v9, v10, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 876
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b2

    .line 878
    :cond_af
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 880
    :goto_b2
    long-to-double v9, v9

    long-to-double v11, v7

    div-double/2addr v9, v11

    invoke-static {v1, v9, v10}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    .line 881
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 883
    :cond_bb
    if-eqz p12, :cond_db

    iget v4, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    if-eqz v4, :cond_db

    .line 884
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 885
    const-string v4, "mTotalNesting="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 886
    iget v4, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 887
    const-string v4, " mTotalStartUptime="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 888
    iget-wide v9, v0, Lcom/android/internal/app/procstats/AssociationState;->mTotalStartUptime:J

    invoke-static {v9, v10, v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 889
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 892
    :cond_db
    move-object v0, v3

    move-object v3, v2

    move-object v2, v0

    move-object/from16 v4, p5

    move-object/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move-object v0, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/procstats/AssociationState;->dumpSources(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JJLjava/lang/String;ZZ)V

    .line 894
    return-void
.end method

.method public blacklist dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V
    .registers 28

    .line 1067
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1068
    const/4 v4, 0x0

    :goto_b
    if-ge v4, v2, :cond_fb

    .line 1069
    iget-object v5, v0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 1070
    iget-object v6, v0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 1071
    const-string v7, "pkgasc"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1072
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    move/from16 v8, p3

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 1076
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    move-wide/from16 v9, p4

    invoke-virtual {v1, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    .line 1078
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    move-object/from16 v11, p6

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1081
    iget-object v12, v5, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1083
    iget v5, v5, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1084
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1085
    iget v5, v6, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mCount:I

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1086
    iget-wide v12, v6, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mDuration:J

    .line 1087
    iget v5, v6, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mNesting:I

    if-lez v5, :cond_65

    .line 1088
    iget-wide v14, v6, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mStartUptime:J

    sub-long v14, p7, v14

    add-long/2addr v12, v14

    .line 1090
    :cond_65
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v1, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 1092
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    iget v5, v6, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveCount:I

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1094
    iget-wide v12, v6, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-eqz v5, :cond_80

    iget-wide v12, v6, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveStartUptime:J

    sub-long v12, p7, v12

    goto :goto_81

    :cond_80
    move-wide v12, v14

    .line 1095
    :goto_81
    iget-object v5, v6, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move-wide/from16 v16, v14

    if-eqz v5, :cond_d4

    .line 1096
    iget-object v5, v6, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v5

    .line 1097
    const/4 v15, 0x0

    :goto_8e
    if-ge v15, v5, :cond_d0

    .line 1098
    iget-object v3, v6, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, v15}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v3

    .line 1099
    iget-object v14, v6, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v14, v3}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v16

    .line 1100
    iget v14, v6, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    if-ne v3, v14, :cond_a8

    .line 1101
    add-long v16, v16, v12

    move v14, v2

    move/from16 v18, v3

    move-wide/from16 v2, v16

    goto :goto_ad

    .line 1100
    :cond_a8
    move v14, v2

    move/from16 v18, v3

    move-wide/from16 v2, v16

    .line 1103
    :goto_ad
    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v0

    .line 1104
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1105
    move/from16 v18, v4

    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    move/from16 v16, v5

    const/4 v5, 0x1

    invoke-static {v1, v4, v0, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 1106
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1107
    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1097
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move v2, v14

    move/from16 v5, v16

    move/from16 v4, v18

    goto :goto_8e

    .line 1109
    :cond_d0
    move v14, v2

    move/from16 v18, v4

    goto :goto_f1

    .line 1110
    :cond_d4
    move v14, v2

    move/from16 v18, v4

    iget-wide v2, v6, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveDuration:J

    add-long/2addr v2, v12

    .line 1111
    cmp-long v0, v2, v16

    if-eqz v0, :cond_f1

    .line 1112
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1113
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_TAGS:[Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/app/procstats/AssociationState$SourceState;->mActiveProcState:I

    const/4 v5, 0x1

    invoke-static {v1, v0, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 1114
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1115
    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1118
    :cond_f1
    :goto_f1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1068
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v0, p0

    move v2, v14

    goto/16 :goto_b

    .line 1120
    :cond_fb
    return-void
.end method

.method public blacklist getActiveDuration(J)J
    .registers 7

    .line 600
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    .line 601
    iget v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I

    if-lez v2, :cond_a

    iget-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J

    sub-long/2addr p1, v2

    goto :goto_c

    :cond_a
    const-wide/16 p1, 0x0

    :goto_c
    add-long/2addr v0, p1

    .line 600
    return-wide v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 583
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .registers 2

    .line 575
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mPackageState:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProcess()Lcom/android/internal/app/procstats/ProcessState;
    .registers 2

    .line 587
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method public blacklist getProcessName()Ljava/lang/String;
    .registers 2

    .line 579
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTotalDuration(J)J
    .registers 7

    .line 595
    iget-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    .line 596
    iget v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    if-lez v2, :cond_a

    iget-wide v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalStartUptime:J

    sub-long/2addr p1, v2

    goto :goto_c

    :cond_a
    const-wide/16 p1, 0x0

    :goto_c
    add-long/2addr v0, p1

    .line 595
    return-wide v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 571
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mPackageState:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    return v0
.end method

.method public blacklist hasProcessOrPackage(Ljava/lang/String;)Z
    .registers 8

    .line 780
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 781
    return v1

    .line 783
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 784
    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v0, :cond_31

    .line 785
    iget-object v4, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 786
    iget-object v5, v4, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    iget-object v4, v4, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_30

    .line 784
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 787
    :cond_30
    :goto_30
    return v1

    .line 790
    :cond_31
    return v2
.end method

.method public blacklist isInUse()Z
    .registers 2

    .line 679
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist readFromParcel(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;I)Ljava/lang/String;
    .registers 10

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 733
    if-ltz v0, :cond_46

    const v1, 0x186a0

    if-le v0, v1, :cond_24

    goto :goto_46

    .line 736
    :cond_24
    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_44

    .line 737
    new-instance v2, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/internal/app/procstats/AssociationState$SourceKey;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;I)V

    .line 738
    new-instance v3, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object v4, p0, Lcom/android/internal/app/procstats/AssociationState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v5, p0, Lcom/android/internal/app/procstats/AssociationState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-direct {v3, v4, p0, v5, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    .line 739
    invoke-virtual {v3, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    .line 740
    if-eqz v4, :cond_3c

    .line 741
    return-object v4

    .line 757
    :cond_3c
    iget-object v4, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 759
    :cond_44
    const/4 p1, 0x0

    return-object p1

    .line 734
    :cond_46
    :goto_46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Association with bad src count: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist resetSafely(J)V
    .registers 8

    .line 683
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/AssociationState;->isInUse()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 684
    iget-object p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 685
    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    goto :goto_44

    .line 688
    :cond_11
    iget-object v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_19
    if-ltz v0, :cond_35

    .line 689
    iget-object v3, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 690
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->isInUse()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 691
    invoke-virtual {v3, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->resetSafely(J)V

    goto :goto_32

    .line 693
    :cond_2d
    iget-object v3, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 688
    :goto_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 696
    :cond_35
    iput v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    .line 697
    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalStartUptime:J

    .line 698
    iget v0, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveNesting:I

    if-lez v0, :cond_42

    .line 699
    iput v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    .line 700
    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveStartUptime:J

    goto :goto_44

    .line 702
    :cond_42
    iput v1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    .line 705
    :goto_44
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    .line 706
    return-void
.end method

.method public blacklist setProcess(Lcom/android/internal/app/procstats/ProcessState;)V
    .registers 2

    .line 591
    iput-object p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 592
    return-void
.end method

.method public blacklist startSource(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState$SourceState;
    .registers 8

    .line 606
    sget-object v0, Lcom/android/internal/app/procstats/AssociationState;->sTmpSourceKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    monitor-enter v0

    .line 607
    :try_start_3
    sget-object v1, Lcom/android/internal/app/procstats/AssociationState;->sTmpSourceKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iput p1, v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mUid:I

    .line 608
    sget-object v1, Lcom/android/internal/app/procstats/AssociationState;->sTmpSourceKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iput-object p2, v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mProcess:Ljava/lang/String;

    .line 609
    sget-object v1, Lcom/android/internal/app/procstats/AssociationState;->sTmpSourceKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    iput-object p3, v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->mPackage:Ljava/lang/String;

    .line 610
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/internal/app/procstats/AssociationState;->sTmpSourceKey:Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 611
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_4b

    .line 612
    if-nez v1, :cond_2f

    .line 613
    new-instance v0, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/app/procstats/AssociationState$SourceKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 614
    new-instance v1, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    iget-object p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object p2, p0, Lcom/android/internal/app/procstats/AssociationState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-direct {v1, p1, p0, p2, v0}, Lcom/android/internal/app/procstats/AssociationState$SourceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/AssociationState$SourceKey;)V

    .line 615
    iget-object p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    :cond_2f
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->start()J

    move-result-wide p1

    .line 618
    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-lez p3, :cond_4a

    .line 619
    iget p3, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    const/4 v0, 0x1

    add-int/2addr p3, v0

    iput p3, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    .line 620
    iget p3, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalNesting:I

    if-ne p3, v0, :cond_4a

    .line 621
    iget p3, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    add-int/2addr p3, v0

    iput p3, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    .line 622
    iput-wide p1, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalStartUptime:J

    .line 625
    :cond_4a
    return-object v1

    .line 611
    :catchall_4b
    move-exception p1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssociationState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState;->mPackageState:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    .line 1194
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1192
    return-object v0
.end method

.method public blacklist writeToParcel(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;J)V
    .registers 8

    .line 709
    iget p3, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalCount:I

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    iget-wide p3, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalDuration:J

    invoke-virtual {p2, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 711
    iget p3, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveCount:I

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    iget-wide p3, p0, Lcom/android/internal/app/procstats/AssociationState;->mTotalActiveDuration:J

    invoke-virtual {p2, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 713
    iget-object p3, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    .line 714
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    const/4 p4, 0x0

    move v0, p4

    :goto_1f
    if-ge v0, p3, :cond_3a

    .line 716
    iget-object v1, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/AssociationState$SourceKey;

    .line 717
    iget-object v2, p0, Lcom/android/internal/app/procstats/AssociationState;->mSources:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 718
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/procstats/AssociationState$SourceKey;->writeToParcel(Lcom/android/internal/app/procstats/ProcessStats;Landroid/os/Parcel;)V

    .line 719
    invoke-virtual {v2, p2, p4}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 721
    :cond_3a
    return-void
.end method
