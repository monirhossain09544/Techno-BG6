.class public Landroid/service/notification/NotificationListenerService$Ranking;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ranking"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationListenerService$Ranking$RankingAdjustment;,
        Landroid/service/notification/NotificationListenerService$Ranking$UserSentiment;
    }
.end annotation


# static fields
.field private static final blacklist PARCEL_VERSION:I = 0x2

.field public static final blacklist RANKING_DEMOTED:I = -0x1

.field public static final blacklist RANKING_PROMOTED:I = 0x1

.field public static final blacklist RANKING_UNCHANGED:I = 0x0

.field public static final whitelist USER_SENTIMENT_NEGATIVE:I = -0x1

.field public static final whitelist USER_SENTIMENT_NEUTRAL:I = 0x0

.field public static final whitelist USER_SENTIMENT_POSITIVE:I = 0x1

.field public static final whitelist VISIBILITY_NO_OVERRIDE:I = -0x3e8


# instance fields
.field private blacklist mCanBubble:Z

.field private greylist-max-o mChannel:Landroid/app/NotificationChannel;

.field private greylist-max-o mHidden:Z

.field private greylist-max-o mImportance:I

.field private greylist-max-o mImportanceExplanation:Ljava/lang/CharSequence;

.field private greylist-max-o mIsAmbient:Z

.field private blacklist mIsBubble:Z

.field private blacklist mIsConversation:Z

.field private blacklist mIsTextChanged:Z

.field private greylist-max-o mKey:Ljava/lang/String;

.field private blacklist mLastAudiblyAlertedMs:J

.field private greylist-max-o mMatchesInterruptionFilter:Z

.field private blacklist mNoisy:Z

.field private greylist-max-o mOverrideGroupKey:Ljava/lang/String;

.field private greylist-max-o mOverridePeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProposedImportance:I

.field private greylist-max-o mRank:I

.field private blacklist mRankingAdjustment:I

.field private blacklist mRankingScore:F

.field private blacklist mSensitiveContent:Z

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private greylist-max-o mShowBadge:Z

.field private blacklist mSmartActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSmartReplies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSnoozeCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSummarization:Ljava/lang/String;

.field private greylist-max-o mSuppressedVisualEffects:I

.field private greylist-max-o mUserSentiment:I

.field private greylist-max-o mVisibilityOverride:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1855
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 1872
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    .line 1893
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 1934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1855
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 1872
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    .line 1935
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1937
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1938
    const/4 v2, 0x2

    if-ne v1, v2, :cond_d3

    .line 1942
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    .line 1943
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 1944
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    .line 1945
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    .line 1946
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    .line 1947
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    .line 1948
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    .line 1949
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    .line 1950
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingScore:F

    .line 1951
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    .line 1952
    const-class v1, Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    .line 1953
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    .line 1954
    sget-object v1, Landroid/service/notification/SnoozeCriterion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 1955
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    .line 1956
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    .line 1957
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    .line 1958
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    .line 1959
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    .line 1960
    sget-object v1, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    .line 1961
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    .line 1962
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    .line 1963
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    .line 1964
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    .line 1965
    const-class v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 1966
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    .line 1967
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    .line 1968
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    .line 1969
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    .line 1970
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    .line 1971
    return-void

    .line 1939
    :cond_d3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "malformed Ranking parcel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " version "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", expected "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o importanceToString(I)Ljava/lang/String;
    .registers 3

    .line 2357
    sparse-switch p0, :sswitch_data_34

    .line 2372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2370
    :sswitch_21
    const-string p0, "HIGH"

    return-object p0

    .line 2367
    :sswitch_24
    const-string p0, "DEFAULT"

    return-object p0

    .line 2365
    :sswitch_27
    const-string p0, "LOW"

    return-object p0

    .line 2363
    :sswitch_2a
    const-string p0, "MIN"

    return-object p0

    .line 2361
    :sswitch_2d
    const-string p0, "NONE"

    return-object p0

    .line 2359
    :sswitch_30
    const-string p0, "UNSPECIFIED"

    return-object p0

    nop

    :sswitch_data_34
    .sparse-switch
        -0x3e8 -> :sswitch_30
        0x0 -> :sswitch_2d
        0x1 -> :sswitch_2a
        0x2 -> :sswitch_27
        0x3 -> :sswitch_24
        0x4 -> :sswitch_21
        0x5 -> :sswitch_21
    .end sparse-switch
.end method


# virtual methods
.method public whitelist canBubble()Z
    .registers 2

    .line 2206
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    return v0
.end method

.method public whitelist canShowBadge()Z
    .registers 2

    .line 2175
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 2378
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2379
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1d8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_1d8

    .line 2381
    :cond_13
    check-cast p1, Landroid/service/notification/NotificationListenerService$Ranking;

    .line 2382
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 2383
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    .line 2384
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    .line 2385
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    .line 2386
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    .line 2387
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    .line 2388
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    .line 2389
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    .line 2390
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    .line 2391
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 2392
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    .line 2393
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    .line 2394
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    .line 2395
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget-wide v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    .line 2396
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    .line 2397
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    .line 2399
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    if-nez v2, :cond_10b

    move v2, v1

    goto :goto_111

    :cond_10b
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2400
    :goto_111
    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    if-nez v3, :cond_117

    move v3, v1

    goto :goto_11d

    :cond_117
    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_11d
    if-ne v2, v3, :cond_1d6

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    .line 2401
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    .line 2402
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    .line 2403
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    .line 2404
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    .line 2406
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez v2, :cond_168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_16e

    :cond_168
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 2407
    :goto_16e
    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez v3, :cond_177

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_17d

    :cond_177
    iget-object v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2406
    :goto_17d
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    .line 2408
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    .line 2409
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    .line 2410
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget-boolean v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    .line 2411
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    iget-object p1, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    .line 2412
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d6

    goto :goto_1d7

    :cond_1d6
    move v0, v1

    .line 2382
    :goto_1d7
    return v0

    .line 2379
    :cond_1d8
    :goto_1d8
    return v1
.end method

.method public greylist getAdditionalPeople()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2125
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getChannel()Landroid/app/NotificationChannel;
    .registers 2

    .line 2103
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public whitelist getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 2

    .line 2243
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public whitelist getImportance()I
    .registers 2

    .line 2038
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    return v0
.end method

.method public whitelist getImportanceExplanation()Ljava/lang/CharSequence;
    .registers 2

    .line 2048
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .registers 2

    .line 1978
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLastAudiblyAlertedMillis()J
    .registers 3

    .line 2195
    iget-wide v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    return-wide v0
.end method

.method public whitelist getLockscreenVisibilityOverride()I
    .registers 2

    .line 2008
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    return v0
.end method

.method public whitelist getOverrideGroupKey()Ljava/lang/String;
    .registers 2

    .line 2095
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProposedImportance()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2076
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    return v0
.end method

.method public whitelist getRank()I
    .registers 2

    .line 1988
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    return v0
.end method

.method public blacklist getRankingAdjustment()I
    .registers 2

    .line 2261
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    return v0
.end method

.method public blacklist getRankingScore()F
    .registers 2

    .line 2059
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingScore:F

    return v0
.end method

.method public whitelist getSmartActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 2145
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    :goto_b
    return-object v0
.end method

.method public whitelist getSmartReplies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 2166
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    :goto_b
    return-object v0
.end method

.method public greylist getSnoozeCriteria()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation

    .line 2137
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getSummarization()Ljava/lang/String;
    .registers 2

    .line 2253
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSuppressedVisualEffects()I
    .registers 2

    .line 2017
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    return v0
.end method

.method public whitelist getUserSentiment()I
    .registers 2

    .line 2114
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    return v0
.end method

.method public whitelist hasSensitiveContent()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2087
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    return v0
.end method

.method public whitelist isAmbient()Z
    .registers 2

    .line 1996
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    return v0
.end method

.method public blacklist isBubble()Z
    .registers 2

    .line 2233
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    return v0
.end method

.method public whitelist isConversation()Z
    .registers 2

    .line 2225
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    return v0
.end method

.method public blacklist isNoisy()Z
    .registers 2

    .line 2216
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    return v0
.end method

.method public whitelist isSuspended()Z
    .registers 2

    .line 2185
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    return v0
.end method

.method public blacklist isTextChanged()Z
    .registers 2

    .line 2211
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    return v0
.end method

.method public whitelist matchesInterruptionFilter()Z
    .registers 2

    .line 2028
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    return v0
.end method

.method public blacklist populate(Landroid/service/notification/NotificationListenerService$Ranking;)V
    .registers 34

    .line 2324
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    iget v2, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    iget-boolean v3, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    iget v4, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    iget v5, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    iget v6, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    iget-object v7, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    iget-object v8, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    iget-object v9, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    iget-object v10, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    iget-object v11, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    iget-boolean v12, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    iget v13, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    iget-boolean v14, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    move-object v15, v1

    move/from16 v16, v2

    iget-wide v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    move-wide/from16 v17, v1

    iget-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    iget-object v2, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    move/from16 v19, v1

    iget-object v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    move-object/from16 v20, v1

    iget-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    move/from16 v23, v1

    iget-object v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    move-object/from16 v24, v1

    iget v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    move/from16 v25, v1

    iget-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    move/from16 v26, v1

    iget v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    move/from16 v27, v1

    iget-boolean v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    iget-object v0, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v29, v27

    move/from16 v27, v1

    move-object v1, v15

    move-wide/from16 v30, v17

    move-object/from16 v18, v2

    move/from16 v2, v16

    move-wide/from16 v15, v30

    move/from16 v17, v19

    move-object/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move-object/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v29

    invoke-virtual/range {v0 .. v28}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZJZLjava/util/ArrayList;Ljava/util/ArrayList;ZZZLandroid/content/pm/ShortcutInfo;IZIZLjava/lang/String;)V

    .line 2351
    return-void
.end method

.method public blacklist populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZJZLjava/util/ArrayList;Ljava/util/ArrayList;ZZZLandroid/content/pm/ShortcutInfo;IZIZLjava/lang/String;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZIII",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;ZIZJZ",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;ZZZ",
            "Landroid/content/pm/ShortcutInfo;",
            "IZIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2279
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    .line 2280
    iput p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 2281
    const/4 p1, 0x2

    if-ge p6, p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    .line 2282
    iput-boolean p3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    .line 2283
    iput p4, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    .line 2284
    iput p5, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    .line 2285
    iput p6, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    .line 2286
    iput-object p7, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    .line 2287
    iput-object p8, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    .line 2288
    iput-object p9, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    .line 2289
    iput-object p10, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    .line 2290
    iput-object p11, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 2291
    iput-boolean p12, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    .line 2292
    iput p13, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    .line 2293
    iput-boolean p14, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    .line 2294
    move-wide p1, p15

    iput-wide p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    .line 2295
    move/from16 p1, p17

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    .line 2296
    move-object/from16 p1, p18

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    .line 2297
    move-object/from16 p1, p19

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    .line 2298
    move/from16 p1, p20

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    .line 2299
    move/from16 p1, p21

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    .line 2300
    move/from16 p1, p22

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    .line 2301
    move-object/from16 p1, p23

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 2302
    move/from16 p1, p24

    iput p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    .line 2303
    move/from16 p1, p25

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    .line 2304
    move/from16 p1, p26

    iput p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    .line 2305
    move/from16 p1, p27

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    .line 2306
    invoke-static/range {p28 .. p28}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    .line 2307
    return-void
.end method

.method public blacklist setSmartActions(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;)V"
        }
    .end annotation

    .line 2159
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    .line 2160
    return-void
.end method

.method public blacklist withAudiblyAlertedInfo(Landroid/service/notification/NotificationListenerService$Ranking;)Landroid/service/notification/NotificationListenerService$Ranking;
    .registers 6

    .line 2313
    if-eqz p1, :cond_14

    iget-wide v0, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    iget-wide v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_14

    .line 2315
    iget-wide v0, p1, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    iput-wide v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    .line 2317
    :cond_14
    return-object p0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1899
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1900
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1901
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1902
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1903
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1904
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1905
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1906
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1907
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1908
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 1909
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1910
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1911
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1912
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1913
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1914
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1915
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1916
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1917
    iget-wide v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mLastAudiblyAlertedMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1918
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mNoisy:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1919
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartActions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1920
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSmartReplies:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceList(Ljava/util/ArrayList;)V

    .line 1921
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mCanBubble:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1922
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsTextChanged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1923
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsConversation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1924
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1925
    iget p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRankingAdjustment:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1926
    iget-boolean p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsBubble:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1927
    iget p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mProposedImportance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1928
    iget-boolean p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSensitiveContent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1929
    iget-object p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSummarization:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1930
    return-void
.end method
