.class Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryHistoryParcelContainer"
.end annotation


# instance fields
.field private blacklist mFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

.field private blacklist mMonotonicStartTime:J

.field private blacklist mParcel:Landroid/os/Parcel;

.field private blacklist mParcelReadyForReading:Z

.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsHistory;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsHistory;Landroid/os/Parcel;J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->this$0:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcel:Landroid/os/Parcel;

    .line 277
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mMonotonicStartTime:J

    .line 278
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcelReadyForReading:Z

    .line 279
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsHistory;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 281
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->this$0:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    .line 283
    iget-wide p1, p2, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;->monotonicTimeMs:J

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mMonotonicStartTime:J

    .line 284
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcelReadyForReading:Z

    .line 285
    return-void
.end method


# virtual methods
.method blacklist close()V
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcel:Landroid/os/Parcel;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    if-eqz v0, :cond_d

    .line 314
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 318
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcel:Landroid/os/Parcel;

    .line 319
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    .line 320
    return-void
.end method

.method blacklist getMonotonicStartTime()J
    .registers 3

    .line 305
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mMonotonicStartTime:J

    return-wide v0
.end method

.method blacklist getParcel()Landroid/os/Parcel;
    .registers 4

    .line 289
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcelReadyForReading:Z

    if-eqz v0, :cond_7

    .line 290
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcel:Landroid/os/Parcel;

    return-object v0

    .line 293
    :cond_7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->this$0:Lcom/android/internal/os/BatteryStatsHistory;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mFragment:Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/os/BatteryStatsHistory;->readFragmentToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryFragment;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 296
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcel:Landroid/os/Parcel;

    goto :goto_1e

    .line 298
    :cond_1b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    :goto_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcelReadyForReading:Z

    .line 301
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistory$BatteryHistoryParcelContainer;->mParcel:Landroid/os/Parcel;

    return-object v0
.end method
