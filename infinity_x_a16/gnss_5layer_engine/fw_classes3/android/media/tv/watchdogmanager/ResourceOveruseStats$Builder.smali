.class public final Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;
.super Ljava/lang/Object;
.source "ResourceOveruseStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/watchdogmanager/ResourceOveruseStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mIoOveruseStats:Landroid/media/tv/watchdogmanager/IoOveruseStats;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mBuilderFieldsSet:J

    .line 173
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mPackageName:Ljava/lang/String;

    .line 174
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 175
    iput-object p2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mUserHandle:Landroid/os/UserHandle;

    .line 176
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 227
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 231
    return-void

    .line 228
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/media/tv/watchdogmanager/ResourceOveruseStats;
    .registers 5

    .line 215
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->checkNotUsed()V

    .line 216
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mBuilderFieldsSet:J

    .line 218
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mIoOveruseStats:Landroid/media/tv/watchdogmanager/IoOveruseStats;

    .line 221
    :cond_18
    new-instance v0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;

    iget-object v1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mUserHandle:Landroid/os/UserHandle;

    iget-object v3, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mIoOveruseStats:Landroid/media/tv/watchdogmanager/IoOveruseStats;

    invoke-direct {v0, v1, v2, v3}, Landroid/media/tv/watchdogmanager/ResourceOveruseStats;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/media/tv/watchdogmanager/IoOveruseStats;)V

    .line 223
    return-object v0
.end method

.method public blacklist setIoOveruseStats(Landroid/media/tv/watchdogmanager/IoOveruseStats;)Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;
    .registers 6

    .line 207
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->checkNotUsed()V

    .line 208
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mBuilderFieldsSet:J

    .line 209
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mIoOveruseStats:Landroid/media/tv/watchdogmanager/IoOveruseStats;

    .line 210
    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;
    .registers 6

    .line 186
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->checkNotUsed()V

    .line 187
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mBuilderFieldsSet:J

    .line 188
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mPackageName:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public blacklist setUserHandle(Landroid/os/UserHandle;)Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;
    .registers 6

    .line 194
    invoke-direct {p0}, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->checkNotUsed()V

    .line 195
    iget-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mBuilderFieldsSet:J

    .line 196
    iput-object p1, p0, Landroid/media/tv/watchdogmanager/ResourceOveruseStats$Builder;->mUserHandle:Landroid/os/UserHandle;

    .line 197
    return-object p0
.end method
