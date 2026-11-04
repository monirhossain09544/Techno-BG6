.class public Lcom/android/internal/os/DebugStore;
.super Ljava/lang/Object;
.source "DebugStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/DebugStore$DebugStoreNative;,
        Lcom/android/internal/os/DebugStore$DebugStoreNativeImpl;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG_EVENTS:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DebugStore"

.field private static blacklist sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smbeginEventNative(Ljava/lang/String;Ljava/util/List;)J
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/os/DebugStore;->beginEventNative(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smendEventNative(JLjava/util/List;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/os/DebugStore;->endEventNative(JLjava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smrecordEventNative(Ljava/lang/String;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/os/DebugStore;->recordEventNative(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Lcom/android/internal/os/DebugStore$DebugStoreNativeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNativeImpl;-><init>(Lcom/android/internal/os/DebugStore-IA;)V

    sput-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist beginEventNative(Ljava/lang/String;Ljava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native blacklist endEventNative(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static blacklist intentAct(Landroid/content/Intent;)Ljava/lang/String;
    .registers 1

    .line 406
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist intentCmp(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 411
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 412
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    .line 413
    :cond_11
    const/4 p0, 0x0

    .line 410
    :goto_12
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist recordBindApplication()J
    .registers 3

    .line 301
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    const-string v1, "BindApp"

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordBroadcastReceive(ILjava/lang/String;)J
    .registers 12

    .line 193
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 197
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 201
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 203
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 195
    const-string v2, "tname"

    const-string v4, "tid"

    const-string v6, "cls"

    const-string v8, "prid"

    invoke-static/range {v2 .. v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 193
    const-string p1, "Rcv"

    invoke-interface {v0, p1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static greylist recordBroadcastReceiveReg(ILjava/lang/String;)J
    .registers 12

    .line 239
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 243
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 247
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 249
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 241
    const-string v2, "tname"

    const-string v4, "tid"

    const-string v6, "cls"

    const-string v8, "prid"

    invoke-static/range {v2 .. v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 239
    const-string p1, "RcvReg"

    invoke-interface {v0, p1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static greylist recordEventEnd(J)V
    .registers 4

    .line 402
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->endEvent(JLjava/util/List;)V

    .line 403
    return-void
.end method

.method private static native blacklist recordEventNative(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public static greylist recordFinish(I)V
    .registers 9

    .line 277
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 281
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 285
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 279
    const-string v2, "tname"

    const-string v4, "tid"

    const-string v6, "prid"

    invoke-static/range {v2 .. v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 277
    const-string v1, "Finish"

    invoke-interface {v0, v1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 286
    return-void
.end method

.method public static greylist recordGoAsync(I)V
    .registers 9

    .line 259
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 263
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 267
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 261
    const-string v2, "tname"

    const-string v4, "tid"

    const-string v6, "prid"

    invoke-static/range {v2 .. v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 259
    const-string v1, "GoAsync"

    invoke-interface {v0, v1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 268
    return-void
.end method

.method public static greylist recordLongLooperMessage(ILjava/lang/String;J)V
    .registers 11

    .line 384
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 388
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 390
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 392
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 386
    const-string v1, "code"

    const-string v3, "trgt"

    const-string v5, "elapsed"

    invoke-static/range {v1 .. v6}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 384
    const-string p1, "LooperMsg"

    invoke-interface {v0, p1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 393
    return-void
.end method

.method public static greylist recordScheduleBindApplication()V
    .registers 3

    .line 291
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    const-string v1, "SchBindApp"

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 292
    return-void
.end method

.method public static greylist recordScheduleBroadcastReceive(ILandroid/content/Intent;)V
    .registers 14

    .line 169
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 173
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 177
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 179
    invoke-static {p1}, Lcom/android/internal/os/DebugStore;->intentCmp(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    .line 181
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .line 171
    const-string v2, "tname"

    const-string v4, "tid"

    const-string v6, "act"

    const-string v8, "cmp"

    const-string v10, "prid"

    invoke-static/range {v2 .. v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 169
    const-string p1, "SchRcv"

    invoke-interface {v0, p1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 182
    return-void
.end method

.method public static greylist recordScheduleBroadcastReceiveReg(ILandroid/content/Intent;)V
    .registers 14

    .line 215
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 219
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 223
    invoke-static {p1}, Lcom/android/internal/os/DebugStore;->intentAct(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    .line 225
    invoke-static {p1}, Lcom/android/internal/os/DebugStore;->intentCmp(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    .line 227
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .line 217
    const-string v2, "tname"

    const-string v4, "tid"

    const-string v6, "act"

    const-string v8, "cmp"

    const-string v10, "prid"

    invoke-static/range {v2 .. v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 215
    const-string p1, "SchRcvReg"

    invoke-interface {v0, p1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 228
    return-void
.end method

.method public static greylist recordScheduleServiceBind(ILandroid/content/Intent;)V
    .registers 14

    .line 134
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 138
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-static {p1}, Lcom/android/internal/os/DebugStore;->intentAct(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    .line 144
    invoke-static {p1}, Lcom/android/internal/os/DebugStore;->intentCmp(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    .line 146
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .line 136
    const-string v2, "tname"

    const-string v4, "tid"

    const-string v6, "act"

    const-string v8, "cmp"

    const-string v10, "mid"

    invoke-static/range {v2 .. v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 134
    const-string p1, "SchSvcBind"

    invoke-interface {v0, p1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 147
    return-void
.end method

.method public static greylist recordScheduleServiceCreate(ILandroid/content/pm/ServiceInfo;)V
    .registers 12

    .line 101
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 109
    if-eqz p1, :cond_1b

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 111
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 103
    const-string v2, "tname"

    const-string v4, "tid"

    const-string v6, "name"

    const-string v8, "mid"

    invoke-static/range {v2 .. v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 101
    const-string p1, "SchSvcCreate"

    invoke-interface {v0, p1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 112
    return-void
.end method

.method public static greylist recordScheduleServiceStart(ILandroid/content/Intent;)V
    .registers 14

    .line 67
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 71
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-static {p1}, Lcom/android/internal/os/DebugStore;->intentAct(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    .line 77
    invoke-static {p1}, Lcom/android/internal/os/DebugStore;->intentCmp(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    .line 79
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .line 69
    const-string v2, "tname"

    const-string v4, "tid"

    const-string v6, "act"

    const-string v8, "cmp"

    const-string v10, "mid"

    invoke-static/range {v2 .. v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 67
    const-string p1, "SchSvcStart"

    invoke-interface {v0, p1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 80
    return-void
.end method

.method public static greylist recordScheduleStartJob(IILjava/lang/String;)V
    .registers 15

    .line 313
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 317
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 321
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 323
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 325
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .line 315
    const-string v2, "tname"

    const-string v4, "tid"

    const-string v6, "jobid"

    const-string v8, "jobns"

    const-string v10, "mid"

    invoke-static/range {v2 .. v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 313
    const-string p1, "SchJobStart"

    invoke-interface {v0, p1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 326
    return-void
.end method

.method public static greylist recordScheduleStopJob(IILjava/lang/String;)V
    .registers 15

    .line 348
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 352
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 356
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 358
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 360
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .line 350
    const-string v2, "tname"

    const-string v4, "tid"

    const-string v6, "jobid"

    const-string v8, "jobns"

    const-string v10, "mid"

    invoke-static/range {v2 .. v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 348
    const-string p1, "SchJobStop"

    invoke-interface {v0, p1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 361
    return-void
.end method

.method public static greylist recordServiceBind(I)J
    .registers 3

    .line 157
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    const-string v1, "mid"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v1, "SvcBind"

    invoke-interface {v0, v1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordServiceCreate(I)J
    .registers 3

    .line 122
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 123
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "mid"

    invoke-static {v1, p0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 122
    const-string v1, "SvcCreate"

    invoke-interface {v0, v1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordServiceStart(I)J
    .registers 3

    .line 90
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    const-string v1, "mid"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v1, "SvcStart"

    invoke-interface {v0, v1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordStartJob(I)J
    .registers 3

    .line 336
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    const-string v1, "mid"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v1, "JobStart"

    invoke-interface {v0, v1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordStopJob(I)J
    .registers 3

    .line 371
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    const-string v1, "mid"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v1, "JobStop"

    invoke-interface {v0, v1, p0}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist setDebugStoreNative(Lcom/android/internal/os/DebugStore$DebugStoreNative;)V
    .registers 1

    .line 56
    sput-object p0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 57
    return-void
.end method
