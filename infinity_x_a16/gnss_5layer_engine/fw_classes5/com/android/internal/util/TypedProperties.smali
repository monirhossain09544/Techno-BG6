.class public Lcom/android/internal/util/TypedProperties;
.super Ljava/util/HashMap;
.source "TypedProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/TypedProperties$ParseException;,
        Lcom/android/internal/util/TypedProperties$TypeException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final greylist-max-o NULL_STRING:Ljava/lang/String;

.field public static final greylist-max-o STRING_NOT_SET:I = -0x1

.field public static final greylist-max-o STRING_NULL:I = 0x0

.field public static final greylist-max-o STRING_SET:I = 0x1

.field public static final greylist-max-o STRING_TYPE_MISMATCH:I = -0x2

.field static final greylist-max-o TYPE_BOOLEAN:I = 0x5a

.field static final greylist-max-o TYPE_BYTE:I = 0x149

.field static final greylist-max-o TYPE_DOUBLE:I = 0x846

.field static final greylist-max-o TYPE_ERROR:I = -0x1

.field static final greylist-max-o TYPE_FLOAT:I = 0x446

.field static final greylist-max-o TYPE_INT:I = 0x449

.field static final greylist-max-o TYPE_LONG:I = 0x849

.field static final greylist-max-o TYPE_SHORT:I = 0x249

.field static final greylist-max-o TYPE_STRING:I = 0x734c

.field static final greylist-max-o TYPE_UNSET:I = 0x78


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 88
    new-instance v0, Ljava/lang/String;

    const-string v1, "<TypedProperties:NULL_STRING>"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 343
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 344
    return-void
.end method

.method static greylist-max-o initTokenizer(Ljava/io/Reader;)Ljava/io/StreamTokenizer;
    .registers 3

    .line 39
    new-instance v0, Ljava/io/StreamTokenizer;

    invoke-direct {v0, p0}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->resetSyntax()V

    .line 50
    const/16 p0, 0x30

    const/16 v1, 0x39

    invoke-virtual {v0, p0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 51
    const/16 p0, 0x41

    const/16 v1, 0x5a

    invoke-virtual {v0, p0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 52
    const/16 p0, 0x61

    const/16 v1, 0x7a

    invoke-virtual {v0, p0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 53
    const/16 p0, 0x5f

    invoke-virtual {v0, p0, p0}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 54
    const/16 p0, 0x24

    invoke-virtual {v0, p0, p0}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 55
    const/16 p0, 0x2e

    invoke-virtual {v0, p0, p0}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 56
    const/16 p0, 0x2d

    invoke-virtual {v0, p0, p0}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 57
    const/16 p0, 0x2b

    invoke-virtual {v0, p0, p0}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 60
    const/16 p0, 0x3d

    invoke-virtual {v0, p0}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    .line 63
    const/16 p0, 0x20

    invoke-virtual {v0, p0, p0}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 64
    const/16 p0, 0x9

    invoke-virtual {v0, p0, p0}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 65
    const/16 p0, 0xa

    invoke-virtual {v0, p0, p0}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 66
    const/16 p0, 0xd

    invoke-virtual {v0, p0, p0}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 67
    const/16 p0, 0x22

    invoke-virtual {v0, p0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 70
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/io/StreamTokenizer;->slashStarComments(Z)V

    .line 71
    invoke-virtual {v0, p0}, Ljava/io/StreamTokenizer;->slashSlashComments(Z)V

    .line 73
    return-object v0
.end method

.method static greylist-max-o interpretType(Ljava/lang/String;)I
    .registers 2

    .line 111
    const-string v0, "unset"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 112
    const/16 p0, 0x78

    return p0

    .line 113
    :cond_b
    const-string v0, "boolean"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 114
    const/16 p0, 0x5a

    return p0

    .line 115
    :cond_16
    const-string v0, "byte"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 116
    const/16 p0, 0x149

    return p0

    .line 117
    :cond_21
    const-string v0, "short"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 118
    const/16 p0, 0x249

    return p0

    .line 119
    :cond_2c
    const-string v0, "int"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 120
    const/16 p0, 0x449

    return p0

    .line 121
    :cond_37
    const-string v0, "long"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 122
    const/16 p0, 0x849

    return p0

    .line 123
    :cond_42
    const-string v0, "float"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 124
    const/16 p0, 0x446

    return p0

    .line 125
    :cond_4d
    const-string v0, "double"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 126
    const/16 p0, 0x846

    return p0

    .line 127
    :cond_58
    const-string v0, "String"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_63

    .line 128
    const/16 p0, 0x734c

    return p0

    .line 130
    :cond_63
    const/4 p0, -0x1

    return p0
.end method

.method static greylist-max-o parse(Ljava/io/Reader;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/TypedProperties$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-static {p0}, Lcom/android/internal/util/TypedProperties;->initTokenizer(Ljava/io/Reader;)Ljava/io/StreamTokenizer;

    move-result-object p0

    .line 148
    nop

    .line 149
    const-string v0, "([a-zA-Z_$][0-9a-zA-Z_$]*\\.)*[a-zA-Z_$][0-9a-zA-Z_$]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 156
    :goto_b
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    .line 157
    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    .line 158
    nop

    .line 222
    return-void

    .line 160
    :cond_14
    const/4 v3, -0x3

    if-ne v1, v3, :cond_bb

    .line 163
    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/TypedProperties;->interpretType(Ljava/lang/String;)I

    move-result v1

    .line 164
    if-eq v1, v2, :cond_b3

    .line 167
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 169
    const/16 v4, 0x78

    if-ne v1, v4, :cond_37

    .line 171
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v5

    .line 172
    const/16 v6, 0x28

    if-ne v5, v6, :cond_2f

    goto :goto_37

    .line 173
    :cond_2f
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v0, "\'(\'"

    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_37
    :goto_37
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v5

    .line 179
    if-ne v5, v3, :cond_ab

    .line 182
    iget-object v3, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 183
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 186
    iput-object v2, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 188
    if-ne v1, v4, :cond_61

    .line 190
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    .line 191
    const/16 v2, 0x29

    if-ne v1, v2, :cond_59

    .line 194
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    .line 192
    :cond_59
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v0, "\')\'"

    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_61
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    .line 198
    const/16 v4, 0x3d

    if-ne v2, v4, :cond_9b

    .line 203
    invoke-static {p0, v1}, Lcom/android/internal/util/TypedProperties;->parseValue(Ljava/io/StreamTokenizer;I)Ljava/lang/Object;

    move-result-object v1

    .line 204
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 205
    if-eqz v2, :cond_86

    .line 208
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v4, v2, :cond_7e

    goto :goto_86

    .line 209
    :cond_7e
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v0, "(property previously declared as a different type)"

    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1

    .line 213
    :cond_86
    :goto_86
    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :goto_89
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    .line 218
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_93

    .line 221
    goto/16 :goto_b

    .line 219
    :cond_93
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v0, "\';\'"

    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_9b
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v0, "\'=\'"

    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_a3
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v0, "valid property name"

    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_ab
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v0, "property name"

    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_b3
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v0, "valid type name"

    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_bb
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v0, "type name"

    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1
.end method

.method static greylist-max-o parseValue(Ljava/io/StreamTokenizer;I)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v0

    .line 236
    const/16 v1, 0x5a

    const/4 v2, -0x3

    if-ne p1, v1, :cond_33

    .line 237
    const-string p1, "boolean constant"

    if-ne v0, v2, :cond_2d

    .line 241
    const-string v0, "true"

    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 242
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 243
    :cond_1a
    const-string v0, "false"

    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 244
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 247
    :cond_27
    new-instance v0, Lcom/android/internal/util/TypedProperties$ParseException;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_2d
    new-instance v0, Lcom/android/internal/util/TypedProperties$ParseException;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_33
    and-int/lit16 v1, p1, 0xff

    const/16 v3, 0x49

    if-ne v1, v3, :cond_e3

    .line 249
    const-string v1, "integer constant"

    if-ne v0, v2, :cond_dd

    .line 259
    :try_start_3d
    iget-object v0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_47} :catch_d6

    .line 262
    nop

    .line 265
    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    .line 266
    sparse-switch p1, :sswitch_data_17a

    .line 288
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal error; unexpected integer type width "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 283
    :sswitch_68
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-ltz p1, :cond_7c

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-gtz p1, :cond_7c

    .line 286
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 284
    :cond_7c
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v0, "64-bit integer constant"

    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1

    .line 278
    :sswitch_84
    const-wide/32 v2, -0x80000000

    cmp-long p1, v0, v2

    if-ltz p1, :cond_98

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_98

    .line 281
    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 279
    :cond_98
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v0, "32-bit integer constant"

    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1

    .line 273
    :sswitch_a0
    const-wide/16 v2, -0x8000

    cmp-long p1, v0, v2

    if-ltz p1, :cond_b3

    const-wide/16 v2, 0x7fff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_b3

    .line 276
    long-to-int p0, v0

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 274
    :cond_b3
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v0, "16-bit integer constant"

    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1

    .line 268
    :sswitch_bb
    const-wide/16 v2, -0x80

    cmp-long p1, v0, v2

    if-ltz p1, :cond_ce

    const-wide/16 v2, 0x7f

    cmp-long p1, v0, v2

    if-gtz p1, :cond_ce

    .line 271
    long-to-int p0, v0

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 269
    :cond_ce
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v0, "8-bit integer constant"

    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1

    .line 260
    :catch_d6
    move-exception p1

    .line 261
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    invoke-direct {p1, p0, v1}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1

    .line 250
    :cond_dd
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    invoke-direct {p1, p0, v1}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1

    .line 291
    :cond_e3
    const/16 v3, 0x46

    if-ne v1, v3, :cond_13f

    .line 292
    const-string v1, "float constant"

    if-ne v0, v2, :cond_139

    .line 306
    :try_start_eb
    iget-object v0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_f1
    .catch Ljava/lang/NumberFormatException; {:try_start_eb .. :try_end_f1} :catch_132

    .line 309
    nop

    .line 312
    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    const/4 v2, 0x4

    if-ne p1, v2, :cond_12d

    .line 314
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 315
    const-wide/16 v4, 0x0

    cmpl-double p1, v2, v4

    if-eqz p1, :cond_127

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-nez p1, :cond_127

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_127

    .line 316
    const-wide/high16 v4, 0x36a0000000000000L    # 1.401298464324817E-45

    cmpg-double p1, v2, v4

    if-ltz p1, :cond_11f

    const-wide v4, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double p1, v2, v4

    if-gtz p1, :cond_11f

    goto :goto_127

    .line 317
    :cond_11f
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v0, "32-bit float constant"

    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1

    .line 320
    :cond_127
    :goto_127
    double-to-float p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 323
    :cond_12d
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 307
    :catch_132
    move-exception p1

    .line 308
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    invoke-direct {p1, p0, v1}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_139
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    invoke-direct {p1, p0, v1}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1

    .line 325
    :cond_13f
    const/16 v1, 0x734c

    if-ne p1, v1, :cond_161

    .line 327
    const/16 p1, 0x22

    if-ne v0, p1, :cond_14a

    .line 328
    iget-object p0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    return-object p0

    .line 329
    :cond_14a
    if-ne v0, v2, :cond_159

    const-string p1, "null"

    iget-object v0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_159

    .line 330
    sget-object p0, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    return-object p0

    .line 332
    :cond_159
    new-instance p1, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string v0, "double-quoted string or \'null\'"

    invoke-direct {p1, p0, v0}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw p1

    .line 335
    :cond_161
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal error; unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_17a
    .sparse-switch
        0x1 -> :sswitch_bb
        0x2 -> :sswitch_a0
        0x4 -> :sswitch_84
        0x8 -> :sswitch_68
    .end sparse-switch
.end method


# virtual methods
.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 403
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 404
    sget-object v0, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    if-ne p1, v0, :cond_a

    .line 405
    const/4 p1, 0x0

    return-object p1

    .line 407
    :cond_a
    return-object p1
.end method

.method public greylist-max-o getBoolean(Ljava/lang/String;)Z
    .registers 3

    .line 600
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o getBoolean(Ljava/lang/String;Z)Z
    .registers 5

    .line 435
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 436
    if-nez v0, :cond_7

    .line 437
    return p2

    .line 439
    :cond_7
    instance-of p2, v0, Ljava/lang/Boolean;

    if-eqz p2, :cond_12

    .line 440
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 442
    :cond_12
    new-instance p2, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v1, "boolean"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method

.method public greylist-max-o getByte(Ljava/lang/String;)B
    .registers 3

    .line 612
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getByte(Ljava/lang/String;B)B

    move-result p1

    return p1
.end method

.method public greylist-max-o getByte(Ljava/lang/String;B)B
    .registers 5

    .line 455
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 456
    if-nez v0, :cond_7

    .line 457
    return p2

    .line 459
    :cond_7
    instance-of p2, v0, Ljava/lang/Byte;

    if-eqz p2, :cond_12

    .line 460
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1

    .line 462
    :cond_12
    new-instance p2, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v1, "byte"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method

.method public greylist-max-o getDouble(Ljava/lang/String;)D
    .registers 4

    .line 672
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/TypedProperties;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getDouble(Ljava/lang/String;D)D
    .registers 5

    .line 555
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 556
    if-nez v0, :cond_7

    .line 557
    return-wide p2

    .line 559
    :cond_7
    instance-of p2, v0, Ljava/lang/Double;

    if-eqz p2, :cond_12

    .line 560
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    .line 562
    :cond_12
    new-instance p2, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string p3, "double"

    invoke-direct {p2, p1, v0, p3}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method

.method public greylist-max-o getFloat(Ljava/lang/String;)F
    .registers 3

    .line 660
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public greylist-max-o getFloat(Ljava/lang/String;F)F
    .registers 5

    .line 535
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 536
    if-nez v0, :cond_7

    .line 537
    return p2

    .line 539
    :cond_7
    instance-of p2, v0, Ljava/lang/Float;

    if-eqz p2, :cond_12

    .line 540
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 542
    :cond_12
    new-instance p2, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v1, "float"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method

.method public greylist-max-o getInt(Ljava/lang/String;)I
    .registers 3

    .line 636
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public greylist-max-o getInt(Ljava/lang/String;I)I
    .registers 5

    .line 495
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 496
    if-nez v0, :cond_7

    .line 497
    return p2

    .line 499
    :cond_7
    instance-of p2, v0, Ljava/lang/Integer;

    if-eqz p2, :cond_12

    .line 500
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 502
    :cond_12
    new-instance p2, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v1, "int"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method

.method public greylist-max-o getLong(Ljava/lang/String;)J
    .registers 4

    .line 648
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/TypedProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getLong(Ljava/lang/String;J)J
    .registers 5

    .line 515
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 516
    if-nez v0, :cond_7

    .line 517
    return-wide p2

    .line 519
    :cond_7
    instance-of p2, v0, Ljava/lang/Long;

    if-eqz p2, :cond_12

    .line 520
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 522
    :cond_12
    new-instance p2, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string p3, "long"

    invoke-direct {p2, p1, v0, p3}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method

.method public greylist-max-o getShort(Ljava/lang/String;)S
    .registers 3

    .line 624
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getShort(Ljava/lang/String;S)S

    move-result p1

    return p1
.end method

.method public greylist-max-o getShort(Ljava/lang/String;S)S
    .registers 5

    .line 475
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 476
    if-nez v0, :cond_7

    .line 477
    return p2

    .line 479
    :cond_7
    instance-of p2, v0, Ljava/lang/Short;

    if-eqz p2, :cond_12

    .line 480
    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1

    .line 482
    :cond_12
    new-instance p2, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v1, "short"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method

.method public greylist-max-o getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 684
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 575
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 576
    if-nez v0, :cond_7

    .line 577
    return-object p2

    .line 579
    :cond_7
    sget-object p2, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    if-ne v0, p2, :cond_d

    .line 580
    const/4 p1, 0x0

    return-object p1

    .line 581
    :cond_d
    instance-of p2, v0, Ljava/lang/String;

    if-eqz p2, :cond_14

    .line 582
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 584
    :cond_14
    new-instance p2, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string v1, "string"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method

.method public greylist-max-o getStringInfo(Ljava/lang/String;)I
    .registers 3

    .line 703
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 704
    if-nez p1, :cond_8

    .line 705
    const/4 p1, -0x1

    return p1

    .line 707
    :cond_8
    sget-object v0, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    if-ne p1, v0, :cond_e

    .line 708
    const/4 p1, 0x0

    return p1

    .line 709
    :cond_e
    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 710
    const/4 p1, 0x1

    return p1

    .line 712
    :cond_14
    const/4 p1, -0x2

    return p1
.end method

.method public greylist-max-o load(Ljava/io/Reader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    invoke-static {p1, p0}, Lcom/android/internal/util/TypedProperties;->parse(Ljava/io/Reader;Ljava/util/Map;)V

    .line 399
    return-void
.end method
