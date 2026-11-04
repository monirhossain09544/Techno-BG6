.class Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;
.super Ljava/lang/Object;
.source "ContentCaptureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentcapture/ContentCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalDataShareAdapterResourceManager"
.end annotation


# instance fields
.field private blacklist mDataShareReadAdapterHardReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;",
            "Landroid/service/contentcapture/DataShareReadAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExecutorHardReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1049
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;->mDataShareReadAdapterHardReferences:Ljava/util/Map;

    .line 1051
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;->mExecutorHardReferences:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/contentcapture/ContentCaptureService-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist clearHardReferences(Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;)V
    .registers 3

    .line 1070
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;->mDataShareReadAdapterHardReferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;->mExecutorHardReferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    return-void
.end method

.method blacklist getAdapter(Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;)Landroid/service/contentcapture/DataShareReadAdapter;
    .registers 3

    .line 1066
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;->mDataShareReadAdapterHardReferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/contentcapture/DataShareReadAdapter;

    return-object p1
.end method

.method blacklist getExecutor(Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;)Ljava/util/concurrent/Executor;
    .registers 3

    .line 1062
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;->mExecutorHardReferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    return-object p1
.end method

.method blacklist initializeForDelegate(Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;Landroid/service/contentcapture/DataShareReadAdapter;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 1057
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;->mDataShareReadAdapterHardReferences:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    iget-object p2, p0, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;->mExecutorHardReferences:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    return-void
.end method
