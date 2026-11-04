.class public Landroid/service/notification/ZenModeDiff$RuleDiff;
.super Landroid/service/notification/ZenModeDiff$BaseDiff;
.source "ZenModeDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RuleDiff"
.end annotation


# static fields
.field public static final blacklist FIELD_ALLOW_MANUAL:Ljava/lang/String; = "allowManualInvocation"

.field public static final blacklist FIELD_COMPONENT:Ljava/lang/String; = "component"

.field public static final blacklist FIELD_CONDITION:Ljava/lang/String; = "condition"

.field public static final blacklist FIELD_CONDITION_ID:Ljava/lang/String; = "conditionId"

.field public static final blacklist FIELD_CONDITION_OVERRIDE:Ljava/lang/String; = "conditionOverride"

.field public static final blacklist FIELD_CONFIGURATION_ACTIVITY:Ljava/lang/String; = "configurationActivity"

.field public static final blacklist FIELD_CREATION_TIME:Ljava/lang/String; = "creationTime"

.field public static final blacklist FIELD_ENABLED:Ljava/lang/String; = "enabled"

.field public static final blacklist FIELD_ENABLER:Ljava/lang/String; = "enabler"

.field public static final blacklist FIELD_ICON_RES:Ljava/lang/String; = "iconResName"

.field public static final blacklist FIELD_ID:Ljava/lang/String; = "id"

.field public static final blacklist FIELD_LEGACY_SUPPRESSED_EFFECTS:Ljava/lang/String; = "legacySuppressedEffects"

.field public static final blacklist FIELD_NAME:Ljava/lang/String; = "name"

.field public static final blacklist FIELD_PKG:Ljava/lang/String; = "pkg"

.field public static final blacklist FIELD_TRIGGER_DESCRIPTION:Ljava/lang/String; = "triggerDescription"

.field public static final blacklist FIELD_TYPE:Ljava/lang/String; = "type"

.field public static final blacklist FIELD_ZEN_DEVICE_EFFECTS:Ljava/lang/String; = "zenDeviceEffects"

.field public static final blacklist FIELD_ZEN_MODE:Ljava/lang/String; = "zenMode"

.field public static final blacklist FIELD_ZEN_POLICY:Ljava/lang/String; = "zenPolicy"


# instance fields
.field blacklist mActiveDiff:Landroid/service/notification/ZenModeDiff$FieldDiff;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/service/notification/ZenModeDiff$FieldDiff<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .registers 7

    .line 424
    invoke-direct {p0, p1, p2}, Landroid/service/notification/ZenModeDiff$BaseDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 426
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    .line 427
    return-void

    .line 432
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v1

    goto :goto_11

    :cond_10
    move v1, v0

    .line 433
    :goto_11
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v0

    .line 434
    :cond_17
    if-eq v1, v0, :cond_28

    .line 435
    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/service/notification/ZenModeDiff$RuleDiff;->mActiveDiff:Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 439
    :cond_28
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasExistenceChange()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 440
    return-void

    .line 443
    :cond_2f
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget-boolean v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eq v0, v1, :cond_4b

    .line 444
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "enabled"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 446
    :cond_4b
    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    iget v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    if-eq v0, v1, :cond_67

    .line 447
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    .line 448
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 447
    const-string v1, "conditionOverride"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 450
    :cond_67
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 451
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "name"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 453
    :cond_7f
    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    iget v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eq v0, v1, :cond_9c

    .line 454
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "zenMode"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 456
    :cond_9c
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 457
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "conditionId"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 460
    :cond_b4
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 461
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "condition"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 463
    :cond_cc
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e4

    .line 464
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "component"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 466
    :cond_e4
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fc

    .line 467
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "configurationActivity"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 470
    :cond_fc
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_114

    .line 471
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "id"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 473
    :cond_114
    iget-wide v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    iget-wide v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_132

    .line 474
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-wide v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 475
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 474
    const-string v1, "creationTime"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 477
    :cond_132
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    iget-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14a

    .line 478
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    iget-object v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "enabler"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 480
    :cond_14a
    new-instance v0, Landroid/service/notification/ZenModeDiff$PolicyDiff;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$PolicyDiff;-><init>(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenPolicy;)V

    .line 481
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->hasDiff()Z

    move-result v1

    if-eqz v1, :cond_168

    .line 482
    new-instance v1, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-direct {v1, v2, v3, v0}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/service/notification/ZenModeDiff$BaseDiff;)V

    const-string/jumbo v0, "zenPolicy"

    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 485
    :cond_168
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_181

    .line 486
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "pkg"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 488
    :cond_181
    new-instance v0, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    iget-object v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;-><init>(Landroid/service/notification/ZenDeviceEffects;Landroid/service/notification/ZenDeviceEffects;)V

    .line 490
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->hasDiff()Z

    move-result v1

    if-eqz v1, :cond_19f

    .line 491
    new-instance v1, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-direct {v1, v2, v3, v0}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/service/notification/ZenModeDiff$BaseDiff;)V

    const-string/jumbo v0, "zenDeviceEffects"

    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 495
    :cond_19f
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    iget-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b8

    .line 496
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    iget-object v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "triggerDescription"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 499
    :cond_1b8
    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    iget v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    if-eq v0, v1, :cond_1d5

    .line 500
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 502
    :cond_1d5
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    iget-boolean v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    if-eq v0, v1, :cond_1f1

    .line 503
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 504
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 503
    const-string v1, "allowManualInvocation"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 506
    :cond_1f1
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    iget-object v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_209

    .line 507
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    iget-object v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "iconResName"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 509
    :cond_209
    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    iget v1, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    if-eq v0, v1, :cond_225

    .line 510
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    .line 511
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    .line 512
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 510
    const-string p1, "legacySuppressedEffects"

    invoke-virtual {p0, p1, v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 514
    :cond_225
    return-void
.end method


# virtual methods
.method public blacklist becameActive()Z
    .registers 2

    .line 581
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$RuleDiff;->mActiveDiff:Landroid/service/notification/ZenModeDiff$FieldDiff;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$RuleDiff;->mActiveDiff:Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$FieldDiff;->to()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public blacklist becameInactive()Z
    .registers 2

    .line 589
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$RuleDiff;->mActiveDiff:Landroid/service/notification/ZenModeDiff$FieldDiff;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$RuleDiff;->mActiveDiff:Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$FieldDiff;->to()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public blacklist hasDiff()Z
    .registers 2

    .line 521
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasExistenceChange()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasFieldDiffs()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZenRuleDiff{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result v1

    if-nez v1, :cond_13

    .line 530
    const-string/jumbo v1, "no changes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_13
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasExistenceChange()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 535
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasAdded()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 536
    const-string v1, "added"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 537
    :cond_25
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasRemoved()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 538
    const-string/jumbo v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_31
    :goto_31
    nop

    .line 544
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->fieldNamesWithDiff()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ", "

    if-eqz v3, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 545
    invoke-virtual {p0, v3}, Landroid/service/notification/ZenModeDiff$RuleDiff;->getDiffForField(Ljava/lang/String;)Landroid/service/notification/ZenModeDiff$FieldDiff;

    move-result-object v5

    .line 546
    if-nez v5, :cond_50

    .line 548
    goto :goto_3b

    .line 550
    :cond_50
    if-eqz v2, :cond_54

    .line 551
    const/4 v2, 0x0

    goto :goto_57

    .line 553
    :cond_54
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :goto_57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v5}, Landroid/service/notification/ZenModeDiff$FieldDiff;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    goto :goto_3b

    .line 561
    :cond_67
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameActive()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 562
    if-nez v2, :cond_72

    .line 563
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :cond_72
    const-string v1, "(->active)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_88

    .line 566
    :cond_78
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameInactive()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 567
    if-nez v2, :cond_83

    .line 568
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :cond_83
    const-string v1, "(->inactive)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_88
    :goto_88
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
