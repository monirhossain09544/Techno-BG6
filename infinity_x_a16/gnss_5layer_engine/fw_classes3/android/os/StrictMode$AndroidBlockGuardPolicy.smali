.class Landroid/os/StrictMode$AndroidBlockGuardPolicy;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Ldalvik/system/BlockGuard$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidBlockGuardPolicy"
.end annotation


# instance fields
.field private greylist-max-o mLastViolationTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRealLastViolationTime:Landroid/util/SparseLongArray;

.field private blacklist mThreadPolicyMask:I


# direct methods
.method public static synthetic blacklist $r8$lambda$8cEr3yopH2m54_yi5FS7GfNsTW0(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->lambda$handleViolationWithTimingAttempt$0(Landroid/view/IWindowManager;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 2

    .line 1694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1695
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    .line 1696
    return-void
.end method

.method private synthetic blacklist lambda$handleViolationWithTimingAttempt$0(Landroid/view/IWindowManager;Ljava/util/ArrayList;)V
    .registers 8

    .line 1873
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1879
    const/4 v2, 0x0

    if-eqz p1, :cond_c

    .line 1881
    :try_start_7
    invoke-interface {p1, v2}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1883
    goto :goto_c

    .line 1882
    :catch_b
    move-exception p1

    .line 1886
    :cond_c
    :goto_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_27

    .line 1887
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/StrictMode$ViolationInfo;

    .line 1888
    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    .line 1889
    iget-wide v3, p1, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    sub-long v3, v0, v3

    long-to-int v3, v3

    iput v3, p1, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 1891
    invoke-virtual {p0, p1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onThreadPolicyViolation(Landroid/os/StrictMode$ViolationInfo;)V

    goto :goto_c

    .line 1893
    :cond_27
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1894
    return-void
.end method

.method static synthetic blacklist lambda$onThreadPolicyViolation$1(Landroid/os/StrictMode$OnThreadViolationListener;Landroid/os/strictmode/Violation;)V
    .registers 3

    .line 1989
    invoke-static {}, Landroid/os/StrictMode;->allowThreadViolations()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1991
    :try_start_4
    invoke-interface {p0, p1}, Landroid/os/StrictMode$OnThreadViolationListener;->onThreadViolation(Landroid/os/strictmode/Violation;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 1993
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1994
    nop

    .line 1995
    return-void

    .line 1993
    :catchall_c
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1994
    throw p0
.end method


# virtual methods
.method public greylist-max-o test-api getPolicyMask()I
    .registers 2

    .line 1705
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    return v0
.end method

.method public blacklist getThreadPolicyMask()I
    .registers 2

    .line 1789
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    return v0
.end method

.method greylist-max-o handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V
    .registers 5

    .line 1814
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1832
    if-eqz v0, :cond_5b

    invoke-static {p1}, Landroid/os/StrictMode$ViolationInfo;->-$$Nest$fgetmPenaltyMask(Landroid/os/StrictMode$ViolationInfo;)I

    move-result v0

    const/high16 v1, 0x10000000

    if-ne v0, v1, :cond_f

    goto :goto_5b

    .line 1838
    :cond_f
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetviolationsBeingTimed()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1839
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_22

    .line 1841
    return-void

    .line 1843
    :cond_22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1844
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2d

    .line 1848
    return-void

    .line 1852
    :cond_2d
    const/high16 v1, 0x8000000

    invoke-virtual {p1, v1}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_40

    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetsWindowManager()Landroid/util/Singleton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/IWindowManager;

    goto :goto_41

    :cond_40
    const/4 p1, 0x0

    .line 1853
    :goto_41
    if-eqz p1, :cond_48

    .line 1855
    :try_start_43
    invoke-interface {p1, v2}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_46} :catch_47

    .line 1857
    goto :goto_48

    .line 1856
    :catch_47
    move-exception v1

    .line 1869
    :cond_48
    :goto_48
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetTHREAD_HANDLER()Ljava/lang/ThreadLocal;

    move-result-object v1

    .line 1870
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Landroid/os/StrictMode$AndroidBlockGuardPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy$$ExternalSyntheticLambda1;-><init>(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V

    .line 1871
    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1895
    return-void

    .line 1833
    :cond_5b
    :goto_5b
    const/4 v0, -0x1

    iput v0, p1, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 1834
    invoke-virtual {p0, p1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onThreadPolicyViolation(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1835
    return-void
.end method

.method greylist-max-o onCustomSlowCall(Ljava/lang/String;)V
    .registers 3

    .line 1721
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_7

    .line 1722
    return-void

    .line 1724
    :cond_7
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$smtooManyViolationsThisLoop()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1725
    return-void

    .line 1727
    :cond_e
    new-instance v0, Landroid/os/strictmode/CustomViolation;

    invoke-direct {v0, p1}, Landroid/os/strictmode/CustomViolation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1728
    return-void
.end method

.method public blacklist onExplicitGc()V
    .registers 2

    .line 1779
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_7

    .line 1780
    return-void

    .line 1782
    :cond_7
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$smtooManyViolationsThisLoop()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1783
    return-void

    .line 1785
    :cond_e
    new-instance v0, Landroid/os/strictmode/ExplicitGcViolation;

    invoke-direct {v0}, Landroid/os/strictmode/ExplicitGcViolation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1786
    return-void
.end method

.method public greylist-max-o onNetwork()V
    .registers 3

    .line 1765
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_7

    .line 1766
    return-void

    .line 1768
    :cond_7
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-nez v0, :cond_1e

    .line 1771
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$smtooManyViolationsThisLoop()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1772
    return-void

    .line 1774
    :cond_15
    new-instance v0, Landroid/os/strictmode/NetworkViolation;

    invoke-direct {v0}, Landroid/os/strictmode/NetworkViolation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1775
    return-void

    .line 1769
    :cond_1e
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v0
.end method

.method public greylist-max-o test-api onReadFromDisk()V
    .registers 2

    .line 1754
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    .line 1755
    return-void

    .line 1757
    :cond_7
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$smtooManyViolationsThisLoop()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1758
    return-void

    .line 1760
    :cond_e
    new-instance v0, Landroid/os/strictmode/DiskReadViolation;

    invoke-direct {v0}, Landroid/os/strictmode/DiskReadViolation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1761
    return-void
.end method

.method greylist-max-o onResourceMismatch(Ljava/lang/Object;)V
    .registers 3

    .line 1732
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_7

    .line 1733
    return-void

    .line 1735
    :cond_7
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$smtooManyViolationsThisLoop()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1736
    return-void

    .line 1738
    :cond_e
    new-instance v0, Landroid/os/strictmode/ResourceMismatchViolation;

    invoke-direct {v0, p1}, Landroid/os/strictmode/ResourceMismatchViolation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1739
    return-void
.end method

.method greylist-max-o onThreadPolicyViolation(Landroid/os/StrictMode$ViolationInfo;)V
    .registers 22

    .line 1903
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetLOG_V()Z

    move-result v2

    const-string v3, "StrictMode"

    if-eqz v2, :cond_27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onThreadPolicyViolation; penalty="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/os/StrictMode$ViolationInfo;->-$$Nest$fgetmPenaltyMask(Landroid/os/StrictMode$ViolationInfo;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_27
    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_6c

    .line 1906
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetgatheredViolations()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1907
    if-nez v0, :cond_48

    .line 1908
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1909
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetgatheredViolations()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1911
    :cond_48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/StrictMode$ViolationInfo;

    .line 1912
    invoke-virtual {v1}, Landroid/os/StrictMode$ViolationInfo;->getStackTrace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/StrictMode$ViolationInfo;->getStackTrace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 1914
    return-void

    .line 1916
    :cond_67
    goto :goto_4c

    .line 1917
    :cond_68
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1918
    return-void

    .line 1922
    :cond_6c
    invoke-virtual {v1}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1923
    nop

    .line 1924
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1925
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetsLogger()Landroid/os/StrictMode$ViolationLogger;

    move-result-object v7

    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetLOGCAT_LOGGER()Landroid/os/StrictMode$ViolationLogger;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    const-wide/16 v11, 0x7530

    const-wide/16 v13, 0x3e8

    if-ne v7, v8, :cond_d1

    .line 1926
    iget-object v7, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mRealLastViolationTime:Landroid/util/SparseLongArray;

    if-eqz v7, :cond_b7

    .line 1927
    iget-object v7, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mRealLastViolationTime:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1928
    if-eqz v7, :cond_a2

    .line 1929
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_a4

    .line 1928
    :cond_a2
    const-wide/16 v7, 0x0

    .line 1931
    :goto_a4
    const-wide/16 v16, 0x0

    iget-object v15, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mRealLastViolationTime:Landroid/util/SparseLongArray;

    .line 1932
    move-wide/from16 v18, v5

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1931
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v15, v4, v5}, Landroid/os/StrictMode;->-$$Nest$smclampViolationTimeMap(Landroid/util/SparseLongArray;J)V

    .line 1933
    const/4 v5, 0x1

    goto :goto_c5

    .line 1934
    :cond_b7
    move-wide/from16 v18, v5

    const-wide/16 v16, 0x0

    new-instance v4, Landroid/util/SparseLongArray;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v4, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mRealLastViolationTime:Landroid/util/SparseLongArray;

    move-wide/from16 v7, v16

    .line 1936
    :goto_c5
    iget-object v0, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mRealLastViolationTime:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-wide/from16 v5, v18

    invoke-virtual {v0, v2, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_d5

    .line 1925
    :cond_d1
    const-wide/16 v16, 0x0

    move-wide/from16 v7, v16

    .line 1939
    :goto_d5
    cmp-long v0, v7, v16

    if-nez v0, :cond_df

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_e1

    :cond_df
    sub-long v4, v5, v7

    .line 1941
    :goto_e1
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v1, v0}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_f4

    cmp-long v0, v4, v13

    if-lez v0, :cond_f4

    .line 1943
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetsLogger()Landroid/os/StrictMode$ViolationLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/os/StrictMode$ViolationLogger;->log(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1946
    :cond_f4
    invoke-static {v1}, Landroid/os/StrictMode$ViolationInfo;->-$$Nest$fgetmViolation(Landroid/os/StrictMode$ViolationInfo;)Landroid/os/strictmode/Violation;

    move-result-object v0

    .line 1949
    nop

    .line 1951
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_107

    cmp-long v6, v4, v11

    if-lez v6, :cond_107

    .line 1953
    goto :goto_108

    .line 1956
    :cond_107
    move v2, v7

    :goto_108
    const/high16 v6, 0x4000000

    invoke-virtual {v1, v6}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_115

    cmp-long v4, v4, v9

    if-lez v4, :cond_115

    .line 1958
    or-int/2addr v2, v6

    .line 1961
    :cond_115
    if-eqz v2, :cond_129

    .line 1962
    invoke-static {v1}, Landroid/os/StrictMode$ViolationInfo;->-$$Nest$fgetmPenaltyMask(Landroid/os/StrictMode$ViolationInfo;)I

    move-result v4

    if-ne v4, v6, :cond_11f

    const/4 v4, 0x1

    goto :goto_120

    :cond_11f
    move v4, v7

    .line 1963
    :goto_120
    if-eqz v4, :cond_126

    .line 1970
    invoke-static {v2, v1}, Landroid/os/StrictMode;->-$$Nest$smdropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    goto :goto_129

    .line 1972
    :cond_126
    invoke-static {v2, v1}, Landroid/os/StrictMode;->-$$Nest$smhandleApplicationStrictModeViolation(ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1976
    :cond_129
    :goto_129
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v1

    if-nez v1, :cond_159

    .line 1982
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetsThreadViolationListener()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/StrictMode$OnThreadViolationListener;

    .line 1983
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetsThreadViolationExecutor()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 1984
    if-eqz v1, :cond_158

    if-eqz v2, :cond_158

    .line 1986
    :try_start_149
    new-instance v4, Landroid/os/StrictMode$AndroidBlockGuardPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy$$ExternalSyntheticLambda0;-><init>(Landroid/os/StrictMode$OnThreadViolationListener;Landroid/os/strictmode/Violation;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_151
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_149 .. :try_end_151} :catch_152

    .line 1998
    goto :goto_158

    .line 1996
    :catch_152
    move-exception v0

    .line 1997
    const-string v1, "ThreadPolicy penaltyCallback failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2000
    :cond_158
    :goto_158
    return-void

    .line 1977
    :cond_159
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "StrictMode ThreadPolicy violation"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o test-api onUnbufferedIO()V
    .registers 2

    .line 1743
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_7

    .line 1744
    return-void

    .line 1746
    :cond_7
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$smtooManyViolationsThisLoop()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1747
    return-void

    .line 1749
    :cond_e
    new-instance v0, Landroid/os/strictmode/UnbufferedIoViolation;

    invoke-direct {v0}, Landroid/os/strictmode/UnbufferedIoViolation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1750
    return-void
.end method

.method public greylist-max-o test-api onWriteToDisk()V
    .registers 2

    .line 1710
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_7

    .line 1711
    return-void

    .line 1713
    :cond_7
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$smtooManyViolationsThisLoop()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1714
    return-void

    .line 1716
    :cond_e
    new-instance v0, Landroid/os/strictmode/DiskWriteViolation;

    invoke-direct {v0}, Landroid/os/strictmode/DiskWriteViolation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1717
    return-void
.end method

.method public blacklist setThreadPolicyMask(I)V
    .registers 2

    .line 1793
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    .line 1794
    return-void
.end method

.method greylist-max-o startHandlingViolationException(Landroid/os/strictmode/Violation;)V
    .registers 6

    .line 1802
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    .line 1803
    new-instance v1, Landroid/os/StrictMode$ViolationInfo;

    invoke-direct {v1, p1, v0}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/strictmode/Violation;I)V

    .line 1804
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 1805
    invoke-virtual {p0, v1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1806
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidBlockGuardPolicy; mPolicyMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
