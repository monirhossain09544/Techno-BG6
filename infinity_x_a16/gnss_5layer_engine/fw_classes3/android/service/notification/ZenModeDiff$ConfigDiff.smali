.class public Landroid/service/notification/ZenModeDiff$ConfigDiff;
.super Landroid/service/notification/ZenModeDiff$BaseDiff;
.source "ZenModeDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigDiff"
.end annotation


# static fields
.field public static final blacklist FIELD_HAS_PRIORITY_CHANNELS:Ljava/lang/String; = "hasPriorityChannels"

.field public static final blacklist FIELD_USER:Ljava/lang/String; = "user"


# instance fields
.field private final blacklist mAutomaticRulesDiff:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeDiff$RuleDiff;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mManualRuleDiff:Landroid/service/notification/ZenModeDiff$RuleDiff;


# direct methods
.method public constructor blacklist <init>(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V
    .registers 10

    .line 246
    invoke-direct {p0, p1, p2}, Landroid/service/notification/ZenModeDiff$BaseDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mAutomaticRulesDiff:Landroid/util/ArrayMap;

    .line 248
    if-nez p1, :cond_f

    if-nez p2, :cond_f

    .line 249
    return-void

    .line 251
    :cond_f
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasExistenceChange()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 254
    return-void

    .line 258
    :cond_16
    iget v0, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget v1, p2, Landroid/service/notification/ZenModeConfig;->user:I

    if-eq v0, v1, :cond_33

    .line 259
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget v1, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p2, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 261
    :cond_33
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    iget-boolean v1, p2, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    if-eq v0, v1, :cond_4f

    .line 262
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    .line 263
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    const-string v1, "hasPriorityChannels"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 267
    :cond_4f
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 268
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    .line 269
    iget-object v1, p2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    .line 270
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 271
    const/4 v2, 0x0

    :goto_63
    if-ge v2, v1, :cond_99

    .line 272
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 274
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    if-eqz v4, :cond_79

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    goto :goto_7a

    .line 275
    :cond_79
    move-object v4, v5

    .line 277
    :goto_7a
    iget-object v6, p2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v6, :cond_86

    iget-object v5, p2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 278
    :cond_86
    new-instance v6, Landroid/service/notification/ZenModeDiff$RuleDiff;

    invoke-direct {v6, v4, v5}, Landroid/service/notification/ZenModeDiff$RuleDiff;-><init>(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 279
    invoke-virtual {v6}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result v4

    if-eqz v4, :cond_96

    .line 280
    iget-object v4, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mAutomaticRulesDiff:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 284
    :cond_99
    new-instance v0, Landroid/service/notification/ZenModeDiff$RuleDiff;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object p2, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0, p1, p2}, Landroid/service/notification/ZenModeDiff$RuleDiff;-><init>(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 285
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 286
    iput-object v0, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mManualRuleDiff:Landroid/service/notification/ZenModeDiff$RuleDiff;

    .line 288
    :cond_aa
    return-void
.end method

.method private static blacklist addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;",
            "Landroid/util/ArrayMap<",
            "TT;*>;)V"
        }
    .end annotation

    .line 291
    if-eqz p1, :cond_13

    .line 292
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 293
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 296
    :cond_13
    return-void
.end method


# virtual methods
.method public blacklist getAllAutomaticRuleDiffs()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeDiff$RuleDiff;",
            ">;"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mAutomaticRulesDiff:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mAutomaticRulesDiff:Landroid/util/ArrayMap;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist getManualRuleDiff()Landroid/service/notification/ZenModeDiff$RuleDiff;
    .registers 2

    .line 378
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mManualRuleDiff:Landroid/service/notification/ZenModeDiff$RuleDiff;

    return-object v0
.end method

.method public blacklist hasDiff()Z
    .registers 2

    .line 303
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasExistenceChange()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 304
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasFieldDiffs()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mManualRuleDiff:Landroid/service/notification/ZenModeDiff$RuleDiff;

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mAutomaticRulesDiff:Landroid/util/ArrayMap;

    .line 306
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 303
    :goto_1c
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Diff["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasDiff()Z

    move-result v1

    if-nez v1, :cond_13

    .line 313
    const-string/jumbo v1, "no changes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_13
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasExistenceChange()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 318
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->wasAdded()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 319
    const-string v1, "added"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 320
    :cond_25
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->wasRemoved()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 321
    const-string/jumbo v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_31
    :goto_31
    nop

    .line 327
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->fieldNamesWithDiff()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, ",\n"

    if-eqz v3, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 328
    invoke-virtual {p0, v3}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->getDiffForField(Ljava/lang/String;)Landroid/service/notification/ZenModeDiff$FieldDiff;

    move-result-object v6

    .line 329
    if-nez v6, :cond_51

    .line 331
    goto :goto_3b

    .line 333
    :cond_51
    if-eqz v2, :cond_55

    .line 334
    move v2, v4

    goto :goto_58

    .line 336
    :cond_55
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :goto_58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 342
    goto :goto_3b

    .line 345
    :cond_64
    iget-object v1, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mManualRuleDiff:Landroid/service/notification/ZenModeDiff$RuleDiff;

    if-eqz v1, :cond_81

    iget-object v1, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mManualRuleDiff:Landroid/service/notification/ZenModeDiff$RuleDiff;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 346
    if-eqz v2, :cond_74

    .line 347
    move v2, v4

    goto :goto_77

    .line 349
    :cond_74
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :goto_77
    const-string v1, "manualRule:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget-object v1, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mManualRuleDiff:Landroid/service/notification/ZenModeDiff$RuleDiff;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 356
    :cond_81
    iget-object v1, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mAutomaticRulesDiff:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 357
    iget-object v6, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mAutomaticRulesDiff:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeDiff$RuleDiff;

    .line 358
    if-eqz v6, :cond_be

    invoke-virtual {v6}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result v7

    if-eqz v7, :cond_be

    .line 359
    if-eqz v2, :cond_ab

    .line 360
    move v2, v4

    goto :goto_ae

    .line 362
    :cond_ab
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :goto_ae
    const-string v7, "automaticRule["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v3, "]:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    :cond_be
    goto :goto_8b

    .line 371
    :cond_bf
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
