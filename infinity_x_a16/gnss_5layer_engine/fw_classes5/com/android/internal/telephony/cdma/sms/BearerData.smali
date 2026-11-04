.class public final Lcom/android/internal/telephony/cdma/sms/BearerData;
.super Ljava/lang/Object;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    }
.end annotation


# static fields
.field public static final blacklist ALERT_DEFAULT:I = 0x0

.field public static final blacklist ALERT_HIGH_PRIO:I = 0x3

.field public static final blacklist ALERT_LOW_PRIO:I = 0x1

.field public static final blacklist ALERT_MEDIUM_PRIO:I = 0x2

.field public static final blacklist DISPLAY_MODE_DEFAULT:I = 0x1

.field public static final blacklist DISPLAY_MODE_IMMEDIATE:I = 0x0

.field public static final blacklist DISPLAY_MODE_USER:I = 0x2

.field public static final blacklist ERROR_NONE:I = 0x0

.field public static final blacklist ERROR_PERMANENT:I = 0x3

.field public static final blacklist ERROR_TEMPORARY:I = 0x2

.field public static final blacklist ERROR_UNDEFINED:I = 0xff

.field public static final blacklist LANGUAGE_CHINESE:I = 0x6

.field public static final blacklist LANGUAGE_ENGLISH:I = 0x1

.field public static final blacklist LANGUAGE_FRENCH:I = 0x2

.field public static final blacklist LANGUAGE_HEBREW:I = 0x7

.field public static final blacklist LANGUAGE_JAPANESE:I = 0x4

.field public static final blacklist LANGUAGE_KOREAN:I = 0x5

.field public static final blacklist LANGUAGE_SPANISH:I = 0x3

.field public static final blacklist LANGUAGE_UNKNOWN:I = 0x0

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "BearerData"

.field public static final blacklist MESSAGE_TYPE_CANCELLATION:I = 0x3

.field public static final blacklist MESSAGE_TYPE_DELIVER:I = 0x1

.field public static final blacklist MESSAGE_TYPE_DELIVERY_ACK:I = 0x4

.field public static final blacklist MESSAGE_TYPE_DELIVER_REPORT:I = 0x7

.field public static final blacklist MESSAGE_TYPE_READ_ACK:I = 0x6

.field public static final blacklist MESSAGE_TYPE_SUBMIT:I = 0x2

.field public static final blacklist MESSAGE_TYPE_SUBMIT_REPORT:I = 0x8

.field public static final blacklist MESSAGE_TYPE_USER_ACK:I = 0x5

.field public static final blacklist PRIORITY_EMERGENCY:I = 0x3

.field public static final blacklist PRIORITY_INTERACTIVE:I = 0x1

.field public static final blacklist PRIORITY_NORMAL:I = 0x0

.field public static final blacklist PRIORITY_URGENT:I = 0x2

.field public static final blacklist PRIVACY_CONFIDENTIAL:I = 0x2

.field public static final blacklist PRIVACY_NOT_RESTRICTED:I = 0x0

.field public static final blacklist PRIVACY_RESTRICTED:I = 0x1

.field public static final blacklist PRIVACY_SECRET:I = 0x3

.field public static final blacklist RELATIVE_TIME_DAYS_LIMIT:I = 0xc4

.field public static final blacklist RELATIVE_TIME_HOURS_LIMIT:I = 0xa7

.field public static final blacklist RELATIVE_TIME_INDEFINITE:I = 0xf5

.field public static final blacklist RELATIVE_TIME_MINS_LIMIT:I = 0x8f

.field public static final blacklist RELATIVE_TIME_MOBILE_INACTIVE:I = 0xf7

.field public static final blacklist RELATIVE_TIME_NOW:I = 0xf6

.field public static final blacklist RELATIVE_TIME_RESERVED:I = 0xf8

.field public static final blacklist RELATIVE_TIME_WEEKS_LIMIT:I = 0xf4

.field public static final blacklist STATUS_ACCEPTED:I = 0x0

.field public static final blacklist STATUS_BLOCKED_DESTINATION:I = 0x7

.field public static final blacklist STATUS_CANCELLED:I = 0x3

.field public static final blacklist STATUS_CANCEL_FAILED:I = 0x6

.field public static final blacklist STATUS_DELIVERED:I = 0x2

.field public static final blacklist STATUS_DEPOSITED_TO_INTERNET:I = 0x1

.field public static final blacklist STATUS_DUPLICATE_MESSAGE:I = 0x9

.field public static final blacklist STATUS_INVALID_DESTINATION:I = 0xa

.field public static final blacklist STATUS_MESSAGE_EXPIRED:I = 0xd

.field public static final blacklist STATUS_NETWORK_CONGESTION:I = 0x4

.field public static final blacklist STATUS_NETWORK_ERROR:I = 0x5

.field public static final blacklist STATUS_TEXT_TOO_LONG:I = 0x8

.field public static final blacklist STATUS_UNDEFINED:I = 0xff

.field public static final blacklist STATUS_UNKNOWN_ERROR:I = 0x1f

.field private static final blacklist SUBPARAM_ALERT_ON_MESSAGE_DELIVERY:B = 0xct

.field private static final blacklist SUBPARAM_CALLBACK_NUMBER:B = 0xet

.field private static final blacklist SUBPARAM_DEFERRED_DELIVERY_TIME_ABSOLUTE:B = 0x6t

.field private static final blacklist SUBPARAM_DEFERRED_DELIVERY_TIME_RELATIVE:B = 0x7t

.field private static final blacklist SUBPARAM_ID_LAST_DEFINED:B = 0x17t

.field private static final blacklist SUBPARAM_LANGUAGE_INDICATOR:B = 0xdt

.field private static final blacklist SUBPARAM_MESSAGE_CENTER_TIME_STAMP:B = 0x3t

.field private static final blacklist SUBPARAM_MESSAGE_DEPOSIT_INDEX:B = 0x11t

.field private static final blacklist SUBPARAM_MESSAGE_DISPLAY_MODE:B = 0xft

.field private static final blacklist SUBPARAM_MESSAGE_IDENTIFIER:B = 0x0t

.field private static final blacklist SUBPARAM_MESSAGE_STATUS:B = 0x14t

.field private static final blacklist SUBPARAM_NUMBER_OF_MESSAGES:B = 0xbt

.field private static final blacklist SUBPARAM_PRIORITY_INDICATOR:B = 0x8t

.field private static final blacklist SUBPARAM_PRIVACY_INDICATOR:B = 0x9t

.field private static final blacklist SUBPARAM_REPLY_OPTION:B = 0xat

.field private static final blacklist SUBPARAM_SERVICE_CATEGORY_PROGRAM_DATA:B = 0x12t

.field private static final blacklist SUBPARAM_SERVICE_CATEGORY_PROGRAM_RESULTS:B = 0x13t

.field private static final blacklist SUBPARAM_USER_DATA:B = 0x1t

.field private static final blacklist SUBPARAM_USER_RESPONSE_CODE:B = 0x2t

.field private static final blacklist SUBPARAM_VALIDITY_PERIOD_ABSOLUTE:B = 0x4t

.field private static final blacklist SUBPARAM_VALIDITY_PERIOD_RELATIVE:B = 0x5t


# instance fields
.field public blacklist alert:I

.field public blacklist alertIndicatorSet:Z

.field public blacklist callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public blacklist cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

.field public blacklist deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public blacklist deferredDeliveryTimeRelative:I

.field public blacklist deferredDeliveryTimeRelativeSet:Z

.field public blacklist deliveryAckReq:Z

.field public blacklist depositIndex:I

.field public greylist displayMode:I

.field public blacklist displayModeSet:Z

.field public blacklist errorClass:I

.field public greylist hasUserDataHeader:Z

.field public blacklist language:I

.field public blacklist languageIndicatorSet:Z

.field public greylist messageId:I

.field public blacklist messageStatus:I

.field public blacklist messageStatusSet:Z

.field public blacklist messageType:I

.field public greylist msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public blacklist numberOfMessages:I

.field public greylist priority:I

.field public greylist priorityIndicatorSet:Z

.field public blacklist privacy:I

.field public blacklist privacyIndicatorSet:Z

.field public blacklist readAckReq:Z

.field public blacklist reportReq:Z

.field public blacklist serviceCategoryProgramData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist serviceCategoryProgramResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramResults;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist userAckReq:Z

.field public greylist userData:Lcom/android/internal/telephony/cdma/sms/UserData;

.field public blacklist userResponseCode:I

.field public blacklist userResponseCodeSet:Z

.field public blacklist validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public blacklist validityPeriodRelative:I

.field public blacklist validityPeriodRelativeSet:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 118
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 130
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    .line 131
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 142
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    .line 143
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    .line 155
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    .line 156
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    .line 175
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 176
    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    .line 208
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    .line 209
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    .line 210
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    .line 238
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    .line 243
    return-void
.end method

.method public static blacklist calcTextEncodingDetails(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 6

    .line 553
    nop

    .line 554
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 555
    const v1, 0x111026f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 556
    invoke-static {p0, v1}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 555
    :cond_14
    const/4 v0, 0x0

    .line 558
    :goto_15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 559
    move-object v0, p0

    .line 563
    :cond_1c
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v0

    .line 564
    const/4 v2, -0x1

    if-eq v0, v2, :cond_36

    const/16 v2, 0xa0

    if-gt v0, v2, :cond_36

    .line 565
    new-instance p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {p0}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 566
    iput v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 567
    iput v0, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 568
    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 569
    iput v1, p0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_4a

    .line 571
    :cond_36
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p1

    .line 573
    iget v0, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v0, v1, :cond_49

    iget v0, p1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v0, v1, :cond_49

    if-eqz p2, :cond_49

    .line 577
    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0

    .line 580
    :cond_49
    move-object p0, p1

    :goto_4a
    return-object p0
.end method

.method private static greylist countAsciiSeptets(Ljava/lang/CharSequence;Z)I
    .registers 6

    .line 533
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 534
    if-eqz p1, :cond_7

    return v0

    .line 535
    :cond_7
    const/4 p1, 0x0

    :goto_8
    if-ge p1, v0, :cond_1b

    .line 536
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v3, :cond_18

    .line 537
    return v3

    .line 535
    :cond_18
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 540
    :cond_1b
    return v0
.end method

.method public static blacklist decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .registers 2

    .line 2036
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .registers 11

    .line 2054
    const-string v0, "BearerData decode failed: "

    const-string v1, "BearerData"

    :try_start_4
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v2, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 2055
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 2056
    const/4 v3, 0x0

    .line 2057
    :goto_f
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4
    :try_end_13
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_4 .. :try_end_13} :catch_11a
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_4 .. :try_end_13} :catch_104

    const-string v5, ")"

    const/4 v6, 0x1

    if-lez v4, :cond_b8

    .line 2058
    const/16 v4, 0x8

    :try_start_1a
    invoke-virtual {v2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    .line 2059
    shl-int/2addr v6, v4

    .line 2066
    and-int v7, v3, v6

    const/16 v8, 0x17

    if-eqz v7, :cond_47

    if-ltz v4, :cond_47

    if-le v4, v8, :cond_2a

    goto :goto_47

    .line 2069
    :cond_2a
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal duplicate subparameter ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2073
    :cond_47
    :goto_47
    packed-switch v4, :pswitch_data_132

    .line 2132
    :pswitch_4a
    invoke-static {p0, v2, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeReserved(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;I)Z

    move-result v5

    goto/16 :goto_af

    .line 2093
    :pswitch_50
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2094
    goto :goto_af

    .line 2129
    :pswitch_55
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2130
    goto :goto_af

    .line 2126
    :pswitch_5a
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2127
    goto :goto_af

    .line 2117
    :pswitch_5f
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2118
    goto :goto_af

    .line 2090
    :pswitch_64
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2091
    goto :goto_af

    .line 2114
    :pswitch_69
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2115
    goto :goto_af

    .line 2123
    :pswitch_6e
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2124
    goto :goto_af

    .line 2087
    :pswitch_73
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2088
    goto :goto_af

    .line 2084
    :pswitch_78
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2085
    goto :goto_af

    .line 2111
    :pswitch_7d
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2112
    goto :goto_af

    .line 2120
    :pswitch_82
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2121
    goto :goto_af

    .line 2108
    :pswitch_87
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2109
    goto :goto_af

    .line 2105
    :pswitch_8c
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2106
    goto :goto_af

    .line 2102
    :pswitch_91
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2103
    goto :goto_af

    .line 2099
    :pswitch_96
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2100
    goto :goto_af

    .line 2096
    :pswitch_9b
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2097
    goto :goto_af

    .line 2081
    :pswitch_a0
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2082
    goto :goto_af

    .line 2078
    :pswitch_a5
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2079
    goto :goto_af

    .line 2075
    :pswitch_aa
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 2076
    nop

    .line 2134
    :goto_af
    if-eqz v5, :cond_b6

    if-ltz v4, :cond_b6

    if-gt v4, v8, :cond_b6

    .line 2137
    or-int/2addr v3, v6

    .line 2139
    :cond_b6
    goto/16 :goto_f

    .line 2140
    :cond_b8
    and-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_fc

    .line 2143
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v2, :cond_fb

    .line 2144
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->isCmasAlertCategory(I)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 2145
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;I)V

    goto :goto_fb

    .line 2146
    :cond_ca
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget p1, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne p1, v6, :cond_f4

    .line 2147
    xor-int/lit8 p1, v3, 0x1

    xor-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_f0

    .line 2151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IS-91 must occur without extra subparams ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    :cond_f0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto :goto_fb

    .line 2156
    :cond_f4
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    invoke-static {p1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    .line 2159
    :cond_fb
    :goto_fb
    return-object p0

    .line 2141
    :cond_fc
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string p1, "missing MESSAGE_IDENTIFIER subparam"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_104
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1a .. :try_end_104} :catch_11a
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_1a .. :try_end_104} :catch_104

    .line 2162
    :catch_104
    move-exception p0

    .line 2163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_130

    .line 2160
    :catch_11a
    move-exception p0

    .line 2161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    nop

    .line 2165
    :goto_130
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_a5
        :pswitch_a0
        :pswitch_9b
        :pswitch_96
        :pswitch_91
        :pswitch_8c
        :pswitch_87
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_4a
        :pswitch_5a
        :pswitch_55
        :pswitch_4a
        :pswitch_50
    .end packed-switch
.end method

.method private static blacklist decode7bitAscii([BII)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1196
    mul-int/lit8 p1, p1, 0x8

    .line 1197
    add-int/lit8 p1, p1, 0x6

    const/4 v0, 0x7

    :try_start_5
    div-int/2addr p1, v0

    .line 1198
    sub-int/2addr p2, p1

    .line 1200
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1201
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v2, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1202
    mul-int/2addr p1, v0

    mul-int/lit8 p0, p2, 0x7

    add-int/2addr p0, p1

    .line 1203
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v3

    if-lt v3, p0, :cond_52

    .line 1207
    invoke-virtual {v2, p1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1208
    const/4 p0, 0x0

    :goto_1f
    if-ge p0, p2, :cond_4d

    .line 1209
    invoke-virtual {v2, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result p1

    .line 1210
    const/16 v3, 0x20

    if-lt p1, v3, :cond_37

    sget v4, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP_MAX_INDEX:I

    if-gt p1, v4, :cond_37

    .line 1212
    sget-object v3, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    add-int/lit8 p1, p1, -0x20

    aget-char p1, v3, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 1213
    :cond_37
    const/16 v4, 0xa

    if-ne p1, v4, :cond_3f

    .line 1214
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 1215
    :cond_3f
    const/16 v4, 0xd

    if-ne p1, v4, :cond_47

    .line 1216
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 1219
    :cond_47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1208
    :goto_4a
    add-int/lit8 p0, p0, 0x1

    goto :goto_1f

    .line 1222
    :cond_4d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1204
    :cond_52
    new-instance p1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insufficient data (wanted "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " bits, but only have "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 1205
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ")"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7f
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_5 .. :try_end_7f} :catch_7f

    .line 1223
    :catch_7f
    move-exception p0

    .line 1224
    new-instance p1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "7bit ASCII decode failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist decode7bitGsm([BII)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1232
    mul-int/lit8 v0, p1, 0x8

    .line 1233
    add-int/lit8 v1, v0, 0x6

    div-int/lit8 v1, v1, 0x7

    .line 1234
    sub-int v4, p2, v1

    .line 1235
    mul-int/lit8 v1, v1, 0x7

    sub-int v5, v1, v0

    .line 1236
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object p0

    .line 1238
    if-eqz p0, :cond_17

    .line 1241
    return-object p0

    .line 1239
    :cond_17
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string p1, "7bit GSM decoding failed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1555
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1556
    if-ge v1, v0, :cond_e

    .line 1557
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1558
    const/4 p0, 0x0

    return p0

    .line 1560
    :cond_e
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1561
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1562
    nop

    .line 1563
    nop

    .line 1564
    iget v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v5, 0x4

    if-ne v4, v3, :cond_32

    .line 1565
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 1566
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 1567
    nop

    .line 1568
    int-to-byte v4, v0

    move v5, v0

    goto :goto_33

    .line 1564
    :cond_32
    move v4, v3

    .line 1570
    :goto_33
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1571
    add-int/2addr v4, v0

    int-to-byte v0, v4

    .line 1572
    sub-int/2addr v1, v0

    .line 1573
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/2addr v0, v5

    .line 1574
    sub-int v4, v1, v0

    .line 1575
    if-lt v1, v0, :cond_52

    .line 1580
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1581
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1582
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 1583
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1584
    return v3

    .line 1576
    :cond_52
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CALLBACK_NUMBER subparam encoding size error (remainingBits + "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", dataBits + "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", paddingBits + "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1173
    if-ltz p2, :cond_8

    mul-int v0, p2, p3

    add-int/2addr v0, p1

    array-length v1, p0

    if-le v0, v1, :cond_4c

    .line 1175
    :cond_8
    rem-int v0, p1, p3

    .line 1176
    array-length v1, p0

    sub-int/2addr v1, p1

    sub-int/2addr v1, v0

    div-int/2addr v1, p3

    .line 1177
    if-ltz v1, :cond_71

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " decode error: offset = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " numFields = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " data.length = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length v0, p0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " maxNumFields = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BearerData"

    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    move p2, v1

    .line 1186
    :cond_4c
    :try_start_4c
    new-instance v0, Ljava/lang/String;

    mul-int/2addr p2, p3

    invoke-direct {v0, p0, p1, p2, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_52
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4c .. :try_end_52} :catch_53

    return-object v0

    .line 1187
    :catch_53
    move-exception p0

    .line 1188
    new-instance p1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " decode failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1178
    :cond_71
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " decode failed: offset out of range"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist decodeCmasUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1955
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1956
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_d3

    .line 1959
    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    .line 1960
    if-nez v1, :cond_ba

    .line 1964
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryToCmasMessageClass(I)I

    move-result v4

    .line 1965
    nop

    .line 1966
    nop

    .line 1967
    nop

    .line 1968
    nop

    .line 1969
    const/4 p1, -0x1

    move v5, p1

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    .line 1971
    :goto_25
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result p1

    const/16 v1, 0x10

    if-lt p1, v1, :cond_b2

    .line 1972
    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result p1

    .line 1973
    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    .line 1974
    packed-switch p1, :pswitch_data_dc

    .line 2018
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "skipping unsupported CMAS record type "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "BearerData"

    invoke-static {v3, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto :goto_b0

    .line 2009
    :pswitch_56
    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result p1

    .line 2010
    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    .line 2011
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 2012
    invoke-virtual {v0, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 2013
    invoke-virtual {v0, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 2014
    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x1c

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2015
    move v9, v5

    move v8, v7

    move v5, p1

    move v7, v6

    move v6, v3

    goto :goto_b0

    .line 1976
    :pswitch_78
    new-instance p1, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {p1}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1977
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    iput v10, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1978
    const/4 v10, 0x1

    iput-boolean v10, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1979
    const/4 v10, 0x0

    iput v10, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1982
    iget v11, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    packed-switch v11, :pswitch_data_e4

    .line 1999
    :pswitch_8f
    move v11, v10

    goto :goto_9f

    .line 1995
    :pswitch_91
    add-int/lit8 v11, v1, -0x1

    div-int/lit8 v11, v11, 0x2

    .line 1996
    goto :goto_9f

    .line 1991
    :pswitch_96
    mul-int/lit8 v11, v1, 0x8

    sub-int/2addr v11, v3

    div-int/lit8 v11, v11, 0x7

    .line 1992
    goto :goto_9f

    .line 1985
    :pswitch_9c
    add-int/lit8 v11, v1, -0x1

    .line 1986
    nop

    .line 2002
    :goto_9f
    iput v11, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 2003
    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2004
    invoke-static {p1, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    .line 2005
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 2006
    nop

    .line 2022
    :goto_b0
    goto/16 :goto_25

    .line 2024
    :cond_b2
    new-instance v3, Landroid/telephony/SmsCbCmasInfo;

    invoke-direct/range {v3 .. v9}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 2026
    return-void

    .line 1961
    :cond_ba
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported CMAE_protocol_version "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1957
    :cond_d3
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string p1, "emergency CB with no CMAE_protocol_version"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_78
        :pswitch_56
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_8f
        :pswitch_96
        :pswitch_96
        :pswitch_91
        :pswitch_8f
        :pswitch_8f
        :pswitch_8f
        :pswitch_9c
        :pswitch_96
    .end packed-switch
.end method

.method private static blacklist decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1649
    nop

    .line 1650
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1651
    const/16 v0, 0x30

    if-lt v1, v0, :cond_1c

    .line 1652
    add-int/lit8 v1, v1, -0x30

    .line 1653
    nop

    .line 1654
    nop

    .line 1655
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v0

    .line 1654
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    const/4 p0, 0x1

    goto :goto_1d

    .line 1651
    :cond_1c
    const/4 p0, 0x0

    .line 1657
    :goto_1d
    if-eqz p0, :cond_21

    if-lez v1, :cond_50

    .line 1658
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEFERRED_DELIVERY_TIME_ABSOLUTE decode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1659
    if-eqz p0, :cond_31

    const-string v2, "succeeded"

    goto :goto_33

    :cond_31
    const-string v2, "failed"

    :goto_33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (extra bits = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1658
    const-string v2, "BearerData"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    :cond_50
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1663
    return p0
.end method

.method private static blacklist decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1689
    nop

    .line 1690
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1691
    if-lt v1, v0, :cond_15

    .line 1692
    add-int/lit8 v1, v1, -0x8

    .line 1693
    nop

    .line 1694
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    const/4 v0, 0x1

    goto :goto_16

    .line 1691
    :cond_15
    const/4 v0, 0x0

    .line 1696
    :goto_16
    if-eqz v0, :cond_1a

    if-lez v1, :cond_49

    .line 1697
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFERRED_DELIVERY_TIME_RELATIVE decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1698
    if-eqz v0, :cond_2a

    const-string v3, "succeeded"

    goto :goto_2c

    :cond_2a
    const-string v3, "failed"

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (extra bits = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1697
    const-string v3, "BearerData"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :cond_49
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1702
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    .line 1703
    return v0
.end method

.method private static blacklist decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1504
    nop

    .line 1505
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1506
    const/16 v2, 0x10

    if-lt v1, v2, :cond_1d

    .line 1507
    add-int/lit8 v1, v1, -0x10

    .line 1508
    nop

    .line 1509
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    shl-int/2addr v2, v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    const/4 p0, 0x1

    goto :goto_1e

    .line 1506
    :cond_1d
    const/4 p0, 0x0

    .line 1511
    :goto_1e
    if-eqz p0, :cond_22

    if-lez v1, :cond_51

    .line 1512
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_DEPOSIT_INDEX decode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1513
    if-eqz p0, :cond_32

    const-string v2, "succeeded"

    goto :goto_34

    :cond_32
    const-string v2, "failed"

    :goto_34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (extra bits = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1512
    const-string v2, "BearerData"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_51
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1517
    return p0
.end method

.method private static blacklist decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1750
    nop

    .line 1751
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1752
    if-lt v1, v0, :cond_1a

    .line 1753
    add-int/lit8 v1, v1, -0x8

    .line 1754
    nop

    .line 1755
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    .line 1756
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    const/4 v0, 0x1

    goto :goto_1b

    .line 1752
    :cond_1a
    const/4 v0, 0x0

    .line 1758
    :goto_1b
    if-eqz v0, :cond_1f

    if-lez v1, :cond_4e

    .line 1759
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DISPLAY_MODE decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1760
    if-eqz v0, :cond_2f

    const-string v3, "succeeded"

    goto :goto_31

    :cond_2f
    const-string v3, "failed"

    :goto_31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (extra bits = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1759
    const-string v3, "BearerData"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_4e
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1764
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    .line 1765
    return v0
.end method

.method private static blacklist decodeDtmfSmsAddress([BI)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1525
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1526
    const/4 v1, 0x0

    :goto_6
    if-ge v1, p1, :cond_63

    .line 1527
    div-int/lit8 v2, v1, 0x2

    aget-byte v2, p0, v2

    rem-int/lit8 v3, v1, 0x2

    mul-int/lit8 v3, v3, 0x4

    rsub-int/lit8 v3, v3, 0x4

    ushr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0xf

    .line 1528
    const/16 v3, 0xa

    const/4 v4, 0x1

    if-lt v2, v4, :cond_26

    const/16 v4, 0x9

    if-gt v2, v4, :cond_26

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_41

    .line 1529
    :cond_26
    if-ne v2, v3, :cond_2e

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_41

    .line 1530
    :cond_2e
    const/16 v3, 0xb

    if-ne v2, v3, :cond_38

    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_41

    .line 1531
    :cond_38
    const/16 v3, 0xc

    if-ne v2, v3, :cond_44

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1526
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1532
    :cond_44
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid SMS address DTMF code ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1534
    :cond_63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist decodeGsmDcs([BIII)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1259
    and-int/lit16 v0, p3, 0xc0

    const-string v1, ")"

    if-nez v0, :cond_39

    .line 1264
    shr-int/lit8 v0, p3, 0x2

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_56

    .line 1272
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unsupported user msgType encoding ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1270
    :pswitch_2a
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf16([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1268
    :pswitch_2f
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1266
    :pswitch_34
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1260
    :cond_39
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unsupported coding group ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
    .end packed-switch
.end method

.method private static blacklist decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1442
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    packed-switch v0, :pswitch_data_38

    .line 1454
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported IS-91 message type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget p0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1447
    :pswitch_2a
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 1448
    goto :goto_36

    .line 1451
    :pswitch_2e
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 1452
    goto :goto_36

    .line 1444
    :pswitch_32
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 1445
    nop

    .line 1457
    :goto_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x82
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_2e
    .end packed-switch
.end method

.method private static blacklist decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1425
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1426
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 1427
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1428
    const/16 v2, 0xe

    if-gt v0, v2, :cond_33

    const/4 v2, 0x3

    if-lt v0, v2, :cond_33

    if-lt v0, v1, :cond_33

    .line 1431
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1432
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1433
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1434
    int-to-byte v1, v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1435
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 1436
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1437
    return-void

    .line 1429
    :cond_33
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v0, "IS-91 voicemail status decoding failed"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1402
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1403
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v1

    const/4 v2, 0x6

    div-int/2addr v1, v2

    .line 1404
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1406
    const/16 v4, 0xe

    if-gt v3, v4, :cond_38

    if-lt v1, v3, :cond_38

    .line 1409
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1410
    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v3, :cond_2f

    .line 1411
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1410
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 1413
    :cond_2f
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1414
    return-void

    .line 1407
    :cond_38
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v0, "IS-91 short message decoding failed"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1359
    const-string v0, "IS-91 voicemail status decoding failed: "

    new-instance v1, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v1, v2}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1360
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v2

    const/4 v3, 0x6

    div-int/2addr v2, v3

    .line 1361
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1362
    const/16 v5, 0xe

    if-gt v2, v5, :cond_b3

    const/4 v5, 0x3

    if-lt v2, v5, :cond_b3

    if-lt v2, v4, :cond_b3

    .line 1366
    :try_start_1e
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1367
    :goto_23
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v2

    if-lt v2, v3, :cond_35

    .line 1368
    sget-object v2, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    aget-char v2, v2, v7

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_23

    .line 1370
    :cond_35
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1371
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 1372
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1373
    const/16 v7, 0x20

    if-ne v6, v7, :cond_50

    .line 1374
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    goto :goto_56

    .line 1375
    :cond_50
    const/16 v2, 0x21

    if-ne v6, v2, :cond_64

    .line 1376
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1381
    :goto_56
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1382
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    sub-int/2addr v4, v5

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1387
    nop

    .line 1388
    return-void

    .line 1378
    :cond_64
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IS-91 voicemail status decoding failed: illegal priority setting ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_83} :catch_9b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_83} :catch_83

    .line 1385
    :catch_83
    move-exception p0

    .line 1386
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1383
    :catch_9b
    move-exception p0

    .line 1384
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1363
    :cond_b3
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v0, "IS-91 voicemail status decoding failed"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1730
    nop

    .line 1731
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1732
    if-lt v1, v0, :cond_15

    .line 1733
    add-int/lit8 v1, v1, -0x8

    .line 1734
    nop

    .line 1735
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    const/4 v0, 0x1

    goto :goto_16

    .line 1732
    :cond_15
    const/4 v0, 0x0

    .line 1737
    :goto_16
    if-eqz v0, :cond_1a

    if-lez v1, :cond_49

    .line 1738
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LANGUAGE_INDICATOR decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1739
    if-eqz v0, :cond_2a

    const-string v3, "succeeded"

    goto :goto_2c

    :cond_2a
    const-string v3, "failed"

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (extra bits = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1738
    const-string v3, "BearerData"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    :cond_49
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1743
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 1744
    return v0
.end method

.method private static blacklist decodeLatin([BII)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1247
    const/4 v0, 0x1

    const-string v1, "ISO-8859-1"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1093
    nop

    .line 1094
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1095
    const/16 v2, 0x18

    const/4 v3, 0x0

    if-lt v1, v2, :cond_36

    .line 1096
    add-int/lit8 v1, v1, -0x18

    .line 1097
    nop

    .line 1098
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1099
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    shl-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1100
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1101
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    if-ne v2, v0, :cond_2f

    move v3, v0

    :cond_2f
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1102
    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    move v3, v0

    .line 1104
    :cond_36
    if-eqz v3, :cond_3a

    if-lez v1, :cond_69

    .line 1105
    :cond_3a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MESSAGE_IDENTIFIER decode "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 1106
    if-eqz v3, :cond_4a

    const-string v0, "succeeded"

    goto :goto_4c

    :cond_4a
    const-string v0, "failed"

    :goto_4c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " (extra bits = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1105
    const-string v0, "BearerData"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_69
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1110
    return v3
.end method

.method private static blacklist decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1611
    nop

    .line 1612
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1613
    const/16 v0, 0x30

    if-lt v1, v0, :cond_1b

    .line 1614
    add-int/lit8 v1, v1, -0x30

    .line 1615
    nop

    .line 1616
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    const/4 p0, 0x1

    goto :goto_1c

    .line 1613
    :cond_1b
    const/4 p0, 0x0

    .line 1618
    :goto_1c
    if-eqz p0, :cond_20

    if-lez v1, :cond_4f

    .line 1619
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_CENTER_TIME_STAMP decode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1620
    if-eqz p0, :cond_30

    const-string v2, "succeeded"

    goto :goto_32

    :cond_30
    const-string v2, "failed"

    :goto_32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (extra bits = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1619
    const-string v2, "BearerData"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_4f
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1624
    return p0
.end method

.method private static blacklist decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1485
    nop

    .line 1486
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1487
    if-lt v1, v0, :cond_1a

    .line 1488
    add-int/lit8 v1, v1, -0x8

    .line 1489
    nop

    .line 1490
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    const/4 p0, 0x1

    goto :goto_1b

    .line 1487
    :cond_1a
    const/4 p0, 0x0

    .line 1492
    :goto_1b
    if-eqz p0, :cond_1f

    if-lez v1, :cond_4e

    .line 1493
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NUMBER_OF_MESSAGES decode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1494
    if-eqz p0, :cond_2f

    const-string v2, "succeeded"

    goto :goto_31

    :cond_2f
    const-string v2, "failed"

    :goto_31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (extra bits = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1493
    const-string v2, "BearerData"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_4e
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1498
    return p0
.end method

.method private static blacklist decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1792
    nop

    .line 1793
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1794
    if-lt v1, v0, :cond_1a

    .line 1795
    add-int/lit8 v1, v1, -0x8

    .line 1796
    nop

    .line 1797
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    .line 1798
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    const/4 v0, 0x1

    goto :goto_1b

    .line 1794
    :cond_1a
    const/4 v0, 0x0

    .line 1800
    :goto_1b
    if-eqz v0, :cond_1f

    if-lez v1, :cond_4e

    .line 1801
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALERT_ON_MESSAGE_DELIVERY decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1802
    if-eqz v0, :cond_2f

    const-string v3, "succeeded"

    goto :goto_31

    :cond_2f
    const-string v3, "failed"

    :goto_31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (extra bits = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1801
    const-string v3, "BearerData"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    :cond_4e
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1806
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    .line 1807
    return v0
.end method

.method private static blacklist decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1590
    nop

    .line 1591
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1592
    if-lt v1, v0, :cond_1d

    .line 1593
    add-int/lit8 v1, v1, -0x8

    .line 1594
    nop

    .line 1595
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    .line 1596
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    const/4 v0, 0x1

    goto :goto_1e

    .line 1592
    :cond_1d
    const/4 v0, 0x0

    .line 1598
    :goto_1e
    if-eqz v0, :cond_22

    if-lez v1, :cond_51

    .line 1599
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_STATUS decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1600
    if-eqz v0, :cond_32

    const-string v3, "succeeded"

    goto :goto_34

    :cond_32
    const-string v3, "failed"

    :goto_34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (extra bits = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1599
    const-string v3, "BearerData"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_51
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1604
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    .line 1605
    return v0
.end method

.method private static blacklist decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1771
    nop

    .line 1772
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1773
    if-lt v1, v0, :cond_1a

    .line 1774
    add-int/lit8 v1, v1, -0x8

    .line 1775
    nop

    .line 1776
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1777
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    const/4 v0, 0x1

    goto :goto_1b

    .line 1773
    :cond_1a
    const/4 v0, 0x0

    .line 1779
    :goto_1b
    if-eqz v0, :cond_1f

    if-lez v1, :cond_4e

    .line 1780
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRIORITY_INDICATOR decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1781
    if-eqz v0, :cond_2f

    const-string v3, "succeeded"

    goto :goto_31

    :cond_2f
    const-string v3, "failed"

    :goto_31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (extra bits = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1780
    const-string v3, "BearerData"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :cond_4e
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1785
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1786
    return v0
.end method

.method private static blacklist decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1709
    nop

    .line 1710
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1711
    if-lt v1, v0, :cond_1a

    .line 1712
    add-int/lit8 v1, v1, -0x8

    .line 1713
    nop

    .line 1714
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 1715
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    const/4 v0, 0x1

    goto :goto_1b

    .line 1711
    :cond_1a
    const/4 v0, 0x0

    .line 1717
    :goto_1b
    if-eqz v0, :cond_1f

    if-lez v1, :cond_4e

    .line 1718
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRIVACY_INDICATOR decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1719
    if-eqz v0, :cond_2f

    const-string v3, "succeeded"

    goto :goto_31

    :cond_2f
    const-string v3, "failed"

    :goto_31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (extra bits = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1718
    const-string v3, "BearerData"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_4e
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1723
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    .line 1724
    return v0
.end method

.method private static blacklist decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1462
    nop

    .line 1463
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1464
    const/4 v2, 0x0

    if-lt v1, v0, :cond_3e

    .line 1465
    add-int/lit8 v1, v1, -0x8

    .line 1466
    nop

    .line 1467
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v0, :cond_17

    move v3, v0

    goto :goto_18

    :cond_17
    move v3, v2

    :goto_18
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1468
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v0, :cond_22

    move v3, v0

    goto :goto_23

    :cond_22
    move v3, v2

    :goto_23
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1469
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v0, :cond_2d

    move v3, v0

    goto :goto_2e

    :cond_2d
    move v3, v2

    :goto_2e
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1470
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v0, :cond_37

    move v2, v0

    :cond_37
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1471
    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    move v2, v0

    .line 1473
    :cond_3e
    if-eqz v2, :cond_42

    if-lez v1, :cond_71

    .line 1474
    :cond_42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "REPLY_OPTION decode "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 1475
    if-eqz v2, :cond_52

    const-string v0, "succeeded"

    goto :goto_54

    :cond_52
    const-string v0, "failed"

    :goto_54
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " (extra bits = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1474
    const-string v0, "BearerData"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_71
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1479
    return v2
.end method

.method private static blacklist decodeReserved(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1117
    nop

    .line 1118
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result p0

    .line 1119
    mul-int/lit8 v0, p0, 0x8

    .line 1120
    invoke-virtual {p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v1

    if-gt v0, v1, :cond_15

    .line 1121
    nop

    .line 1122
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    const/4 p1, 0x1

    goto :goto_16

    .line 1120
    :cond_15
    const/4 p1, 0x0

    .line 1124
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESERVED bearer data subparameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " decode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1125
    if-eqz p1, :cond_30

    const-string v3, "succeeded"

    goto :goto_32

    :cond_30
    const-string v3, "failed"

    :goto_32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (param bits = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1124
    const-string v1, "BearerData"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    if-eqz p1, :cond_52

    .line 1131
    return p1

    .line 1127
    :cond_52
    new-instance p1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " had invalid SUBPARAM_LEN "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist decodeServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1833
    move-object/from16 v0, p1

    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v1

    const/16 v2, 0xd

    const-string v3, " bits available"

    const-string v4, "SERVICE_CATEGORY_PROGRAM_DATA decode failed: only "

    if-lt v1, v2, :cond_104

    .line 1838
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    mul-int/2addr v2, v1

    .line 1839
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 1840
    add-int/lit8 v2, v2, -0x5

    .line 1842
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v6

    if-lt v6, v2, :cond_d9

    .line 1847
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1850
    const/4 v6, 0x0

    move v7, v6

    .line 1851
    :goto_29
    const/16 v8, 0x30

    if-lt v2, v8, :cond_9e

    .line 1852
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    .line 1853
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    shl-int/2addr v8, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    or-int/2addr v10, v8

    .line 1854
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    .line 1855
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 1856
    invoke-virtual {v0, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    .line 1857
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 1858
    add-int/lit8 v2, v2, -0x30

    .line 1860
    invoke-static {v5, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getBitsForNumFields(II)I

    move-result v8

    .line 1861
    if-lt v2, v8, :cond_77

    .line 1866
    new-instance v14, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v14}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1867
    iput v5, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1868
    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1869
    iput v7, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1870
    invoke-virtual {v0, v8}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v7

    iput-object v7, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1871
    sub-int/2addr v2, v8

    .line 1873
    invoke-static {v14, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    .line 1874
    iget-object v14, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1875
    new-instance v8, Landroid/telephony/cdma/CdmaSmsCbProgramData;

    invoke-direct/range {v8 .. v14}, Landroid/telephony/cdma/CdmaSmsCbProgramData;-><init>(IIIIILjava/lang/String;)V

    .line 1877
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1879
    nop

    .line 1880
    move v7, v15

    goto :goto_29

    .line 1862
    :cond_77
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "category name is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bits in length, but there are only "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1882
    :cond_9e
    if-eqz v7, :cond_a2

    if-lez v2, :cond_d1

    .line 1883
    :cond_a2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SERVICE_CATEGORY_PROGRAM_DATA decode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1884
    if-eqz v7, :cond_b2

    const-string v3, "succeeded"

    goto :goto_b4

    :cond_b2
    const-string v3, "failed"

    :goto_b4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (extra bits = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1883
    const-string v3, "BearerData"

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_d1
    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1889
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/ArrayList;

    .line 1890
    return v7

    .line 1843
    :cond_d9
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1844
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bits available ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bits expected)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1834
    :cond_104
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1835
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist decodeShiftJis([BII)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1253
    const/4 v0, 0x1

    const-string v1, "Shift_JIS"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1538
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 1542
    :try_start_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v2, v2

    const-string v3, "US-ASCII"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_14} :catch_15

    .line 1545
    goto :goto_28

    .line 1543
    :catch_15
    move-exception p0

    .line 1544
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v0, "invalid SMS address ASCII code"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1547
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDtmfSmsAddress([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    .line 1549
    :goto_28
    return-void
.end method

.method private static blacklist decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1137
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1138
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1139
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1140
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1141
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v5, 0x0

    iput v5, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1142
    nop

    .line 1143
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v2, v4, :cond_30

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v5, 0xa

    if-ne v2, v5, :cond_3a

    .line 1145
    :cond_30
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1146
    const/16 v3, 0xd

    .line 1148
    :cond_3a
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    iput v5, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1149
    add-int/2addr v3, v0

    .line 1150
    sub-int/2addr v1, v3

    .line 1151
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1152
    return v4
.end method

.method private static greylist decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1281
    nop

    .line 1282
    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    .line 1283
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    .line 1284
    add-int/lit8 v1, p1, 0x1

    add-int/2addr v1, v0

    .line 1285
    new-array v2, p1, [B

    .line 1286
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v4, 0x1

    invoke-static {v3, v4, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1287
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    goto :goto_1d

    .line 1282
    :cond_1c
    move v1, v0

    .line 1289
    :goto_1d
    iget p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    packed-switch p1, :pswitch_data_c4

    .line 1337
    :pswitch_22
    new-instance p1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported user data encoding ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1333
    :pswitch_43
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-static {p1, v1, v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeGsmDcs([BIII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1335
    goto/16 :goto_c3

    .line 1324
    :pswitch_51
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {p1, v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1325
    goto :goto_c3

    .line 1327
    :pswitch_5c
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {p1, v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1328
    goto :goto_c3

    .line 1330
    :pswitch_67
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {p1, v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeShiftJis([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1331
    goto :goto_c3

    .line 1321
    :pswitch_72
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {p1, v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf16([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1322
    goto :goto_c3

    .line 1318
    :pswitch_7d
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {p1, v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitAscii([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1319
    goto :goto_c3

    .line 1294
    :pswitch_88
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    .line 1295
    const v2, 0x1110270

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 1300
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    new-array v2, v2, [B

    .line 1301
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    if-ge v3, v4, :cond_a1

    .line 1302
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_a4

    :cond_a1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, v3

    .line 1304
    :goto_a4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {v4, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1305
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1307
    if-nez p1, :cond_b8

    .line 1310
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {p1, v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_c3

    .line 1312
    :cond_b8
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {p1, v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1314
    nop

    .line 1340
    :goto_c3
    return-void

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_88
        :pswitch_22
        :pswitch_7d
        :pswitch_7d
        :pswitch_72
        :pswitch_67
        :pswitch_22
        :pswitch_22
        :pswitch_5c
        :pswitch_51
        :pswitch_43
    .end packed-switch
.end method

.method private static blacklist decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1813
    nop

    .line 1814
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1815
    if-lt v1, v0, :cond_15

    .line 1816
    add-int/lit8 v1, v1, -0x8

    .line 1817
    nop

    .line 1818
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCode:I

    const/4 v0, 0x1

    goto :goto_16

    .line 1815
    :cond_15
    const/4 v0, 0x0

    .line 1820
    :goto_16
    if-eqz v0, :cond_1a

    if-lez v1, :cond_49

    .line 1821
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USER_RESPONSE_CODE decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1822
    if-eqz v0, :cond_2a

    const-string v3, "succeeded"

    goto :goto_2c

    :cond_2a
    const-string v3, "failed"

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (extra bits = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1821
    const-string v3, "BearerData"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :cond_49
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1826
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    .line 1827
    return v0
.end method

.method private static blacklist decodeUtf16([BII)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1165
    rem-int/lit8 v0, p1, 0x2

    .line 1166
    add-int/2addr v0, p1

    const/4 v1, 0x2

    div-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 1167
    const-string v0, "utf-16be"

    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist decodeUtf8([BII)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1158
    const/4 v0, 0x1

    const-string v1, "UTF-8"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1630
    nop

    .line 1631
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1632
    const/16 v0, 0x30

    if-lt v1, v0, :cond_1b

    .line 1633
    add-int/lit8 v1, v1, -0x30

    .line 1634
    nop

    .line 1635
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    const/4 p0, 0x1

    goto :goto_1c

    .line 1632
    :cond_1b
    const/4 p0, 0x0

    .line 1637
    :goto_1c
    if-eqz p0, :cond_20

    if-lez v1, :cond_4f

    .line 1638
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VALIDITY_PERIOD_ABSOLUTE decode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1639
    if-eqz p0, :cond_30

    const-string v2, "succeeded"

    goto :goto_32

    :cond_30
    const-string v2, "failed"

    :goto_32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (extra bits = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1638
    const-string v2, "BearerData"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    :cond_4f
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1643
    return p0
.end method

.method private static blacklist decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .line 1669
    nop

    .line 1670
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 1671
    if-lt v1, v0, :cond_15

    .line 1672
    add-int/lit8 v1, v1, -0x8

    .line 1673
    nop

    .line 1674
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    const/4 v0, 0x1

    goto :goto_16

    .line 1671
    :cond_15
    const/4 v0, 0x0

    .line 1676
    :goto_16
    if-eqz v0, :cond_1a

    if-lez v1, :cond_49

    .line 1677
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALIDITY_PERIOD_RELATIVE decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1678
    if-eqz v0, :cond_2a

    const-string v3, "succeeded"

    goto :goto_2c

    :cond_2a
    const-string v3, "failed"

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (extra bits = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1677
    const-string v3, "BearerData"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    :cond_49
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1682
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    .line 1683
    return v0
.end method

.method public static greylist encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B
    .registers 7

    .line 1023
    const-string v0, "BearerData encode failed: "

    const-string v1, "BearerData"

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v2, :cond_12

    move v2, v3

    goto :goto_13

    :cond_12
    move v2, v4

    :goto_13
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1026
    :try_start_15
    new-instance v2, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 v5, 0xc8

    invoke-direct {v2, v5}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 1027
    const/16 v5, 0x8

    invoke-virtual {v2, v5, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1028
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1029
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v4, :cond_2e

    .line 1030
    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1031
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1033
    :cond_2e
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v3, :cond_3a

    .line 1034
    const/16 v3, 0xe

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1035
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1037
    :cond_3a
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    if-nez v3, :cond_4a

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    if-nez v3, :cond_4a

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    if-nez v3, :cond_4a

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    if-eqz v3, :cond_52

    .line 1038
    :cond_4a
    const/16 v3, 0xa

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1039
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1041
    :cond_52
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-eqz v3, :cond_5e

    .line 1042
    const/16 v3, 0xb

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1043
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1045
    :cond_5e
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v3, :cond_69

    .line 1046
    const/4 v3, 0x5

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1047
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1049
    :cond_69
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v3, :cond_75

    .line 1050
    const/16 v3, 0x9

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1051
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1053
    :cond_75
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v3, :cond_81

    .line 1054
    const/16 v3, 0xd

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1055
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1057
    :cond_81
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v3, :cond_8d

    .line 1058
    const/16 v3, 0xf

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1059
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1061
    :cond_8d
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v3, :cond_97

    .line 1062
    invoke-virtual {v2, v5, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1063
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1065
    :cond_97
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v3, :cond_a3

    .line 1066
    const/16 v3, 0xc

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1067
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1069
    :cond_a3
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v3, :cond_af

    .line 1070
    const/16 v3, 0x14

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1071
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1073
    :cond_af
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    if-eqz v3, :cond_bb

    .line 1074
    const/16 v3, 0x13

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1075
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeScpResults(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1077
    :cond_bb
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v3, :cond_c6

    .line 1078
    const/4 v3, 0x3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1079
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1081
    :cond_c6
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_ca
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_15 .. :try_end_ca} :catch_e1
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_15 .. :try_end_ca} :catch_cb

    return-object p0

    .line 1084
    :catch_cb
    move-exception p0

    .line 1085
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7

    .line 1082
    :catch_e1
    move-exception p0

    .line 1083
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    nop

    .line 1087
    :goto_f7
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    .line 672
    array-length v1, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 673
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    .line 674
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    .line 675
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 676
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 677
    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 678
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 679
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    int-to-byte v4, v4

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    .line 680
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    invoke-static {p1, v5, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 681
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length p1, v0

    invoke-static {v0, v5, p0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 682
    return-void
.end method

.method private static greylist encode7bitAscii(Ljava/lang/String;Z)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 588
    :try_start_0
    new-instance v0, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 589
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 590
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_4f

    .line 591
    sget-object v3, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 592
    const/4 v4, 0x7

    if-ne v3, v5, :cond_49

    .line 593
    if-eqz p1, :cond_26

    .line 594
    const/16 v3, 0x20

    invoke-virtual {v0, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_4c

    .line 596
    :cond_26
    new-instance p1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot ASCII encode ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 599
    :cond_49
    invoke-virtual {v0, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 590
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 602
    :cond_4f
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_53
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_53} :catch_54

    return-object p0

    .line 603
    :catch_54
    move-exception p0

    .line 604
    new-instance p1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "7bit ASCII encode failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist encode7bitAsciiEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 688
    :try_start_0
    const-string v0, "BearerData"

    const-string v1, "encode7bitAsciiEms"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 690
    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v3, v2, 0x6

    const/4 v4, 0x7

    div-int/2addr v3, v4

    .line 691
    mul-int/lit8 v5, v3, 0x7

    sub-int/2addr v5, v2

    .line 692
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 694
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    .line 695
    new-instance v7, Lcom/android/internal/util/BitwiseOutputStream;

    .line 696
    const/4 v8, 0x0

    if-lez v5, :cond_20

    move v9, v1

    goto :goto_21

    :cond_20
    move v9, v8

    :goto_21
    add-int/2addr v9, v6

    invoke-direct {v7, v9}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 697
    invoke-virtual {v7, v5, v8}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 698
    move v5, v8

    :goto_29
    if-ge v5, v6, :cond_69

    .line 699
    sget-object v9, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 700
    if-ne v9, v11, :cond_63

    .line 701
    if-eqz p2, :cond_40

    .line 702
    const/16 v9, 0x20

    invoke-virtual {v7, v4, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_66

    .line 704
    :cond_40
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot ASCII encode ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 707
    :cond_63
    invoke-virtual {v7, v4, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 698
    :goto_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 710
    :cond_69
    invoke-virtual {v7}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object p2

    .line 711
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 712
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 713
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 714
    array-length v2, p2

    add-int/2addr v2, v0

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 715
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    .line 716
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, p1

    invoke-static {p1, v8, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 717
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length p1, p2

    invoke-static {p2, v8, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_93
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_93} :catch_95

    .line 720
    nop

    .line 721
    return-void

    .line 718
    :catch_95
    move-exception p0

    .line 719
    new-instance p1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "7bit ASCII encode failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 657
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 658
    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x7

    .line 659
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2, v0, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object p2

    .line 660
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 661
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 662
    iget v0, p2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 663
    iget-object p2, p2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 664
    iget-object p2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, p1

    int-to-byte v0, v0

    const/4 v2, 0x0

    aput-byte v0, p2, v2

    .line 665
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length p2, p1

    invoke-static {p1, v2, p0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    return-void
.end method

.method private static blacklist encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 643
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_6

    move p2, v0

    goto :goto_7

    :cond_6
    move p2, v1

    :goto_7
    :try_start_7
    invoke-static {p0, p1, p2, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object p0

    .line 644
    new-instance p1, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;-><init>(Lcom/android/internal/telephony/cdma/sms/BearerData-IA;)V

    .line 645
    array-length p2, p0

    sub-int/2addr p2, v0

    new-array p2, p2, [B

    iput-object p2, p1, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    .line 646
    iget-object p2, p1, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    array-length v2, p0

    sub-int/2addr v2, v0

    invoke-static {p0, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 647
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    iput p0, p1, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I
    :try_end_24
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_7 .. :try_end_24} :catch_25

    .line 648
    return-object p1

    .line 649
    :catch_25
    move-exception p0

    .line 650
    new-instance p1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "7bit GSM encode failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 907
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 908
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 909
    nop

    .line 910
    nop

    .line 911
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v3, :cond_16

    .line 912
    nop

    .line 913
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/2addr v0, v2

    const/16 v4, 0x10

    goto :goto_1b

    .line 915
    :cond_16
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/2addr v0, v1

    const/16 v4, 0x9

    .line 917
    :goto_1b
    add-int/2addr v4, v0

    .line 918
    div-int/lit8 v5, v4, 0x8

    rem-int/lit8 v6, v4, 0x8

    const/4 v7, 0x0

    if-lez v6, :cond_25

    move v6, v3

    goto :goto_26

    :cond_25
    move v6, v7

    :goto_26
    add-int/2addr v5, v6

    .line 919
    mul-int/lit8 v6, v5, 0x8

    sub-int/2addr v6, v4

    .line 920
    invoke-virtual {p1, v2, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 921
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 922
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v4, v3, :cond_41

    .line 923
    const/4 v3, 0x3

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 924
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 926
    :cond_41
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 927
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 928
    if-lez v6, :cond_50

    invoke-virtual {p1, v6, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 929
    :cond_50
    return-void
.end method

.method private static blacklist encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 893
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 895
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_f} :catch_10

    .line 898
    goto :goto_21

    .line 896
    :catch_10
    move-exception p0

    .line 897
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v0, "invalid SMS address, cannot convert to ASCII"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 900
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDtmfSmsAddress(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 902
    :goto_21
    return-void
.end method

.method private static blacklist encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 971
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 972
    const/4 v0, 0x2

    iget p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 973
    const/4 p0, 0x6

    invoke-virtual {p1, p0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 974
    return-void
.end method

.method private static blacklist encodeDtmfSmsAddress(Ljava/lang/String;)[B
    .registers 8

    .line 868
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 869
    mul-int/lit8 v1, v0, 0x4

    .line 870
    div-int/lit8 v2, v1, 0x8

    .line 871
    rem-int/lit8 v1, v1, 0x8

    const/4 v3, 0x0

    if-lez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    move v1, v3

    :goto_10
    add-int/2addr v2, v1

    .line 872
    new-array v1, v2, [B

    .line 873
    nop

    :goto_14
    if-ge v3, v0, :cond_4e

    .line 874
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 875
    nop

    .line 876
    const/16 v4, 0x31

    if-lt v2, v4, :cond_26

    const/16 v4, 0x39

    if-gt v2, v4, :cond_26

    add-int/lit8 v2, v2, -0x30

    goto :goto_3a

    .line 877
    :cond_26
    const/16 v4, 0x30

    if-ne v2, v4, :cond_2d

    const/16 v2, 0xa

    goto :goto_3a

    .line 878
    :cond_2d
    const/16 v4, 0x2a

    if-ne v2, v4, :cond_34

    const/16 v2, 0xb

    goto :goto_3a

    .line 879
    :cond_34
    const/16 v4, 0x23

    if-ne v2, v4, :cond_4c

    const/16 v2, 0xc

    .line 881
    :goto_3a
    div-int/lit8 v4, v3, 0x2

    aget-byte v5, v1, v4

    rem-int/lit8 v6, v3, 0x2

    mul-int/lit8 v6, v6, 0x4

    rsub-int/lit8 v6, v6, 0x4

    shl-int/2addr v2, v6

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 873
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 880
    :cond_4c
    const/4 p0, 0x0

    return-object p0

    .line 883
    :cond_4e
    return-object v1
.end method

.method private static blacklist encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 726
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    .line 727
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v1, :cond_48

    .line 728
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-ne v1, v2, :cond_15

    .line 729
    invoke-static {p0, v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    goto :goto_51

    .line 730
    :cond_15
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1e

    .line 731
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_51

    .line 732
    :cond_1e
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_27

    .line 733
    invoke-static {p0, v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAsciiEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    goto :goto_51

    .line 735
    :cond_27
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported EMS user data encoding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 740
    :cond_48
    const/4 v1, 0x0

    :try_start_49
    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    :try_end_4c
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_49 .. :try_end_4c} :catch_4d

    .line 743
    goto :goto_51

    .line 741
    :catch_4d
    move-exception v1

    .line 742
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    .line 745
    :goto_51
    return-void
.end method

.method private static blacklist encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 964
    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 965
    iget p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-virtual {p1, v1, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 966
    return-void
.end method

.method private static blacklist encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 523
    const/16 v0, 0x8

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 524
    const/4 v2, 0x4

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 525
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    shr-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 526
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 527
    iget-boolean p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 528
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 529
    return-void
.end method

.method private static blacklist encodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 1009
    const/16 v0, 0x8

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1010
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toByteArray()[B

    move-result-object p0

    const/16 v0, 0x30

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 1011
    return-void
.end method

.method private static blacklist encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 942
    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 943
    iget p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {p1, v1, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 944
    return-void
.end method

.method private static blacklist encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 987
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 988
    const/4 v0, 0x2

    iget p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 989
    const/4 p0, 0x6

    invoke-virtual {p1, p0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 990
    return-void
.end method

.method private static blacklist encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 934
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 935
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 936
    const/4 v0, 0x6

    iget p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 937
    return-void
.end method

.method private static blacklist encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 979
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 980
    const/4 v0, 0x2

    iget p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 981
    const/4 p0, 0x6

    invoke-virtual {p1, p0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 982
    return-void
.end method

.method private static blacklist encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 956
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 957
    const/4 v0, 0x2

    iget p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 958
    const/4 p0, 0x6

    invoke-virtual {p1, p0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 959
    return-void
.end method

.method private static blacklist encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 859
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 860
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 861
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 862
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 863
    iget-boolean p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    invoke-virtual {p1, v1, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 864
    const/4 p0, 0x4

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 865
    return-void
.end method

.method private static blacklist encodeScpResults(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 995
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    .line 996
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    mul-int/2addr v0, v1

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 997
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;

    .line 998
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getCategory()I

    move-result v3

    .line 999
    shr-int/lit8 v4, v3, 0x8

    invoke-virtual {p1, v2, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1000
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1001
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getLanguage()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1002
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getCategoryResult()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1003
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1004
    goto :goto_11

    .line 1005
    :cond_3b
    return-void
.end method

.method private static blacklist encodeShiftJis(Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 749
    :try_start_0
    const-string v0, "Shift_JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 750
    :catch_7
    move-exception p0

    .line 751
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shift-JIS encode failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    const/16 v3, 0x8c

    if-gt v0, v3, :cond_96

    .line 830
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-ne v0, v3, :cond_36

    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, v3

    mul-int/2addr v3, v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v5, v5, 0x7

    sub-int/2addr v3, v5

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    goto :goto_3a

    .line 834
    :cond_36
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    .line 837
    :goto_3a
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    mul-int/2addr v0, v4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    sub-int/2addr v0, v3

    .line 838
    add-int/lit8 v3, v0, 0xd

    .line 839
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v6, 0xa

    if-eq v5, v1, :cond_55

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v5, v6, :cond_57

    .line 841
    :cond_55
    add-int/lit8 v3, v3, 0x8

    .line 843
    :cond_57
    div-int/lit8 v5, v3, 0x8

    rem-int/lit8 v7, v3, 0x8

    if-lez v7, :cond_5f

    move v7, v1

    goto :goto_60

    :cond_5f
    move v7, v2

    :goto_60
    add-int/2addr v5, v7

    .line 844
    mul-int/lit8 v7, v5, 0x8

    sub-int/2addr v7, v3

    .line 845
    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 846
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v5, 0x5

    invoke-virtual {p1, v5, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 847
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v3, v1, :cond_7b

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v1, v6, :cond_82

    .line 849
    :cond_7b
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 851
    :cond_82
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 852
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object p0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 853
    if-lez v7, :cond_95

    invoke-virtual {p1, v7, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 854
    :cond_95
    return-void

    .line 825
    :cond_96
    new-instance p1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encoded user data too large ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object p0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " > "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " bytes)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    const-string v1, ""

    const-string v2, "BearerData"

    if-nez v0, :cond_13

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v0, :cond_13

    .line 759
    const-string v0, "user data with null payloadStr"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 763
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_1b

    .line 764
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 765
    return-void

    .line 768
    :cond_1b
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_be

    .line 769
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-nez v0, :cond_3f

    .line 770
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v0, :cond_38

    .line 771
    const-string v0, "user data with octet encoding but null payload"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-array v0, v6, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 773
    iput v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_de

    .line 775
    :cond_38
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_de

    .line 778
    :cond_3f
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v0, :cond_4a

    .line 779
    const-string v0, "non-octet user data with null payloadStr"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 782
    :cond_4a
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_60

    .line 783
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0, v6, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v0

    .line 784
    iget-object v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 785
    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 786
    goto/16 :goto_de

    :cond_60
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v0, v3, :cond_75

    .line 787
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_de

    .line 789
    :cond_75
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v0, v4, :cond_8a

    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 791
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_de

    .line 792
    :cond_8a
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9d

    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeShiftJis(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 794
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_de

    .line 796
    :cond_9d
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported user data encoding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_be
    :try_start_be
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 803
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I
    :try_end_c8
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_be .. :try_end_c8} :catch_c9

    .line 807
    goto :goto_d4

    .line 804
    :catch_c9
    move-exception v0

    .line 805
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 806
    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 808
    :goto_d4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 809
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 811
    :goto_de
    return-void
.end method

.method private static blacklist encodeUtf16(Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 612
    :try_start_0
    const-string v0, "utf-16be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 613
    :catch_7
    move-exception p0

    .line 614
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UTF-16 encode failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 949
    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 950
    iget p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-virtual {p1, v1, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 951
    return-void
.end method

.method private static greylist-max-r getBitsForNumFields(II)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .line 1926
    packed-switch p0, :pswitch_data_2c

    .line 1943
    :pswitch_3
    new-instance p1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported message encoding ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1940
    :pswitch_22
    mul-int/lit8 p1, p1, 0x10

    return p1

    .line 1937
    :pswitch_25
    mul-int/lit8 p1, p1, 0x7

    return p1

    .line 1932
    :pswitch_28
    mul-int/lit8 p1, p1, 0x8

    return p1

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_3
        :pswitch_25
        :pswitch_25
        :pswitch_22
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_25
    .end packed-switch
.end method

.method private static blacklist getLanguageCodeForValue(I)Ljava/lang/String;
    .registers 1

    .line 457
    packed-switch p0, :pswitch_data_1a

    .line 480
    const/4 p0, 0x0

    return-object p0

    .line 477
    :pswitch_5
    const-string p0, "he"

    return-object p0

    .line 474
    :pswitch_8
    const-string p0, "zh"

    return-object p0

    .line 471
    :pswitch_b
    const-string p0, "ko"

    return-object p0

    .line 468
    :pswitch_e
    const-string p0, "ja"

    return-object p0

    .line 465
    :pswitch_11
    const-string p0, "es"

    return-object p0

    .line 462
    :pswitch_14
    const-string p0, "fr"

    return-object p0

    .line 459
    :pswitch_17
    const-string p0, "en"

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist isCmasAlertCategory(I)Z
    .registers 2

    .line 2040
    const/16 v0, 0x1000

    if-lt p0, v0, :cond_a

    const/16 v0, 0x10ff

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static blacklist serviceCategoryToCmasMessageClass(I)I
    .registers 1

    .line 1894
    packed-switch p0, :pswitch_data_10

    .line 1911
    const/4 p0, -0x1

    return p0

    .line 1908
    :pswitch_5
    const/4 p0, 0x4

    return p0

    .line 1905
    :pswitch_7
    const/4 p0, 0x3

    return p0

    .line 1902
    :pswitch_9
    const/4 p0, 0x2

    return p0

    .line 1899
    :pswitch_b
    const/4 p0, 0x1

    return p0

    .line 1896
    :pswitch_d
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_10
    .packed-switch 0x1000
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public blacklist getLanguage()Ljava/lang/String;
    .registers 2

    .line 448
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguageCodeForValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    const-string v1, "BearerData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ messageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    const-string v3, "unset"

    if-eqz v2, :cond_52

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_53

    :cond_52
    move-object v2, v3

    :goto_53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", privacy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v2, :cond_74

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_75

    :cond_74
    move-object v2, v3

    :goto_75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", alert="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v2, :cond_96

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_97

    :cond_96
    move-object v2, v3

    :goto_97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", displayMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v2, :cond_b8

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_b9

    :cond_b8
    move-object v2, v3

    :goto_b9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v2, :cond_da

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_db

    :cond_da
    move-object v2, v3

    :goto_db
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", errorClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v2, :cond_fc

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_fd

    :cond_fc
    move-object v2, v3

    :goto_fd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v2, :cond_11e

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_11f

    :cond_11e
    move-object v2, v3

    :goto_11f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgCenterTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 498
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_13c

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    goto :goto_13d

    :cond_13c
    move-object v2, v3

    :goto_13d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", validityPeriodAbsolute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 500
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_15a

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    goto :goto_15b

    :cond_15a
    move-object v2, v3

    :goto_15b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", validityPeriodRelative="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 502
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v2, :cond_17c

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_17d

    :cond_17c
    move-object v2, v3

    :goto_17d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deferredDeliveryTimeAbsolute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 504
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_19a

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    goto :goto_19b

    :cond_19a
    move-object v2, v3

    :goto_19b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deferredDeliveryTimeRelative="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 506
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    if-eqz v2, :cond_1bb

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_1bb
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", userAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deliveryAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", readAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", reportReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberOfMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", callbackNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BearerData"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", depositIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hasUserDataHeader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", userData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
