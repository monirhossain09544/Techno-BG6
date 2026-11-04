.class public abstract Lcom/android/internal/telephony/SmsMessageBase;
.super Ljava/lang/Object;
.source "SmsMessageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    }
.end annotation


# static fields
.field public static final blacklist NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected greylist-max-o mEmailBody:Ljava/lang/String;

.field protected greylist-max-o mEmailFrom:Ljava/lang/String;

.field protected greylist-max-o mIndexOnIcc:I

.field protected greylist-max-o mIsEmail:Z

.field protected greylist-max-r mIsMwi:Z

.field protected greylist-max-r mMessageBody:Ljava/lang/String;

.field public greylist-max-r mMessageRef:I

.field protected greylist-max-r mMwiDontStore:Z

.field protected greylist-max-r mMwiSense:Z

.field protected greylist-max-r mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected greylist mPdu:[B

.field protected greylist-max-o mPseudoSubject:Ljava/lang/String;

.field protected blacklist mReceivedEncodingType:I

.field protected blacklist mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected greylist-max-r mScAddress:Ljava/lang/String;

.field protected greylist-max-o mScTimeMillis:J

.field protected greylist-max-o mStatusOnIcc:I

.field protected greylist-max-o mUserData:[B

.field protected greylist-max-r mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    nop

    .line 41
    const-string v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsMessageBase;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 40
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mReceivedEncodingType:I

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    .line 115
    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    .line 123
    return-void
.end method

.method public static greylist-max-o calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 7

    .line 475
    new-instance v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 476
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 477
    const/4 v2, 0x3

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 478
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 479
    const/16 v2, 0x8c

    if-le v1, v2, :cond_4d

    .line 485
    nop

    .line 486
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v2

    if-nez v2, :cond_26

    .line 488
    const/16 v2, 0x4a4

    if-gt v1, v2, :cond_26

    .line 489
    const/16 v1, 0x84

    goto :goto_28

    .line 493
    :cond_26
    const/16 v1, 0x86

    :goto_28
    nop

    .line 494
    const/4 v2, 0x0

    move v3, v2

    .line 495
    :goto_2b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_4a

    .line 496
    invoke-static {v2, v1, p0}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v4

    .line 498
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v4, v5, :cond_45

    .line 499
    div-int/lit8 v5, v1, 0x2

    add-int/2addr v2, v5

    .line 500
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v2, v5

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 502
    :cond_45
    nop

    .line 503
    add-int/lit8 v3, v3, 0x1

    .line 504
    move v2, v4

    goto :goto_2b

    .line 505
    :cond_4a
    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 506
    goto :goto_55

    .line 507
    :cond_4d
    const/4 p0, 0x1

    iput p0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 508
    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 511
    :goto_55
    return-object v0
.end method

.method private static blacklist extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 377
    sget-object v0, Lcom/android/internal/telephony/SmsMessageBase;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 380
    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 382
    :cond_12
    return-object p0
.end method

.method public static greylist-max-o findNextUnicodePosition(IILjava/lang/CharSequence;)I
    .registers 6

    .line 438
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 442
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_54

    .line 443
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v0

    .line 444
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-nez v1, :cond_54

    .line 446
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    .line 447
    :goto_26
    add-int/lit8 v1, v0, 0x4

    if-gt v1, p1, :cond_42

    .line 449
    invoke-static {p2, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 448
    invoke-static {v2}, Lcom/android/internal/telephony/SmsMessageBase;->isRegionalIndicatorSymbol(I)Z

    move-result v2

    if-eqz v2, :cond_42

    add-int/lit8 v2, v0, 0x2

    .line 451
    invoke-static {p2, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 450
    invoke-static {v2}, Lcom/android/internal/telephony/SmsMessageBase;->isRegionalIndicatorSymbol(I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 453
    move v0, v1

    goto :goto_26

    .line 455
    :cond_42
    if-le v0, p0, :cond_46

    .line 456
    move p1, v0

    goto :goto_54

    .line 457
    :cond_46
    add-int/lit8 p0, p1, -0x1

    invoke-interface {p2, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_54

    .line 459
    add-int/lit8 p1, p1, -0x1

    .line 463
    :cond_54
    :goto_54
    return p1
.end method

.method public static blacklist isEmailAddress(Ljava/lang/String;)Z
    .registers 2

    .line 392
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 393
    const/4 p0, 0x0

    return p0

    .line 396
    :cond_8
    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBase;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 397
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 398
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static blacklist isRegionalIndicatorSymbol(I)Z
    .registers 2

    .line 468
    const v0, 0x1f1e6

    if-gt v0, p0, :cond_c

    const v0, 0x1f1ff

    if-gt p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method


# virtual methods
.method protected greylist-max-o extractEmailAddressFromMessageBody()V
    .registers 4

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    const-string v1, "( /)|( )"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 422
    array-length v1, v0

    if-ge v1, v2, :cond_d

    return-void

    .line 423
    :cond_d
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    .line 424
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    .line 426
    return-void
.end method

.method public greylist getDisplayMessageBody()Ljava/lang/String;
    .registers 2

    .line 197
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    if-eqz v0, :cond_7

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    return-object v0

    .line 200
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getDisplayOriginatingAddress()Ljava/lang/String;
    .registers 2

    .line 170
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    if-eqz v0, :cond_7

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    return-object v0

    .line 173
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getEmailBody()Ljava/lang/String;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getEmailFrom()Ljava/lang/String;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getIndexOnIcc()I
    .registers 2

    .line 365
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    return v0
.end method

.method public greylist getMessageBody()Ljava/lang/String;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public abstract greylist-max-o getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
.end method

.method public greylist getOriginatingAddress()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_6

    .line 157
    const/4 v0, 0x0

    return-object v0

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getPdu()[B
    .registers 2

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    return-object v0
.end method

.method public abstract greylist-max-p getProtocolIdentifier()I
.end method

.method public greylist getPseudoSubject()Ljava/lang/String;
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPseudoSubject:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPseudoSubject:Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public blacklist getReceivedEncodingType()I
    .registers 2

    .line 528
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mReceivedEncodingType:I

    return v0
.end method

.method public blacklist getRecipientAddress()Ljava/lang/String;
    .registers 2

    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_6

    .line 521
    const/4 v0, 0x0

    return-object v0

    .line 524
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-p getServiceCenterAddress()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScAddress:Ljava/lang/String;

    return-object v0
.end method

.method public abstract greylist-max-p getStatus()I
.end method

.method public greylist-max-o getStatusOnIcc()I
    .registers 2

    .line 356
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    return v0
.end method

.method public greylist getTimestampMillis()J
    .registers 3

    .line 218
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScTimeMillis:J

    return-wide v0
.end method

.method public greylist getUserData()[B
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserData:[B

    return-object v0
.end method

.method public greylist getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method public abstract greylist-max-o isCphsMwiMessage()Z
.end method

.method public greylist-max-o isEmail()Z
    .registers 2

    .line 228
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    return v0
.end method

.method public abstract greylist-max-o isMWIClearMessage()Z
.end method

.method public abstract greylist-max-o isMWISetMessage()Z
.end method

.method public abstract greylist-max-o isMwiDontStore()Z
.end method

.method public abstract greylist-max-p isReplace()Z
.end method

.method public abstract greylist-max-p isReplyPathPresent()Z
.end method

.method public abstract greylist isStatusReportMessage()Z
.end method

.method protected greylist-max-o parseMessageBody()V
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->couldBeEmailGateway()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->extractEmailAddressFromMessageBody()V

    .line 374
    :cond_f
    return-void
.end method
