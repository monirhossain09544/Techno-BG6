.class public Lcom/android/internal/protolog/ProtoLogViewerConfigReader$MessageData;
.super Ljava/lang/Object;
.source "ProtoLogViewerConfigReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageData"
.end annotation


# instance fields
.field public final blacklist group:Ljava/lang/String;

.field public final blacklist message:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$MessageData;->message:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$MessageData;->group:Ljava/lang/String;

    .line 49
    return-void
.end method
