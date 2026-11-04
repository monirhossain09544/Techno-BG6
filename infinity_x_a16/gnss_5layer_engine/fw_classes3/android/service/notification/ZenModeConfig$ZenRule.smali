.class public Landroid/service/notification/ZenModeConfig$ZenRule;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZenRule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeConfig$ZenRule$ConditionOverride;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist OVERRIDE_ACTIVATE:I = 0x1

.field public static final blacklist OVERRIDE_DEACTIVATE:I = 0x2

.field public static final blacklist OVERRIDE_NONE:I


# instance fields
.field public blacklist allowManualInvocation:Z

.field public greylist-max-o component:Landroid/content/ComponentName;

.field public greylist-max-o condition:Landroid/service/notification/Condition;

.field public greylist conditionId:Landroid/net/Uri;

.field blacklist conditionOverride:I

.field public blacklist configurationActivity:Landroid/content/ComponentName;

.field public greylist-max-r creationTime:J

.field public blacklist deletionInstant:Ljava/time/Instant;

.field public blacklist disabledOrigin:I

.field public greylist enabled:Z

.field public greylist-max-o enabler:Ljava/lang/String;

.field public blacklist iconResName:Ljava/lang/String;

.field public greylist-max-o id:Ljava/lang/String;

.field public blacklist lastActivation:Ljava/time/Instant;

.field public blacklist lastDeactivation:Ljava/time/Instant;

.field public blacklist lastManualActivation:Ljava/time/Instant;

.field public blacklist lastManualDeactivation:Ljava/time/Instant;

.field blacklist legacySuppressedEffects:I

.field public greylist-max-r name:Ljava/lang/String;

.field public blacklist pkg:Ljava/lang/String;

.field public blacklist triggerDescription:Ljava/lang/String;

.field public blacklist type:I

.field public blacklist userModifiedFields:I

.field public blacklist zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

.field public blacklist zenDeviceEffectsUserModifiedFields:I

.field public greylist zenMode:I

.field public blacklist zenPolicy:Landroid/service/notification/ZenPolicy;

.field public blacklist zenPolicyUserModifiedFields:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2589
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule$1;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule$1;-><init>()V

    sput-object v0, Landroid/service/notification/ZenModeConfig$ZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 2235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2166
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 2175
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    .line 2189
    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    .line 2235
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 2237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2166
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 2175
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    .line 2189
    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    .line 2238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    move v0, v2

    :cond_13
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 2239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_21

    .line 2240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 2242
    :cond_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 2243
    const-class v0, Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 2244
    const-class v0, Landroid/service/notification/Condition;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/Condition;

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 2245
    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 2246
    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 2247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_5c

    .line 2248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 2250
    :cond_5c
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 2251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_6e

    .line 2252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 2254
    :cond_6e
    const-class v0, Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenPolicy;

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 2255
    const-class v0, Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenDeviceEffects;

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 2256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 2257
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 2258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    .line 2259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 2260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 2261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 2262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 2263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    .line 2264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_c2

    .line 2265
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    .line 2267
    :cond_c2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    .line 2268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    .line 2269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    .line 2270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_e4

    .line 2271
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    .line 2273
    :cond_e4
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->modesUiTileReactivatesLast()Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 2274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_fa

    .line 2275
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualActivation:Ljava/time/Instant;

    .line 2277
    :cond_fa
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_10a

    .line 2278
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastDeactivation:Ljava/time/Instant;

    .line 2280
    :cond_10a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_11a

    .line 2281
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualDeactivation:Ljava/time/Instant;

    .line 2284
    :cond_11a
    return-void
.end method

.method private static blacklist conditionOverrideToString(I)Ljava/lang/String;
    .registers 1

    .line 2419
    packed-switch p0, :pswitch_data_10

    .line 2423
    const-string p0, "UNKNOWN"

    goto :goto_e

    .line 2421
    :pswitch_6
    const-string p0, "OVERRIDE_DEACTIVATE"

    goto :goto_e

    .line 2420
    :pswitch_9
    const-string p0, "OVERRIDE_ACTIVATE"

    goto :goto_e

    .line 2422
    :pswitch_c
    const-string p0, "OVERRIDE_NONE"

    .line 2419
    :goto_e
    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist writeInstantToParcel(Landroid/os/Parcel;Ljava/time/Instant;)V
    .registers 4

    .line 2358
    if-eqz p1, :cond_e

    .line 2359
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2360
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_12

    .line 2362
    :cond_e
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2364
    :goto_12
    return-void
.end method


# virtual methods
.method public blacklist copy()Landroid/service/notification/ZenModeConfig$ZenRule;
    .registers 3

    .line 2519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2521
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2522
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2523
    new-instance v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v1, v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>(Landroid/os/Parcel;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    .line 2525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2523
    return-object v1

    .line 2525
    :catchall_14
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2526
    throw v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2305
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 2430
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2432
    const-wide v0, 0x10900000001L

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2433
    const-wide v0, 0x10900000002L

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2434
    const-wide v0, 0x10300000003L

    iget-wide v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2435
    const-wide v0, 0x10800000004L

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2436
    const-wide v0, 0x10900000005L

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2437
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3d

    const/4 v0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    const-wide v1, 0x10800000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2438
    const-wide v0, 0x10e00000007L

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2439
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_62

    .line 2440
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000008L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2442
    :cond_62
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_70

    .line 2443
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    const-wide v1, 0x10b00000009L

    invoke-virtual {v0, p1, v1, v2}, Landroid/service/notification/Condition;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2445
    :cond_70
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_7e

    .line 2446
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const-wide v1, 0x10b0000000aL

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2448
    :cond_7e
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v0, :cond_8c

    .line 2449
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const-wide v1, 0x10b0000000bL

    invoke-virtual {v0, p1, v1, v2}, Landroid/service/notification/ZenPolicy;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2451
    :cond_8c
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2452
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 2456
    instance-of v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2457
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 2458
    :cond_a
    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 2459
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-ne v2, v3, :cond_d6

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 2460
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    iget v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-ne v2, v3, :cond_d6

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 2462
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 2463
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 2464
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 2465
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 2466
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 2467
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 2468
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 2469
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 2470
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    if-ne v2, v3, :cond_d6

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    .line 2472
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 2473
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    iget v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    if-ne v2, v3, :cond_d6

    iget v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    if-ne v2, v3, :cond_d6

    iget v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    if-ne v2, v3, :cond_d6

    iget v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    if-ne v2, v3, :cond_d6

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    .line 2479
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    iget v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    if-ne v2, v3, :cond_d6

    iget v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    if-ne v2, v3, :cond_d6

    iget v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    if-ne v2, v3, :cond_d6

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    .line 2483
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    move v2, v0

    goto :goto_d7

    :cond_d6
    move v2, v1

    .line 2485
    :goto_d7
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->modesUiTileReactivatesLast()Z

    move-result v3

    if-eqz v3, :cond_101

    .line 2486
    if-eqz v2, :cond_ff

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualActivation:Ljava/time/Instant;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualActivation:Ljava/time/Instant;

    .line 2487
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->lastDeactivation:Ljava/time/Instant;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastDeactivation:Ljava/time/Instant;

    .line 2488
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualDeactivation:Ljava/time/Instant;

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualDeactivation:Ljava/time/Instant;

    .line 2489
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ff

    move v1, v0

    goto :goto_100

    :cond_ff
    nop

    :goto_100
    move v2, v1

    .line 2492
    :cond_101
    return v2
.end method

.method public blacklist getConditionOverride()I
    .registers 2

    .line 2544
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    return v0
.end method

.method public blacklist getPkg()Ljava/lang/String;
    .registers 2

    .line 2575
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2576
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    goto :goto_22

    .line 2577
    :cond_b
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_16

    .line 2578
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 2579
    :cond_16
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_21

    .line 2580
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 2581
    :cond_21
    const/4 v0, 0x0

    .line 2575
    :goto_22
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 30

    .line 2497
    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->modesUiTileReactivatesLast()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 2498
    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v9, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v10, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v11, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    iget-object v12, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v13, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 2500
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-object v15, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    move-object/from16 v16, v1

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 2501
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 2502
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    move-object/from16 v21, v1

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    .line 2503
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    .line 2504
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    move-object/from16 v25, v1

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualActivation:Ljava/time/Instant;

    move-object/from16 v26, v1

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastDeactivation:Ljava/time/Instant;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualDeactivation:Ljava/time/Instant;

    move-object/from16 v28, v0

    move-object/from16 v27, v1

    filled-new-array/range {v2 .. v28}, [Ljava/lang/Object;

    move-result-object v0

    .line 2498
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 2507
    :cond_7b
    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v9, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v10, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v11, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    iget-object v12, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v13, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 2509
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-object v15, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    move-object/from16 v16, v1

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 2510
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 2511
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    move-object/from16 v21, v1

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    .line 2512
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    .line 2513
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    move-object/from16 v25, v0

    filled-new-array/range {v2 .. v25}, [Ljava/lang/Object;

    move-result-object v0

    .line 2507
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isActive()Z
    .registers 4

    .line 2530
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_1d

    .line 2532
    :cond_c
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    .line 2533
    return v2

    .line 2534
    :cond_12
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_18

    .line 2535
    return v1

    .line 2537
    :cond_18
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v0

    return v0

    .line 2531
    :cond_1d
    :goto_1d
    return v1
.end method

.method public greylist-max-o isTrueOrUnknown()Z
    .registers 4

    .line 2585
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget v0, v0, Landroid/service/notification/Condition;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget v0, v0, Landroid/service/notification/Condition;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_13

    :cond_12
    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public blacklist isUserModified()Z
    .registers 2

    .line 2298
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    if-nez v0, :cond_f

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    if-nez v0, :cond_f

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

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

.method public blacklist reconsiderConditionOverride()V
    .registers 3

    .line 2567
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2568
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    goto :goto_1d

    .line 2569
    :cond_f
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2570
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    .line 2572
    :cond_1d
    :goto_1d
    return-void
.end method

.method public blacklist resetConditionOverride()V
    .registers 2

    .line 2552
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->setConditionOverride(I)V

    .line 2553
    return-void
.end method

.method public blacklist setConditionOverride(I)V
    .registers 2

    .line 2548
    iput p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    .line 2549
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2368
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2369
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2370
    const-string v1, ",state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez v1, :cond_2a

    const-string v1, "STATE_FALSE"

    goto :goto_32

    .line 2371
    :cond_2a
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget v1, v1, Landroid/service/notification/Condition;->state:I

    invoke-static {v1}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 2370
    :goto_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2372
    const-string v1, ",enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2373
    const-string v1, ",conditionOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    .line 2374
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverrideToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2375
    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2376
    const-string v1, ",zenMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2377
    const-string v1, ",conditionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2378
    const-string v1, ",pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2379
    const-string v1, ",component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2380
    const-string v1, ",configActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2381
    const-string v1, ",creationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2382
    const-string v1, ",enabler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2383
    const-string v1, ",zenPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2384
    const-string v1, ",condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2385
    const-string v1, ",deviceEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2386
    const-string v1, ",allowManualInvocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2387
    const-string v1, ",iconResName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2388
    const-string v1, ",triggerDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2389
    const-string v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2390
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    if-eqz v1, :cond_125

    .line 2391
    const-string v1, ",userModifiedFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 2392
    invoke-static {v2}, Landroid/app/AutomaticZenRule;->fieldsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2394
    :cond_125
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    if-eqz v1, :cond_138

    .line 2395
    const-string v1, ",zenPolicyUserModifiedFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 2396
    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->fieldsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2398
    :cond_138
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    if-eqz v1, :cond_14b

    .line 2399
    const-string v1, ",zenDeviceEffectsUserModifiedFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    .line 2400
    invoke-static {v2}, Landroid/service/notification/ZenDeviceEffects;->fieldsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2403
    :cond_14b
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    if-eqz v1, :cond_15a

    .line 2404
    const-string v1, ",deletionInstant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2406
    :cond_15a
    const-string v1, ",disabledOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2407
    const-string v1, ",legacySuppressedEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2408
    const-string v1, ",lastActivation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2409
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->modesUiTileReactivatesLast()Z

    move-result v1

    if-eqz v1, :cond_1a2

    .line 2410
    const-string v1, ",lastManualActivation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualActivation:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2411
    const-string v1, ",lastDeactivation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastDeactivation:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2412
    const-string v1, ",lastManualDeactivation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualDeactivation:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2415
    :cond_1a2
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 2310
    iget-boolean p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2311
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_14

    .line 2312
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2313
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_17

    .line 2315
    :cond_14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2317
    :goto_17
    iget p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2318
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2319
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2320
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2321
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2322
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    if-eqz p2, :cond_3d

    .line 2323
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2324
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_40

    .line 2326
    :cond_3d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2328
    :goto_40
    iget-wide v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2329
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz p2, :cond_52

    .line 2330
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2331
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_55

    .line 2333
    :cond_52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2335
    :goto_55
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2336
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2337
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2338
    iget-boolean p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2339
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2340
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2341
    iget p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2342
    iget p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2343
    iget p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2344
    iget p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2345
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    invoke-static {p1, p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->writeInstantToParcel(Landroid/os/Parcel;Ljava/time/Instant;)V

    .line 2346
    iget p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2347
    iget p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2348
    iget p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2349
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    invoke-static {p1, p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->writeInstantToParcel(Landroid/os/Parcel;Ljava/time/Instant;)V

    .line 2350
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->modesUiTileReactivatesLast()Z

    move-result p2

    if-eqz p2, :cond_b5

    .line 2351
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualActivation:Ljava/time/Instant;

    invoke-static {p1, p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->writeInstantToParcel(Landroid/os/Parcel;Ljava/time/Instant;)V

    .line 2352
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastDeactivation:Ljava/time/Instant;

    invoke-static {p1, p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->writeInstantToParcel(Landroid/os/Parcel;Ljava/time/Instant;)V

    .line 2353
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualDeactivation:Ljava/time/Instant;

    invoke-static {p1, p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->writeInstantToParcel(Landroid/os/Parcel;Ljava/time/Instant;)V

    .line 2355
    :cond_b5
    return-void
.end method
