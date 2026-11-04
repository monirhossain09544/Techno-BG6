.class public Lcom/android/internal/util/LatencyTracker$ActionProperties;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/LatencyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionProperties"
.end annotation


# static fields
.field static final blacklist ENABLE_SUFFIX:Ljava/lang/String; = "_enable"

.field static final blacklist LEGACY_TRACE_THRESHOLD_SUFFIX:Ljava/lang/String; = ""

.field static final blacklist SAMPLE_INTERVAL_SUFFIX:Ljava/lang/String; = "_sample_interval"

.field static final blacklist TRACE_THRESHOLD_SUFFIX:Ljava/lang/String; = "_trace_threshold"


# instance fields
.field private final blacklist mAction:I

.field private final blacklist mEnabled:Z

.field private final blacklist mSamplingInterval:I

.field private final blacklist mTraceThreshold:I


# direct methods
.method public constructor blacklist <init>(IZII)V
    .registers 7

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    iput p1, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mAction:I

    .line 966
    const-class p1, Lcom/android/internal/util/LatencyTracker$Action;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mAction:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 968
    iput-boolean p2, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mEnabled:Z

    .line 969
    iput p3, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mSamplingInterval:I

    .line 970
    iput p4, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mTraceThreshold:I

    .line 971
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1006
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1007
    return v0

    .line 1009
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1010
    return v1

    .line 1012
    :cond_8
    instance-of v2, p1, Lcom/android/internal/util/LatencyTracker$ActionProperties;

    if-nez v2, :cond_d

    .line 1013
    return v1

    .line 1015
    :cond_d
    check-cast p1, Lcom/android/internal/util/LatencyTracker$ActionProperties;

    .line 1016
    iget v2, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mAction:I

    iget v3, p1, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mAction:I

    if-ne v2, v3, :cond_28

    iget-boolean v2, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mEnabled:Z

    iget-boolean v3, p1, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mEnabled:Z

    if-ne v2, v3, :cond_28

    iget v2, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mSamplingInterval:I

    iget v3, p1, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mSamplingInterval:I

    if-ne v2, v3, :cond_28

    iget v2, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mTraceThreshold:I

    iget p1, p1, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mTraceThreshold:I

    if-ne v2, p1, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0
.end method

.method public blacklist getAction()I
    .registers 2

    .line 976
    iget v0, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mAction:I

    return v0
.end method

.method public blacklist getSamplingInterval()I
    .registers 2

    .line 986
    iget v0, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mSamplingInterval:I

    return v0
.end method

.method public blacklist getTraceThreshold()I
    .registers 2

    .line 991
    iget v0, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mTraceThreshold:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1024
    nop

    .line 1025
    iget v0, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mAction:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 1026
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 1027
    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mSamplingInterval:I

    add-int/2addr v0, v2

    .line 1028
    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mTraceThreshold:I

    add-int/2addr v0, v1

    .line 1029
    return v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 981
    iget-boolean v0, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionProperties{ mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSamplingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mSamplingInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTraceThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/util/LatencyTracker$ActionProperties;->mTraceThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
