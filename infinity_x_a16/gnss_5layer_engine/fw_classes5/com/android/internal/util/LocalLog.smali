.class public Lcom/android/internal/util/LocalLog;
.super Ljava/lang/Object;
.source "LocalLog.java"


# instance fields
.field private final blacklist mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMaxLines:I

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/util/LocalLog;->mMaxLines:I

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lcom/android/internal/util/LocalLog;->mTag:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist dump(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)Z
    .registers 6

    .line 52
    iget-object v0, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    monitor-enter v0

    .line 53
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_e

    .line 54
    monitor-exit v0

    return v2

    .line 56
    :cond_e
    if-eqz p2, :cond_16

    .line 57
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 60
    :cond_16
    nop

    :goto_17
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2d

    .line 61
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 63
    :cond_2d
    if-eqz p2, :cond_32

    .line 64
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 66
    :cond_32
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 67
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 71
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 73
    iget-object v0, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    monitor-enter v0

    .line 74
    const/4 v1, 0x0

    :goto_8
    :try_start_8
    iget-object v2, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 75
    iget-object v2, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide v3, 0x20900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 77
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_28

    .line 79
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 80
    return-void

    .line 77
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public blacklist w(Ljava/lang/String;)V
    .registers 5

    .line 42
    iget-object v0, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    monitor-enter v0

    .line 43
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mTag:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_18

    .line 45
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 47
    :cond_18
    iget-object v1, p0, Lcom/android/internal/util/LocalLog;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 48
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1
.end method
