.class public Landroid/service/notification/ZenModeDiff$PolicyDiff;
.super Landroid/service/notification/ZenModeDiff$BaseDiff;
.source "ZenModeDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyDiff"
.end annotation


# static fields
.field public static final blacklist FIELD_ALLOW_CHANNELS:Ljava/lang/String; = "mAllowChannels"

.field public static final blacklist FIELD_CONVERSATION_SENDERS:Ljava/lang/String; = "mConversationSenders"

.field public static final blacklist FIELD_PRIORITY_CALLS:Ljava/lang/String; = "mPriorityCalls"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_ALARMS:Ljava/lang/String; = "mPriorityCategories_Alarms"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_CALLS:Ljava/lang/String; = "mPriorityCategories_Calls"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_CONVERSATIONS:Ljava/lang/String; = "mPriorityCategories_Conversations"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_EVENTS:Ljava/lang/String; = "mPriorityCategories_Events"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_MEDIA:Ljava/lang/String; = "mPriorityCategories_Media"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_MESSAGES:Ljava/lang/String; = "mPriorityCategories_Messages"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_REMINDERS:Ljava/lang/String; = "mPriorityCategories_Reminders"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_REPEAT_CALLERS:Ljava/lang/String; = "mPriorityCategories_RepeatCallers"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_SYSTEM:Ljava/lang/String; = "mPriorityCategories_System"

.field public static final blacklist FIELD_PRIORITY_MESSAGES:Ljava/lang/String; = "mPriorityMessages"

.field public static final blacklist FIELD_VISUAL_EFFECT_AMBIENT:Ljava/lang/String; = "mVisualEffects_Ambient"

.field public static final blacklist FIELD_VISUAL_EFFECT_BADGE:Ljava/lang/String; = "mVisualEffects_Badge"

.field public static final blacklist FIELD_VISUAL_EFFECT_FULL_SCREEN_INTENT:Ljava/lang/String; = "mVisualEffects_FullScreenIntent"

.field public static final blacklist FIELD_VISUAL_EFFECT_LIGHTS:Ljava/lang/String; = "mVisualEffects_Lights"

.field public static final blacklist FIELD_VISUAL_EFFECT_NOTIFICATION_LIST:Ljava/lang/String; = "mVisualEffects_NotificationList"

.field public static final blacklist FIELD_VISUAL_EFFECT_PEEK:Ljava/lang/String; = "mVisualEffects_Peek"

.field public static final blacklist FIELD_VISUAL_EFFECT_STATUS_BAR:Ljava/lang/String; = "mVisualEffects_StatusBar"


# direct methods
.method public constructor blacklist <init>(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenPolicy;)V
    .registers 6

    .line 782
    invoke-direct {p0, p1, p2}, Landroid/service/notification/ZenModeDiff$BaseDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 784
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    .line 785
    return-void

    .line 787
    :cond_8
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->hasExistenceChange()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 790
    return-void

    .line 794
    :cond_f
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v1

    if-eq v0, v1, :cond_33

    .line 795
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 796
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 797
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 795
    const-string v1, "mPriorityCategories_Reminders"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 799
    :cond_33
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v1

    if-eq v0, v1, :cond_57

    .line 800
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 801
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 802
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 800
    const-string v1, "mPriorityCategories_Events"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 804
    :cond_57
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v1

    if-eq v0, v1, :cond_7b

    .line 805
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 806
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 807
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 805
    const-string v1, "mPriorityCategories_Messages"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 809
    :cond_7b
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v1

    if-eq v0, v1, :cond_9f

    .line 810
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 811
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 812
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 810
    const-string v1, "mPriorityCategories_Calls"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 814
    :cond_9f
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v1

    if-eq v0, v1, :cond_c3

    .line 815
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 816
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 817
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 815
    const-string v1, "mPriorityCategories_RepeatCallers"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 819
    :cond_c3
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v1

    if-eq v0, v1, :cond_e7

    .line 820
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 821
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 822
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 820
    const-string v1, "mPriorityCategories_Alarms"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 824
    :cond_e7
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v1

    if-eq v0, v1, :cond_10b

    .line 825
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 826
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 827
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 825
    const-string v1, "mPriorityCategories_Media"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 829
    :cond_10b
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v1

    if-eq v0, v1, :cond_12f

    .line 830
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 831
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 832
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 830
    const-string v1, "mPriorityCategories_System"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 834
    :cond_12f
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v1

    if-eq v0, v1, :cond_153

    .line 835
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 836
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 837
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 835
    const-string v1, "mPriorityCategories_Conversations"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 839
    :cond_153
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v1

    if-eq v0, v1, :cond_177

    .line 840
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 841
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 842
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 840
    const-string v1, "mVisualEffects_FullScreenIntent"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 844
    :cond_177
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v1

    if-eq v0, v1, :cond_19b

    .line 845
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 846
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 845
    const-string v1, "mVisualEffects_Lights"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 848
    :cond_19b
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v1

    if-eq v0, v1, :cond_1bf

    .line 849
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 850
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 849
    const-string v1, "mVisualEffects_Peek"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 852
    :cond_1bf
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v1

    if-eq v0, v1, :cond_1e3

    .line 853
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 854
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 855
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 853
    const-string v1, "mVisualEffects_StatusBar"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 857
    :cond_1e3
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v1

    if-eq v0, v1, :cond_207

    .line 858
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 859
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 858
    const-string v1, "mVisualEffects_Badge"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 861
    :cond_207
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v1

    if-eq v0, v1, :cond_22b

    .line 862
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 863
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 862
    const-string v1, "mVisualEffects_Ambient"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 865
    :cond_22b
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v1

    if-eq v0, v1, :cond_24f

    .line 866
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 867
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 868
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 866
    const-string v1, "mVisualEffects_NotificationList"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 870
    :cond_24f
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v1

    if-eq v0, v1, :cond_273

    .line 871
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 872
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 871
    const-string v1, "mPriorityMessages"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 874
    :cond_273
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v1

    if-eq v0, v1, :cond_297

    .line 875
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 876
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 875
    const-string v1, "mPriorityCalls"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 878
    :cond_297
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v1

    if-eq v0, v1, :cond_2bb

    .line 879
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 880
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 881
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 879
    const-string v1, "mConversationSenders"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 883
    :cond_2bb
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v1

    if-eq v0, v1, :cond_2df

    .line 884
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 885
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 884
    const-string p1, "mAllowChannels"

    invoke-virtual {p0, p1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 887
    :cond_2df
    return-void
.end method


# virtual methods
.method public blacklist hasDiff()Z
    .registers 2

    .line 894
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->hasExistenceChange()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->hasFieldDiffs()Z

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

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZenPolicyDiff{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->hasDiff()Z

    move-result v1

    if-nez v1, :cond_13

    .line 902
    const-string/jumbo v1, "no changes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    :cond_13
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->hasExistenceChange()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 907
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->wasAdded()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 908
    const-string v1, "added"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 909
    :cond_25
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->wasRemoved()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 910
    const-string/jumbo v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    :cond_31
    :goto_31
    nop

    .line 916
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->fieldNamesWithDiff()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 917
    invoke-virtual {p0, v3}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->getDiffForField(Ljava/lang/String;)Landroid/service/notification/ZenModeDiff$FieldDiff;

    move-result-object v4

    .line 918
    if-nez v4, :cond_4e

    .line 920
    goto :goto_3b

    .line 922
    :cond_4e
    if-eqz v2, :cond_52

    .line 923
    const/4 v2, 0x0

    goto :goto_57

    .line 925
    :cond_52
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    :goto_57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 931
    goto :goto_3b

    .line 933
    :cond_63
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
