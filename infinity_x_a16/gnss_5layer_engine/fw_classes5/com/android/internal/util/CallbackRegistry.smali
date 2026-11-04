.class public Lcom/android/internal/util/CallbackRegistry;
.super Ljava/lang/Object;
.source "CallbackRegistry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/CallbackRegistry$NotifierCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CallbackRegistry"


# instance fields
.field private blacklist mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation
.end field

.field private blacklist mFirst64Removed:J

.field private blacklist mNotificationLevel:I

.field private final blacklist mNotifier:Lcom/android/internal/util/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/CallbackRegistry$NotifierCallback<",
            "TC;TT;TA;>;"
        }
    .end annotation
.end field

.field private blacklist mRemainderRemoved:[J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/util/CallbackRegistry$NotifierCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/CallbackRegistry$NotifierCallback<",
            "TC;TT;TA;>;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    .line 79
    iput-object p1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotifier:Lcom/android/internal/util/CallbackRegistry$NotifierCallback;

    .line 80
    return-void
.end method

.method private blacklist isRemovedLocked(I)Z
    .registers 11

    .line 230
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x40

    if-ge p1, v6, :cond_15

    .line 232
    shl-long/2addr v2, p1

    .line 233
    iget-wide v6, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    and-long/2addr v2, v6

    cmp-long p1, v2, v0

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    move v4, v5

    :goto_14
    return v4

    .line 234
    :cond_15
    iget-object v7, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    if-nez v7, :cond_1a

    .line 236
    return v5

    .line 238
    :cond_1a
    div-int/lit8 v7, p1, 0x40

    sub-int/2addr v7, v4

    .line 239
    iget-object v8, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    array-length v8, v8

    if-lt v7, v8, :cond_23

    .line 241
    return v5

    .line 244
    :cond_23
    iget-object v8, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v7, v8, v7

    .line 245
    rem-int/2addr p1, v6

    shl-long/2addr v2, p1

    .line 246
    and-long/2addr v2, v7

    cmp-long p1, v2, v0

    if-eqz p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v4, v5

    :goto_30
    return v4
.end method

.method private blacklist notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;IIJ)V"
        }
    .end annotation

    .line 202
    nop

    .line 203
    const-wide/16 v0, 0x1

    :goto_3
    if-ge p4, p5, :cond_1d

    .line 204
    and-long v2, p6, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_18

    .line 205
    iget-object v2, p0, Lcom/android/internal/util/CallbackRegistry;->mNotifier:Lcom/android/internal/util/CallbackRegistry$NotifierCallback;

    iget-object v3, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2, p3}, Lcom/android/internal/util/CallbackRegistry$NotifierCallback;->onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 207
    :cond_18
    const/4 v2, 0x1

    shl-long/2addr v0, v2

    .line 203
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 209
    :cond_1d
    return-void
.end method

.method private blacklist notifyFirst64Locked(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 125
    const/4 v6, 0x0

    iget-wide v8, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 126
    return-void
.end method

.method private blacklist notifyRecurseLocked(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 145
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    if-nez v0, :cond_c

    const/4 v0, -0x1

    goto :goto_11

    :cond_c
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 149
    :goto_11
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/util/CallbackRegistry;->notifyRemainderLocked(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 153
    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v5, v0, 0x40

    .line 156
    const-wide/16 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 157
    return-void
.end method

.method private blacklist notifyRemainderLocked(Ljava/lang/Object;ILjava/lang/Object;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;I)V"
        }
    .end annotation

    .line 172
    if-gez p4, :cond_6

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/CallbackRegistry;->notifyFirst64Locked(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_26

    .line 175
    :cond_6
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v7, v0, p4

    .line 176
    add-int/lit8 v0, p4, 0x1

    mul-int/lit8 v5, v0, 0x40

    .line 177
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v5, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 178
    add-int/lit8 p4, p4, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/util/CallbackRegistry;->notifyRemainderLocked(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 179
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 181
    :goto_26
    return-void
.end method

.method private blacklist removeRemovedCallbacks(IJ)V
    .registers 12

    .line 260
    add-int/lit8 v0, p1, 0x40

    .line 262
    nop

    .line 263
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-wide/high16 v2, -0x8000000000000000L

    :goto_7
    if-lt v0, p1, :cond_1a

    .line 264
    and-long v4, p2, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_16

    .line 265
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 267
    :cond_16
    ushr-long/2addr v2, v1

    .line 263
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 269
    :cond_1a
    return-void
.end method

.method private blacklist setRemovalBitLocked(I)V
    .registers 10

    .line 287
    const-wide/16 v0, 0x1

    const/16 v2, 0x40

    if-ge p1, v2, :cond_d

    .line 289
    shl-long/2addr v0, p1

    .line 290
    iget-wide v2, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    .line 291
    goto :goto_43

    .line 292
    :cond_d
    div-int/lit8 v3, p1, 0x40

    add-int/lit8 v3, v3, -0x1

    .line 293
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    if-nez v4, :cond_21

    .line 294
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v2

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    goto :goto_3a

    .line 295
    :cond_21
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    array-length v4, v4

    if-ge v4, v3, :cond_3a

    .line 297
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v2

    new-array v4, v4, [J

    .line 298
    iget-object v5, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    iget-object v6, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    iput-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    .line 301
    :cond_3a
    :goto_3a
    rem-int/2addr p1, v2

    shl-long/2addr v0, p1

    .line 302
    iget-object p1, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v4, p1, v3

    or-long/2addr v0, v4

    aput-wide v0, p1, v3

    .line 304
    :goto_43
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    monitor-enter p0

    .line 217
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 218
    if-ltz v0, :cond_f

    invoke-direct {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 219
    :cond_f
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 221
    :cond_14
    monitor-exit p0

    return-void

    .line 216
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public declared-synchronized blacklist clear()V
    .registers 2

    monitor-enter p0

    .line 347
    :try_start_1
    iget v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    if-nez v0, :cond_b

    .line 348
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_23

    .line 349
    :cond_b
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 350
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    if-ltz v0, :cond_23

    .line 351
    invoke-direct {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->setRemovalBitLocked(I)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_25

    .line 350
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 354
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    .line 346
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public declared-synchronized blacklist clone()Lcom/android/internal/util/CallbackRegistry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/CallbackRegistry<",
            "TC;TT;TA;>;"
        }
    .end annotation

    monitor-enter p0

    .line 357
    nop

    .line 359
    const/4 v0, 0x0

    :try_start_3
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/CallbackRegistry;
    :try_end_9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_9} :catch_3b
    .catchall {:try_start_3 .. :try_end_9} :catchall_39

    .line 360
    const-wide/16 v2, 0x0

    :try_start_b
    iput-wide v2, v1, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    .line 361
    iput-object v0, v1, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    .line 362
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    .line 363
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 364
    iget-object v2, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 365
    nop

    :goto_20
    if-ge v0, v2, :cond_36

    .line 366
    invoke-direct {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z

    move-result v3

    if-nez v3, :cond_33

    .line 367
    iget-object v3, v1, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_b .. :try_end_33} :catch_37
    .catchall {:try_start_b .. :try_end_33} :catchall_39

    .line 365
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 372
    :cond_36
    goto :goto_42

    .line 370
    :catch_37
    move-exception v0

    goto :goto_3f

    .line 356
    :catchall_39
    move-exception v0

    goto :goto_44

    .line 370
    :catch_3b
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 371
    :goto_3f
    :try_start_3f
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_39

    .line 373
    :goto_42
    monitor-exit p0

    return-object v1

    .line 356
    :goto_44
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_39

    throw v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/android/internal/util/CallbackRegistry;->clone()Lcom/android/internal/util/CallbackRegistry;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized blacklist copyListeners()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TC;>;"
        }
    .end annotation

    monitor-enter p0

    .line 312
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 313
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 314
    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_27

    .line 315
    invoke-direct {p0, v2}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z

    move-result v3

    if-nez v3, :cond_24

    .line 316
    iget-object v3, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_29

    .line 314
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 319
    :cond_27
    monitor-exit p0

    return-object v0

    .line 311
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public declared-synchronized blacklist isEmpty()Z
    .registers 6

    monitor-enter p0

    .line 328
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_29

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 329
    monitor-exit p0

    return v1

    .line 330
    :cond_c
    :try_start_c
    iget v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_29

    const/4 v2, 0x0

    if-nez v0, :cond_13

    .line 331
    monitor-exit p0

    return v2

    .line 333
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 334
    move v3, v2

    :goto_1a
    if-ge v3, v0, :cond_27

    .line 335
    invoke-direct {p0, v3}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z

    move-result v4
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_29

    if-nez v4, :cond_24

    .line 336
    monitor-exit p0

    return v2

    .line 334
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 339
    :cond_27
    monitor-exit p0

    return v1

    .line 327
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public declared-synchronized blacklist notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    monitor-enter p0

    .line 93
    :try_start_1
    iget v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/CallbackRegistry;->notifyRecurseLocked(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 95
    iget p1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    .line 96
    iget p1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    if-nez p1, :cond_45

    .line 97
    iget-object p1, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    const-wide/16 p2, 0x0

    if-eqz p1, :cond_37

    .line 98
    iget-object p1, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_1f
    if-ltz p1, :cond_37

    .line 99
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v0, v0, p1

    .line 100
    cmp-long v2, v0, p2

    if-eqz v2, :cond_34

    .line 101
    add-int/lit8 v2, p1, 0x1

    mul-int/lit8 v2, v2, 0x40

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/util/CallbackRegistry;->removeRemovedCallbacks(IJ)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    aput-wide p2, v0, p1

    .line 98
    :cond_34
    add-int/lit8 p1, p1, -0x1

    goto :goto_1f

    .line 106
    :cond_37
    iget-wide v0, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    cmp-long p1, v0, p2

    if-eqz p1, :cond_45

    .line 107
    iget-wide v0, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/CallbackRegistry;->removeRemovedCallbacks(IJ)V

    .line 108
    iput-wide p2, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    .line 111
    :cond_45
    monitor-exit p0

    return-void

    .line 92
    :catchall_47
    move-exception p1

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public declared-synchronized blacklist remove(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    monitor-enter p0

    .line 276
    :try_start_1
    iget v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    if-nez v0, :cond_b

    .line 277
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_16

    .line 279
    :cond_b
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    .line 280
    if-ltz p1, :cond_16

    .line 281
    invoke-direct {p0, p1}, Lcom/android/internal/util/CallbackRegistry;->setRemovalBitLocked(I)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 284
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 275
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method
