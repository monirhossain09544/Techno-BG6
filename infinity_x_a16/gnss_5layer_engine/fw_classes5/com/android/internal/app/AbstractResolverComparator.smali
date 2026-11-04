.class public abstract Lcom/android/internal/app/AbstractResolverComparator;
.super Ljava/lang/Object;
.source "AbstractResolverComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AbstractResolverComparator$AzInfoComparator;,
        Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist NUM_OF_TOP_ANNOTATIONS_TO_USE:I = 0x3

.field static final blacklist RANKER_RESULT_TIMEOUT:I = 0x1

.field static final blacklist RANKER_SERVICE_RESULT:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "AbstractResolverComp"

.field private static final blacklist WATCHDOG_TIMEOUT_MILLIS:I = 0x1f4


# instance fields
.field protected blacklist mAfterCompute:Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;

.field protected blacklist mAnnotations:[Ljava/lang/String;

.field private final blacklist mAzComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

.field protected blacklist mContentType:Ljava/lang/String;

.field protected final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHttp:Z

.field protected final blacklist mPmMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Landroid/content/pm/PackageManager;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mUsmMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Landroid/app/usage/UsageStatsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChooserActivityLogger(Lcom/android/internal/app/AbstractResolverComparator;)Lcom/android/internal/app/ChooserActivityLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 6

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/UserHandle;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AbstractResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    .line 111
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mPmMap:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mUsmMap:Ljava/util/Map;

    .line 75
    new-instance v0, Lcom/android/internal/app/AbstractResolverComparator$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/AbstractResolverComparator$1;-><init>(Lcom/android/internal/app/AbstractResolverComparator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_34

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_34

    :cond_32
    move v0, v2

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v0, 0x1

    :goto_35
    iput-boolean v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mHttp:Z

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mContentType:Ljava/lang/String;

    .line 120
    invoke-direct {p0, p2}, Lcom/android/internal/app/AbstractResolverComparator;->getContentAnnotations(Landroid/content/Intent;)V

    .line 121
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_44
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserHandle;

    .line 122
    invoke-virtual {p1, p3, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/android/internal/app/AbstractResolverComparator;->mPmMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-interface {v1, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lcom/android/internal/app/AbstractResolverComparator;->mUsmMap:Ljava/util/Map;

    .line 125
    const-string v3, "usagestats"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 124
    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    goto :goto_44

    .line 127
    :cond_6b
    new-instance p2, Lcom/android/internal/app/AbstractResolverComparator$AzInfoComparator;

    invoke-direct {p2, p0, p1}, Lcom/android/internal/app/AbstractResolverComparator$AzInfoComparator;-><init>(Lcom/android/internal/app/AbstractResolverComparator;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/internal/app/AbstractResolverComparator;->mAzComparator:Ljava/util/Comparator;

    .line 128
    return-void
.end method

.method private blacklist getContentAnnotations(Landroid/content/Intent;)V
    .registers 7

    .line 133
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.intent.extra.CONTENT_ANNOTATIONS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 135
    if-eqz p1, :cond_25

    .line 136
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 137
    const/4 v2, 0x3

    if-le v1, v2, :cond_11

    .line 138
    move v1, v2

    .line 140
    :cond_11
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/app/AbstractResolverComparator;->mAnnotations:[Ljava/lang/String;

    .line 141
    move v2, v0

    :goto_16
    if-ge v2, v1, :cond_25

    .line 142
    iget-object v3, p0, Lcom/android/internal/app/AbstractResolverComparator;->mAnnotations:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v2
    :try_end_22
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_22} :catch_26

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 148
    :cond_25
    goto :goto_32

    .line 145
    :catch_26
    move-exception p1

    .line 146
    const-string p1, "AbstractResolverComp"

    const-string v1, "Couldn\'t unparcel intent annotations. Ignoring."

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-array p1, v0, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator;->mAnnotations:[Ljava/lang/String;

    .line 149
    :goto_32
    return-void
.end method


# virtual methods
.method protected final blacklist afterCompute()V
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mAfterCompute:Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;

    .line 173
    if-eqz v0, :cond_7

    .line 174
    invoke-interface {v0}, Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;->afterCompute()V

    .line 176
    :cond_7
    return-void
.end method

.method blacklist beforeCompute()V
    .registers 5

    .line 278
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_c

    .line 279
    const-string v0, "AbstractResolverComp"

    const-string v1, "Error: Handler is Null; Needs to be initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 282
    :cond_c
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 283
    return-void
.end method

.method abstract blacklist compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
.end method

.method public final blacklist compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .registers 10

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 181
    invoke-virtual {p2, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 183
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isFixedAtTop()Z

    move-result v3

    .line 184
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isFixedAtTop()Z

    move-result v4

    .line 185
    const/4 v5, -0x1

    if-eqz v3, :cond_17

    if-nez v4, :cond_17

    return v5

    .line 186
    :cond_17
    const/4 v6, 0x1

    if-nez v3, :cond_1d

    if-eqz v4, :cond_1d

    return v6

    .line 189
    :cond_1d
    iget v3, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_29

    .line 190
    iget p1, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    if-eq p1, v4, :cond_27

    goto :goto_28

    :cond_27
    move v0, v6

    :goto_28
    return v0

    .line 192
    :cond_29
    iget v3, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    if-eq v3, v4, :cond_2e

    .line 193
    return v5

    .line 196
    :cond_2e
    iget-boolean v3, p0, Lcom/android/internal/app/AbstractResolverComparator;->mHttp:Z

    if-eqz v3, :cond_45

    .line 197
    iget v3, v1, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v3

    .line 198
    iget v4, v2, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v4

    .line 199
    if-eq v3, v4, :cond_45

    .line 200
    if-eqz v3, :cond_43

    goto :goto_44

    :cond_43
    move v5, v6

    :goto_44
    return v5

    .line 204
    :cond_45
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v3

    .line 205
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v4

    .line 208
    if-eqz v3, :cond_52

    if-nez v4, :cond_52

    .line 209
    return v5

    .line 210
    :cond_52
    if-nez v3, :cond_57

    if-eqz v4, :cond_57

    .line 211
    return v6

    .line 212
    :cond_57
    if-eqz v3, :cond_6a

    if-eqz v4, :cond_6a

    .line 214
    iget-object v1, p0, Lcom/android/internal/app/AbstractResolverComparator;->mAzComparator:Ljava/util/Comparator;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 217
    :cond_6a
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/AbstractResolverComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 49
    check-cast p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    check-cast p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/AbstractResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result p1

    return p1
.end method

.method final blacklist compute(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractResolverComparator;->beforeCompute()V

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->doCompute(Ljava/util/List;)V

    .line 239
    return-void
.end method

.method blacklist destroy()V
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/app/AbstractResolverComparator;->afterCompute()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mAfterCompute:Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;

    .line 295
    return-void
.end method

.method abstract blacklist doCompute(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method blacklist getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    return-object v0
.end method

.method abstract blacklist getScore(Lcom/android/internal/app/chooser/TargetInfo;)F
.end method

.method abstract blacklist handleResultMessage(Landroid/os/Message;)V
.end method

.method blacklist setCallBack(Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator;->mAfterCompute:Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;

    .line 161
    return-void
.end method

.method blacklist setChooserActivityLogger(Lcom/android/internal/app/ChooserActivityLogger;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator;->mChooserActivityLogger:Lcom/android/internal/app/ChooserActivityLogger;

    .line 165
    return-void
.end method

.method final blacklist updateChooserCounts(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 11

    .line 257
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mUsmMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 258
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator;->mUsmMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    .line 259
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/AbstractResolverComparator;->mContentType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/app/AbstractResolverComparator;->mAnnotations:[Ljava/lang/String;

    move-object v2, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStatsManager;->reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_1e
    return-void
.end method

.method blacklist updateModel(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 2

    .line 273
    return-void
.end method
