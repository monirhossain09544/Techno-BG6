.class Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedGroup;
.super Ljava/lang/Object;
.source "ProtoLogViewerConfigReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParsedGroup"
.end annotation


# instance fields
.field blacklist groupId:J

.field blacklist groupName:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedGroup;->groupId:J

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedGroup;->groupName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogViewerConfigReader-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$ParsedGroup;-><init>()V

    return-void
.end method
