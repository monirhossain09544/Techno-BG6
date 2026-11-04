.class public Lcom/android/internal/util/NotificationBigTextNormalizer;
.super Ljava/lang/Object;
.source "NotificationBigTextNormalizer.java"


# static fields
.field private static final blacklist HORIZONTAL_WHITESPACES:Ljava/util/regex/Pattern;

.field private static final blacklist MULTIPLE_NEWLINES:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    const-string v0, "\\v(\\s*\\v)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/NotificationBigTextNormalizer;->MULTIPLE_NEWLINES:Ljava/util/regex/Pattern;

    .line 32
    const-string v0, "\\h+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/NotificationBigTextNormalizer;->HORIZONTAL_WHITESPACES:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isSpace(C)Z
    .registers 2

    .line 121
    const/16 v0, 0xa

    if-eq p0, v0, :cond_c

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static blacklist normalizeBigText(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 45
    :try_start_0
    const-string v0, "NotifBigTextNormalizer#normalizeBigText"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/android/internal/util/NotificationBigTextNormalizer;->MULTIPLE_NEWLINES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 47
    sget-object v0, Lcom/android/internal/util/NotificationBigTextNormalizer;->HORIZONTAL_WHITESPACES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/android/internal/util/NotificationBigTextNormalizer;->normalizeLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_26

    .line 49
    nop

    .line 51
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 49
    return-object p0

    .line 51
    :catchall_26
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 52
    throw p0
.end method

.method private static blacklist normalizeLines(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 73
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    const/4 p0, 0x0

    move v3, p0

    :goto_11
    array-length v4, v1

    if-ge v3, v4, :cond_8d

    .line 76
    aget-object v4, v1, v3

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 78
    nop

    .line 79
    move v6, p0

    move v7, v6

    :goto_22
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_70

    .line 80
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 83
    const/16 v9, 0x200b

    if-lt v8, v9, :cond_34

    const/16 v9, 0x200d

    if-le v8, v9, :cond_6d

    :cond_34
    const v9, 0xfeff

    if-eq v8, v9, :cond_6d

    const/16 v9, 0x34f

    if-ne v8, v9, :cond_3e

    .line 85
    goto :goto_6d

    .line 88
    :cond_3e
    const/16 v9, 0x2060

    if-lt v8, v9, :cond_46

    const/16 v9, 0x2065

    if-le v8, v9, :cond_6d

    :cond_46
    const/16 v9, 0x206a

    if-lt v8, v9, :cond_4e

    const/16 v9, 0x206f

    if-le v8, v9, :cond_6d

    :cond_4e
    const v9, 0xfff9

    if-lt v8, v9, :cond_59

    const v9, 0xfffb

    if-gt v8, v9, :cond_59

    .line 91
    goto :goto_6d

    .line 94
    :cond_59
    invoke-static {v8}, Lcom/android/internal/util/NotificationBigTextNormalizer;->isSpace(C)Z

    move-result v9

    if-eqz v9, :cond_68

    .line 96
    if-nez v7, :cond_66

    .line 97
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_66
    const/4 v7, 0x1

    goto :goto_6d

    .line 101
    :cond_68
    nop

    .line 102
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v7, p0

    .line 79
    :cond_6d
    :goto_6d
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 106
    :cond_70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8a

    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_87

    .line 111
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_87
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 117
    :cond_8d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
