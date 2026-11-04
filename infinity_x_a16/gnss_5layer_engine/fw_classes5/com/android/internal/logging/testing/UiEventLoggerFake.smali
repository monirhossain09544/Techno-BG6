.class public Lcom/android/internal/logging/testing/UiEventLoggerFake;
.super Ljava/lang/Object;
.source "UiEventLoggerFake.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;
    }
.end annotation


# instance fields
.field private blacklist mLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist eventId(I)I
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;

    iget p1, p1, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->eventId:I

    return p1
.end method

.method public blacklist get(I)Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;

    return-object p1
.end method

.method public blacklist getLogs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    return-object v0
.end method

.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .registers 4

    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/logging/testing/UiEventLoggerFake;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 89
    return-void
.end method

.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V
    .registers 6

    .line 98
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result p1

    .line 99
    if-lez p1, :cond_10

    .line 100
    iget-object v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    new-instance v1, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_10
    return-void
.end method

.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V
    .registers 5

    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/logging/testing/UiEventLoggerFake;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 94
    return-void
.end method

.method public blacklist logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V
    .registers 7

    .line 107
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result p1

    .line 108
    if-lez p1, :cond_10

    .line 109
    iget-object v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    new-instance v1, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;-><init>(IILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_10
    return-void
.end method

.method public blacklist logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V
    .registers 8

    .line 124
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result p1

    .line 125
    if-lez p1, :cond_12

    .line 126
    iget-object v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    new-instance v1, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;

    move-object p0, v1

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;-><init>(IILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    move-object p1, p0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_12
    return-void
.end method

.method public blacklist logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V
    .registers 11

    .line 115
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v1

    .line 116
    if-lez v1, :cond_14

    .line 117
    iget-object p1, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    new-instance v0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;

    const/4 v4, 0x0

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;-><init>(IILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_14
    return-void
.end method

.method public blacklist numLogs()I
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake;->mLogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
