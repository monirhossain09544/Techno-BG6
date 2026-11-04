.class public Lcom/android/internal/telephony/SipMessageParsingUtils;
.super Ljava/lang/Object;
.source "SipMessageParsingUtils.java"


# static fields
.field private static final blacklist ACCEPT_CONTACT_HEADER_KEY:Ljava/lang/String; = "accept-contact"

.field private static final blacklist ACCEPT_CONTACT_HEADER_KEY_COMPACT:Ljava/lang/String; = "a"

.field private static final blacklist BRANCH_PARAM_KEY:Ljava/lang/String; = "branch"

.field private static final blacklist CALL_ID_SIP_HEADER_KEY:Ljava/lang/String; = "call-id"

.field private static final blacklist CALL_ID_SIP_HEADER_KEY_COMPACT:Ljava/lang/String; = "i"

.field private static final blacklist FROM_HEADER_KEY:Ljava/lang/String; = "from"

.field private static final blacklist FROM_HEADER_KEY_COMPACT:Ljava/lang/String; = "f"

.field private static final blacklist HEADER_KEY_VALUE_SEPARATOR:Ljava/lang/String; = ":"

.field private static final blacklist PARAM_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final blacklist PARAM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final blacklist SIP_REQUEST_METHODS:[Ljava/lang/String;

.field private static final blacklist SIP_VERSION_2:Ljava/lang/String; = "SIP/2.0"

.field private static final blacklist SUBHEADER_VALUE_SEPARATOR:Ljava/lang/String; = ","

.field private static final blacklist TAG:Ljava/lang/String; = "SipMessageParsingUtils"

.field private static final blacklist TAG_PARAM_KEY:Ljava/lang/String; = "tag"

.field private static final blacklist TO_HEADER_KEY:Ljava/lang/String; = "to"

.field private static final blacklist TO_HEADER_KEY_COMPACT:Ljava/lang/String; = "t"

.field private static final blacklist VIA_SIP_HEADER_KEY:Ljava/lang/String; = "via"

.field private static final blacklist VIA_SIP_HEADER_KEY_COMPACT:Ljava/lang/String; = "v"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 14

    .line 41
    const-string v12, "MESSAGE"

    const-string v13, "UPDATE"

    const-string v0, "INVITE"

    const-string v1, "ACK"

    const-string v2, "OPTIONS"

    const-string v3, "BYE"

    const-string v4, "CANCEL"

    const-string v5, "REGISTER"

    const-string v6, "PRACK"

    const-string v7, "SUBSCRIBE"

    const-string v8, "NOTIFY"

    const-string v9, "PUBLISH"

    const-string v10, "INFO"

    const-string v11, "REFER"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SipMessageParsingUtils;->SIP_REQUEST_METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getAcceptContactFeatureTags(Ljava/lang/String;)Ljava/util/Set;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    const-string v0, "accept-contact"

    const-string v1, "a"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->parseHeaders(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 226
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 227
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 229
    :cond_18
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 231
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 232
    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3c

    .line 233
    goto :goto_21

    .line 237
    :cond_3c
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    array-length v2, v2

    const/4 v5, 0x1

    invoke-interface {v3, v5, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda3;-><init>()V

    .line 238
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 239
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 240
    const-string v6, "="

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 241
    array-length v8, v7

    if-ge v8, v4, :cond_83

    .line 242
    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    goto :goto_6a

    .line 246
    :cond_83
    aget-object v3, v7, v5

    invoke-static {v3}, Lcom/android/internal/telephony/SipMessageParsingUtils;->splitParamValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 247
    array-length v8, v3

    move v9, v1

    :goto_8b
    if-ge v9, v8, :cond_ac

    aget-object v10, v3, v9

    .line 248
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v7, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v9, v9, 0x1

    goto :goto_8b

    .line 250
    :cond_ac
    goto :goto_6a

    .line 251
    :cond_ad
    goto/16 :goto_21

    .line 252
    :cond_af
    return-object p0
.end method

.method public static blacklist getCallId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 175
    const-string v0, "call-id"

    const-string v1, "i"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->parseHeaders(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 177
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return-object p0
.end method

.method public static blacklist getFromTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 185
    const-string v0, "from"

    const-string v1, "f"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->parseHeaders(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 187
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 188
    const/4 p0, 0x0

    return-object p0

    .line 191
    :cond_15
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 144
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 145
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_c

    .line 146
    return-object v1

    .line 149
    :cond_c
    array-length v0, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v0, :cond_5b

    aget-object v5, p0, v4

    .line 150
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 151
    array-length v6, v5

    if-ge v6, v2, :cond_1d

    .line 153
    goto :goto_58

    .line 155
    :cond_1d
    array-length v6, v5

    if-le v6, v2, :cond_3c

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getParameterValue: unexpected parameter"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 157
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 156
    const-string v7, "SipMessageParsingUtils"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_3c
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 161
    const/4 v6, 0x1

    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 162
    aget-object v7, v5, v3

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 163
    aget-object p0, v5, v6

    return-object p0

    .line 149
    :cond_58
    :goto_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 166
    :cond_5b
    return-object v1
.end method

.method public static blacklist getToTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 199
    const-string v0, "to"

    const-string v1, "t"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->parseHeaders(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 201
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 202
    const/4 p0, 0x0

    return-object p0

    .line 205
    :cond_15
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getTransactionId(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 120
    const-string v0, "via"

    const-string v1, "v"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->parseHeaders(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 122
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 126
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 127
    array-length v1, v0

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v1, :cond_39

    aget-object v3, v0, v2

    .line 128
    const-string v4, "branch"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    if-nez v3, :cond_38

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 130
    :cond_38
    return-object v3

    .line 132
    :cond_39
    goto :goto_11

    .line 133
    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist isSipRequest(Ljava/lang/String;)Z
    .registers 1

    .line 99
    invoke-static {p0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->splitStartLineAndVerify(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 100
    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 101
    :cond_8
    invoke-static {p0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->verifySipRequest([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isSipResponse(Ljava/lang/String;)Z
    .registers 1

    .line 108
    invoke-static {p0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->splitStartLineAndVerify(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 109
    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 110
    :cond_8
    invoke-static {p0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->verifySipResponse([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static blacklist isStartLineMalformed([Ljava/lang/String;)Z
    .registers 3

    .line 274
    const/4 v0, 0x1

    if-eqz p0, :cond_e

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_e

    .line 280
    :cond_7
    array-length p0, p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 275
    :cond_e
    :goto_e
    return v0
.end method

.method static synthetic blacklist lambda$getAcceptContactFeatureTags$0(Ljava/lang/String;)Z
    .registers 2

    .line 238
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$parseHeaders$2(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 348
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$parseHeaders$3(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 376
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$verifySipRequest$1([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 292
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static varargs blacklist parseHeaders(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 323
    invoke-static {p0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->removeLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    const-string v1, "\\r?\\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 328
    array-length v1, p0

    if-nez v1, :cond_17

    .line 329
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 332
    :cond_17
    nop

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move-object v6, v4

    :goto_22
    if-ge v5, v2, :cond_a9

    aget-object v7, p0, v5

    .line 338
    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9d

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_37

    goto :goto_9d

    .line 344
    :cond_37
    if-eqz v6, :cond_64

    .line 345
    nop

    .line 346
    if-eqz p2, :cond_4e

    array-length v8, p2

    if-eqz v8, :cond_4e

    .line 347
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda1;

    invoke-direct {v9, v6}, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 349
    :cond_4e
    new-instance v8, Landroid/util/Pair;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    if-eqz p1, :cond_5d

    .line 351
    return-object v0

    .line 354
    :cond_5d
    nop

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v4

    .line 359
    :cond_64
    const-string v8, ":"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 360
    array-length v10, v8

    if-ge v10, v9, :cond_87

    .line 362
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseHeaders - received malformed line: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SipMessageParsingUtils"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    goto :goto_a5

    .line 366
    :cond_87
    aget-object v6, v8, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 367
    const/4 v7, 0x1

    :goto_8e
    array-length v9, v8

    if-ge v7, v9, :cond_a5

    .line 368
    aget-object v9, v8, v7

    invoke-static {v9}, Lcom/android/internal/telephony/SipMessageParsingUtils;->removeLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    add-int/lit8 v7, v7, 0x1

    goto :goto_8e

    .line 339
    :cond_9d
    :goto_9d
    invoke-static {v7}, Lcom/android/internal/telephony/SipMessageParsingUtils;->removeLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    nop

    .line 336
    :cond_a5
    :goto_a5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_22

    .line 372
    :cond_a9
    if-eqz v6, :cond_cc

    .line 373
    nop

    .line 374
    if-eqz p2, :cond_c0

    array-length p0, p2

    if-eqz p0, :cond_c0

    .line 375
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda2;

    invoke-direct {p1, v6}, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_cc

    .line 377
    :cond_c0
    new-instance p0, Landroid/util/Pair;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_cc
    return-object v0
.end method

.method private static blacklist removeLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 385
    const-string v0, "^\\s*"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist splitParamValue(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 260
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 261
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 264
    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 265
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 266
    const/4 v1, 0x0

    :goto_24
    array-length v2, p0

    if-ge v1, v2, :cond_43

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 270
    :cond_43
    return-object p0
.end method

.method public static blacklist splitStartLineAndVerify(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 214
    const-string v0, " "

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 215
    invoke-static {p0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->isStartLineMalformed([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 216
    :cond_f
    return-object p0
.end method

.method private static blacklist verifySipRequest([Ljava/lang/String;)Z
    .registers 4

    .line 285
    const/4 v0, 0x2

    aget-object v0, p0, v0

    const-string v1, "SIP/2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    .line 288
    :cond_d
    const/4 v0, 0x1

    :try_start_e
    aget-object v2, p0, v0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_18} :catch_2d

    if-eqz v2, :cond_1b

    move v1, v0

    .line 291
    :cond_1b
    nop

    .line 292
    sget-object v0, Lcom/android/internal/telephony/SipMessageParsingUtils;->SIP_REQUEST_METHODS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    and-int/2addr p0, v1

    .line 293
    return p0

    .line 289
    :catch_2d
    move-exception p0

    .line 290
    return v1
.end method

.method private static blacklist verifySipResponse([Ljava/lang/String;)Z
    .registers 4

    .line 298
    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, "SIP/2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    .line 301
    :cond_c
    const/4 v1, 0x1

    :try_start_d
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_13} :catch_1e

    .line 304
    nop

    .line 305
    const/16 v2, 0x64

    if-lt p0, v2, :cond_1d

    const/16 v2, 0x2bc

    if-ge p0, v2, :cond_1d

    move v0, v1

    :cond_1d
    return v0

    .line 302
    :catch_1e
    move-exception p0

    .line 303
    return v0
.end method
