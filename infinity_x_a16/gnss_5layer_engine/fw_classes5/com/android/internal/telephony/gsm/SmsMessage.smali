.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    }
.end annotation


# static fields
.field private static final blacklist INVALID_VALIDITY_PERIOD:I = -0x1

.field static final blacklist LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final blacklist VALIDITY_PERIOD_FORMAT_ABSOLUTE:I = 0x3

.field private static final blacklist VALIDITY_PERIOD_FORMAT_ENHANCED:I = 0x1

.field private static final blacklist VALIDITY_PERIOD_FORMAT_NONE:I = 0x0

.field private static final blacklist VALIDITY_PERIOD_FORMAT_RELATIVE:I = 0x2

.field private static final blacklist VALIDITY_PERIOD_MAX:I = 0x9b0a0

.field private static final blacklist VALIDITY_PERIOD_MIN:I = 0x5

.field private static final blacklist VDBG:Z = false


# instance fields
.field private blacklist mDataCodingScheme:I

.field private blacklist mIsStatusReportMessage:Z

.field private blacklist mMti:I

.field private blacklist mProtocolIdentifier:I

.field private blacklist mReplyPathPresent:Z

.field private blacklist mStatus:I

.field private blacklist mVoiceMailCount:I

.field private blacklist messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 96
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 118
    return-void
.end method

.method public static greylist calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 4

    .line 1162
    nop

    .line 1163
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1164
    const v1, 0x111026f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1165
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 1164
    :cond_14
    const/4 v0, 0x0

    .line 1167
    :goto_15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1168
    goto :goto_1d

    .line 1167
    :cond_1c
    move-object p0, v0

    .line 1170
    :goto_1d
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p1

    .line 1171
    if-nez p1, :cond_28

    .line 1172
    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object p0

    return-object p0

    .line 1174
    :cond_28
    return-object p1
.end method

.method public static greylist-max-q createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 8

    .line 170
    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 172
    iput p0, v2, Lcom/android/internal/telephony/gsm/SmsMessage;->mIndexOnIcc:I

    .line 177
    const/4 p0, 0x0

    aget-byte v3, p1, p0

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-nez v3, :cond_17

    .line 178
    const-string p0, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-object v1

    .line 182
    :cond_17
    aget-byte v3, p1, p0

    and-int/lit8 v3, v3, 0x7

    iput v3, v2, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatusOnIcc:I

    .line 185
    array-length v3, p1

    sub-int/2addr v3, v4

    .line 189
    new-array v5, v3, [B

    .line 190
    invoke-static {p1, v4, v5, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    invoke-direct {v2, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_27} :catch_28

    .line 192
    return-object v2

    .line 193
    :catch_28
    move-exception p0

    .line 194
    const-string p1, "SMS PDU parsing failed: "

    invoke-static {v0, p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    return-object v1
.end method

.method public static greylist createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 4

    .line 126
    const-string v0, "SmsMessage"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 127
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_b} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_b} :catch_c

    .line 128
    return-object v2

    .line 132
    :catch_c
    move-exception p0

    .line 133
    const-string v2, "SMS PDU parsing failed with out of memory: "

    invoke-static {v0, v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    return-object v1

    .line 129
    :catch_13
    move-exception p0

    .line 130
    const-string v2, "SMS PDU parsing failed: "

    invoke-static {v0, v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    return-object v1
.end method

.method private static greylist encodeUCS2(Ljava/lang/String;[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 481
    const-string v0, "utf-16be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 483
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_20

    .line 485
    array-length v2, p1

    array-length v3, p0

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    new-array v2, v2, [B

    .line 487
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 488
    array-length v3, p1

    invoke-static {p1, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    array-length p1, p1

    add-int/2addr p1, v1

    array-length v3, p0

    invoke-static {p0, v0, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v2

    goto :goto_21

    .line 492
    :cond_20
    nop

    .line 494
    :goto_21
    array-length p1, p0

    const/16 v2, 0xff

    if-gt p1, v2, :cond_34

    .line 498
    array-length p1, p0

    add-int/2addr p1, v1

    new-array p1, p1, [B

    .line 499
    array-length v3, p0

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 500
    array-length v2, p0

    invoke-static {p0, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    return-object p1

    .line 495
    :cond_34
    new-instance p0, Lcom/android/internal/telephony/EncodeException;

    const-string p1, "Payload cannot exceed 255 bytes"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static blacklist getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 24

    .line 714
    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz p1, :cond_1be

    if-nez v1, :cond_9

    goto/16 :goto_1be

    .line 719
    :cond_9
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    .line 720
    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 721
    iget v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 722
    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 723
    nop

    .line 725
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2a

    if-nez v5, :cond_1c

    if-eqz v0, :cond_2a

    .line 726
    :cond_1c
    new-instance v7, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 727
    iput v5, v7, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 728
    iput v0, v7, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 729
    invoke-static {v7}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v7

    goto :goto_2b

    .line 732
    :cond_2a
    move-object v7, v2

    :goto_2b
    new-instance v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v8}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 734
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0xb4

    invoke-direct {v9, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 737
    if-nez p0, :cond_3c

    .line 738
    iput-object v2, v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_43

    .line 740
    :cond_3c
    nop

    .line 741
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 745
    :goto_43
    invoke-virtual {v9, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 749
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v10

    .line 752
    if-nez v10, :cond_4d

    return-object v2

    .line 756
    :cond_4d
    array-length v11, v10

    sub-int/2addr v11, v6

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    array-length v13, v10

    sub-int/2addr v13, v6

    aget-byte v13, v10, v13

    const/16 v14, 0xf0

    and-int/2addr v13, v14

    if-ne v13, v14, :cond_5c

    move v13, v6

    goto :goto_5d

    :cond_5c
    move v13, v3

    :goto_5d
    sub-int/2addr v11, v13

    invoke-virtual {v9, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 759
    array-length v11, v10

    invoke-virtual {v9, v10, v3, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 762
    invoke-virtual {v9, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 767
    const/4 v10, 0x3

    const-string v11, "Implausible UnsupportedEncodingException "

    const-string v13, "SmsMessage"

    if-ne v4, v6, :cond_74

    .line 768
    :try_start_6f
    invoke-static {v1, v7, v5, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_73
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_6f .. :try_end_73} :catch_7a

    goto :goto_79

    .line 772
    :cond_74
    :try_start_74
    invoke-static {v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_78
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_74 .. :try_end_78} :catch_7c
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_74 .. :try_end_78} :catch_7a

    .line 776
    nop

    .line 796
    :goto_79
    goto :goto_93

    .line 778
    :catch_7a
    move-exception v0

    goto :goto_81

    .line 773
    :catch_7c
    move-exception v0

    .line 774
    :try_start_7d
    invoke-static {v13, v11, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_7d .. :try_end_80} :catch_7a

    .line 775
    return-object v2

    .line 779
    :goto_81
    invoke-virtual {v0}, Lcom/android/internal/telephony/EncodeException;->getError()I

    move-result v4

    const-string v5, "Exceed size limitation EncodeException"

    if-ne v4, v6, :cond_8d

    .line 780
    invoke-static {v13, v5, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 781
    return-object v2

    .line 786
    :cond_8d
    :try_start_8d
    invoke-static {v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_91
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_8d .. :try_end_91} :catch_1b9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8d .. :try_end_91} :catch_1b4

    .line 787
    nop

    .line 794
    move v4, v10

    .line 798
    :goto_93
    const-string v1, "Message too long ("

    const/16 v5, 0x8

    if-ne v4, v6, :cond_c4

    .line 799
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v7, 0xa0

    if-le v4, v7, :cond_c0

    .line 801
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " septets)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    return-object v2

    .line 806
    :cond_c0
    invoke-virtual {v9, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_ee

    .line 808
    :cond_c4
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v7, 0x8c

    if-le v4, v7, :cond_eb

    .line 810
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-object v2

    .line 815
    :cond_eb
    invoke-virtual {v9, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 819
    :goto_ee
    const/4 v1, 0x7

    new-array v2, v1, [B

    .line 821
    invoke-static/range {p3 .. p4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v4

    .line 822
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v7

    .line 826
    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    div-int/lit8 v4, v4, 0x3c

    div-int/lit8 v4, v4, 0xf

    .line 827
    if-gez v4, :cond_111

    move v11, v6

    goto :goto_112

    :cond_111
    move v11, v3

    .line 828
    :goto_112
    if-eqz v11, :cond_115

    .line 829
    neg-int v4, v4

    .line 831
    :cond_115
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getYear()I

    move-result v13

    .line 832
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v14

    .line 833
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v15

    .line 834
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getHour()I

    move-result v16

    .line 835
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v17

    .line 836
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v7

    .line 838
    move/from16 p0, v5

    const/16 v5, 0x7d0

    if-le v13, v5, :cond_135

    sub-int/2addr v13, v5

    goto :goto_137

    :cond_135
    add-int/lit16 v13, v13, -0x76c

    .line 839
    :goto_137
    rem-int/lit8 v5, v13, 0xa

    and-int/lit8 v5, v5, 0xf

    const/16 v18, 0x4

    shl-int/lit8 v5, v5, 0x4

    div-int/lit8 v13, v13, 0xa

    and-int/lit8 v13, v13, 0xf

    or-int/2addr v5, v13

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 840
    rem-int/lit8 v5, v14, 0xa

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    div-int/lit8 v14, v14, 0xa

    and-int/lit8 v13, v14, 0xf

    or-int/2addr v5, v13

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    .line 841
    rem-int/lit8 v5, v15, 0xa

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    div-int/lit8 v15, v15, 0xa

    and-int/lit8 v6, v15, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v12

    .line 842
    rem-int/lit8 v5, v16, 0xa

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    div-int/lit8 v16, v16, 0xa

    and-int/lit8 v6, v16, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v10

    .line 843
    rem-int/lit8 v5, v17, 0xa

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    div-int/lit8 v17, v17, 0xa

    and-int/lit8 v6, v17, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v18

    .line 844
    rem-int/lit8 v5, v7, 0xa

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    div-int/lit8 v7, v7, 0xa

    and-int/lit8 v6, v7, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    const/4 v6, 0x5

    aput-byte v5, v2, v6

    .line 845
    rem-int/lit8 v5, v4, 0xa

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    div-int/lit8 v4, v4, 0xa

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v4, v5

    int-to-byte v4, v4

    const/4 v5, 0x6

    aput-byte v4, v2, v5

    .line 846
    if-eqz v11, :cond_1a6

    .line 847
    aget-byte v4, v2, v3

    or-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 849
    :cond_1a6
    invoke-virtual {v9, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 851
    array-length v1, v0

    invoke-virtual {v9, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 852
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 853
    return-object v8

    .line 791
    :catch_1b4
    move-exception v0

    .line 792
    invoke-static {v13, v11, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 793
    return-object v2

    .line 788
    :catch_1b9
    move-exception v0

    .line 789
    invoke-static {v13, v5, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    return-object v2

    .line 715
    :cond_1be
    :goto_1be
    return-object v2
.end method

.method public static blacklist getRelativeValidityPeriod(I)I
    .registers 3

    .line 230
    nop

    .line 232
    const/4 v0, 0x5

    if-lt p0, v0, :cond_29

    .line 233
    const/16 v1, 0x2d0

    if-gt p0, v1, :cond_c

    .line 234
    div-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    goto :goto_2a

    .line 235
    :cond_c
    const/16 v0, 0x5a0

    if-gt p0, v0, :cond_16

    .line 236
    sub-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x1e

    add-int/lit16 p0, p0, 0x8f

    goto :goto_2a

    .line 237
    :cond_16
    const v1, 0xa8c0

    if-gt p0, v1, :cond_1f

    .line 238
    div-int/2addr p0, v0

    add-int/lit16 p0, p0, 0xa6

    goto :goto_2a

    .line 239
    :cond_1f
    const v0, 0x9b0a0

    if-gt p0, v0, :cond_29

    .line 240
    div-int/lit16 p0, p0, 0x2760

    add-int/lit16 p0, p0, 0xc0

    goto :goto_2a

    .line 243
    :cond_29
    const/4 p0, -0x1

    :goto_2a
    return p0
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 11

    .line 615
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 13

    .line 557
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 558
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 559
    const/4 p2, 0x0

    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 560
    iput-boolean p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 562
    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 563
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 565
    invoke-static {v1}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    .line 567
    array-length v1, p3

    array-length v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8c

    if-le v1, v2, :cond_44

    .line 568
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SMS data message may only contain "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, v0

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " bytes"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsMessage"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 p0, 0x0

    return-object p0

    .line 573
    :cond_44
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 574
    const/16 v3, 0x41

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .line 579
    if-nez p0, :cond_56

    return-object v5

    .line 583
    :cond_56
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 588
    array-length p1, p3

    array-length p4, v0

    add-int/2addr p1, p4

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 591
    array-length p1, v0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 592
    array-length p1, v0

    invoke-virtual {p0, v0, p2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 595
    array-length p1, p3

    invoke-virtual {p0, p3, p2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 597
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    iput-object p0, v5, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 598
    return-object v5
.end method

.method public static greylist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 5

    .line 519
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 15

    .line 537
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v8, p4

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static greylist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 13

    .line 262
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 18

    .line 287
    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-r getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 19

    .line 313
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .registers 27

    .line 341
    move-object/from16 v1, p2

    if-eqz v1, :cond_153

    if-nez p1, :cond_a

    const/16 v16, 0x0

    goto/16 :goto_155

    .line 345
    :cond_a
    const/4 v3, 0x1

    const-string v4, "SmsMessage"

    const/4 v5, 0x0

    if-nez p5, :cond_82

    .line 347
    invoke-static {v1, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    .line 348
    iget v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 349
    iget v7, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 350
    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 352
    if-ne v6, v3, :cond_7f

    if-nez v7, :cond_20

    if-eqz v0, :cond_7f

    .line 354
    :cond_20
    if-eqz p4, :cond_71

    .line 355
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    .line 356
    iget v9, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-ne v9, v7, :cond_32

    iget v9, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eq v9, v0, :cond_2f

    goto :goto_32

    :cond_2f
    move-object/from16 v8, p4

    goto :goto_70

    .line 358
    :cond_32
    :goto_32
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating language table in SMS header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iput v7, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 362
    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 363
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    .line 365
    :goto_70
    goto :goto_8a

    .line 366
    :cond_71
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 367
    iput v7, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 368
    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 369
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    goto :goto_8a

    .line 374
    :cond_7f
    move-object/from16 v8, p4

    goto :goto_8a

    .line 345
    :cond_82
    move-object/from16 v8, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v0, p7

    .line 374
    :goto_8a
    new-instance v13, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v13}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 376
    invoke-static/range {p8 .. p8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getRelativeValidityPeriod(I)I

    move-result v15

    .line 378
    nop

    .line 380
    if-eqz v8, :cond_9a

    .line 382
    const/16 v9, 0x41

    int-to-byte v9, v9

    goto :goto_9b

    .line 380
    :cond_9a
    move v9, v3

    .line 385
    :goto_9b
    const/4 v10, -0x1

    if-eq v15, v10, :cond_a3

    .line 387
    or-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    move v11, v9

    goto :goto_a4

    .line 385
    :cond_a3
    move v11, v9

    .line 390
    :goto_a4
    move-object/from16 v9, p0

    move/from16 v12, p3

    move/from16 v14, p9

    move v2, v10

    const/16 v16, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v9 .. v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;

    move-result-object v9

    .line 396
    if-nez v9, :cond_b6

    return-object v13

    .line 401
    :cond_b6
    const-string v10, "Implausible UnsupportedEncodingException "

    if-ne v6, v3, :cond_bf

    .line 402
    :try_start_ba
    invoke-static {v1, v8, v7, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_be
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_ba .. :try_end_be} :catch_c5

    goto :goto_c4

    .line 406
    :cond_bf
    :try_start_bf
    invoke-static {v1, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_c3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_bf .. :try_end_c3} :catch_c7
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_bf .. :try_end_c3} :catch_c5

    .line 412
    nop

    .line 432
    :goto_c4
    goto :goto_de

    .line 414
    :catch_c5
    move-exception v0

    goto :goto_cc

    .line 407
    :catch_c7
    move-exception v0

    .line 408
    :try_start_c8
    invoke-static {v4, v10, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cb
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_c8 .. :try_end_cb} :catch_c5

    .line 411
    return-object v16

    .line 415
    :goto_cc
    invoke-virtual {v0}, Lcom/android/internal/telephony/EncodeException;->getError()I

    move-result v6

    const-string v7, "Exceed size limitation EncodeException"

    if-ne v6, v3, :cond_d8

    .line 416
    invoke-static {v4, v7, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    return-object v16

    .line 422
    :cond_d8
    :try_start_d8
    invoke-static {v1, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_dc
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_d8 .. :try_end_dc} :catch_14e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d8 .. :try_end_dc} :catch_149

    .line 423
    nop

    .line 430
    const/4 v6, 0x3

    .line 434
    :goto_de
    const-string v1, "Message too long ("

    if-ne v6, v3, :cond_10d

    .line 435
    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    const/16 v6, 0xa0

    if-le v3, v6, :cond_109

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " septets)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-object v16

    .line 448
    :cond_109
    invoke-virtual {v9, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_139

    .line 450
    :cond_10d
    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    const/16 v6, 0x8c

    if-le v3, v6, :cond_134

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-object v16

    .line 457
    :cond_134
    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 461
    :goto_139
    if-eq v15, v2, :cond_13e

    .line 462
    invoke-virtual {v9, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 465
    :cond_13e
    array-length v1, v0

    invoke-virtual {v9, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 466
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v13, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 467
    return-object v13

    .line 427
    :catch_149
    move-exception v0

    .line 428
    invoke-static {v4, v10, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    return-object v16

    .line 424
    :catch_14e
    move-exception v0

    .line 425
    invoke-static {v4, v7, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    return-object v16

    .line 341
    :cond_153
    const/16 v16, 0x0

    .line 342
    :goto_155
    return-object v16
.end method

.method private static greylist getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .registers 11

    .line 637
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;I)Ljava/io/ByteArrayOutputStream;
    .registers 8

    .line 659
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xb4

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 663
    const/4 v1, 0x0

    if-nez p0, :cond_d

    .line 664
    iput-object v1, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_13

    .line 666
    :cond_d
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 671
    :goto_13
    if-eqz p3, :cond_18

    .line 673
    or-int/lit8 p0, p2, 0x20

    int-to-byte p2, p0

    .line 676
    :cond_18
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 679
    invoke-virtual {v0, p5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 683
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object p0

    .line 686
    if-nez p0, :cond_25

    return-object v1

    .line 690
    :cond_25
    array-length p1, p0

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    .line 691
    array-length p3, p0

    sub-int/2addr p3, p2

    aget-byte p3, p0, p3

    const/16 p4, 0xf0

    and-int/2addr p3, p4

    const/4 p5, 0x0

    if-ne p3, p4, :cond_35

    goto :goto_36

    :cond_35
    move p2, p5

    :goto_36
    sub-int/2addr p1, p2

    .line 690
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 694
    array-length p1, p0

    invoke-virtual {v0, p0, p5, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 697
    invoke-virtual {v0, p5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 698
    return-object v0
.end method

.method public static blacklist getTPLayerLengthForPDU(Ljava/lang/String;)I
    .registers 4

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 205
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 207
    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static blacklist newFromCDS([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .registers 3

    .line 148
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 149
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    .line 150
    return-object v0

    .line 151
    :catch_9
    move-exception p0

    .line 152
    const-string v0, "SmsMessage"

    const-string v1, "CDS SMS PDU parsing failed: "

    invoke-static {v0, v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist parsePdu([B)V
    .registers 4

    .line 1279
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    .line 1283
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 1285
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 1287
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 1295
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result p1

    .line 1297
    and-int/lit8 v1, p1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    .line 1298
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    packed-switch v1, :pswitch_data_32

    .line 1314
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported message type"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1310
    :pswitch_24
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1311
    goto :goto_30

    .line 1307
    :pswitch_28
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1308
    goto :goto_30

    .line 1304
    :pswitch_2c
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1305
    nop

    .line 1316
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_2c
    .end packed-switch
.end method

.method private blacklist parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 8

    .line 1370
    and-int/lit16 v0, p2, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 1372
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1374
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1381
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1385
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1393
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    .line 1397
    const/16 v0, 0x40

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v2

    .line 1399
    :goto_2e
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1400
    return-void
.end method

.method private blacklist parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 6

    .line 1325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 1328
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 1330
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1332
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    .line 1334
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    .line 1336
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    .line 1339
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1341
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    .line 1342
    move v2, v1

    .line 1343
    :goto_29
    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_32

    .line 1347
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_29

    .line 1351
    :cond_32
    and-int/lit8 v2, v1, 0x78

    if-nez v2, :cond_58

    .line 1353
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_40

    .line 1354
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1357
    :cond_40
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_4a

    .line 1358
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1361
    :cond_4a
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_58

    .line 1362
    const/16 v1, 0x40

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_54

    goto :goto_55

    :cond_54
    const/4 v0, 0x0

    .line 1363
    :goto_55
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1367
    :cond_58
    return-void
.end method

.method private blacklist parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .registers 7

    .line 1409
    and-int/lit16 v0, p2, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 1412
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 1414
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1416
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1422
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1426
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1434
    nop

    .line 1435
    shr-int/lit8 v0, p2, 0x3

    and-int/lit8 v0, v0, 0x3

    .line 1436
    if-nez v0, :cond_30

    .line 1437
    move v0, v2

    goto :goto_36

    .line 1438
    :cond_30
    const/4 v3, 0x2

    if-ne v0, v3, :cond_35

    .line 1439
    move v0, v1

    goto :goto_36

    .line 1441
    :cond_35
    const/4 v0, 0x7

    .line 1445
    :goto_36
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_3f

    .line 1446
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move v0, v3

    goto :goto_36

    .line 1449
    :cond_3f
    const/16 v0, 0x40

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_45

    goto :goto_46

    :cond_45
    move v1, v2

    .line 1451
    :goto_46
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1452
    return-void
.end method

.method private blacklist parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .registers 22

    .line 1462
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    .line 1463
    nop

    .line 1465
    nop

    .line 1467
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 1469
    iget v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v5, 0x80

    and-int/2addr v4, v5

    const-string v6, " Dont store = "

    const v7, 0x111026e

    const/16 v8, 0xd0

    const/16 v10, 0xe0

    const-string v12, "SmsMessage"

    const/16 v13, 0xf0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v4, :cond_9e

    .line 1470
    iget v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_2a

    move v4, v14

    goto :goto_2b

    :cond_2a
    move v4, v15

    .line 1471
    :goto_2b
    const/16 v16, 0x2

    iget v9, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_35

    move v9, v14

    goto :goto_36

    :cond_35
    move v9, v15

    .line 1473
    :goto_36
    if-eqz v4, :cond_58

    .line 1474
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x3

    const-string v11, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v9

    move v9, v15

    goto/16 :goto_18f

    .line 1477
    :cond_58
    const/16 v17, 0x3

    iget v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    shr-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3

    packed-switch v4, :pswitch_data_2fa

    move/from16 v16, v15

    goto :goto_99

    .line 1483
    :pswitch_66
    nop

    .line 1484
    move/from16 v16, v17

    goto :goto_99

    .line 1489
    :pswitch_6a
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 1491
    nop

    .line 1492
    goto :goto_99

    .line 1496
    :cond_72
    :pswitch_72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const v4, 0x10e018a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move/from16 v16, v4

    goto :goto_99

    .line 1479
    :pswitch_96
    nop

    .line 1480
    move/from16 v16, v14

    .line 1500
    :goto_99
    move v4, v9

    move/from16 v9, v16

    goto/16 :goto_18f

    .line 1503
    :cond_9e
    const/16 v16, 0x2

    const/16 v17, 0x3

    iget v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v4, v13

    const/4 v9, 0x4

    if-ne v4, v13, :cond_b8

    .line 1504
    nop

    .line 1505
    nop

    .line 1507
    iget v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v4, v9

    if-nez v4, :cond_b3

    .line 1509
    move v4, v14

    move v9, v4

    goto/16 :goto_18f

    .line 1512
    :cond_b3
    move v4, v14

    move/from16 v9, v16

    goto/16 :goto_18f

    .line 1514
    :cond_b8
    iget v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v4, v13

    const/16 v11, 0xc0

    if-eq v4, v11, :cond_111

    iget v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v4, v13

    if-eq v4, v8, :cond_111

    iget v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v4, v13

    if-ne v4, v10, :cond_ca

    goto :goto_111

    .line 1555
    :cond_ca
    iget v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v4, v11

    if-ne v4, v5, :cond_f3

    .line 1558
    iget v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v11, 0x84

    if-ne v4, v11, :cond_d8

    .line 1560
    move v4, v15

    goto/16 :goto_18f

    .line 1562
    :cond_d8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v9, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10d

    .line 1566
    :cond_f3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v9, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :goto_10d
    move v4, v15

    move v9, v4

    goto/16 :goto_18f

    .line 1523
    :cond_111
    :goto_111
    iget v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v4, v13

    if-ne v4, v10, :cond_119

    .line 1524
    move/from16 v9, v17

    goto :goto_11a

    .line 1526
    :cond_119
    move v9, v14

    .line 1529
    :goto_11a
    nop

    .line 1530
    iget v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v7, 0x8

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_124

    move v4, v14

    goto :goto_125

    :cond_124
    move v4, v15

    .line 1534
    :goto_125
    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v7, v7, 0x3

    if-nez v7, :cond_172

    .line 1535
    iput-boolean v14, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1536
    iput-boolean v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    .line 1537
    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v7, v13

    if-ne v7, v11, :cond_136

    move v7, v14

    goto :goto_137

    :cond_136
    move v7, v15

    :goto_137
    iput-boolean v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    .line 1540
    if-ne v4, v14, :cond_13f

    .line 1541
    const/4 v4, -0x1

    iput v4, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_141

    .line 1543
    :cond_13f
    iput v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1546
    :goto_141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MWI in DCS for Vmail. DCS = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " vmail count = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18e

    .line 1551
    :cond_172
    iput-boolean v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MWI in DCS for fax/email/other: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :goto_18e
    move v4, v15

    .line 1571
    :goto_18f
    if-ne v9, v14, :cond_193

    move v7, v14

    goto :goto_194

    :cond_193
    move v7, v15

    :goto_194
    invoke-virtual {v0, v2, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v7

    .line 1573
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v11

    iput-object v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserData:[B

    .line 1574
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v11

    iput-object v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1575
    iput v9, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mReceivedEncodingType:I

    .line 1585
    if-eqz v2, :cond_260

    iget-object v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v11, v11, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_260

    .line 1586
    iget-object v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v11, v11, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1ba
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_260

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 1587
    iget v8, v10, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v8, v8, 0xff

    .line 1594
    if-eqz v8, :cond_1ec

    if-ne v8, v5, :cond_1d1

    goto :goto_1ec

    .line 1640
    :cond_1d1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xe0

    const/16 v15, 0xd0

    goto :goto_257

    .line 1595
    :cond_1ec
    :goto_1ec
    iput-boolean v14, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1596
    if-ne v8, v5, :cond_1f7

    .line 1598
    iput-boolean v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    const/16 v5, 0xe0

    const/16 v15, 0xd0

    goto :goto_21b

    .line 1599
    :cond_1f7
    iget-boolean v13, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-nez v13, :cond_217

    .line 1607
    iget v13, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v5, 0xf0

    and-int/2addr v13, v5

    const/16 v15, 0xd0

    if-eq v13, v15, :cond_20c

    iget v13, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v13, v5

    const/16 v5, 0xe0

    if-ne v13, v5, :cond_214

    goto :goto_20e

    :cond_20c
    const/16 v5, 0xe0

    :goto_20e
    iget v13, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v13, v13, 0x3

    if-eqz v13, :cond_21b

    .line 1613
    :cond_214
    iput-boolean v14, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    goto :goto_21b

    .line 1599
    :cond_217
    const/16 v5, 0xe0

    const/16 v15, 0xd0

    .line 1617
    :cond_21b
    :goto_21b
    iget v10, v10, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v10, v10, 0xff

    iput v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1625
    iget v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    if-lez v10, :cond_228

    .line 1626
    iput-boolean v14, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    goto :goto_22b

    .line 1628
    :cond_228
    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    .line 1630
    :goto_22b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MWI in TP-UDH for Vmail. Msg Ind = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " Vmail count = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :goto_257
    move v10, v5

    move v8, v15

    const/16 v5, 0x80

    const/16 v13, 0xf0

    const/4 v15, 0x0

    goto/16 :goto_1ba

    .line 1646
    :cond_260
    const/4 v5, 0x0

    packed-switch v9, :pswitch_data_306

    goto :goto_2a1

    .line 1673
    :pswitch_265
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_2a1

    .line 1669
    :pswitch_26c
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1670
    goto :goto_2a1

    .line 1654
    :pswitch_273
    const v2, 0x111026e

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_283

    .line 1656
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8bit(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_2a1

    .line 1658
    :cond_283
    iput-object v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1660
    goto :goto_2a1

    .line 1663
    :pswitch_286
    nop

    .line 1664
    if-eqz v2, :cond_28e

    iget-object v3, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v10, v3, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto :goto_28f

    :cond_28e
    const/4 v10, 0x0

    .line 1665
    :goto_28f
    if-eqz v2, :cond_296

    iget-object v2, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    goto :goto_297

    :cond_296
    const/4 v2, 0x0

    .line 1663
    :goto_297
    invoke-virtual {v0, v7, v10, v2}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1666
    goto :goto_2a1

    .line 1648
    :pswitch_29e
    iput-object v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1649
    nop

    .line 1679
    :goto_2a1
    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v0, :cond_2a8

    .line 1680
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    .line 1683
    :cond_2a8
    if-nez v4, :cond_2af

    .line 1684
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_2f8

    .line 1686
    :cond_2af
    iget v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_314

    goto :goto_2f8

    .line 1713
    :pswitch_2b7
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_2f8

    .line 1710
    :pswitch_2bc
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1711
    goto :goto_2f8

    .line 1707
    :pswitch_2c1
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1708
    goto :goto_2f8

    .line 1688
    :pswitch_2c6
    nop

    .line 1690
    :try_start_2c7
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1691
    if-eqz v0, :cond_2e1

    .line 1692
    nop

    .line 1693
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "disable_flash_sms"
    :try_end_2d4
    .catch Ljava/lang/Exception; {:try_start_2c7 .. :try_end_2d4} :catch_2e4

    .line 1692
    const/4 v10, 0x0

    :try_start_2d5
    invoke-static {v0, v2, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_2d9
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_2d9} :catch_2df

    if-ne v0, v14, :cond_2dc

    goto :goto_2dd

    :cond_2dc
    move v14, v10

    :goto_2dd
    move v15, v14

    goto :goto_2e3

    .line 1695
    :catch_2df
    move-exception v0

    goto :goto_2e6

    .line 1691
    :cond_2e1
    const/4 v10, 0x0

    move v15, v10

    .line 1698
    :goto_2e3
    goto :goto_2ec

    .line 1695
    :catch_2e4
    move-exception v0

    const/4 v10, 0x0

    .line 1696
    :goto_2e6
    const-string v2, "Failed to read disable_flash_sms setting"

    invoke-static {v12, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1697
    move v15, v10

    .line 1700
    :goto_2ec
    if-eqz v15, :cond_2f3

    .line 1701
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_2f8

    .line 1703
    :cond_2f3
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1705
    nop

    .line 1717
    :goto_2f8
    return-void

    nop

    :pswitch_data_2fa
    .packed-switch 0x0
        :pswitch_96
        :pswitch_6a
        :pswitch_66
        :pswitch_72
    .end packed-switch

    :pswitch_data_306
    .packed-switch 0x0
        :pswitch_29e
        :pswitch_286
        :pswitch_273
        :pswitch_26c
        :pswitch_265
    .end packed-switch

    :pswitch_data_314
    .packed-switch 0x0
        :pswitch_2c6
        :pswitch_2c1
        :pswitch_2bc
        :pswitch_2b7
    .end packed-switch
.end method


# virtual methods
.method blacklist getDataCodingScheme()I
    .registers 2

    .line 1188
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    return v0
.end method

.method public blacklist getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .registers 2

    .line 1724
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public blacklist getNumOfVoicemails()I
    .registers 3

    .line 1749
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1750
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1751
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1752
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_20

    .line 1754
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1756
    :goto_20
    const-string v0, "SmsMessage"

    const-string v1, "CPHS voice mail message"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_27
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    return v0
.end method

.method public blacklist getProtocolIdentifier()I
    .registers 2

    .line 1180
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    return v0
.end method

.method public greylist-max-r getStatus()I
    .registers 2

    .line 1254
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    return v0
.end method

.method public blacklist isCphsMwiMessage()Z
    .registers 2

    .line 1202
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1203
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 1202
    :goto_18
    return v0
.end method

.method public greylist isMWIClearMessage()Z
    .registers 3

    .line 1210
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-nez v0, :cond_a

    .line 1211
    return v1

    .line 1214
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1215
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 1214
    :goto_1a
    return v1
.end method

.method public greylist isMWISetMessage()Z
    .registers 3

    .line 1222
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-eqz v0, :cond_a

    .line 1223
    return v1

    .line 1226
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1227
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 1226
    :goto_1a
    return v1
.end method

.method public greylist isMwiDontStore()Z
    .registers 4

    .line 1234
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-eqz v0, :cond_a

    .line 1235
    return v1

    .line 1238
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1242
    const-string v0, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1243
    return v1

    .line 1247
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isReplace()Z
    .registers 3

    .line 1194
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_18

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_18

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public blacklist isReplyPathPresent()Z
    .registers 2

    .line 1267
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    return v0
.end method

.method public greylist-max-r isStatusReportMessage()Z
    .registers 2

    .line 1261
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    return v0
.end method

.method public blacklist isTypeZero()Z
    .registers 3

    .line 143
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method blacklist isUsimDataDownload()Z
    .registers 3

    .line 1734
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method
