.class public Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
.super Ljava/lang/Object;
.source "PerfettoProtoLogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/PerfettoProtoLogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Message"
.end annotation


# instance fields
.field private final blacklist mMessageHash:Ljava/lang/Long;

.field private final blacklist mMessageMask:I

.field private final blacklist mMessageString:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMessageHash(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageHash:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMessageMask(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessageMask()I

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(JI)V
    .registers 4

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageHash:Ljava/lang/Long;

    .line 1016
    iput p3, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageMask:I

    .line 1017
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageString:Ljava/lang/String;

    .line 1018
    return-void
.end method

.method synthetic constructor blacklist <init>(JILcom/android/internal/protolog/PerfettoProtoLogImpl-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;-><init>(JI)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/protolog/common/InvalidFormatStringException;
        }
    .end annotation

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageHash:Ljava/lang/Long;

    .line 1022
    invoke-static {p1}, Lcom/android/internal/protolog/common/LogDataType;->parseFormatString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1023
    invoke-static {v0}, Lcom/android/internal/protolog/common/LogDataType;->logDataTypesToBitMask(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageMask:I

    .line 1024
    iput-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageString:Ljava/lang/String;

    .line 1025
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/protolog/PerfettoProtoLogImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getMessageMask()I
    .registers 2

    .line 1028
    iget v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageMask:I

    return v0
.end method


# virtual methods
.method protected blacklist getMessage()Ljava/lang/String;
    .registers 2

    .line 1038
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageString:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist getMessage(Lcom/android/internal/protolog/ProtoLogViewerConfigReader;)Ljava/lang/String;
    .registers 4

    .line 1043
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageString:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1044
    iget-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageString:Ljava/lang/String;

    return-object p1

    .line 1047
    :cond_7
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageHash:Ljava/lang/Long;

    if-eqz v0, :cond_16

    .line 1048
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageHash:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->getViewerString(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1051
    :cond_16
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Both mMessageString and mMessageHash should never be null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected blacklist getMessageHash()Ljava/lang/Long;
    .registers 2

    .line 1033
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageHash:Ljava/lang/Long;

    return-object v0
.end method
