.class public Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;
.super Ljava/lang/Object;
.source "ContentCaptureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentcapture/ContentCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingMetrics"
.end annotation


# instance fields
.field private blacklist activityComponent:Landroid/content/ComponentName;

.field private blacklist flushReason:I

.field private final blacklist metrics:Landroid/service/contentcapture/FlushMetrics;

.field private blacklist options:Landroid/content/ContentCaptureOptions;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetactivityComponent(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->activityComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetflushReason(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)I
    .registers 1

    iget p0, p0, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->flushReason:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmetrics(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)Landroid/service/contentcapture/FlushMetrics;
    .registers 1

    iget-object p0, p0, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->metrics:Landroid/service/contentcapture/FlushMetrics;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetoptions(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;)Landroid/content/ContentCaptureOptions;
    .registers 1

    iget-object p0, p0, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->options:Landroid/content/ContentCaptureOptions;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdate(Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;Landroid/content/ComponentName;Landroid/content/ContentCaptureOptions;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->update(Landroid/content/ComponentName;Landroid/content/ContentCaptureOptions;I)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    new-instance v0, Landroid/service/contentcapture/FlushMetrics;

    invoke-direct {v0}, Landroid/service/contentcapture/FlushMetrics;-><init>()V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->metrics:Landroid/service/contentcapture/FlushMetrics;

    return-void
.end method

.method private blacklist update(Landroid/content/ComponentName;Landroid/content/ContentCaptureOptions;I)V
    .registers 5

    .line 952
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->activityComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    .line 953
    iput-object p1, p0, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->activityComponent:Landroid/content/ComponentName;

    .line 955
    :cond_8
    iput-object p2, p0, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->options:Landroid/content/ContentCaptureOptions;

    .line 956
    iput p3, p0, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->flushReason:I

    .line 957
    return-void
.end method


# virtual methods
.method public blacklist getMetrics()Landroid/service/contentcapture/FlushMetrics;
    .registers 2

    .line 961
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$PendingMetrics;->metrics:Landroid/service/contentcapture/FlushMetrics;

    return-object v0
.end method
