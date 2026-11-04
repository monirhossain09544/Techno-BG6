.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final greylist-max-o SELECT_VALUE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final blacklist mAllFields:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallDeleteCommand:Ljava/lang/String;

.field private final greylist-max-o mCallGetCommand:Ljava/lang/String;

.field private final blacklist mCallListCommand:Ljava/lang/String;

.field private final blacklist mCallSetAllCommand:Ljava/lang/String;

.field private final greylist-max-o mCallSetCommand:Ljava/lang/String;

.field private final blacklist mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/provider/Settings$GenerationTracker$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGenerationTrackers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/provider/Settings$GenerationTracker$Key;",
            "Landroid/provider/Settings$GenerationTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPrefixToValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

.field private final blacklist mReadableFields:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUri:Landroid/net/Uri;

.field private final blacklist mValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/provider/Settings$GenerationTracker$Key;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$wb_V0X9Wt6aU2LZtNv8KpjFtc0I(Landroid/provider/Settings$NameValueCache;Landroid/provider/Settings$GenerationTracker$Key;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/provider/Settings$NameValueCache;->lambda$new$0(Landroid/provider/Settings$GenerationTracker$Key;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStringsForPrefixStripPrefix(Landroid/provider/Settings$NameValueCache;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/provider/Settings$NameValueCache;->getStringsForPrefixStripPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3582
    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/provider/Settings$NameValueTable;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$ContentProviderHolder;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 3637
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    .line 3639
    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/provider/Settings$NameValueTable;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$ContentProviderHolder;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 3643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3591
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    .line 3597
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    .line 3618
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    .line 3622
    new-instance v0, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;-><init>(Landroid/provider/Settings$NameValueCache;)V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;

    .line 3644
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 3645
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3646
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 3647
    iput-object p4, p0, Landroid/provider/Settings$NameValueCache;->mCallDeleteCommand:Ljava/lang/String;

    .line 3648
    iput-object p5, p0, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    .line 3649
    iput-object p6, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    .line 3650
    iput-object p7, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 3651
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    .line 3652
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    .line 3653
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 3654
    iget-object p1, p0, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    iget-object p2, p0, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    iget-object p3, p0, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-static {p8, p1, p2, p3}, Landroid/provider/Settings;->-$$Nest$smgetPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 3656
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;Landroid/provider/Settings-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    return-void
.end method

.method private blacklist getStringsForPrefixStripPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3982
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    new-instance v3, Landroid/provider/Settings$GenerationTracker$Key;

    const/4 v2, 0x0

    invoke-direct {v3, v0, v2}, Landroid/provider/Settings$GenerationTracker$Key;-><init>(Ljava/lang/String;I)V

    .line 3984
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3985
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 3986
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    .line 3987
    nop

    .line 3988
    nop

    .line 3989
    monitor-enter p0

    .line 3990
    :try_start_20
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Settings$GenerationTracker;

    .line 3991
    const/4 v6, -0x1

    if-eqz v5, :cond_82

    .line 3992
    invoke-virtual {v5}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v7

    if-eqz v7, :cond_40

    .line 4000
    invoke-virtual {v5}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 4001
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4002
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4003
    move v7, v8

    goto :goto_7d

    .line 4005
    :cond_40
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 4006
    if-eqz v7, :cond_7c

    .line 4007
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    .line 4008
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4010
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 4011
    nop

    .line 4013
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4011
    invoke-virtual {v9, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4015
    :cond_70
    goto :goto_54

    :cond_71
    goto :goto_7a

    .line 4017
    :cond_72
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 4019
    const-string v0, ""

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4021
    :goto_7a
    monitor-exit p0

    return-object v9

    .line 4006
    :cond_7c
    move v7, v2

    .line 4024
    :goto_7d
    invoke-virtual {v5}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v5

    goto :goto_84

    .line 4026
    :cond_82
    move v5, v6

    move v7, v8

    .line 4028
    :goto_84
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_20 .. :try_end_85} :catchall_216

    .line 4029
    iget-object v11, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    if-nez v11, :cond_8a

    .line 4031
    return-object v9

    .line 4036
    :cond_8a
    iget-object v11, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v12, p1

    invoke-virtual {v11, v12}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v11

    .line 4037
    if-nez v11, :cond_b3

    .line 4038
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get strings for prefix "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " because cp is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4039
    return-object v9

    .line 4043
    :cond_b3
    :try_start_b3
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 4044
    const-string v14, "_prefix"

    invoke-virtual {v13, v14, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4045
    const/4 v14, 0x0

    if-eqz v7, :cond_c5

    .line 4046
    const-string v15, "_track_generation"

    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4057
    :cond_c5
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v15

    if-eqz v15, :cond_101

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    move/from16 v18, v8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    if-eq v15, v8, :cond_103

    .line 4058
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_db} :catch_214

    .line 4061
    move-object/from16 v17, v13

    :try_start_dd
    invoke-virtual {v12}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v13

    iget-object v8, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v8}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v8

    .line 4062
    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    iget-object v15, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    .line 4061
    const/16 v16, 0x0

    move-object v12, v14

    move-object v14, v8

    move-object v8, v12

    move-object v12, v11

    invoke-interface/range {v12 .. v17}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11
    :try_end_f7
    .catchall {:try_start_dd .. :try_end_f7} :catchall_fc

    .line 4064
    :try_start_f7
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4065
    nop

    .line 4066
    goto :goto_11d

    .line 4064
    :catchall_fc
    move-exception v0

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4065
    throw v0

    .line 4057
    :cond_101
    move/from16 v18, v8

    :cond_103
    move-object v12, v11

    move-object/from16 v17, v13

    move-object v8, v14

    .line 4068
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v13

    iget-object v11, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v11}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v11

    .line 4069
    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    .line 4068
    const/16 v16, 0x0

    invoke-interface/range {v12 .. v17}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    .line 4071
    :goto_11d
    if-nez v11, :cond_120

    .line 4073
    return-object v9

    .line 4077
    :cond_120
    const-string/jumbo v12, "value"

    const-class v13, Ljava/util/HashMap;

    .line 4078
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 4079
    if-nez v12, :cond_12e

    .line 4080
    return-object v9

    .line 4083
    :cond_12e
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_15a

    .line 4084
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_138
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_159

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 4086
    invoke-static {v4, v14}, Landroid/provider/Settings$Config;->createCompositeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4087
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_158

    .line 4088
    nop

    .line 4090
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4088
    invoke-virtual {v9, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4092
    :cond_158
    goto :goto_138

    :cond_159
    goto :goto_183

    .line 4094
    :cond_15a
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_162
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_183

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 4095
    nop

    .line 4096
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 4097
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 4095
    invoke-virtual {v9, v14, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4098
    goto :goto_162

    .line 4101
    :cond_183
    :goto_183
    monitor-enter p0
    :try_end_184
    .catch Landroid/os/RemoteException; {:try_start_f7 .. :try_end_184} :catch_214

    .line 4102
    if-eqz v7, :cond_1c1

    .line 4103
    :try_start_186
    const-string v4, "_track_generation"

    const-class v7, Landroid/util/MemoryIntArray;

    invoke-virtual {v11, v4, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/MemoryIntArray;

    .line 4105
    const-string v7, "_generation_index"

    invoke-virtual {v11, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 4107
    if-eqz v4, :cond_1be

    if-ltz v6, :cond_1be

    .line 4108
    const-string v5, "_generation"

    invoke-virtual {v11, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4118
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Settings$GenerationTracker;

    .line 4119
    if-eqz v5, :cond_1ad

    .line 4120
    invoke-virtual {v5}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 4122
    :cond_1ad
    iget-object v11, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    move v5, v6

    move v6, v2

    new-instance v2, Landroid/provider/Settings$GenerationTracker;

    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;

    invoke-direct/range {v2 .. v7}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/provider/Settings$GenerationTracker$Key;Landroid/util/MemoryIntArray;IILjava/util/function/Consumer;)V

    invoke-virtual {v11, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4125
    nop

    .line 4126
    move v5, v6

    goto :goto_1c1

    .line 4127
    :cond_1be
    invoke-static {v4}, Landroid/provider/Settings;->-$$Nest$smmaybeCloseGenerationArray(Landroid/util/MemoryIntArray;)V

    .line 4130
    :cond_1c1
    :goto_1c1
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Settings$GenerationTracker;

    .line 4131
    if-eqz v2, :cond_20f

    invoke-virtual {v2}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v2

    if-ne v5, v2, :cond_20f

    .line 4137
    new-instance v2, Landroid/util/ArrayMap;

    .line 4138
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 4139
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_205

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4140
    nop

    .line 4141
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4142
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4140
    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4143
    goto :goto_1e4

    .line 4145
    :cond_205
    const-string v3, ""

    invoke-virtual {v2, v3, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4146
    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4148
    :cond_20f
    monitor-exit p0

    .line 4149
    return-object v9

    .line 4148
    :catchall_211
    move-exception v0

    monitor-exit p0
    :try_end_213
    .catchall {:try_start_186 .. :try_end_213} :catchall_211

    :try_start_213
    throw v0
    :try_end_214
    .catch Landroid/os/RemoteException; {:try_start_213 .. :try_end_214} :catch_214

    .line 4150
    :catch_214
    move-exception v0

    .line 4152
    return-object v9

    .line 4028
    :catchall_216
    move-exception v0

    :try_start_217
    monitor-exit p0
    :try_end_218
    .catchall {:try_start_217 .. :try_end_218} :catchall_216

    throw v0
.end method

.method private static blacklist isCallerExemptFromReadableRestriction()Z
    .registers 4

    .line 3963
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 3964
    return v1

    .line 3966
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_15

    .line 3967
    return v1

    .line 3969
    :cond_15
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3970
    const/4 v2, 0x0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_23

    goto :goto_49

    .line 3973
    :cond_23
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3974
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_2f

    move v3, v1

    goto :goto_30

    :cond_2f
    move v3, v2

    .line 3976
    :goto_30
    if-nez v3, :cond_47

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_47

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v3

    if-nez v3, :cond_47

    .line 3977
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_47

    :cond_45
    move v1, v2

    goto :goto_48

    :cond_47
    :goto_47
    nop

    .line 3976
    :goto_48
    return v1

    .line 3971
    :cond_49
    :goto_49
    return v2
.end method

.method private synthetic blacklist lambda$new$0(Landroid/provider/Settings$GenerationTracker$Key;)V
    .registers 4

    .line 3623
    monitor-enter p0

    .line 3624
    :try_start_1
    const-string v0, "Settings"

    const-string v1, "Error accessing generation tracker - removing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3625
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 3626
    if-eqz v0, :cond_1a

    .line 3627
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3628
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3630
    :cond_1a
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3631
    monitor-exit p0

    .line 3632
    return-void

    .line 3631
    :catchall_21
    move-exception p1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw p1
.end method


# virtual methods
.method public greylist-max-o clearGenerationTrackerForTest()V
    .registers 3

    .line 4157
    monitor-enter p0

    .line 4158
    const/4 v0, 0x0

    :goto_2
    :try_start_2
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 4159
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v1}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 4158
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4161
    :cond_18
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4162
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4163
    monitor-exit p0

    .line 4164
    return-void

    .line 4163
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public blacklist deleteStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .registers 14

    .line 3715
    const-string v1, "Can\'t delete key "

    const-string v2, "Settings"

    const/4 v3, 0x0

    :try_start_5
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 3716
    const-string v0, "_user"

    invoke-virtual {v9, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3717
    iget-object p3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {p3, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v4
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_4f

    .line 3718
    if-nez v4, :cond_36

    .line 3719
    :try_start_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " because cp is null"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_31} :catch_32

    .line 3720
    return v3

    .line 3724
    :catch_32
    move-exception v0

    move-object p1, v0

    move-object v8, p2

    goto :goto_52

    .line 3722
    :cond_36
    :try_start_36
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v5

    iget-object p1, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {p1}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object p1

    .line 3723
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/provider/Settings$NameValueCache;->mCallDeleteCommand:Ljava/lang/String;
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_46} :catch_4f

    .line 3722
    move-object v8, p2

    :try_start_47
    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4a} :catch_4d

    .line 3727
    nop

    .line 3728
    const/4 p1, 0x1

    return p1

    .line 3724
    :catch_4d
    move-exception v0

    goto :goto_51

    :catch_4f
    move-exception v0

    move-object v8, p2

    :goto_51
    move-object p1, v0

    .line 3725
    :goto_52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3726
    return v3
.end method

.method public greylist getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 23

    .line 3734
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move/from16 v0, p3

    invoke-virtual {v2}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils;->shouldHideDevStatus(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3735
    const-string v0, "0"

    return-object v0

    .line 3737
    :cond_15
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x1

    const/4 v9, 0x0

    if-ne v0, v3, :cond_1f

    move v10, v4

    goto :goto_20

    :cond_1f
    move v10, v9

    .line 3738
    :goto_20
    invoke-virtual {v2}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    .line 3740
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->deviceAwareSettingsOverride()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 3741
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v5

    if-eqz v5, :cond_37

    if-eqz v3, :cond_37

    .line 3743
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v3

    goto :goto_38

    :cond_37
    move v3, v9

    .line 3744
    :goto_38
    new-instance v12, Landroid/provider/Settings$GenerationTracker$Key;

    invoke-direct {v12, v7, v3}, Landroid/provider/Settings$GenerationTracker$Key;-><init>(Ljava/lang/String;I)V

    .line 3745
    if-eqz v10, :cond_47

    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v3

    if-nez v3, :cond_47

    move v3, v4

    goto :goto_48

    :cond_47
    move v3, v9

    .line 3746
    :goto_48
    nop

    .line 3747
    if-eqz v3, :cond_82

    .line 3748
    monitor-enter p0

    .line 3749
    :try_start_4c
    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Settings$GenerationTracker;

    .line 3750
    if-eqz v3, :cond_7c

    .line 3751
    invoke-virtual {v3}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 3760
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3761
    invoke-virtual {v3}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3762
    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    .line 3763
    :cond_6a
    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 3767
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 3770
    :cond_7c
    :goto_7c
    monitor-exit p0

    .line 3775
    move v11, v4

    goto :goto_83

    .line 3770
    :catchall_7f
    move-exception v0

    monitor-exit p0
    :try_end_81
    .catchall {:try_start_4c .. :try_end_81} :catchall_7f

    throw v0

    .line 3747
    :cond_82
    move v11, v9

    .line 3788
    :goto_83
    invoke-static {}, Landroid/provider/Settings$NameValueCache;->isCallerExemptFromReadableRestriction()Z

    move-result v3

    if-nez v3, :cond_108

    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 3789
    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e9

    .line 3798
    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 3799
    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3800
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v5

    .line 3801
    if-eqz v5, :cond_c2

    .line 3802
    invoke-virtual {v5}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_c2

    .line 3803
    invoke-virtual {v5}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-gt v5, v3, :cond_c2

    goto :goto_c3

    :cond_c2
    move v4, v9

    .line 3805
    :goto_c3
    if-eqz v4, :cond_c6

    goto :goto_108

    .line 3806
    :cond_c6
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings key: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> is only readable to apps with targetSdkVersion lower than or equal to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3790
    :cond_e9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings key: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> is not readable. From S+, settings keys annotated with @hide are restricted to system_server and system apps only, unless they are annotated with @Readable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3816
    :cond_108
    :goto_108
    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v3, v2}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v13

    .line 3817
    const/4 v14, 0x0

    if-nez v13, :cond_130

    .line 3818
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because cp is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    return-object v14

    .line 3826
    :cond_130
    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    if-eqz v3, :cond_214

    .line 3828
    :try_start_134
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 3829
    if-nez v10, :cond_140

    .line 3830
    const-string v3, "_user"

    invoke-virtual {v8, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3832
    :cond_140
    if-eqz v11, :cond_147

    .line 3833
    const-string v0, "_track_generation"

    invoke-virtual {v8, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3848
    :cond_147
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0
    :try_end_14b
    .catch Landroid/os/RemoteException; {:try_start_134 .. :try_end_14b} :catch_210

    if-eqz v0, :cond_180

    :try_start_14d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq v0, v3, :cond_180

    .line 3849
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15
    :try_end_15b
    .catch Landroid/os/RemoteException; {:try_start_14d .. :try_end_15b} :catch_20c

    .line 3851
    :try_start_15b
    invoke-virtual {v2}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3852
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;
    :try_end_16b
    .catchall {:try_start_15b .. :try_end_16b} :catchall_17b

    .line 3851
    move-object v3, v13

    :try_start_16c
    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_170
    .catchall {:try_start_16c .. :try_end_170} :catchall_178

    .line 3855
    :try_start_170
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3856
    nop

    .line 3857
    move-object/from16 v7, p2

    move-object v3, v13

    goto :goto_197

    .line 3855
    :catchall_178
    move-exception v0

    move-object v13, v3

    goto :goto_17c

    :catchall_17b
    move-exception v0

    :goto_17c
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3856
    throw v0

    .line 3858
    :cond_180
    invoke-virtual {v2}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3859
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;
    :try_end_190
    .catch Landroid/os/RemoteException; {:try_start_170 .. :try_end_190} :catch_20c

    .line 3858
    move-object/from16 v7, p2

    move-object v3, v13

    :try_start_193
    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 3861
    :goto_197
    if-eqz v0, :cond_208

    .line 3862
    const-string/jumbo v4, "value"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3864
    if-eqz v10, :cond_207

    .line 3865
    monitor-enter p0
    :try_end_1a3
    .catch Landroid/os/RemoteException; {:try_start_193 .. :try_end_1a3} :catch_20a

    .line 3866
    if-eqz v11, :cond_1ea

    .line 3867
    :try_start_1a5
    const-string v5, "_track_generation"

    const-class v6, Landroid/util/MemoryIntArray;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/util/MemoryIntArray;

    .line 3869
    const-string v5, "_generation_index"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3871
    if-eqz v13, :cond_1e2

    if-ltz v5, :cond_1e2

    .line 3872
    const-string v6, "_generation"

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 3884
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 3885
    if-eqz v0, :cond_1ce

    .line 3886
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3888
    :cond_1ce
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    new-instance v11, Landroid/provider/Settings$GenerationTracker;

    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;
    :try_end_1d4
    .catchall {:try_start_1a5 .. :try_end_1d4} :catchall_1e7

    move-object/from16 v16, v14

    move v14, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v6

    :try_start_1db
    invoke-direct/range {v11 .. v16}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/provider/Settings$GenerationTracker$Key;Landroid/util/MemoryIntArray;IILjava/util/function/Consumer;)V

    invoke-virtual {v0, v12, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3891
    goto :goto_1eb

    .line 3871
    :cond_1e2
    move-object v5, v14

    .line 3892
    invoke-static {v13}, Landroid/provider/Settings;->-$$Nest$smmaybeCloseGenerationArray(Landroid/util/MemoryIntArray;)V

    goto :goto_1eb

    .line 3902
    :catchall_1e7
    move-exception v0

    move-object v5, v14

    goto :goto_203

    .line 3866
    :cond_1ea
    move-object v5, v14

    .line 3895
    :goto_1eb
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 3896
    if-eqz v0, :cond_200

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-nez v0, :cond_200

    .line 3900
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3902
    :cond_200
    monitor-exit p0

    goto :goto_207

    :catchall_202
    move-exception v0

    :goto_203
    monitor-exit p0
    :try_end_204
    .catchall {:try_start_1db .. :try_end_204} :catchall_202

    :try_start_204
    throw v0
    :try_end_205
    .catch Landroid/os/RemoteException; {:try_start_204 .. :try_end_205} :catch_205

    .line 3915
    :catch_205
    move-exception v0

    goto :goto_216

    .line 3911
    :cond_207
    :goto_207
    return-object v4

    .line 3918
    :cond_208
    move-object v5, v14

    goto :goto_216

    .line 3915
    :catch_20a
    move-exception v0

    goto :goto_212

    :catch_20c
    move-exception v0

    move-object/from16 v7, p2

    goto :goto_211

    :catch_210
    move-exception v0

    :goto_211
    move-object v3, v13

    :goto_212
    move-object v5, v14

    goto :goto_216

    .line 3826
    :cond_214
    move-object v3, v13

    move-object v5, v14

    .line 3921
    :goto_216
    nop

    .line 3923
    :try_start_217
    const-string v0, "name=?"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v17

    .line 3926
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_24e

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v0, v4, :cond_24e

    .line 3927
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10
    :try_end_235
    .catch Landroid/os/RemoteException; {:try_start_217 .. :try_end_235} :catch_2bd
    .catchall {:try_start_217 .. :try_end_235} :catchall_2ba

    .line 3929
    :try_start_235
    invoke-virtual {v2}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v14

    iget-object v15, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v16, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/16 v18, 0x0

    move-object v13, v3

    invoke-interface/range {v13 .. v18}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_244
    .catchall {:try_start_235 .. :try_end_244} :catchall_249

    .line 3932
    :try_start_244
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_247
    .catch Landroid/os/RemoteException; {:try_start_244 .. :try_end_247} :catch_2b8
    .catchall {:try_start_244 .. :try_end_247} :catchall_2ea

    .line 3933
    nop

    .line 3934
    goto :goto_25e

    .line 3932
    :catchall_249
    move-exception v0

    :try_start_24a
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3933
    throw v0

    .line 3926
    :cond_24e
    move-object v13, v3

    .line 3935
    invoke-virtual {v2}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v14

    iget-object v15, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v16, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/16 v18, 0x0

    invoke-interface/range {v13 .. v18}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_25d
    .catch Landroid/os/RemoteException; {:try_start_24a .. :try_end_25d} :catch_2bd
    .catchall {:try_start_24a .. :try_end_25d} :catchall_2ba

    move-object v14, v0

    .line 3938
    :goto_25e
    if-nez v14, :cond_28b

    .line 3939
    :try_start_260
    const-string v0, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_284
    .catch Landroid/os/RemoteException; {:try_start_260 .. :try_end_284} :catch_2b8
    .catchall {:try_start_260 .. :try_end_284} :catchall_2ea

    .line 3940
    nop

    .line 3958
    if-eqz v14, :cond_28a

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3940
    :cond_28a
    return-object v5

    .line 3943
    :cond_28b
    :try_start_28b
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_296

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_297

    :cond_296
    move-object v0, v5

    .line 3944
    :goto_297
    monitor-enter p0
    :try_end_298
    .catch Landroid/os/RemoteException; {:try_start_28b .. :try_end_298} :catch_2b8
    .catchall {:try_start_28b .. :try_end_298} :catchall_2ea

    .line 3945
    :try_start_298
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Settings$GenerationTracker;

    .line 3946
    if-eqz v2, :cond_2ad

    invoke-virtual {v2}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v2

    if-nez v2, :cond_2ad

    .line 3950
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3952
    :cond_2ad
    monitor-exit p0
    :try_end_2ae
    .catchall {:try_start_298 .. :try_end_2ae} :catchall_2b5

    .line 3953
    nop

    .line 3958
    if-eqz v14, :cond_2b4

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3953
    :cond_2b4
    return-object v0

    .line 3952
    :catchall_2b5
    move-exception v0

    :try_start_2b6
    monitor-exit p0
    :try_end_2b7
    .catchall {:try_start_2b6 .. :try_end_2b7} :catchall_2b5

    :try_start_2b7
    throw v0
    :try_end_2b8
    .catch Landroid/os/RemoteException; {:try_start_2b7 .. :try_end_2b8} :catch_2b8
    .catchall {:try_start_2b7 .. :try_end_2b8} :catchall_2ea

    .line 3954
    :catch_2b8
    move-exception v0

    goto :goto_2bf

    .line 3958
    :catchall_2ba
    move-exception v0

    move-object v14, v5

    goto :goto_2eb

    .line 3954
    :catch_2bd
    move-exception v0

    move-object v14, v5

    .line 3955
    :goto_2bf
    :try_start_2bf
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e3
    .catchall {:try_start_2bf .. :try_end_2e3} :catchall_2ea

    .line 3956
    nop

    .line 3958
    if-eqz v14, :cond_2e9

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3956
    :cond_2e9
    return-object v5

    .line 3958
    :catchall_2ea
    move-exception v0

    :goto_2eb
    if-eqz v14, :cond_2f0

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3959
    :cond_2f0
    throw v0
.end method

.method public blacklist putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .registers 14

    .line 3662
    const-string v1, " in "

    const-string v2, "Can\'t set key "

    const-string v3, "Settings"

    const/4 v4, 0x0

    move v0, p6

    :try_start_8
    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    .line 3663
    const-string/jumbo v5, "value"

    invoke-virtual {p6, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3664
    const-string p3, "_user"

    invoke-virtual {p6, p3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_7b

    .line 3665
    if-eqz p4, :cond_24

    .line 3666
    :try_start_1a
    const-string p3, "_tag"

    invoke-virtual {p6, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 3681
    :catch_20
    move-exception v0

    move-object p1, v0

    move-object p5, p2

    goto :goto_7e

    .line 3668
    :cond_24
    :goto_24
    const/4 v0, 0x1

    if-eqz p5, :cond_2c

    .line 3669
    const-string p3, "_make_default"

    invoke-virtual {p6, p3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3671
    :cond_2c
    if-eqz p7, :cond_33

    .line 3672
    const-string p3, "_overrideable_by_restore"

    invoke-virtual {p6, p3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_33} :catch_20

    .line 3674
    :cond_33
    :try_start_33
    iget-object p3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {p3, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object p3
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_39} :catch_7b

    .line 3675
    if-nez p3, :cond_60

    .line 3676
    :try_start_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " because cp is null"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_5f} :catch_20

    .line 3677
    return v4

    .line 3679
    :cond_60
    :try_start_60
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object p1

    iget-object p4, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {p4}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object p4

    .line 3680
    invoke-virtual {p4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p4
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_6e} :catch_7b

    move-object p5, p2

    move-object p2, p1

    move-object p1, p3

    move-object p3, p4

    :try_start_72
    iget-object p4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 3679
    invoke-interface/range {p1 .. p6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_77} :catch_79

    .line 3684
    nop

    .line 3685
    return v0

    .line 3681
    :catch_79
    move-exception v0

    goto :goto_7d

    :catch_7b
    move-exception v0

    move-object p5, p2

    :goto_7d
    move-object p1, v0

    .line 3682
    :goto_7e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3683
    return v4
.end method

.method public blacklist setStringsForPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashMap;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 3690
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3692
    return v1

    .line 3695
    :cond_6
    :try_start_6
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3696
    const-string v0, "_prefix"

    invoke-virtual {v7, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3697
    const-string v0, "_flags"

    invoke-virtual {v7, v0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3698
    iget-object p3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {p3, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3699
    if-nez v2, :cond_3c

    .line 3700
    const-string p1, "Settings"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t set strings for prefix "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " because cp is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    return v1

    .line 3703
    :cond_3c
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object p1, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {p1}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object p1

    .line 3704
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    .line 3703
    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 3706
    const-string p2, "config_set_all_return"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_57} :catch_58

    return p1

    .line 3707
    :catch_58
    move-exception v0

    .line 3709
    return v1
.end method
