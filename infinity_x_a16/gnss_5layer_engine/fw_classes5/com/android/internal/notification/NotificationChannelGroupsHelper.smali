.class public Lcom/android/internal/notification/NotificationChannelGroupsHelper;
.super Ljava/lang/Object;
.source "NotificationChannelGroupsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getGroupWithChannels(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Z)Landroid/app/NotificationChannelGroup;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroid/app/NotificationChannel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannelGroup;",
            ">;Z)",
            "Landroid/app/NotificationChannelGroup;"
        }
    .end annotation

    .line 122
    nop

    .line 123
    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 124
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationChannelGroup;

    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object p2

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 126
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    .line 127
    if-nez p3, :cond_31

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 128
    :cond_31
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 129
    invoke-virtual {p2, v0}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 132
    :cond_3e
    goto :goto_1d

    .line 123
    :cond_3f
    const/4 p2, 0x0

    .line 134
    :cond_40
    return-object p2
.end method

.method public static blacklist getGroupsWithChannels(Ljava/util/Collection;Ljava/util/Map;Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/app/NotificationChannel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannelGroup;",
            ">;",
            "Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 149
    new-instance v1, Landroid/app/NotificationChannelGroup;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 150
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 151
    invoke-static {p2}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->-$$Nest$fgetincludeDeleted(Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_5a

    :cond_27
    invoke-static {p2}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->-$$Nest$fgetchannelFilter(Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_47

    invoke-static {p2}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->-$$Nest$fgetincludeAllBlockedWithFilter(Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 154
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-eqz v4, :cond_47

    :cond_39
    invoke-static {p2}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->-$$Nest$fgetchannelFilter(Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Ljava/util/Set;

    move-result-object v4

    .line 155
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 156
    :cond_47
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->notificationClassification()Z

    move-result v4

    if-eqz v4, :cond_5c

    sget-object v4, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    goto :goto_5c

    :cond_5a
    const/4 v4, 0x0

    goto :goto_5d

    :cond_5c
    :goto_5c
    const/4 v4, 0x1

    .line 158
    :goto_5d
    if-eqz v4, :cond_9f

    .line 159
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9c

    .line 160
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9f

    .line 161
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannelGroup;

    .line 162
    if-nez v4, :cond_98

    .line 163
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v4}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v4

    .line 164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 165
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_98
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 168
    goto :goto_9f

    .line 170
    :cond_9c
    invoke-virtual {v1, v3}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 173
    :cond_9f
    :goto_9f
    goto/16 :goto_f

    .line 174
    :cond_a1
    invoke-static {p2}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->-$$Nest$fgetincludeNonGrouped(Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Z

    move-result p0

    if-eqz p0, :cond_b4

    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_b4

    .line 175
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_b4
    invoke-static {p2}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->-$$Nest$fgetincludeEmpty(Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Z

    move-result p0

    if-eqz p0, :cond_e0

    .line 178
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_e0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannelGroup;

    .line 179
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_df

    .line 180
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_df
    goto :goto_c2

    .line 184
    :cond_e0
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method
