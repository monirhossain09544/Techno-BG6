.class public Landroid/renderscript/BaseObj;
.super Ljava/lang/Object;
.source "BaseObj.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final greylist-max-o guard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mDestroyed:Z

.field private greylist-max-o mID:J

.field private greylist-max-o mName:Ljava/lang/String;

.field greylist mRS:Landroid/renderscript/RenderScript;


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    .line 37
    invoke-virtual {p3}, Landroid/renderscript/RenderScript;->validate()V

    .line 38
    iput-object p3, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 39
    iput-wide p1, p0, Landroid/renderscript/BaseObj;->mID:J

    .line 40
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    .line 41
    return-void
.end method

.method private greylist-max-o helpDestroy()V
    .registers 7

    .line 123
    nop

    .line 124
    monitor-enter p0

    .line 125
    :try_start_2
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-nez v0, :cond_b

    .line 126
    nop

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    goto :goto_c

    .line 125
    :cond_b
    const/4 v0, 0x0

    .line 129
    :goto_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_3f

    .line 131
    if-eqz v0, :cond_3e

    .line 132
    iget-object v0, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 134
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, v0, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 137
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->isAlive()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_36

    iget-wide v4, p0, Landroid/renderscript/BaseObj;->mID:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_36

    .line 138
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v4, p0, Landroid/renderscript/BaseObj;->mID:J

    invoke-virtual {v1, v4, v5}, Landroid/renderscript/RenderScript;->nObjDestroy(J)V

    .line 140
    :cond_36
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 142
    iput-wide v2, p0, Landroid/renderscript/BaseObj;->mID:J

    .line 144
    :cond_3e
    return-void

    .line 129
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0
.end method


# virtual methods
.method greylist-max-o checkValid()V
    .registers 5

    .line 74
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 77
    return-void

    .line 75
    :cond_9
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid object."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist destroy()V
    .registers 3

    .line 163
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-nez v0, :cond_8

    .line 166
    invoke-direct {p0}, Landroid/renderscript/BaseObj;->helpDestroy()V

    .line 167
    return-void

    .line 164
    :cond_8
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Object already destroyed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 198
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 199
    return v0

    .line 201
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 202
    return v1

    .line 205
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 206
    return v1

    .line 209
    :cond_13
    check-cast p1, Landroid/renderscript/BaseObj;

    .line 210
    iget-wide v2, p0, Landroid/renderscript/BaseObj;->mID:J

    iget-wide v4, p1, Landroid/renderscript/BaseObj;->mID:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    return v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 148
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 149
    iget-object v0, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 151
    :cond_9
    invoke-direct {p0}, Landroid/renderscript/BaseObj;->helpDestroy()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 153
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 154
    nop

    .line 155
    return-void

    .line 153
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 154
    throw v0
.end method

.method greylist-max-o getID(Landroid/renderscript/RenderScript;)J
    .registers 6

    .line 60
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 61
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-nez v0, :cond_2c

    .line 64
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    .line 67
    if-eqz p1, :cond_21

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    if-ne p1, v0, :cond_18

    goto :goto_21

    .line 68
    :cond_18
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v0, "using object with mismatched context."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_21
    :goto_21
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    return-wide v0

    .line 65
    :cond_24
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string v0, "Internal error: Object id 0."

    invoke-direct {p1, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_2c
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v0, "using a destroyed object."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 185
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    const-wide/32 v2, 0xfffffff

    and-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/BaseObj;->mID:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method greylist-max-o setID(J)V
    .registers 7

    .line 44
    iget-wide v0, p0, Landroid/renderscript/BaseObj;->mID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 47
    iput-wide p1, p0, Landroid/renderscript/BaseObj;->mID:J

    .line 48
    return-void

    .line 45
    :cond_b
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Internal Error, reset of object ID."

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setName(Ljava/lang/String;)V
    .registers 6

    .line 93
    if-eqz p1, :cond_37

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2e

    .line 101
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    if-nez v0, :cond_25

    .line 107
    :try_start_d
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 108
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v2, p0, Landroid/renderscript/BaseObj;->mID:J

    invoke-virtual {v1, v2, v3, v0}, Landroid/renderscript/RenderScript;->nAssignName(J[B)V

    .line 109
    iput-object p1, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_1c} :catch_1e

    .line 112
    nop

    .line 113
    return-void

    .line 110
    :catch_1e
    move-exception p1

    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 102
    :cond_25
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v0, "setName object already has a name."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_2e
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v0, "setName does not accept a zero length string."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_37
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v0, "setName requires a string of non-zero length."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method greylist-max-o updateFromNative()V
    .registers 4

    .line 174
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 175
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nGetName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    .line 176
    return-void
.end method
