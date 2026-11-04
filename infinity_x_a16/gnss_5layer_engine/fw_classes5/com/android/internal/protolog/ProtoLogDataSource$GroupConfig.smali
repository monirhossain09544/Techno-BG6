.class public Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;
.super Ljava/lang/Object;
.source "ProtoLogDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/ProtoLogDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupConfig"
.end annotation


# instance fields
.field public final blacklist collectStackTrace:Z

.field public final blacklist logFrom:Lcom/android/internal/protolog/common/LogLevel;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/protolog/common/LogLevel;Z)V
    .registers 3

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    .line 289
    iput-boolean p2, p0, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->collectStackTrace:Z

    .line 290
    return-void
.end method
