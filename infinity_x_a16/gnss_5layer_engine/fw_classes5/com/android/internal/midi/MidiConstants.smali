.class public final Lcom/android/internal/midi/MidiConstants;
.super Ljava/lang/Object;
.source "MidiConstants.java"


# static fields
.field public static final blacklist CHANNEL_BYTE_LENGTHS:[I

.field public static final blacklist STATUS_ACTIVE_SENSING:B = -0x2t

.field public static final blacklist STATUS_CHANNEL_MASK:B = 0xft

.field public static final blacklist STATUS_CHANNEL_PRESSURE:B = -0x30t

.field public static final blacklist STATUS_COMMAND_MASK:B = -0x10t

.field public static final blacklist STATUS_CONTINUE:B = -0x5t

.field public static final blacklist STATUS_CONTROL_CHANGE:B = -0x50t

.field public static final blacklist STATUS_END_SYSEX:B = -0x9t

.field public static final blacklist STATUS_MIDI_TIME_CODE:B = -0xft

.field public static final blacklist STATUS_NOTE_OFF:B = -0x80t

.field public static final blacklist STATUS_NOTE_ON:B = -0x70t

.field public static final blacklist STATUS_PITCH_BEND:B = -0x20t

.field public static final blacklist STATUS_POLYPHONIC_AFTERTOUCH:B = -0x60t

.field public static final blacklist STATUS_PROGRAM_CHANGE:B = -0x40t

.field public static final blacklist STATUS_RESET:B = -0x1t

.field public static final blacklist STATUS_SONG_POSITION:B = -0xet

.field public static final blacklist STATUS_SONG_SELECT:B = -0xdt

.field public static final blacklist STATUS_START:B = -0x6t

.field public static final blacklist STATUS_STOP:B = -0x4t

.field public static final blacklist STATUS_SYSTEM_EXCLUSIVE:B = -0x10t

.field public static final blacklist STATUS_TIMING_CLOCK:B = -0x8t

.field public static final blacklist STATUS_TUNE_REQUEST:B = -0xat

.field public static final blacklist SYSTEM_BYTE_LENGTHS:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/internal/midi/MidiConstants;->CHANNEL_BYTE_LENGTHS:[I

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/android/internal/midi/MidiConstants;->SYSTEM_BYTE_LENGTHS:[I

    return-void

    :array_12
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x3
    .end array-data

    :array_24
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist allowRunningStatus(B)Z
    .registers 2

    .line 104
    const/16 v0, -0x80

    if-lt p0, v0, :cond_a

    const/16 v0, -0x10

    if-ge p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static blacklist cancelsRunningStatus(B)Z
    .registers 2

    .line 110
    const/16 v0, -0x10

    if-lt p0, v0, :cond_a

    const/16 v0, -0x9

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static blacklist getBytesPerMessage(B)I
    .registers 2

    .line 69
    and-int/lit16 p0, p0, 0xff

    .line 70
    const/16 v0, 0xf0

    if-lt p0, v0, :cond_d

    .line 72
    sget-object v0, Lcom/android/internal/midi/MidiConstants;->SYSTEM_BYTE_LENGTHS:[I

    and-int/lit8 p0, p0, 0xf

    aget p0, v0, p0

    return p0

    .line 73
    :cond_d
    const/16 v0, 0x80

    if-lt p0, v0, :cond_1a

    .line 75
    sget-object v0, Lcom/android/internal/midi/MidiConstants;->CHANNEL_BYTE_LENGTHS:[I

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, -0x8

    aget p0, v0, p0

    return p0

    .line 77
    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isAllActiveSensing([BII)Z
    .registers 8

    .line 91
    nop

    .line 92
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    if-ge v1, p2, :cond_12

    .line 93
    add-int v3, p1, v1

    aget-byte v3, p0, v3

    .line 94
    const/4 v4, -0x2

    if-eq v3, v4, :cond_f

    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 92
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 98
    :cond_12
    if-nez v2, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method
