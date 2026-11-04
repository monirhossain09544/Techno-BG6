.class public Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl;
.super Ljava/lang/Object;
.source "NoViewerConfigProtoLogImpl.java"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLog;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ProtoLog"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist logMessage(Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 94
    sget-object v0, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl$1;->$SwitchMap$com$android$internal$protolog$common$LogLevel:[I

    invoke-virtual {p1}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_24

    goto :goto_23

    .line 100
    :pswitch_c
    invoke-static {p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 99
    :pswitch_10
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 98
    :pswitch_14
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 97
    :pswitch_18
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 96
    :pswitch_1c
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 95
    :pswitch_20
    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_23
    return-void

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public blacklist getRegisteredGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .registers 3

    .line 78
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist isProtoEnabled()Z
    .registers 2

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .registers 8

    .line 48
    if-nez p6, :cond_5

    const-string p5, ""

    goto :goto_1c

    .line 49
    :cond_5
    invoke-static {p6}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p5

    new-instance p6, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl$$ExternalSyntheticLambda0;

    invoke-direct {p6}, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p5, p6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p5

    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object p6

    invoke-interface {p5, p6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 51
    :goto_1c
    const-string p6, "ProtoLog"

    const-string v0, "ProtoLogging is not available due to missing viewer config file..."

    invoke-static {p6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object p2

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PROTOLOG#"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl;->logMessage(Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public varargs blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 58
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl;->logMessage(Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public varargs blacklist registerGroups([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 2

    .line 90
    return-void
.end method

.method public blacklist startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .registers 3

    .line 68
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .registers 3

    .line 73
    const/4 p1, 0x0

    return p1
.end method
