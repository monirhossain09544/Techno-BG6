.class public Lcom/android/internal/midi/MidiFramer;
.super Landroid/media/midi/MidiReceiver;
.source "MidiFramer.java"


# instance fields
.field public blacklist TAG:Ljava/lang/String;

.field private blacklist mBuffer:[B

.field private blacklist mCount:I

.field private blacklist mInSysEx:Z

.field private blacklist mNeeded:I

.field private blacklist mReceiver:Landroid/media/midi/MidiReceiver;

.field private blacklist mRunningStatus:B


# direct methods
.method public constructor blacklist <init>(Landroid/media/midi/MidiReceiver;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    .line 36
    const-string v0, "MidiFramer"

    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    .line 45
    iput-object p1, p0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 46
    return-void
.end method

.method public static blacklist formatMidiData([BII)Ljava/lang/String;
    .registers 7

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIDI+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, p2, :cond_42

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "0x%02X, "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 53
    :cond_42
    return-object v0
.end method


# virtual methods
.method public whitelist onSend([BIIJ)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_a

    move/from16 v1, p2

    goto :goto_b

    :cond_a
    move v1, v2

    .line 64
    :goto_b
    const/4 v3, 0x0

    move/from16 v6, p2

    move v9, v1

    move v1, v3

    :goto_10
    move/from16 v13, p3

    if-ge v1, v13, :cond_c9

    .line 65
    aget-byte v4, p1, v6

    .line 66
    and-int/lit16 v5, v4, 0xff

    .line 67
    const/16 v7, 0x80

    const/4 v8, 0x1

    if-lt v5, v7, :cond_83

    .line 68
    const/16 v7, 0xf0

    if-ge v5, v7, :cond_2e

    .line 69
    iput-byte v4, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    .line 70
    iput v8, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 71
    invoke-static {v4}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v4

    sub-int/2addr v4, v8

    iput v4, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    goto/16 :goto_c3

    .line 72
    :cond_2e
    const/16 v10, 0xf8

    if-ge v5, v10, :cond_63

    .line 73
    if-ne v5, v7, :cond_39

    .line 75
    iput-boolean v8, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    .line 76
    move v9, v6

    goto/16 :goto_c3

    .line 77
    :cond_39
    const/16 v7, 0xf7

    if-ne v5, v7, :cond_53

    .line 79
    iget-boolean v4, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v4, :cond_c3

    .line 80
    iget-object v7, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v4, v6, v9

    add-int/lit8 v10, v4, 0x1

    move-object/from16 v8, p1

    move-wide/from16 v11, p4

    invoke-virtual/range {v7 .. v12}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 82
    iput-boolean v3, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    .line 83
    move v9, v2

    goto/16 :goto_c3

    .line 86
    :cond_53
    iget-object v5, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    aput-byte v4, v5, v3

    .line 87
    iput-byte v3, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    .line 88
    iput v8, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 89
    invoke-static {v4}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v4

    sub-int/2addr v4, v8

    iput v4, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    goto :goto_c3

    .line 93
    :cond_63
    iget-boolean v4, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v4, :cond_76

    .line 94
    iget-object v7, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v10, v6, v9

    move-object/from16 v8, p1

    move-wide/from16 v11, p4

    invoke-virtual/range {v7 .. v12}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 96
    add-int/lit8 v9, v6, 0x1

    move v10, v9

    goto :goto_77

    .line 93
    :cond_76
    move v10, v9

    .line 98
    :goto_77
    iget-object v4, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    const/4 v7, 0x1

    move-object/from16 v5, p1

    move-wide/from16 v8, p4

    invoke-virtual/range {v4 .. v9}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    move v9, v10

    goto :goto_c3

    .line 101
    :cond_83
    iget-boolean v5, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-nez v5, :cond_c3

    .line 104
    iget v5, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    if-gtz v5, :cond_8c

    .line 105
    goto :goto_c9

    .line 108
    :cond_8c
    iget-object v5, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    iget v7, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    add-int/lit8 v10, v7, 0x1

    iput v10, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    aput-byte v4, v5, v7

    .line 109
    iget v4, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    sub-int/2addr v4, v8

    iput v4, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    if-nez v4, :cond_c3

    .line 110
    iget-byte v4, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    if-eqz v4, :cond_a7

    .line 111
    iget-object v4, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    iget-byte v5, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    aput-byte v5, v4, v3

    .line 113
    :cond_a7
    iget-object v14, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    iget-object v15, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    const/16 v16, 0x0

    iget v4, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    move-wide/from16 v18, p4

    move/from16 v17, v4

    invoke-virtual/range {v14 .. v19}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 114
    iget-object v4, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    aget-byte v4, v4, v3

    invoke-static {v4}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v4

    sub-int/2addr v4, v8

    iput v4, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    .line 115
    iput v8, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 119
    :cond_c3
    :goto_c3
    add-int/lit8 v6, v6, 0x1

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10

    .line 123
    :cond_c9
    :goto_c9
    if-ltz v9, :cond_d8

    if-ge v9, v6, :cond_d8

    .line 124
    iget-object v7, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v10, v6, v9

    move-object/from16 v8, p1

    move-wide/from16 v11, p4

    invoke-virtual/range {v7 .. v12}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 127
    :cond_d8
    return-void
.end method
