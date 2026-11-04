.class public Lcom/android/internal/logging/UiEventLoggerImpl;
.super Ljava/lang/Object;
.source "UiEventLoggerImpl.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .registers 4

    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 30
    return-void
.end method

.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V
    .registers 6

    .line 34
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result p1

    .line 35
    if-lez p1, :cond_c

    .line 36
    const/16 v0, 0x5a

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;I)V

    .line 42
    :cond_c
    return-void
.end method

.method public blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V
    .registers 5

    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/logging/UiEventLoggerImpl;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 47
    return-void
.end method

.method public blacklist logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V
    .registers 6

    .line 52
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v0

    .line 53
    if-lez v0, :cond_13

    if-eqz p4, :cond_13

    .line 54
    nop

    .line 58
    invoke-virtual {p4}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p1

    .line 54
    const/16 p4, 0x5a

    invoke-static {p4, v0, p2, p3, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;I)V

    goto :goto_18

    .line 59
    :cond_13
    if-lez v0, :cond_18

    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 62
    :cond_18
    :goto_18
    return-void
.end method

.method public blacklist logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V
    .registers 13

    .line 81
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v1

    .line 82
    if-lez v1, :cond_17

    if-eqz p4, :cond_17

    .line 83
    nop

    .line 86
    invoke-virtual {p4}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v3

    .line 83
    const/16 v0, 0x104

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p3

    move v4, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIZZ)V

    goto :goto_1e

    .line 82
    :cond_17
    move-object v2, p3

    move v4, p5

    .line 90
    if-lez v1, :cond_1e

    .line 91
    invoke-virtual {p0, p1, p2, v2, v4}, Lcom/android/internal/logging/UiEventLoggerImpl;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    .line 93
    :cond_1e
    :goto_1e
    return-void
.end method

.method public blacklist logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V
    .registers 12

    .line 66
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v1

    .line 67
    if-lez v1, :cond_10

    .line 68
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x104

    const/4 v3, 0x0

    move-object v2, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIZZ)V

    .line 76
    :cond_10
    return-void
.end method
