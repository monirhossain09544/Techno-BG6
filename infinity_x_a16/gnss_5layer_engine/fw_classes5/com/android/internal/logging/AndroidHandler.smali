.class public Lcom/android/internal/logging/AndroidHandler;
.super Ljava/util/logging/Handler;
.source "AndroidHandler.java"


# static fields
.field private static final blacklist THE_FORMATTER:Ljava/util/logging/Formatter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Lcom/android/internal/logging/AndroidHandler$1;

    invoke-direct {v0}, Lcom/android/internal/logging/AndroidHandler$1;-><init>()V

    sput-object v0, Lcom/android/internal/logging/AndroidHandler;->THE_FORMATTER:Ljava/util/logging/Formatter;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 109
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 110
    sget-object v0, Lcom/android/internal/logging/AndroidHandler;->THE_FORMATTER:Ljava/util/logging/Formatter;

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/AndroidHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 111
    return-void
.end method

.method static blacklist getAndroidLevel(Ljava/util/logging/Level;)I
    .registers 2

    .line 183
    invoke-virtual {p0}, Ljava/util/logging/Level;->intValue()I

    move-result p0

    .line 184
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_a

    .line 185
    const/4 p0, 0x6

    return p0

    .line 186
    :cond_a
    const/16 v0, 0x384

    if-lt p0, v0, :cond_10

    .line 187
    const/4 p0, 0x5

    return p0

    .line 188
    :cond_10
    const/16 v0, 0x320

    if-lt p0, v0, :cond_16

    .line 189
    const/4 p0, 0x4

    return p0

    .line 191
    :cond_16
    const/4 p0, 0x3

    return p0
.end method

.method private static blacklist loggerNameToTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 130
    if-nez p0, :cond_5

    .line 131
    const-string p0, "null"

    return-object p0

    .line 134
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 135
    const/16 v1, 0x17

    if-gt v0, v1, :cond_e

    .line 136
    return-object p0

    .line 139
    :cond_e
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 140
    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v0, v2

    if-gt v0, v1, :cond_1e

    .line 141
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_27

    .line 142
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 140
    :goto_27
    return-object p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 116
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 1

    .line 121
    return-void
.end method

.method public whitelist test-api publish(Ljava/util/logging/LogRecord;)V
    .registers 5

    .line 147
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/logging/AndroidHandler;->getAndroidLevel(Ljava/util/logging/Level;)I

    move-result v0

    .line 148
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/logging/AndroidHandler;->loggerNameToTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 150
    return-void

    .line 154
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcom/android/internal/logging/AndroidHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_22} :catch_23

    .line 158
    goto :goto_2b

    .line 156
    :catch_23
    move-exception p1

    .line 157
    const-string v0, "AndroidHandler"

    const-string v1, "Error logging message."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :goto_2b
    return-void
.end method

.method public blacklist publish(Ljava/util/logging/Logger;Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;)V
    .registers 5

    .line 163
    invoke-static {p3}, Lcom/android/internal/logging/AndroidHandler;->getAndroidLevel(Ljava/util/logging/Level;)I

    move-result p1

    .line 164
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_b

    .line 165
    return-void

    .line 169
    :cond_b
    :try_start_b
    invoke-static {p1, p2, p4}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_f

    .line 172
    goto :goto_17

    .line 170
    :catch_f
    move-exception p1

    .line 171
    const-string p2, "AndroidHandler"

    const-string p3, "Error logging message."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    :goto_17
    return-void
.end method
