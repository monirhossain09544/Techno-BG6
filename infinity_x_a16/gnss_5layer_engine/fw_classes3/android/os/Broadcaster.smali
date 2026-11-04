.class public Landroid/os/Broadcaster;
.super Ljava/lang/Object;
.source "Broadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Broadcaster$Registration;
    }
.end annotation


# instance fields
.field private greylist-max-o mReg:Landroid/os/Broadcaster$Registration;


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public greylist-max-r broadcast(Landroid/os/Message;)V
    .registers 9

    .line 180
    monitor-enter p0

    .line 181
    :try_start_1
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    if-nez v0, :cond_7

    .line 182
    monitor-exit p0

    return-void

    .line 185
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    .line 186
    iget-object v1, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 187
    move-object v2, v1

    .line 189
    :cond_c
    iget v3, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v3, v0, :cond_11

    .line 190
    goto :goto_15

    .line 192
    :cond_11
    iget-object v2, v2, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 193
    if-ne v2, v1, :cond_c

    .line 194
    :goto_15
    iget v1, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-ne v1, v0, :cond_34

    .line 195
    iget-object v0, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 196
    iget-object v1, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 197
    array-length v2, v0

    .line 198
    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v2, :cond_34

    .line 199
    aget-object v4, v0, v3

    .line 200
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 201
    invoke-virtual {v5, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 202
    aget v6, v1, v3

    iput v6, v5, Landroid/os/Message;->what:I

    .line 203
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 206
    :cond_34
    monitor-exit p0

    .line 207
    return-void

    .line 206
    :catchall_36
    move-exception p1

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public greylist-max-r cancelRequest(ILandroid/os/Handler;I)V
    .registers 10

    .line 107
    monitor-enter p0

    .line 108
    :try_start_1
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 109
    nop

    .line 111
    if-nez v0, :cond_8

    .line 112
    monitor-exit p0

    return-void

    .line 111
    :cond_8
    move-object v1, v0

    .line 116
    :cond_9
    iget v2, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v2, p1, :cond_e

    .line 117
    goto :goto_12

    .line 119
    :cond_e
    iget-object v1, v1, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 120
    if-ne v1, v0, :cond_9

    .line 122
    :goto_12
    iget v0, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-ne v0, p1, :cond_52

    .line 123
    iget-object p1, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 124
    iget-object v0, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 125
    array-length v2, p1

    .line 126
    const/4 v3, 0x0

    move v4, v3

    :goto_1d
    if-ge v4, v2, :cond_52

    .line 127
    aget-object v5, p1, v4

    if-ne v5, p2, :cond_4f

    aget v5, v0, v4

    if-ne v5, p3, :cond_4f

    .line 128
    add-int/lit8 p2, v2, -0x1

    new-array p3, p2, [Landroid/os/Handler;

    iput-object p3, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 129
    new-array p2, p2, [I

    iput-object p2, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 130
    if-lez v4, :cond_3d

    .line 131
    iget-object p2, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    invoke-static {p1, v3, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget-object p2, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v0, v3, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    :cond_3d
    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    .line 136
    if-eqz v2, :cond_52

    .line 137
    add-int/lit8 p2, v4, 0x1

    iget-object p3, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    invoke-static {p1, p2, p3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    iget-object p1, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v0, p2, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_52

    .line 126
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 146
    :cond_52
    :goto_52
    monitor-exit p0

    .line 147
    return-void

    .line 146
    :catchall_54
    move-exception p1

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_54

    throw p1
.end method

.method public greylist-max-o dumpRegistrations()V
    .registers 8

    .line 154
    monitor-enter p0

    .line 155
    :try_start_1
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 156
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcaster "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    if-eqz v0, :cond_75

    .line 158
    move-object v1, v0

    .line 160
    :cond_24
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    senderWhat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    iget-object v2, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    array-length v2, v2

    .line 162
    const/4 v3, 0x0

    :goto_42
    if-ge v3, v2, :cond_71

    .line 163
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "        ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 166
    :cond_71
    iget-object v1, v1, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 167
    if-ne v1, v0, :cond_24

    .line 169
    :cond_75
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    monitor-exit p0

    .line 171
    return-void

    .line 170
    :catchall_7f
    move-exception v0

    monitor-exit p0
    :try_end_81
    .catchall {:try_start_1 .. :try_end_81} :catchall_7f

    throw v0
.end method

.method public greylist-max-r request(ILandroid/os/Handler;I)V
    .registers 10

    .line 39
    monitor-enter p0

    .line 40
    nop

    .line 41
    :try_start_2
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_28

    .line 42
    new-instance v0, Landroid/os/Broadcaster$Registration;

    invoke-direct {v0, p0, v1}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster-IA;)V

    .line 43
    iput p1, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    .line 44
    new-array p1, v2, [Landroid/os/Handler;

    iput-object p1, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 45
    new-array p1, v2, [I

    iput-object p1, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 46
    iget-object p1, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aput-object p2, p1, v3

    .line 47
    iget-object p1, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aput p3, p1, v3

    .line 48
    iput-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 49
    iput-object v0, v0, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 50
    iput-object v0, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    goto/16 :goto_97

    .line 53
    :cond_28
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 54
    move-object v4, v0

    .line 56
    :cond_2b
    iget v5, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v5, p1, :cond_30

    .line 57
    goto :goto_34

    .line 59
    :cond_30
    iget-object v4, v4, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 60
    if-ne v4, v0, :cond_2b

    .line 62
    :goto_34
    iget v0, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-eq v0, p1, :cond_63

    .line 65
    new-instance v0, Landroid/os/Broadcaster$Registration;

    invoke-direct {v0, p0, v1}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster-IA;)V

    .line 66
    iput p1, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    .line 67
    new-array p1, v2, [Landroid/os/Handler;

    iput-object p1, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 68
    new-array p1, v2, [I

    iput-object p1, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 69
    iput-object v4, v0, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 70
    iget-object p1, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iput-object p1, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    .line 71
    iget-object p1, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iput-object v0, p1, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 72
    iput-object v0, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    .line 74
    iget-object p1, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    if-ne v4, p1, :cond_5f

    iget p1, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    iget v1, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-le p1, v1, :cond_5f

    .line 75
    iput-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 78
    :cond_5f
    nop

    .line 79
    nop

    .line 80
    move-object v4, v0

    goto :goto_8f

    .line 81
    :cond_63
    iget-object p1, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    array-length p1, p1

    .line 82
    iget-object v0, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 83
    iget-object v1, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 85
    move v2, v3

    :goto_6b
    if-ge v2, p1, :cond_7a

    .line 86
    aget-object v5, v0, v2

    if-ne v5, p2, :cond_77

    aget v5, v1, v2

    if-ne v5, p3, :cond_77

    .line 87
    monitor-exit p0

    return-void

    .line 85
    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    .line 90
    :cond_7a
    add-int/lit8 v2, p1, 0x1

    new-array v5, v2, [Landroid/os/Handler;

    iput-object v5, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 91
    iget-object v5, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    invoke-static {v0, v3, v5, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    new-array v0, v2, [I

    iput-object v0, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 93
    iget-object v0, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, p1

    .line 95
    :goto_8f
    iget-object p1, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aput-object p2, p1, v3

    .line 96
    iget-object p1, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aput p3, p1, v3

    .line 98
    :goto_97
    monitor-exit p0

    .line 99
    return-void

    .line 98
    :catchall_99
    move-exception p1

    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_2 .. :try_end_9b} :catchall_99

    throw p1
.end method
