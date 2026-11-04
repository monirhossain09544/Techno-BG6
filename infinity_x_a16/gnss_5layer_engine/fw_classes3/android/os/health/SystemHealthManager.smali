.class public Landroid/os/health/SystemHealthManager;
.super Ljava/lang/Object;
.source "SystemHealthManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/health/SystemHealthManager$PendingUidSnapshots;
    }
.end annotation


# static fields
.field private static final blacklist POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/os/PowerMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SystemHealthManager"

.field private static final blacklist TAKE_UID_SNAPSHOT_TIMEOUT_MILLIS:J = 0x2710L


# instance fields
.field private final greylist-max-o mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final blacklist mHintManager:Landroid/os/IHintManager;

.field private final blacklist mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

.field private final blacklist mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

.field private blacklist mPowerMonitorsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/PowerMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPowerMonitorsLock:Ljava/lang/Object;

.field private final blacklist mPowerStats:Landroid/os/IPowerStatsService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPowerMonitorsLock(Landroid/os/health/SystemHealthManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPowerMonitorsInfo(Landroid/os/health/SystemHealthManager;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsInfo:Ljava/util/List;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 529
    new-instance v0, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda1;-><init>()V

    .line 530
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Landroid/os/health/SystemHealthManager;->POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;

    .line 529
    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 4

    .line 127
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    .line 129
    const-string/jumbo v1, "powerstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 128
    invoke-static {v1}, Landroid/os/IPowerStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerStatsService;

    move-result-object v1

    .line 131
    const-string/jumbo v2, "performance_hint"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 130
    invoke-static {v2}, Landroid/os/IHintManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHintManager;

    move-result-object v2

    .line 127
    invoke-direct {p0, v0, v1, v2}, Landroid/os/health/SystemHealthManager;-><init>(Lcom/android/internal/app/IBatteryStats;Landroid/os/IPowerStatsService;Landroid/os/IHintManager;)V

    .line 132
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/IBatteryStats;Landroid/os/IPowerStatsService;Landroid/os/IHintManager;)V
    .registers 6

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;-><init>(Landroid/os/health/SystemHealthManager-IA;)V

    iput-object v0, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    .line 137
    iput-object p1, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 138
    iput-object p2, p0, Landroid/os/health/SystemHealthManager;->mPowerStats:Landroid/os/IPowerStatsService;

    .line 139
    iput-object p3, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    .line 140
    nop

    .line 141
    iget-object p1, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    if-eqz p1, :cond_2c

    .line 143
    :try_start_1d
    iget-object p1, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    invoke-interface {p1}, Landroid/os/IHintManager;->getClientData()Landroid/os/IHintManager$HintManagerClientData;

    move-result-object v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_24

    .line 146
    goto :goto_2c

    .line 144
    :catch_24
    move-exception p1

    .line 145
    const-string p2, "SystemHealthManager"

    const-string p3, "Failed to get hint manager client data"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :cond_2c
    :goto_2c
    iput-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    .line 149
    return-void
.end method

.method public static greylist-max-p from(Landroid/content/Context;)Landroid/os/health/SystemHealthManager;
    .registers 2

    .line 370
    const-string/jumbo v0, "systemhealth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/health/SystemHealthManager;

    return-object p0
.end method

.method static synthetic blacklist lambda$getPowerMonitorReadings$2(Landroid/os/OutcomeReceiver;Ljava/lang/IllegalArgumentException;)V
    .registers 2

    .line 549
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getSupportedPowerMonitors$0(Ljava/util/function/Consumer;Ljava/util/List;)V
    .registers 2

    .line 501
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$static$1(Landroid/os/PowerMonitor;)I
    .registers 1

    .line 530
    iget p0, p0, Landroid/os/PowerMonitor;->index:I

    return p0
.end method


# virtual methods
.method public whitelist getCpuHeadroom(Landroid/os/CpuHeadroomParams;)F
    .registers 5

    .line 179
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    if-eqz v0, :cond_d6

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    if-eqz v0, :cond_d6

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz v0, :cond_d6

    .line 183
    if-eqz p1, :cond_af

    .line 184
    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v0, v0, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    if-eqz v0, :cond_4b

    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v0, v0, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length v0, v0

    if-eqz v0, :cond_2d

    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v0, v0, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length v0, v0

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget v1, v1, Landroid/os/IHintManager$HintManagerClientData;->maxCpuHeadroomThreads:I

    if-gt v0, v1, :cond_2d

    goto :goto_4b

    .line 187
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number of TIDs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object p1, p1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_4b
    :goto_4b
    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget v0, v0, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v1, v1, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinCalculationWindowMillis:I

    if-lt v0, v1, :cond_68

    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget v0, v0, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v1, v1, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxCalculationWindowMillis:I

    if-gt v0, v1, :cond_68

    goto :goto_af

    .line 194
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid calculation window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget p1, p1, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", expect range: ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v1, v1, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinCalculationWindowMillis:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v1, v1, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxCalculationWindowMillis:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_af
    :goto_af
    :try_start_af
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    .line 205
    if-eqz p1, :cond_b6

    iget-object p1, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    goto :goto_bb

    :cond_b6
    new-instance p1, Landroid/os/CpuHeadroomParamsInternal;

    invoke-direct {p1}, Landroid/os/CpuHeadroomParamsInternal;-><init>()V

    .line 204
    :goto_bb
    invoke-interface {v0, p1}, Landroid/os/IHintManager;->getCpuHeadroom(Landroid/os/CpuHeadroomParamsInternal;)Landroid/hardware/power/CpuHeadroomResult;

    move-result-object p1

    .line 206
    if-eqz p1, :cond_cd

    invoke-virtual {p1}, Landroid/hardware/power/CpuHeadroomResult;->getTag()I

    move-result v0

    if-eqz v0, :cond_c8

    goto :goto_cd

    .line 209
    :cond_c8
    invoke-virtual {p1}, Landroid/hardware/power/CpuHeadroomResult;->getGlobalHeadroom()F

    move-result p1
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_cc} :catch_d0

    return p1

    .line 207
    :cond_cd
    :goto_cd
    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    .line 210
    :catch_d0
    move-exception p1

    .line 211
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 181
    :cond_d6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist getCpuHeadroomCalculationWindowRange()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz v0, :cond_30

    .line 302
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v1, v1, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinCalculationWindowMillis:I

    .line 303
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v2, v2, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v2, v2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v2, v2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxCalculationWindowMillis:I

    .line 304
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    return-object v0

    .line 300
    :cond_30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getCpuHeadroomMinIntervalMillis()J
    .registers 3

    .line 338
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz v0, :cond_1c

    .line 342
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    int-to-long v0, v0

    return-wide v0

    .line 340
    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getGpuHeadroom(Landroid/os/GpuHeadroomParams;)F
    .registers 5

    .line 257
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz v0, :cond_9f

    .line 261
    if-eqz p1, :cond_78

    .line 262
    iget-object v0, p1, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget v0, v0, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v1, v1, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinCalculationWindowMillis:I

    if-lt v0, v1, :cond_31

    iget-object v0, p1, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget v0, v0, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v1, v1, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMaxCalculationWindowMillis:I

    if-gt v0, v1, :cond_31

    goto :goto_78

    .line 266
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid calculation window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget p1, p1, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", expect range: ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v1, v1, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinCalculationWindowMillis:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v1, v1, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMaxCalculationWindowMillis:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_78
    :goto_78
    :try_start_78
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    .line 277
    if-eqz p1, :cond_7f

    iget-object p1, p1, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    goto :goto_84

    :cond_7f
    new-instance p1, Landroid/os/GpuHeadroomParamsInternal;

    invoke-direct {p1}, Landroid/os/GpuHeadroomParamsInternal;-><init>()V

    .line 276
    :goto_84
    invoke-interface {v0, p1}, Landroid/os/IHintManager;->getGpuHeadroom(Landroid/os/GpuHeadroomParamsInternal;)Landroid/hardware/power/GpuHeadroomResult;

    move-result-object p1

    .line 278
    if-eqz p1, :cond_96

    invoke-virtual {p1}, Landroid/hardware/power/GpuHeadroomResult;->getTag()I

    move-result v0

    if-eqz v0, :cond_91

    goto :goto_96

    .line 281
    :cond_91
    invoke-virtual {p1}, Landroid/hardware/power/GpuHeadroomResult;->getGlobalHeadroom()F

    move-result p1
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_95} :catch_99

    return p1

    .line 279
    :cond_96
    :goto_96
    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    .line 282
    :catch_99
    move-exception p1

    .line 283
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 259
    :cond_9f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist getGpuHeadroomCalculationWindowRange()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz v0, :cond_30

    .line 322
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v1, v1, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v1, v1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v1, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinCalculationWindowMillis:I

    .line 323
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v2, v2, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v2, v2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v2, v2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMaxCalculationWindowMillis:I

    .line 324
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    return-object v0

    .line 320
    :cond_30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getGpuHeadroomMinIntervalMillis()J
    .registers 3

    .line 356
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz v0, :cond_1c

    .line 360
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinIntervalMillis:I

    int-to-long v0, v0

    return-wide v0

    .line 358
    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getMaxCpuHeadroomTidsSize()I
    .registers 2

    .line 225
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManager:Landroid/os/IHintManager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget-object v0, v0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    iget-object v0, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean v0, v0, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    if-eqz v0, :cond_17

    .line 229
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mHintManagerClientData:Landroid/os/IHintManager$HintManagerClientData;

    iget v0, v0, Landroid/os/IHintManager$HintManagerClientData;->maxCpuHeadroomThreads:I

    return v0

    .line 227
    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getPowerMonitorReadings(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PowerMonitor;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/os/PowerMonitorReadings;",
            "Ljava/lang/RuntimeException;",
            ">;)V"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mPowerStats:Landroid/os/IPowerStatsService;

    if-nez v0, :cond_1a

    .line 546
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported power monitor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 548
    if-eqz p2, :cond_16

    .line 549
    new-instance v0, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3, p1}, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/IllegalArgumentException;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_19

    .line 551
    :cond_16
    invoke-interface {p3, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 553
    :goto_19
    return-void

    .line 556
    :cond_1a
    nop

    .line 557
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/PowerMonitor;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Landroid/os/PowerMonitor;

    .line 558
    sget-object v0, Landroid/os/health/SystemHealthManager;->POWER_MONITOR_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 559
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 560
    const/4 v1, 0x0

    :goto_34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 561
    aget-object v2, v4, v1

    iget v2, v2, Landroid/os/PowerMonitor;->index:I

    aput v2, v0, v1

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 564
    :cond_43
    :try_start_43
    iget-object p1, p0, Landroid/os/health/SystemHealthManager;->mPowerStats:Landroid/os/IPowerStatsService;

    new-instance v1, Landroid/os/health/SystemHealthManager$2;

    const/4 v3, 0x0

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/os/health/SystemHealthManager$2;-><init>(Landroid/os/health/SystemHealthManager;Landroid/os/Handler;[Landroid/os/PowerMonitor;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v0, v1}, Landroid/os/IPowerStatsService;->getPowerMonitorReadings([ILandroid/os/ResultReceiver;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_51} :catch_53

    .line 595
    nop

    .line 596
    return-void

    .line 593
    :catch_53
    move-exception v0

    move-object p1, v0

    .line 594
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getSupportedPowerMonitors(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/os/PowerMonitor;",
            ">;>;)V"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_3
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsInfo:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 491
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsInfo:Ljava/util/List;

    goto :goto_19

    .line 492
    :cond_b
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPowerStats:Landroid/os/IPowerStatsService;

    if-nez v1, :cond_18

    .line 493
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsInfo:Ljava/util/List;

    .line 494
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPowerMonitorsInfo:Ljava/util/List;

    goto :goto_19

    .line 496
    :cond_18
    move-object v1, v2

    .line 498
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3d

    .line 499
    if-eqz v1, :cond_2b

    .line 500
    if-eqz p1, :cond_27

    .line 501
    new-instance v0, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, v1}, Landroid/os/health/SystemHealthManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2a

    .line 503
    :cond_27
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 505
    :goto_2a
    return-void

    .line 508
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mPowerStats:Landroid/os/IPowerStatsService;

    new-instance v1, Landroid/os/health/SystemHealthManager$1;

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/os/health/SystemHealthManager$1;-><init>(Landroid/os/health/SystemHealthManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Landroid/os/IPowerStatsService;->getSupportedPowerMonitors(Landroid/os/ResultReceiver;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_35} :catch_37

    .line 526
    nop

    .line 527
    return-void

    .line 524
    :catch_37
    move-exception p1

    .line 525
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 498
    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public whitelist takeMyUidSnapshot()Landroid/os/health/HealthStats;
    .registers 2

    .line 403
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/health/SystemHealthManager;->takeUidSnapshot(I)Landroid/os/health/HealthStats;

    move-result-object v0

    return-object v0
.end method

.method public whitelist takeUidSnapshot(I)Landroid/os/health/HealthStats;
    .registers 4

    .line 387
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/health/SystemHealthManager;->takeUidSnapshots([I)[Landroid/os/health/HealthStats;

    move-result-object p1

    .line 388
    if-eqz p1, :cond_12

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    .line 389
    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    .line 391
    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist takeUidSnapshots([I)[Landroid/os/health/HealthStats;
    .registers 7

    .line 420
    iget-object v0, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    monitor-enter v0

    .line 421
    :try_start_3
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iget-object v1, v1, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->uids:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 422
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iget-object v1, v1, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->resultReceiver:Landroid/os/SynchronousResultReceiver;

    goto :goto_2d

    .line 424
    :cond_12
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, v1, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->uids:[I

    .line 425
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    new-instance v2, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v3, "takeUidSnapshots"

    invoke-direct {v2, v3}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->resultReceiver:Landroid/os/SynchronousResultReceiver;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_e2

    .line 428
    :try_start_27
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1, v2}, Lcom/android/internal/app/IBatteryStats;->takeUidSnapshotsAsync([ILandroid/os/ResultReceiver;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_dc
    .catchall {:try_start_27 .. :try_end_2c} :catchall_e2

    .line 431
    move-object v1, v2

    .line 433
    :goto_2d
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_e2

    .line 437
    const-wide/16 v2, 0x2710

    const/4 v0, 0x0

    :try_start_31
    invoke-virtual {v1, v2, v3}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v2
    :try_end_35
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_31 .. :try_end_35} :catch_bf
    .catchall {:try_start_31 .. :try_end_35} :catchall_bd

    .line 441
    iget-object v3, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    monitor-enter v3

    .line 442
    :try_start_38
    iget-object v4, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iget-object v4, v4, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->resultReceiver:Landroid/os/SynchronousResultReceiver;

    if-ne v4, v1, :cond_46

    .line 443
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iput-object v0, v1, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->uids:[I

    .line 444
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iput-object v0, v1, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->resultReceiver:Landroid/os/SynchronousResultReceiver;

    .line 446
    :cond_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_ba

    .line 447
    nop

    .line 449
    iget v1, v2, Landroid/os/SynchronousResultReceiver$Result;->resultCode:I

    packed-switch v1, :pswitch_data_e6

    .line 472
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/os/SynchronousResultReceiver$Result;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 464
    :pswitch_68
    new-instance p1, Ljava/lang/SecurityException;

    iget-object v1, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v1, :cond_77

    .line 465
    iget-object v0, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v1, "exception"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_78

    :cond_77
    nop

    :goto_78
    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 468
    :pswitch_7c
    new-instance p1, Ljava/lang/RuntimeException;

    iget-object v1, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v1, :cond_8b

    .line 469
    iget-object v0, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v1, "exception"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8c

    :cond_8b
    nop

    :goto_8c
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 451
    :pswitch_90
    array-length v0, p1

    new-array v0, v0, [Landroid/os/health/HealthStats;

    .line 452
    iget-object v1, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v1, :cond_b9

    .line 453
    iget-object v1, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string/jumbo v2, "uid_snapshots"

    const-class v3, Landroid/os/health/HealthStatsParceler;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/health/HealthStatsParceler;

    .line 455
    if-eqz v1, :cond_b9

    array-length v2, v1

    array-length p1, p1

    if-ne v2, p1, :cond_b9

    .line 456
    const/4 p1, 0x0

    :goto_ab
    array-length v2, v1

    if-ge p1, v2, :cond_b9

    .line 457
    aget-object v2, v1, p1

    invoke-virtual {v2}, Landroid/os/health/HealthStatsParceler;->getHealthStats()Landroid/os/health/HealthStats;

    move-result-object v2

    aput-object v2, v0, p1

    .line 456
    add-int/lit8 p1, p1, 0x1

    goto :goto_ab

    .line 461
    :cond_b9
    return-object v0

    .line 446
    :catchall_ba
    move-exception p1

    :try_start_bb
    monitor-exit v3
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    throw p1

    .line 441
    :catchall_bd
    move-exception p1

    goto :goto_c6

    .line 438
    :catch_bf
    move-exception p1

    .line 439
    :try_start_c0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_c6
    .catchall {:try_start_c0 .. :try_end_c6} :catchall_bd

    .line 441
    :goto_c6
    iget-object v2, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    monitor-enter v2

    .line 442
    :try_start_c9
    iget-object v3, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iget-object v3, v3, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->resultReceiver:Landroid/os/SynchronousResultReceiver;

    if-ne v3, v1, :cond_d7

    .line 443
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iput-object v0, v1, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->uids:[I

    .line 444
    iget-object v1, p0, Landroid/os/health/SystemHealthManager;->mPendingUidSnapshots:Landroid/os/health/SystemHealthManager$PendingUidSnapshots;

    iput-object v0, v1, Landroid/os/health/SystemHealthManager$PendingUidSnapshots;->resultReceiver:Landroid/os/SynchronousResultReceiver;

    .line 446
    :cond_d7
    monitor-exit v2
    :try_end_d8
    .catchall {:try_start_c9 .. :try_end_d8} :catchall_d9

    .line 447
    throw p1

    .line 446
    :catchall_d9
    move-exception p1

    :try_start_da
    monitor-exit v2
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    throw p1

    .line 429
    :catch_dc
    move-exception p1

    .line 430
    :try_start_dd
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 433
    :catchall_e2
    move-exception p1

    monitor-exit v0
    :try_end_e4
    .catchall {:try_start_dd .. :try_end_e4} :catchall_e2

    throw p1

    nop

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_90
        :pswitch_7c
        :pswitch_68
    .end packed-switch
.end method
