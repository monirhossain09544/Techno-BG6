.class Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;
.super Ljava/lang/Object;
.source "ProtoLogViewerConfigReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParsedMessage"
.end annotation


# instance fields
.field blacklist groupId:I

.field blacklist message:Ljava/lang/String;

.field blacklist messageId:J


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;->messageId:J

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;->message:Ljava/lang/String;

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;->groupId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogViewerConfigReader-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedMessage;-><init>()V

    return-void
.end method
