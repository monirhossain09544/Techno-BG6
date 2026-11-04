.class public Lcom/android/internal/protolog/ProtoLogGroup;
.super Ljava/lang/Object;
.source "ProtoLogGroup.java"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLogGroup;


# instance fields
.field private blacklist mLogToLogcat:Z

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1, p1}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mTag:Ljava/lang/String;

    .line 43
    iput-boolean p3, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToLogcat:Z

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist getId()I
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist getTag()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isEnabled()Z
    .registers 3

    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ProtoLogGroup.isEnabled() should not be called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isLogToLogcat()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToLogcat:Z

    return v0
.end method

.method public blacklist name()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setLogToLogcat(Z)V
    .registers 2

    .line 66
    iput-boolean p1, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToLogcat:Z

    .line 67
    return-void
.end method
