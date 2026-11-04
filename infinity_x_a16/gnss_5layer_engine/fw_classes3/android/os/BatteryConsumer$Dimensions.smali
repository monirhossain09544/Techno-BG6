.class public final Landroid/os/BatteryConsumer$Dimensions;
.super Ljava/lang/Object;
.source "BatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dimensions"
.end annotation


# instance fields
.field public final blacklist powerComponentId:I

.field public final blacklist powerState:I

.field public final blacklist processState:I

.field public final blacklist screenState:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 4

    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/os/BatteryConsumer$Dimensions;-><init>(IIII)V

    .line 320
    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .registers 5

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput p1, p0, Landroid/os/BatteryConsumer$Dimensions;->powerComponentId:I

    .line 325
    iput p2, p0, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    .line 326
    iput p3, p0, Landroid/os/BatteryConsumer$Dimensions;->screenState:I

    .line 327
    iput p4, p0, Landroid/os/BatteryConsumer$Dimensions;->powerState:I

    .line 328
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 332
    nop

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    iget v1, p0, Landroid/os/BatteryConsumer$Dimensions;->powerComponentId:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_31

    .line 335
    const-string/jumbo v1, "powerComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget v1, p0, Landroid/os/BatteryConsumer$Dimensions;->powerComponentId:I

    const/16 v4, 0x13

    if-ge v1, v4, :cond_24

    .line 337
    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetsPowerComponentNames()[Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Landroid/os/BatteryConsumer$Dimensions;->powerComponentId:I

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 339
    :cond_24
    const-string v1, "CUSTOM/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/os/BatteryConsumer$Dimensions;->powerComponentId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    :goto_2f
    move v1, v2

    goto :goto_32

    .line 334
    :cond_31
    const/4 v1, 0x0

    .line 343
    :goto_32
    iget v4, p0, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    const-string v5, ", "

    if-eq v4, v3, :cond_50

    .line 344
    if-eqz v1, :cond_3d

    .line 345
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_3d
    const-string/jumbo v1, "processState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetsProcessStateNames()[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    move v1, v2

    .line 350
    :cond_50
    iget v3, p0, Landroid/os/BatteryConsumer$Dimensions;->screenState:I

    if-eqz v3, :cond_6a

    .line 351
    if-eqz v1, :cond_59

    .line 352
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_59
    const-string/jumbo v1, "screenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/os/BatteryConsumer$Dimensions;->screenState:I

    invoke-static {v3}, Landroid/os/BatteryConsumer;->screenStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    move v1, v2

    .line 357
    :cond_6a
    iget v3, p0, Landroid/os/BatteryConsumer$Dimensions;->powerState:I

    if-eqz v3, :cond_84

    .line 358
    if-eqz v1, :cond_73

    .line 359
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_73
    const-string/jumbo v1, "powerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/os/BatteryConsumer$Dimensions;->powerState:I

    invoke-static {v3}, Landroid/os/BatteryConsumer;->powerStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    goto :goto_85

    .line 357
    :cond_84
    move v2, v1

    .line 364
    :goto_85
    if-nez v2, :cond_8c

    .line 365
    const-string v1, "any components and process states"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
