.class public final Landroid/os/LocaleList;
.super Ljava/lang/Object;
.source "LocaleList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/LocaleList;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EN_LATN:Ljava/util/Locale;

.field private static final greylist-max-o LOCALE_AR_XB:Ljava/util/Locale;

.field private static final greylist-max-o LOCALE_EN_XA:Ljava/util/Locale;

.field private static final greylist-max-o NUM_PSEUDO_LOCALES:I = 0x2

.field private static final greylist-max-o STRING_AR_XB:Ljava/lang/String; = "ar-XB"

.field private static final greylist-max-o STRING_EN_XA:Ljava/lang/String; = "en-XA"

.field private static greylist-max-o sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

.field private static greylist-max-o sDefaultLocaleList:Landroid/os/LocaleList;

.field private static final greylist-max-o sEmptyList:[Ljava/util/Locale;

.field private static final greylist-max-o sEmptyLocaleList:Landroid/os/LocaleList;

.field private static greylist-max-o sLastDefaultLocale:Ljava/util/Locale;

.field private static greylist-max-o sLastExplicitlySetLocaleList:Landroid/os/LocaleList;

.field private static final greylist-max-o sLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mList:[Ljava/util/Locale;

.field private final greylist-max-o mStringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 49
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/util/Locale;

    sput-object v1, Landroid/os/LocaleList;->sEmptyList:[Ljava/util/Locale;

    .line 50
    new-instance v1, Landroid/os/LocaleList;

    new-array v0, v0, [Ljava/util/Locale;

    invoke-direct {v1, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    sput-object v1, Landroid/os/LocaleList;->sEmptyLocaleList:Landroid/os/LocaleList;

    .line 277
    new-instance v0, Landroid/os/LocaleList$1;

    invoke-direct {v0}, Landroid/os/LocaleList$1;-><init>()V

    sput-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 330
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "XA"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/os/LocaleList;->LOCALE_EN_XA:Ljava/util/Locale;

    .line 331
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    const-string v2, "XB"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/os/LocaleList;->LOCALE_AR_XB:Ljava/util/Locale;

    .line 401
    const-string v0, "en-Latn"

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroid/os/LocaleList;->EN_LATN:Ljava/util/Locale;

    .line 517
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    .line 520
    const/4 v0, 0x0

    sput-object v0, Landroid/os/LocaleList;->sLastExplicitlySetLocaleList:Landroid/os/LocaleList;

    .line 522
    sput-object v0, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    .line 524
    sput-object v0, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    .line 526
    sput-object v0, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Locale;Landroid/os/LocaleList;)V
    .registers 11

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    if-eqz p1, :cond_93

    .line 239
    const/4 v0, 0x0

    if-nez p2, :cond_a

    move v1, v0

    goto :goto_d

    :cond_a
    iget-object v1, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v1, v1

    .line 240
    :goto_d
    nop

    .line 241
    move v2, v0

    :goto_f
    const/4 v3, -0x1

    if-ge v2, v1, :cond_21

    .line 242
    iget-object v4, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v4, v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 243
    nop

    .line 244
    goto :goto_22

    .line 241
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_21
    move v2, v3

    .line 248
    :goto_22
    const/4 v4, 0x1

    if-ne v2, v3, :cond_27

    move v5, v4

    goto :goto_28

    :cond_27
    move v5, v0

    :goto_28
    add-int/2addr v5, v1

    .line 249
    new-array v6, v5, [Ljava/util/Locale;

    .line 250
    invoke-virtual {p1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    aput-object p1, v6, v0

    .line 251
    if-ne v2, v3, :cond_48

    .line 253
    move p1, v0

    :goto_36
    if-ge p1, v1, :cond_6d

    .line 254
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object p1, v3, p1

    invoke-virtual {p1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    aput-object p1, v6, v2

    .line 253
    move p1, v2

    goto :goto_36

    .line 257
    :cond_48
    move p1, v0

    :goto_49
    if-ge p1, v2, :cond_5b

    .line 258
    add-int/lit8 v3, p1, 0x1

    iget-object v7, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object p1, v7, p1

    invoke-virtual {p1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    aput-object p1, v6, v3

    .line 257
    move p1, v3

    goto :goto_49

    .line 260
    :cond_5b
    add-int/2addr v2, v4

    :goto_5c
    if-ge v2, v1, :cond_6d

    .line 261
    iget-object p1, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    aput-object p1, v6, v2

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 265
    :cond_6d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    nop

    :goto_73
    if-ge v0, v5, :cond_8a

    .line 267
    aget-object p2, v6, v0

    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    add-int/lit8 p2, v5, -0x1

    if-ge v0, p2, :cond_87

    .line 269
    const/16 p2, 0x2c

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    :cond_87
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 273
    :cond_8a
    iput-object v6, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    .line 274
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    .line 275
    return-void

    .line 236
    :cond_93
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "topLocale is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor whitelist <init>([Ljava/util/Locale;)V
    .registers 9

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    array-length v0, p1

    if-nez v0, :cond_f

    .line 185
    sget-object p1, Landroid/os/LocaleList;->sEmptyList:[Ljava/util/Locale;

    iput-object p1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    .line 186
    const-string p1, ""

    iput-object p1, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    .line 187
    return-void

    .line 191
    :cond_f
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    nop

    .line 197
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1f
    array-length v5, p1

    if-ge v3, v5, :cond_60

    .line 198
    aget-object v5, p1, v3

    .line 199
    if-eqz v5, :cond_41

    .line 203
    invoke-virtual {v5}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    .line 205
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 206
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 197
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 200
    :cond_41
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "list["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 210
    :cond_60
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array v0, p1, [Ljava/util/Locale;

    .line 211
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 212
    iput-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    .line 215
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v4, v1

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 219
    nop

    :goto_77
    if-ge v2, p1, :cond_8e

    .line 220
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    add-int/lit8 v3, p1, -0x1

    if-ge v2, v3, :cond_8b

    .line 222
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    :cond_8b
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 225
    :cond_8e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    .line 226
    return-void
.end method

.method private greylist-max-o computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .line 443
    invoke-direct {p0, p1, p2}, Landroid/os/LocaleList;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result p1

    .line 444
    const/4 p2, -0x1

    if-ne p1, p2, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    iget-object p2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object p1, p2, p1

    :goto_d
    return-object p1
.end method

.method private greylist-max-o computeFirstMatchIndex(Ljava/util/Collection;Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 406
    return v2

    .line 408
    :cond_8
    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-nez v0, :cond_f

    .line 409
    const/4 p1, -0x1

    return p1

    .line 412
    :cond_f
    nop

    .line 414
    const v0, 0x7fffffff

    if-eqz p2, :cond_21

    .line 415
    sget-object p2, Landroid/os/LocaleList;->EN_LATN:Ljava/util/Locale;

    invoke-direct {p0, p2}, Landroid/os/LocaleList;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result p2

    .line 416
    if-nez p2, :cond_1e

    .line 417
    return v2

    .line 418
    :cond_1e
    if-ge p2, v0, :cond_21

    .line 419
    goto :goto_22

    .line 422
    :cond_21
    move p2, v0

    :goto_22
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 423
    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 426
    invoke-direct {p0, v1}, Landroid/os/LocaleList;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v1

    .line 427
    if-nez v1, :cond_3d

    .line 428
    return v2

    .line 429
    :cond_3d
    if-ge v1, p2, :cond_40

    .line 430
    move p2, v1

    .line 432
    :cond_40
    goto :goto_26

    .line 433
    :cond_41
    if-ne p2, v0, :cond_44

    .line 435
    return v2

    .line 437
    :cond_44
    return p2
.end method

.method private greylist-max-o findFirstMatchIndex(Ljava/util/Locale;)I
    .registers 4

    .line 393
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 394
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 395
    return v0

    .line 393
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 398
    :cond_14
    const p1, 0x7fffffff

    return p1
.end method

.method public static whitelist forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .registers 5

    .line 306
    if-eqz p0, :cond_28

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_28

    .line 309
    :cond_b
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 310
    array-length v0, p0

    new-array v1, v0, [Ljava/util/Locale;

    .line 311
    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_22

    .line 312
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v2

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 314
    :cond_22
    new-instance p0, Landroid/os/LocaleList;

    invoke-direct {p0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    return-object p0

    .line 307
    :cond_28
    :goto_28
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getAdjustedDefault()Landroid/os/LocaleList;
    .registers 2

    .line 571
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    .line 572
    sget-object v0, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    :try_start_6
    sget-object v1, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    monitor-exit v0

    return-object v1

    .line 574
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static whitelist getDefault()Landroid/os/LocaleList;
    .registers 4

    .line 541
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 542
    sget-object v1, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 543
    :try_start_7
    sget-object v2, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 544
    sput-object v0, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    .line 548
    sget-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    if-eqz v2, :cond_26

    sget-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    .line 549
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 552
    sget-object v0, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    monitor-exit v1

    return-object v0

    .line 554
    :cond_26
    new-instance v2, Landroid/os/LocaleList;

    sget-object v3, Landroid/os/LocaleList;->sLastExplicitlySetLocaleList:Landroid/os/LocaleList;

    invoke-direct {v2, v0, v3}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    sput-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    .line 555
    sget-object v0, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    sput-object v0, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    .line 561
    :cond_33
    sget-object v0, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    monitor-exit v1

    return-object v0

    .line 562
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public static whitelist getEmptyLocaleList()Landroid/os/LocaleList;
    .registers 1

    .line 295
    sget-object v0, Landroid/os/LocaleList;->sEmptyLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method private static greylist-max-o getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    .line 319
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 321
    return-object v0

    .line 324
    :cond_b
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist isPseudoLocale(Landroid/icu/util/ULocale;)Z
    .registers 1

    .line 350
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    invoke-static {p0}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result p0

    return p0
.end method

.method private static greylist-max-o isPseudoLocale(Ljava/lang/String;)Z
    .registers 2

    .line 335
    const-string v0, "en-XA"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "ar-XB"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static greylist-max-o isPseudoLocale(Ljava/util/Locale;)Z
    .registers 2

    .line 343
    sget-object v0, Landroid/os/LocaleList;->LOCALE_EN_XA:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Landroid/os/LocaleList;->LOCALE_AR_XB:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static greylist-max-o isPseudoLocalesOnly([Ljava/lang/String;)Z
    .registers 7

    .line 498
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 499
    return v0

    .line 502
    :cond_4
    array-length v1, p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-le v1, v2, :cond_a

    .line 507
    return v3

    .line 509
    :cond_a
    array-length v1, p0

    move v2, v3

    :goto_c
    if-ge v2, v1, :cond_20

    aget-object v4, p0, v2

    .line 510
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-static {v4}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 511
    return v3

    .line 509
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 514
    :cond_20
    return v0
.end method

.method public static whitelist matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 6

    .line 367
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 368
    return v1

    .line 370
    :cond_8
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 371
    return v2

    .line 373
    :cond_18
    invoke-static {p0}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-static {p1}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_4f

    .line 378
    :cond_25
    invoke-static {p0}, Landroid/os/LocaleList;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 383
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    .line 384
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    goto :goto_45

    :cond_44
    move v1, v2

    :cond_45
    :goto_45
    return v1

    .line 386
    :cond_46
    invoke-static {p1}, Landroid/os/LocaleList;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 389
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 376
    :cond_4f
    :goto_4f
    return v2
.end method

.method public static whitelist setDefault(Landroid/os/LocaleList;)V
    .registers 2

    .line 585
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    .line 586
    return-void
.end method

.method public static greylist-max-r setDefault(Landroid/os/LocaleList;I)V
    .registers 4

    .line 598
    if-eqz p0, :cond_39

    .line 601
    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 604
    sget-object v0, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_b
    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    .line 606
    sget-object v1, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 607
    sput-object p0, Landroid/os/LocaleList;->sLastExplicitlySetLocaleList:Landroid/os/LocaleList;

    .line 608
    sput-object p0, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    .line 609
    if-nez p1, :cond_21

    .line 610
    sget-object p0, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    sput-object p0, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    goto :goto_2c

    .line 612
    :cond_21
    new-instance p0, Landroid/os/LocaleList;

    sget-object p1, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    sget-object v1, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    invoke-direct {p0, p1, v1}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    sput-object p0, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    .line 615
    :goto_2c
    monitor-exit v0

    .line 616
    return-void

    .line 615
    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_2e

    throw p0

    .line 602
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "locales is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 599
    :cond_39
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "locales is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 100
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 101
    return v0

    .line 102
    :cond_4
    instance-of v1, p1, Landroid/os/LocaleList;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 103
    return v2

    .line 104
    :cond_a
    check-cast p1, Landroid/os/LocaleList;

    iget-object p1, p1, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    .line 105
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v1, v1

    array-length v3, p1

    if-eq v1, v3, :cond_15

    .line 106
    return v2

    .line 107
    :cond_15
    move v1, v2

    :goto_16
    iget-object v3, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v3, v3

    if-ge v1, v3, :cond_2b

    .line 108
    iget-object v3, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v3, v3, v1

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 109
    return v2

    .line 107
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 111
    :cond_2b
    return v0
.end method

.method public whitelist get(I)Ljava/util/Locale;
    .registers 3

    .line 59
    if-ltz p1, :cond_c

    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object p1, v0, p1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return-object p1
.end method

.method public whitelist getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .registers 3

    .line 456
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/LocaleList;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getFirstMatchIndex([Ljava/lang/String;)I
    .registers 3

    .line 464
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/LocaleList;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result p1

    return p1
.end method

.method public greylist-max-o getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 482
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/os/LocaleList;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result p1

    return p1
.end method

.method public greylist-max-o getFirstMatchIndexWithEnglishSupported([Ljava/lang/String;)I
    .registers 2

    .line 489
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;
    .registers 3

    .line 474
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/os/LocaleList;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getIntersection(Landroid/os/LocaleList;)[Ljava/util/Locale;
    .registers 12

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_26

    aget-object v5, v1, v4

    .line 164
    iget-object v6, p1, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v7, v6

    move v8, v3

    :goto_12
    if-ge v8, v7, :cond_23

    aget-object v9, v6, v8

    .line 165
    invoke-static {v9, v5}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 166
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    goto :goto_23

    .line 164
    :cond_20
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 163
    :cond_23
    :goto_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 171
    :cond_26
    new-array p1, v3, [Ljava/util/Locale;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/Locale;

    return-object p1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 116
    nop

    .line 117
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v2, v2

    if-ge v1, v2, :cond_16

    .line 118
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 120
    :cond_16
    return v0
.end method

.method public whitelist indexOf(Ljava/util/Locale;)I
    .registers 4

    .line 90
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 91
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 92
    return v0

    .line 90
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_14
    const/4 p1, -0x1

    return p1
.end method

.method public whitelist isEmpty()Z
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist size()I
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v0, v0

    return v0
.end method

.method public whitelist toLanguageTags()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v2, v2

    if-ge v1, v2, :cond_26

    .line 128
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_23

    .line 130
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 133
    :cond_26
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 144
    iget-object p2, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 145
    return-void
.end method
