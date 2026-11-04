.class public Lcom/android/internal/telephony/SmsNumberUtils;
.super Ljava/lang/Object;
.source "SmsNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    }
.end annotation


# static fields
.field private static blacklist ALL_COUNTRY_CODES:[I = null

.field private static final blacklist CDMA_HOME_NETWORK:I = 0x1

.field private static final blacklist CDMA_ROAMING_NETWORK:I = 0x2

.field private static final blacklist DBG:Z

.field private static final blacklist GSM_UMTS_NETWORK:I = 0x0

.field private static blacklist IDDS_MAPS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist MAX_COUNTRY_CODES_LENGTH:I = 0x0

.field private static final blacklist MIN_COUNTRY_AREA_LOCAL_LENGTH:I = 0xa

.field private static final blacklist NANP_CC:I = 0x1

.field private static final blacklist NANP_IDD:Ljava/lang/String; = "011"

.field private static final blacklist NANP_LONG_LENGTH:I = 0xb

.field private static final blacklist NANP_MEDIUM_LENGTH:I = 0xa

.field private static final blacklist NANP_NDD:Ljava/lang/String; = "1"

.field private static final blacklist NANP_SHORT_LENGTH:I = 0x7

.field private static final blacklist NP_CC_AREA_LOCAL:I = 0x68

.field private static final blacklist NP_HOMEIDD_CC_AREA_LOCAL:I = 0x65

.field private static final blacklist NP_INTERNATIONAL_BEGIN:I = 0x64

.field private static final blacklist NP_LOCALIDD_CC_AREA_LOCAL:I = 0x67

.field private static final blacklist NP_NANP_AREA_LOCAL:I = 0x2

.field private static final blacklist NP_NANP_BEGIN:I = 0x1

.field private static final blacklist NP_NANP_LOCAL:I = 0x1

.field private static final blacklist NP_NANP_LOCALIDD_CC_AREA_LOCAL:I = 0x5

.field private static final blacklist NP_NANP_NBPCD_CC_AREA_LOCAL:I = 0x4

.field private static final blacklist NP_NANP_NBPCD_HOMEIDD_CC_AREA_LOCAL:I = 0x6

.field private static final blacklist NP_NANP_NDD_AREA_LOCAL:I = 0x3

.field private static final blacklist NP_NBPCD_CC_AREA_LOCAL:I = 0x66

.field private static final blacklist NP_NBPCD_HOMEIDD_CC_AREA_LOCAL:I = 0x64

.field private static final blacklist NP_NONE:I = 0x0

.field private static final blacklist PLUS_SIGN:Ljava/lang/String; = "+"

.field private static final blacklist TAG:Ljava/lang/String; = "SmsNumberUtils"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 50
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    sput-boolean v1, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkInternationalNumberPlan(Landroid/content/Context;Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 413
    iget-object v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    .line 414
    nop

    .line 416
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 418
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 419
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 421
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 422
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_34

    .line 423
    iput p0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 424
    const/16 p0, 0x64

    return p0

    .line 426
    :cond_29
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_34

    .line 427
    iput p0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 428
    const/16 p0, 0x66

    return p0

    .line 426
    :cond_34
    nop

    .line 431
    goto :goto_8f

    :cond_36
    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 433
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 434
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_4f

    .line 435
    iput p0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 436
    const/16 p0, 0x65

    return p0

    .line 438
    :cond_4f
    goto :goto_8f

    .line 439
    :cond_50
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_54
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 440
    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 441
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-static {p0, v1}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7b

    .line 443
    iput v1, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 444
    iput-object p3, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    .line 445
    const/16 p0, 0x67

    return p0

    .line 448
    :cond_7b
    goto :goto_54

    .line 450
    :cond_7c
    const-string p2, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8f

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_8f

    .line 451
    iput p0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 452
    const/16 p0, 0x68

    return p0

    .line 455
    :cond_8f
    :goto_8f
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist checkNANP(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 302
    nop

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    .line 305
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x7

    if-ne v1, v4, :cond_34

    .line 307
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 308
    const/16 p1, 0x32

    if-lt p0, p1, :cond_2e

    const/16 p1, 0x39

    if-gt p0, p1, :cond_2e

    .line 309
    nop

    .line 310
    move p0, v2

    :goto_1a
    if-ge p0, v4, :cond_2c

    .line 311
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 312
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result p1

    if-nez p1, :cond_29

    .line 313
    nop

    .line 314
    move p0, v3

    goto :goto_2f

    .line 310
    :cond_29
    add-int/lit8 p0, p0, 0x1

    goto :goto_1a

    :cond_2c
    move p0, v2

    goto :goto_2f

    .line 318
    :cond_2e
    move p0, v3

    :goto_2f
    if-eqz p0, :cond_32

    .line 319
    return v2

    .line 321
    :cond_32
    goto/16 :goto_bf

    :cond_34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_44

    .line 323
    invoke-static {v0}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bf

    .line 324
    const/4 p0, 0x2

    return p0

    .line 326
    :cond_44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x3

    const/16 v5, 0xb

    if-ne v1, v5, :cond_54

    .line 329
    invoke-static {v0}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bf

    .line 330
    return v4

    .line 332
    :cond_54
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 333
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 334
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v5, :cond_6e

    .line 337
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bf

    .line 338
    const/4 p0, 0x4

    return p0

    .line 340
    :cond_6e
    const-string p1, "011"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_bf

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xe

    if-ne p1, v0, :cond_bf

    .line 343
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 344
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_bf

    .line 345
    const/4 p0, 0x6

    return p0

    .line 350
    :cond_8a
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bf

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_be

    .line 352
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 353
    if-eqz v4, :cond_be

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 354
    invoke-static {v4}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_be

    .line 355
    iput-object v1, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    .line 356
    const/4 p0, 0x5

    return p0

    .line 360
    :cond_be
    goto :goto_8e

    .line 363
    :cond_bf
    :goto_bf
    return v3
.end method

.method public static blacklist filterDestAddr(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 568
    sget-boolean v0, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    const-string v1, "\""

    const-string v2, "SmsNumberUtils"

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter filterDestAddr. destAddr=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, p2}, Lcom/android/internal/telephony/SmsNumberUtils;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_26
    if-eqz p2, :cond_b7

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_b7

    .line 576
    :cond_30
    nop

    .line 577
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 578
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .line 579
    nop

    .line 581
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsNumberUtils;->needToConvert(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 582
    invoke-static {v0}, Lcom/android/internal/telephony/SmsNumberUtils;->getNetworkType(Landroid/telephony/TelephonyManager;)I

    move-result p1

    .line 583
    const/4 v0, -0x1

    if-eq p1, v0, :cond_6c

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 584
    const/4 v0, 0x0

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 585
    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6c

    .line 586
    invoke-static {p0, p2, v0, p1}, Lcom/android/internal/telephony/SmsNumberUtils;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6d

    .line 591
    :cond_6c
    const/4 p0, 0x0

    :goto_6d
    sget-boolean p1, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz p1, :cond_b3

    .line 592
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "destAddr is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p0, :cond_81

    const-string v0, "formatted."

    goto :goto_83

    :cond_81
    const-string v0, "not formatted."

    :goto_83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "leave filterDestAddr, new destAddr=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p0, :cond_a0

    invoke-static {v2, p0}, Lcom/android/internal/telephony/SmsNumberUtils;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a4

    .line 594
    :cond_a0
    invoke-static {v2, p2}, Lcom/android/internal/telephony/SmsNumberUtils;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_a4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 593
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_b3
    if-eqz p0, :cond_b6

    move-object p2, p0

    :cond_b6
    return-object p2

    .line 571
    :cond_b7
    :goto_b7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "destAddr"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v2, p2}, Lcom/android/internal/telephony/SmsNumberUtils;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is not a global phone number! Nothing changed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-object p2
.end method

.method private static blacklist formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 12

    .line 132
    if-eqz p1, :cond_171

    .line 136
    if-eqz p2, :cond_169

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_169

    .line 140
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    if-eqz p1, :cond_161

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_161

    .line 145
    new-instance v0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsNumberUtils;->getAllIDDs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 149
    invoke-static {v0, p2}, Lcom/android/internal/telephony/SmsNumberUtils;->checkNANP(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;)I

    move-result v1

    .line 150
    sget-boolean v2, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    const-string v3, "SmsNumberUtils"

    if-eqz v2, :cond_47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NANP type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/telephony/SmsNumberUtils;->getNumberPlanType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_47
    const/4 v2, 0x1

    if-eq v1, v2, :cond_160

    const/4 v4, 0x2

    if-eq v1, v4, :cond_160

    const/4 v5, 0x3

    if-ne v1, v5, :cond_52

    goto/16 :goto_160

    .line 156
    :cond_52
    const/4 v5, 0x4

    if-ne v1, v5, :cond_60

    .line 157
    if-eq p3, v2, :cond_5b

    if-ne p3, v4, :cond_5a

    goto :goto_5b

    .line 162
    :cond_5a
    return-object p1

    .line 160
    :cond_5b
    :goto_5b
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 164
    :cond_60
    const/4 v5, 0x5

    const-string v6, "+"

    const/4 v7, 0x0

    if-ne v1, v5, :cond_9c

    .line 165
    if-ne p3, v2, :cond_69

    .line 166
    return-object p1

    .line 167
    :cond_69
    if-nez p3, :cond_8b

    .line 169
    iget-object p0, v0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    if-eqz p0, :cond_75

    iget-object p0, v0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 170
    :cond_75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 171
    :cond_8b
    if-ne p3, v4, :cond_9c

    .line 173
    iget-object p0, v0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    if-eqz p0, :cond_97

    iget-object p0, v0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 174
    :cond_97
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 178
    :cond_9c
    const-string v1, "011"

    invoke-static {p0, v0, p2, v1}, Lcom/android/internal/telephony/SmsNumberUtils;->checkInternationalNumberPlan(Landroid/content/Context;Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result p0

    .line 180
    sget-boolean p2, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz p2, :cond_c0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "International type: "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->getNumberPlanType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_c0
    nop

    .line 183
    packed-switch p0, :pswitch_data_17a

    .line 221
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15a

    if-eq p3, v2, :cond_137

    if-ne p3, v4, :cond_15a

    goto :goto_137

    .line 205
    :pswitch_cf
    iget p0, v0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 207
    invoke-static {v0}, Lcom/android/internal/telephony/SmsNumberUtils;->inExceptionListForNpCcAreaLocal(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;)Z

    move-result p2

    if-nez p2, :cond_15a

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0xb

    if-lt p2, p3, :cond_15a

    if-eq p0, v2, :cond_15a

    .line 210
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_15b

    .line 197
    :pswitch_f3
    if-eqz p3, :cond_f7

    if-ne p3, v4, :cond_15a

    .line 198
    :cond_f7
    iget-object p0, v0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    if-eqz p0, :cond_101

    iget-object p0, v0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 200
    :cond_101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 201
    goto :goto_15b

    .line 193
    :pswitch_117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 194
    goto :goto_15b

    .line 215
    :pswitch_12d
    nop

    .line 216
    move-object p0, p1

    goto :goto_15b

    .line 185
    :pswitch_130
    if-nez p3, :cond_15a

    .line 187
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_15b

    .line 223
    :cond_137
    :goto_137
    const-string p0, "+011"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_144

    .line 225
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_15b

    .line 228
    :cond_144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_15b

    .line 233
    :cond_15a
    const/4 p0, 0x0

    :goto_15b
    if-nez p0, :cond_15e

    .line 234
    goto :goto_15f

    .line 233
    :cond_15e
    move-object p1, p0

    .line 236
    :goto_15f
    return-object p1

    .line 155
    :cond_160
    :goto_160
    return-object p1

    .line 142
    :cond_161
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number is invalid!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 137
    :cond_169
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activeMcc is null or empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 133
    :cond_171
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "number is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_17a
    .packed-switch 0x64
        :pswitch_130
        :pswitch_12d
        :pswitch_117
        :pswitch_f3
        :pswitch_cf
    .end packed-switch
.end method

.method private static blacklist getAllCountryCodes(Landroid/content/Context;)[I
    .registers 9

    .line 493
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    if-eqz v0, :cond_7

    .line 494
    sget-object p0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    return-object p0

    .line 497
    :cond_7
    nop

    .line 499
    const/4 v1, 0x0

    :try_start_9
    const-string v0, "Country_Code"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 500
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/HbpcdLookup$MccLookup;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 503
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_50

    .line 504
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    new-array p0, p0, [I

    sput-object p0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    .line 505
    const/4 p0, 0x0

    move v0, p0

    .line 506
    :goto_2c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 507
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 508
    sget-object v3, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    add-int/lit8 v4, v0, 0x1

    aput v2, v3, v0

    .line 509
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 510
    sget v2, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    if-le v0, v2, :cond_4e

    .line 511
    sput v0, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I
    :try_end_4e
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_4e} :catch_56
    .catchall {:try_start_9 .. :try_end_4e} :catchall_53

    .line 513
    :cond_4e
    move v0, v4

    goto :goto_2c

    .line 518
    :cond_50
    if-eqz v1, :cond_64

    .line 519
    goto :goto_61

    .line 518
    :catchall_53
    move-exception v0

    move-object p0, v0

    goto :goto_67

    .line 515
    :catch_56
    move-exception v0

    move-object p0, v0

    .line 516
    :try_start_58
    const-string v0, "SmsNumberUtils"

    const-string v2, "Can\'t access HbpcdLookup database"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_53

    .line 518
    if-eqz v1, :cond_64

    .line 519
    :goto_61
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 522
    :cond_64
    sget-object p0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    return-object p0

    .line 518
    :goto_67
    if-eqz v1, :cond_6c

    .line 519
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 521
    :cond_6c
    throw p0
.end method

.method private static blacklist getAllIDDs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    const-string v1, "SmsNumberUtils"

    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 249
    if-eqz v0, :cond_d

    .line 250
    return-object v0

    .line 252
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 255
    const-string v0, "IDD"

    const-string v3, "MCC"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 256
    nop

    .line 260
    nop

    .line 261
    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_2b

    .line 262
    nop

    .line 263
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v0

    const-string v5, "MCC=?"

    move-object v8, v4

    move-object v7, v5

    goto :goto_2d

    .line 261
    :cond_2b
    move-object v7, v3

    move-object v8, v7

    .line 266
    :goto_2d
    nop

    .line 268
    :try_start_2e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/HbpcdLookup$MccIdd;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 270
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_53

    .line 271
    :goto_3f
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_53

    .line 272
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 273
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 274
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catch Landroid/database/SQLException; {:try_start_2e .. :try_end_52} :catch_59
    .catchall {:try_start_2e .. :try_end_52} :catchall_56

    .line 276
    :cond_52
    goto :goto_3f

    .line 281
    :cond_53
    if-eqz v3, :cond_65

    .line 282
    goto :goto_62

    .line 281
    :catchall_56
    move-exception v0

    move-object p0, v0

    goto :goto_8f

    .line 278
    :catch_59
    move-exception v0

    move-object p0, v0

    .line 279
    :try_start_5b
    const-string v0, "Can\'t access HbpcdLookup database"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_56

    .line 281
    if-eqz v3, :cond_65

    .line 282
    :goto_62
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_65
    sget-object p0, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-boolean p0, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz p0, :cond_8e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MCC = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", all IDDs = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_8e
    return-object v2

    .line 281
    :goto_8f
    if-eqz v3, :cond_94

    .line 282
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_94
    throw p0
.end method

.method private static blacklist getCountryCode(Landroid/content/Context;Ljava/lang/String;)I
    .registers 8

    .line 462
    nop

    .line 463
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, -0x1

    if-lt v0, v1, :cond_5b

    .line 465
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->getAllCountryCodes(Landroid/content/Context;)[I

    move-result-object p0

    .line 466
    if-nez p0, :cond_11

    .line 467
    return v2

    .line 470
    :cond_11
    sget v0, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    new-array v0, v0, [I

    .line 471
    const/4 v1, 0x0

    move v3, v1

    :goto_17
    sget v4, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    if-ge v3, v4, :cond_29

    .line 472
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v3

    .line 471
    move v3, v4

    goto :goto_17

    .line 475
    :cond_29
    move p1, v1

    :goto_2a
    array-length v3, p0

    if-ge p1, v3, :cond_5b

    .line 476
    aget v3, p0, p1

    .line 477
    move v4, v1

    :goto_30
    sget v5, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    if-ge v4, v5, :cond_58

    .line 478
    aget v5, v0, v4

    if-ne v3, v5, :cond_55

    .line 479
    sget-boolean p0, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz p0, :cond_54

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Country code = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsNumberUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_54
    return v3

    .line 477
    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 475
    :cond_58
    add-int/lit8 p1, p1, 0x1

    goto :goto_2a

    .line 486
    :cond_5b
    return v2
.end method

.method private static blacklist getNetworkType(Landroid/telephony/TelephonyManager;)I
    .registers 4

    .line 603
    nop

    .line 604
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 606
    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 607
    const/4 v1, 0x0

    goto :goto_33

    .line 608
    :cond_a
    const/4 v2, 0x2

    if-ne v0, v2, :cond_16

    .line 609
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->isInternationalRoaming(Landroid/telephony/TelephonyManager;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 610
    move v1, v2

    goto :goto_33

    .line 612
    :cond_15
    goto :goto_33

    .line 615
    :cond_16
    sget-boolean p0, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz p0, :cond_32

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "warning! unknown mPhoneType value="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SmsNumberUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_32
    const/4 v1, -0x1

    :goto_33
    return v1
.end method

.method private static blacklist getNumberPlanType(I)Ljava/lang/String;
    .registers 3

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number Plan type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1e

    .line 537
    const-string p0, "NP_NANP_LOCAL"

    goto :goto_61

    .line 538
    :cond_1e
    const/4 v0, 0x2

    if-ne p0, v0, :cond_24

    .line 539
    const-string p0, "NP_NANP_AREA_LOCAL"

    goto :goto_61

    .line 540
    :cond_24
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2a

    .line 541
    const-string p0, "NP_NANP_NDD_AREA_LOCAL"

    goto :goto_61

    .line 542
    :cond_2a
    const/4 v0, 0x4

    if-ne p0, v0, :cond_30

    .line 543
    const-string p0, "NP_NANP_NBPCD_CC_AREA_LOCAL"

    goto :goto_61

    .line 544
    :cond_30
    const/4 v0, 0x5

    if-ne p0, v0, :cond_36

    .line 545
    const-string p0, "NP_NANP_LOCALIDD_CC_AREA_LOCAL"

    goto :goto_61

    .line 546
    :cond_36
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3c

    .line 547
    const-string p0, "NP_NANP_NBPCD_HOMEIDD_CC_AREA_LOCAL"

    goto :goto_61

    .line 548
    :cond_3c
    const/16 v0, 0x64

    if-ne p0, v0, :cond_43

    .line 549
    const-string p0, "NP_NBPCD_HOMEIDD_CC_AREA_LOCAL"

    goto :goto_61

    .line 550
    :cond_43
    const/16 v0, 0x65

    if-ne p0, v0, :cond_4a

    .line 551
    const-string p0, "NP_HOMEIDD_CC_AREA_LOCAL"

    goto :goto_61

    .line 552
    :cond_4a
    const/16 v0, 0x66

    if-ne p0, v0, :cond_51

    .line 553
    const-string p0, "NP_NBPCD_CC_AREA_LOCAL"

    goto :goto_61

    .line 554
    :cond_51
    const/16 v0, 0x67

    if-ne p0, v0, :cond_58

    .line 555
    const-string p0, "NP_LOCALIDD_CC_AREA_LOCAL"

    goto :goto_61

    .line 556
    :cond_58
    const/16 v0, 0x68

    if-ne p0, v0, :cond_5f

    .line 557
    const-string p0, "NP_CC_AREA_LOCAL"

    goto :goto_61

    .line 559
    :cond_5f
    const-string p0, "Unknown type"

    .line 561
    :goto_61
    return-object p0
.end method

.method private static blacklist inExceptionListForNpCcAreaLocal(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;)Z
    .registers 3

    .line 526
    iget v0, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 527
    iget-object p0, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0xc

    if-ne p0, v1, :cond_1d

    const/4 p0, 0x7

    if-eq v0, p0, :cond_1b

    const/16 p0, 0x14

    if-eq v0, p0, :cond_1b

    const/16 p0, 0x41

    if-eq v0, p0, :cond_1b

    const/16 p0, 0x5a

    if-ne v0, p0, :cond_1d

    :cond_1b
    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    .line 530
    :goto_1e
    return p0
.end method

.method private static blacklist isInternationalRoaming(Landroid/telephony/TelephonyManager;)Z
    .registers 7

    .line 622
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p0

    .line 624
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1d

    .line 625
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 626
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    move v1, v2

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 627
    :goto_1e
    if-eqz v1, :cond_3d

    .line 628
    const-string v3, "us"

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "vi"

    if-eqz v4, :cond_31

    .line 629
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 v1, p0, 0x1

    goto :goto_3d

    .line 630
    :cond_31
    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 631
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 v1, p0, 0x1

    .line 634
    :cond_3d
    :goto_3d
    return v1
.end method

.method private static blacklist isNANP(Ljava/lang/String;)Z
    .registers 6

    .line 371
    nop

    .line 373
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1a

    .line 374
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_4e

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 376
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_25

    .line 377
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 380
    :cond_25
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/SmsNumberUtils;->isTwoToNine(C)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 381
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/SmsNumberUtils;->isTwoToNine(C)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 382
    nop

    .line 383
    move v0, v4

    :goto_3c
    if-ge v0, v3, :cond_4d

    .line 384
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 385
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 386
    nop

    .line 387
    goto :goto_4e

    .line 383
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_4d
    move v2, v4

    .line 392
    :cond_4e
    :goto_4e
    return v2
.end method

.method private static blacklist isTwoToNine(C)Z
    .registers 2

    .line 396
    const/16 v0, 0x32

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    .line 397
    const/4 p0, 0x1

    return p0

    .line 399
    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist needToConvert(Landroid/content/Context;I)Z
    .registers 5

    .line 640
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 642
    :try_start_4
    const-string v2, "carrier_config"

    .line 643
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    .line 644
    if-eqz p0, :cond_1e

    .line 645
    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 646
    if-eqz p0, :cond_1e

    .line 647
    const-string p1, "sms_requires_destination_number_conversion_bool"

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_24

    .line 652
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 647
    return p0

    .line 652
    :cond_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 653
    nop

    .line 655
    const/4 p0, 0x0

    return p0

    .line 652
    :catchall_24
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 653
    throw p0
.end method

.method private static blacklist pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 666
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 667
    if-eqz p1, :cond_36

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_36

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_36

    .line 670
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/SmsNumberUtils;->secureHash([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 668
    :cond_36
    :goto_36
    return-object v0
.end method

.method private static blacklist secureHash([B)Ljava/lang/String;
    .registers 2

    .line 681
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_USER:Z

    if-eqz v0, :cond_7

    .line 682
    const-string p0, "****"

    return-object p0

    .line 688
    :cond_7
    :try_start_7
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_d} :catch_19

    .line 691
    nop

    .line 693
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 694
    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 689
    :catch_19
    move-exception p0

    .line 690
    const-string p0, "####"

    return-object p0
.end method
