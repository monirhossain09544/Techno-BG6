.class final Lcom/android/framework/protobuf/TextFormatEscaper;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/TextFormatEscaper$ByteSequence;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist escapeBytes(Lcom/android/framework/protobuf/ByteString;)Ljava/lang/String;
    .registers 2

    .line 96
    new-instance v0, Lcom/android/framework/protobuf/TextFormatEscaper$1;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/TextFormatEscaper$1;-><init>(Lcom/android/framework/protobuf/ByteString;)V

    invoke-static {v0}, Lcom/android/framework/protobuf/TextFormatEscaper;->escapeBytes(Lcom/android/framework/protobuf/TextFormatEscaper$ByteSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist escapeBytes(Lcom/android/framework/protobuf/TextFormatEscaper$ByteSequence;)Ljava/lang/String;
    .registers 5

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/framework/protobuf/TextFormatEscaper$ByteSequence;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 42
    const/4 v1, 0x0

    :goto_a
    invoke-interface {p0}, Lcom/android/framework/protobuf/TextFormatEscaper$ByteSequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_84

    .line 43
    invoke-interface {p0, v1}, Lcom/android/framework/protobuf/TextFormatEscaper$ByteSequence;->byteAt(I)B

    move-result v2

    .line 44
    sparse-switch v2, :sswitch_data_8a

    .line 78
    const/16 v3, 0x20

    if-lt v2, v3, :cond_60

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_60

    .line 79
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 67
    :sswitch_24
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    goto :goto_81

    .line 70
    :sswitch_2a
    const-string v2, "\\\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    goto :goto_81

    .line 73
    :sswitch_30
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    goto :goto_81

    .line 58
    :sswitch_36
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    goto :goto_81

    .line 52
    :sswitch_3c
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    goto :goto_81

    .line 64
    :sswitch_42
    const-string v2, "\\v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    goto :goto_81

    .line 55
    :sswitch_48
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    goto :goto_81

    .line 61
    :sswitch_4e
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    goto :goto_81

    .line 49
    :sswitch_54
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    goto :goto_81

    .line 46
    :sswitch_5a
    const-string v2, "\\a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    goto :goto_81

    .line 81
    :cond_60
    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    :goto_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 89
    :cond_84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_8a
    .sparse-switch
        0x7 -> :sswitch_5a
        0x8 -> :sswitch_54
        0x9 -> :sswitch_4e
        0xa -> :sswitch_48
        0xb -> :sswitch_42
        0xc -> :sswitch_3c
        0xd -> :sswitch_36
        0x22 -> :sswitch_30
        0x27 -> :sswitch_2a
        0x5c -> :sswitch_24
    .end sparse-switch
.end method

.method static blacklist escapeBytes([B)Ljava/lang/String;
    .registers 2

    .line 112
    new-instance v0, Lcom/android/framework/protobuf/TextFormatEscaper$2;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/TextFormatEscaper$2;-><init>([B)V

    invoke-static {v0}, Lcom/android/framework/protobuf/TextFormatEscaper;->escapeBytes(Lcom/android/framework/protobuf/TextFormatEscaper$ByteSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist escapeDoubleQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 135
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    const-string v1, "\\\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist escapeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 130
    invoke-static {p0}, Lcom/android/framework/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/android/framework/protobuf/TextFormatEscaper;->escapeBytes(Lcom/android/framework/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
