.class public Lcom/android/internal/app/ChooserActivityLoggerImpl;
.super Ljava/lang/Object;
.source "ChooserActivityLoggerImpl.java"

# interfaces
.implements Lcom/android/internal/app/ChooserActivityLogger;


# static fields
.field private static final blacklist SHARESHEET_INSTANCE_ID_MAX:I = 0x2000

.field private static blacklist sInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;


# instance fields
.field private blacklist mInstanceId:Lcom/android/internal/logging/InstanceId;

.field private blacklist mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivityLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method


# virtual methods
.method public blacklist getInstanceId()Lcom/android/internal/logging/InstanceId;
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityLoggerImpl;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    if-nez v0, :cond_19

    .line 81
    sget-object v0, Lcom/android/internal/app/ChooserActivityLoggerImpl;->sInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    if-nez v0, :cond_11

    .line 82
    new-instance v0, Lcom/android/internal/logging/InstanceIdSequence;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    sput-object v0, Lcom/android/internal/app/ChooserActivityLoggerImpl;->sInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 84
    :cond_11
    sget-object v0, Lcom/android/internal/app/ChooserActivityLoggerImpl;->sInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivityLoggerImpl;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 86
    :cond_19
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityLoggerImpl;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    return-object v0
.end method

.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V
    .registers 6

    .line 71
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivityLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 76
    return-void
.end method

.method public blacklist logShareStarted(ILjava/lang/String;Ljava/lang/String;IIZILjava/lang/String;)V
    .registers 25

    .line 41
    move-object/from16 v0, p0

    sget-object v1, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStartedEvent;->SHARE_STARTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStartedEvent;

    .line 42
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStartedEvent;->getId()I

    move-result v3

    .line 44
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivityLoggerImpl;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v5

    .line 49
    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivityLoggerImpl;->typeFromPreviewInt(I)I

    move-result v10

    .line 50
    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivityLoggerImpl;->typeFromIntentString(Ljava/lang/String;)I

    move-result v11

    .line 41
    const/16 v2, 0x103

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;IIZIIIZZZ)V

    .line 55
    return-void
.end method

.method public blacklist logShareTargetSelected(ILjava/lang/String;IZ)V
    .registers 12

    .line 60
    nop

    .line 61
    invoke-static {p1}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->fromTargetType(I)Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->getId()I

    move-result v1

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivityLoggerImpl;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v3

    .line 60
    const/16 v0, 0x104

    const/4 v6, 0x0

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIZZ)V

    .line 67
    return-void
.end method
