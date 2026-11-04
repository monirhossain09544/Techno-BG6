.class public final Landroid/os/GpuHeadroomParams;
.super Ljava/lang/Object;
.source "GpuHeadroomParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/GpuHeadroomParams$Builder;,
        Landroid/os/GpuHeadroomParams$GpuHeadroomCalculationType;
    }
.end annotation


# static fields
.field public static final whitelist GPU_HEADROOM_CALCULATION_TYPE_AVERAGE:I = 0x1

.field public static final whitelist GPU_HEADROOM_CALCULATION_TYPE_MIN:I = 0x0

.field public static final whitelist GPU_HEADROOM_CALCULATION_WINDOW_MILLIS_MAX:I = 0x2710

.field public static final whitelist GPU_HEADROOM_CALCULATION_WINDOW_MILLIS_MIN:I = 0x32


# instance fields
.field public final blacklist mInternal:Landroid/os/GpuHeadroomParamsInternal;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/os/GpuHeadroomParamsInternal;

    invoke-direct {v0}, Landroid/os/GpuHeadroomParamsInternal;-><init>()V

    iput-object v0, p0, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/GpuHeadroomParams-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/GpuHeadroomParams;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 184
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 185
    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 186
    :cond_11
    check-cast p1, Landroid/os/GpuHeadroomParams;

    .line 187
    iget-object v0, p0, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget-object p1, p1, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    invoke-virtual {v0, p1}, Landroid/os/GpuHeadroomParamsInternal;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 185
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getCalculationType()I
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget-byte v0, v0, Landroid/os/GpuHeadroomParamsInternal;->calculationType:B

    packed-switch v0, :pswitch_data_e

    .line 160
    const/4 v0, 0x0

    goto :goto_d

    .line 159
    :pswitch_9
    iget-object v0, p0, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget-byte v0, v0, Landroid/os/GpuHeadroomParamsInternal;->calculationType:B

    .line 162
    :goto_d
    return v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public whitelist getCalculationWindowMillis()I
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget v0, v0, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 192
    iget-object v0, p0, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    invoke-virtual {v0}, Landroid/os/GpuHeadroomParamsInternal;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GpuHeadroomParams{calculationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget-byte v1, v1, Landroid/os/GpuHeadroomParamsInternal;->calculationType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calculationWindowMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget v1, v1, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
