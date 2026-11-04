.class public Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;
.super Ljava/lang/Object;
.source "ProtoLogDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/ProtoLogDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncrementalState"
.end annotation


# instance fields
.field public final blacklist argumentInterningMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist clearReported:Z

.field public blacklist internedStringsSizeBytes:J

.field public final blacklist protologGroupInterningSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist protologMessageInterningSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist stacktraceInterningMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologGroupInterningSet:Ljava/util/Set;

    .line 237
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologMessageInterningSet:Ljava/util/Set;

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->argumentInterningMap:Ljava/util/Map;

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->stacktraceInterningMap:Ljava/util/Map;

    .line 240
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->internedStringsSizeBytes:J

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    return-void
.end method


# virtual methods
.method public blacklist reset()V
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologGroupInterningSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 249
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologMessageInterningSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 250
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->argumentInterningMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 251
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->stacktraceInterningMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 252
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->internedStringsSizeBytes:J

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    .line 254
    return-void
.end method
