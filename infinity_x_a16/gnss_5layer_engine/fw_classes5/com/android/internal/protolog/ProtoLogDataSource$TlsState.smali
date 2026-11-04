.class public Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;
.super Ljava/lang/Object;
.source "ProtoLogDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/ProtoLogDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlsState"
.end annotation


# instance fields
.field private final blacklist mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 2

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    .line 209
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;Lcom/android/internal/protolog/ProtoLogDataSource-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method private blacklist getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    invoke-virtual {v0, p1}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist getLogFromLevel(Ljava/lang/String;)Lcom/android/internal/protolog/common/LogLevel;
    .registers 2

    .line 217
    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    return-object p1
.end method

.method public blacklist getShouldCollectStacktrace(Ljava/lang/String;)Z
    .registers 2

    .line 227
    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->collectStackTrace:Z

    return p1
.end method
