.class Lcom/android/internal/statusbar/NetworkTraffic$1;
.super Landroid/os/Handler;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/statusbar/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/statusbar/NetworkTraffic;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/statusbar/NetworkTraffic;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private blacklist displayStatsAndReschedule()V
    .registers 10

    .line 190
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmMode(Lcom/android/internal/statusbar/NetworkTraffic;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$misConnectionAvailable(Lcom/android/internal/statusbar/NetworkTraffic;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 191
    :goto_15
    iget-object v3, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v3}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmMode(Lcom/android/internal/statusbar/NetworkTraffic;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v1, :cond_29

    iget-object v3, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v3}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmMode(Lcom/android/internal/statusbar/NetworkTraffic;)I

    move-result v3

    if-ne v3, v4, :cond_27

    goto :goto_29

    :cond_27
    move v3, v2

    goto :goto_2a

    :cond_29
    :goto_29
    move v3, v1

    .line 193
    :goto_2a
    iget-object v5, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v5}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmMode(Lcom/android/internal/statusbar/NetworkTraffic;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3e

    iget-object v5, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v5}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmMode(Lcom/android/internal/statusbar/NetworkTraffic;)I

    move-result v5

    if-ne v5, v4, :cond_3c

    goto :goto_3e

    :cond_3c
    move v4, v2

    goto :goto_3f

    :cond_3e
    :goto_3e
    move v4, v1

    .line 195
    :goto_3f
    iget-object v5, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v5}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmAutoHide(Lcom/android/internal/statusbar/NetworkTraffic;)Z

    move-result v5

    if-eqz v5, :cond_6c

    if-eqz v3, :cond_59

    iget-object v5, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v5}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmTxKbps(Lcom/android/internal/statusbar/NetworkTraffic;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v7}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmAutoHideThreshold(Lcom/android/internal/statusbar/NetworkTraffic;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_6c

    :cond_59
    if-eqz v4, :cond_6b

    iget-object v5, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v5}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmRxKbps(Lcom/android/internal/statusbar/NetworkTraffic;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v7}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmAutoHideThreshold(Lcom/android/internal/statusbar/NetworkTraffic;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_6c

    :cond_6b
    goto :goto_6d

    :cond_6c
    move v1, v2

    .line 199
    :goto_6d
    if-eqz v0, :cond_da

    if-eqz v1, :cond_72

    goto :goto_da

    .line 203
    :cond_72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    if-eqz v3, :cond_90

    if-eqz v4, :cond_90

    .line 205
    iget-object v3, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v3}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmTxKbps(Lcom/android/internal/statusbar/NetworkTraffic;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v5}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmRxKbps(Lcom/android/internal/statusbar/NetworkTraffic;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-direct {p0, v3, v4}, Lcom/android/internal/statusbar/NetworkTraffic$1;->formatOutput(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_af

    .line 206
    :cond_90
    if-eqz v3, :cond_a0

    .line 208
    iget-object v3, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v3}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmTxKbps(Lcom/android/internal/statusbar/NetworkTraffic;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/internal/statusbar/NetworkTraffic$1;->formatOutput(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_af

    .line 209
    :cond_a0
    if-eqz v4, :cond_af

    .line 211
    iget-object v3, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v3}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmRxKbps(Lcom/android/internal/statusbar/NetworkTraffic;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/internal/statusbar/NetworkTraffic$1;->formatOutput(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_af
    :goto_af
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-virtual {v4}, Lcom/android/internal/statusbar/NetworkTraffic;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d4

    .line 216
    iget-object v3, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    iget-object v4, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v4}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmTextSize(Lcom/android/internal/statusbar/NetworkTraffic;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/statusbar/NetworkTraffic;->setTextSize(IF)V

    .line 217
    iget-object v3, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/internal/statusbar/NetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_d4
    iget-object v1, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-virtual {v1, v2}, Lcom/android/internal/statusbar/NetworkTraffic;->setVisibility(I)V

    goto :goto_e8

    .line 200
    :cond_da
    :goto_da
    iget-object v1, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/android/internal/statusbar/NetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/internal/statusbar/NetworkTraffic;->setVisibility(I)V

    .line 223
    :goto_e8
    iget-object v1, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v1}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmTrafficHandler(Lcom/android/internal/statusbar/NetworkTraffic;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    if-eqz v0, :cond_106

    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmNetworkTrafficIsVisible(Lcom/android/internal/statusbar/NetworkTraffic;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 225
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmTrafficHandler(Lcom/android/internal/statusbar/NetworkTraffic;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 228
    :cond_106
    return-void
.end method

.method private blacklist formatOutput(J)Ljava/lang/String;
    .registers 8

    .line 233
    nop

    .line 234
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmUnits(Lcom/android/internal/statusbar/NetworkTraffic;)I

    move-result v0

    const-string v1, "%.0f"

    const-string v2, "%.1f"

    packed-switch v0, :pswitch_data_ae

    .line 264
    const/4 p2, 0x0

    const-string p1, "unknown"

    goto/16 :goto_88

    .line 245
    :pswitch_13
    const-wide/16 v3, 0x1f40

    cmp-long v0, p1, v3

    if-ltz v0, :cond_4c

    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmUnits(Lcom/android/internal/statusbar/NetworkTraffic;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_23

    goto :goto_4c

    .line 252
    :cond_23
    :pswitch_23
    const-wide/32 v3, 0x13880

    cmp-long v0, p1, v3

    if-gez v0, :cond_2d

    .line 253
    const-string v1, "%.2f"

    goto :goto_37

    .line 254
    :cond_2d
    const-wide/32 v3, 0xc3500

    cmp-long v0, p1, v3

    if-gez v0, :cond_36

    .line 255
    move-object v1, v2

    goto :goto_37

    .line 257
    :cond_36
    nop

    .line 259
    :goto_37
    long-to-float p1, p1

    const/high16 p2, 0x45fa0000    # 8000.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 261
    nop

    .line 262
    const p2, 0x1040667

    goto :goto_88

    .line 246
    :cond_4c
    :goto_4c
    long-to-float p1, p1

    const/high16 p2, 0x41000000    # 8.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 247
    nop

    .line 248
    const p2, 0x104059f

    goto :goto_88

    .line 240
    :pswitch_61
    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 241
    nop

    .line 242
    const p2, 0x1040666

    goto :goto_88

    .line 236
    :pswitch_76
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 237
    nop

    .line 238
    const p2, 0x104059e

    .line 268
    :goto_88
    if-eqz p2, :cond_ac

    .line 269
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    # getter for: Lcom/android/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/statusbar/NetworkTraffic;->access$000(Lcom/android/internal/statusbar/NetworkTraffic;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 272
    :cond_ac
    return-object p1

    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_76
        :pswitch_61
        :pswitch_13
        :pswitch_23
        :pswitch_13
    .end packed-switch
.end method

.method static synthetic blacklist lambda$recalculateStats$0(Landroid/net/LinkProperties;)Ljava/lang/String;
    .registers 1

    .line 157
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$recalculateStats$1(Ljava/lang/String;)Z
    .registers 1

    .line 158
    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method static synthetic blacklist lambda$recalculateStats$2(Ljava/lang/String;)Ljava/util/stream/Stream;
    .registers 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v4-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$recalculateStats$3(I)[Ljava/lang/String;
    .registers 1

    .line 160
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private blacklist recalculateStats()V
    .registers 22

    .line 144
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 145
    iget-object v3, v0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v3}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmLastUpdateTime(Lcom/android/internal/statusbar/NetworkTraffic;)J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 146
    long-to-float v5, v3

    const v6, 0x44ed8000    # 1900.0f

    cmpg-float v6, v5, v6

    if-gez v6, :cond_17

    .line 147
    return-void

    .line 150
    :cond_17
    nop

    .line 151
    nop

    .line 154
    iget-object v6, v0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v6}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmLinkPropertiesMap(Lcom/android/internal/statusbar/NetworkTraffic;)Ljava/util/HashMap;

    move-result-object v6

    .line 155
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 156
    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/internal/statusbar/NetworkTraffic$1$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/internal/statusbar/NetworkTraffic$1$$ExternalSyntheticLambda0;-><init>()V

    .line 157
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/internal/statusbar/NetworkTraffic$1$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/android/internal/statusbar/NetworkTraffic$1$$ExternalSyntheticLambda1;-><init>()V

    .line 158
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/internal/statusbar/NetworkTraffic$1$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/android/internal/statusbar/NetworkTraffic$1$$ExternalSyntheticLambda2;-><init>()V

    .line 159
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/internal/statusbar/NetworkTraffic$1$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lcom/android/internal/statusbar/NetworkTraffic$1$$ExternalSyntheticLambda3;-><init>()V

    .line 160
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 161
    array-length v7, v6

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    :goto_53
    if-ge v11, v7, :cond_66

    aget-object v16, v6, v11

    .line 162
    invoke-static/range {v16 .. v16}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v17

    .line 163
    invoke-static/range {v16 .. v16}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v19

    .line 169
    add-long v12, v12, v17

    .line 170
    add-long v14, v14, v19

    .line 161
    add-int/lit8 v11, v11, 0x1

    goto :goto_53

    .line 173
    :cond_66
    iget-object v6, v0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v6}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmLastTxBytes(Lcom/android/internal/statusbar/NetworkTraffic;)J

    move-result-wide v6

    sub-long v6, v12, v6

    .line 174
    iget-object v11, v0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v11}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmLastRxBytes(Lcom/android/internal/statusbar/NetworkTraffic;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    sub-long v8, v14, v16

    .line 176
    iget-object v10, v0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v10}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmNetworksChanged(Lcom/android/internal/statusbar/NetworkTraffic;)Z

    move-result v10

    if-nez v10, :cond_a6

    cmp-long v3, v3, v18

    if-lez v3, :cond_a6

    cmp-long v3, v6, v18

    if-ltz v3, :cond_a6

    cmp-long v3, v8, v18

    if-ltz v3, :cond_a6

    .line 177
    iget-object v3, v0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    long-to-float v4, v6

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v4, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v4, v7

    div-float/2addr v5, v7

    div-float/2addr v4, v5

    float-to-long v10, v4

    invoke-static {v3, v10, v11}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fputmTxKbps(Lcom/android/internal/statusbar/NetworkTraffic;J)V

    .line 178
    iget-object v3, v0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    long-to-float v4, v8

    mul-float/2addr v4, v6

    div-float/2addr v4, v7

    div-float/2addr v4, v5

    float-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fputmRxKbps(Lcom/android/internal/statusbar/NetworkTraffic;J)V

    goto :goto_c0

    .line 179
    :cond_a6
    iget-object v3, v0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v3}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmNetworksChanged(Lcom/android/internal/statusbar/NetworkTraffic;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 180
    iget-object v3, v0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    move-wide/from16 v4, v18

    invoke-static {v3, v4, v5}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fputmTxKbps(Lcom/android/internal/statusbar/NetworkTraffic;J)V

    .line 181
    iget-object v3, v0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v3, v4, v5}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fputmRxKbps(Lcom/android/internal/statusbar/NetworkTraffic;J)V

    .line 182
    iget-object v3, v0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    const/4 v11, 0x0

    invoke-static {v3, v11}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fputmNetworksChanged(Lcom/android/internal/statusbar/NetworkTraffic;Z)V

    .line 184
    :cond_c0
    :goto_c0
    iget-object v3, v0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v3, v12, v13}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fputmLastTxBytes(Lcom/android/internal/statusbar/NetworkTraffic;J)V

    .line 185
    iget-object v3, v0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v3, v14, v15}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fputmLastRxBytes(Lcom/android/internal/statusbar/NetworkTraffic;J)V

    .line 186
    iget-object v0, v0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v0, v1, v2}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fputmLastUpdateTime(Lcom/android/internal/statusbar/NetworkTraffic;J)V

    .line 187
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_42

    goto :goto_40

    .line 137
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmLinkPropertiesMap(Lcom/android/internal/statusbar/NetworkTraffic;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Network;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {p1, v1}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fputmNetworksChanged(Lcom/android/internal/statusbar/NetworkTraffic;Z)V

    goto :goto_40

    .line 131
    :pswitch_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;

    .line 132
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmLinkPropertiesMap(Lcom/android/internal/statusbar/NetworkTraffic;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;->getNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic$1;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {p1, v1}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fputmNetworksChanged(Lcom/android/internal/statusbar/NetworkTraffic;Z)V

    .line 134
    goto :goto_40

    .line 127
    :pswitch_35
    invoke-direct {p0}, Lcom/android/internal/statusbar/NetworkTraffic$1;->displayStatsAndReschedule()V

    .line 128
    goto :goto_40

    .line 122
    :pswitch_39
    invoke-direct {p0}, Lcom/android/internal/statusbar/NetworkTraffic$1;->recalculateStats()V

    .line 123
    invoke-direct {p0}, Lcom/android/internal/statusbar/NetworkTraffic$1;->displayStatsAndReschedule()V

    .line 124
    nop

    .line 141
    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_39
        :pswitch_35
        :pswitch_1a
        :pswitch_7
    .end packed-switch
.end method
