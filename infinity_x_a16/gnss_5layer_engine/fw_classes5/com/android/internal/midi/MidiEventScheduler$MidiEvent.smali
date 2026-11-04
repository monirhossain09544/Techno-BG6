.class public Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
.super Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
.source "MidiEventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/midi/MidiEventScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MidiEvent"
.end annotation


# instance fields
.field public blacklist count:I

.field public blacklist data:[B


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 4

    .line 58
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;-><init>(J)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    .line 59
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(ILcom/android/internal/midi/MidiEventScheduler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>(I)V

    return-void
.end method

.method private constructor blacklist <init>([BIIJ)V
    .registers 6

    .line 63
    invoke-direct {p0, p4, p5}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;-><init>(J)V

    .line 54
    const/4 p4, 0x0

    iput p4, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    .line 64
    new-array p5, p3, [B

    iput-object p5, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    .line 65
    iget-object p5, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    invoke-static {p1, p2, p5, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iput p3, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    .line 67
    return-void
.end method

.method synthetic constructor blacklist <init>([BIIJLcom/android/internal/midi/MidiEventScheduler-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>([BIIJ)V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 71
    nop

    .line 72
    const-string v0, "Event: "

    const/4 v1, 0x0

    :goto_4
    iget v2, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    if-ge v1, v2, :cond_26

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    aget-byte v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 75
    :cond_26
    return-object v0
.end method
