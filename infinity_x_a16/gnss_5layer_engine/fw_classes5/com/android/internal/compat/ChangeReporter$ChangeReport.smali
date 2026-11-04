.class final Lcom/android/internal/compat/ChangeReporter$ChangeReport;
.super Ljava/lang/Object;
.source "ChangeReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/ChangeReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChangeReport"
.end annotation


# instance fields
.field blacklist mChangeId:J

.field blacklist mState:I


# direct methods
.method constructor blacklist <init>(JI)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mChangeId:J

    .line 58
    iput p3, p0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mState:I

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 63
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 64
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_25

    .line 65
    :cond_12
    check-cast p1, Lcom/android/internal/compat/ChangeReporter$ChangeReport;

    .line 66
    iget-wide v2, p0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mChangeId:J

    iget-wide v4, p1, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mChangeId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_23

    iget v2, p0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mState:I

    iget p1, p1, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mState:I

    if-ne v2, p1, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    return v0

    .line 64
    :cond_25
    :goto_25
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mChangeId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/compat/ChangeReporter$ChangeReport;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
