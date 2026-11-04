.class Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PduParser"
.end annotation


# instance fields
.field greylist-max-r mCur:I

.field greylist-max-r mPdu:[B

.field blacklist mUserData:[B

.field blacklist mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

.field greylist mUserDataSeptetPadding:I


# direct methods
.method constructor greylist <init>([B)V
    .registers 2

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 869
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 870
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 871
    return-void
.end method


# virtual methods
.method blacklist constructUserData(ZZ)I
    .registers 12

    .line 995
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 996
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 997
    nop

    .line 998
    nop

    .line 1000
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3e

    .line 1001
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    .line 1003
    new-array v4, v2, [B

    .line 1004
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    invoke-static {v6, v5, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1005
    invoke-static {v4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1006
    add-int v4, v5, v2

    .line 1008
    add-int/lit8 v5, v2, 0x1

    mul-int/lit8 v5, v5, 0x8

    .line 1009
    div-int/lit8 v6, v5, 0x7

    .line 1010
    rem-int/lit8 v7, v5, 0x7

    if-lez v7, :cond_33

    move v7, v1

    goto :goto_34

    :cond_33
    move v7, v3

    :goto_34
    add-int/2addr v6, v7

    .line 1011
    mul-int/lit8 v7, v6, 0x7

    sub-int/2addr v7, v5

    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    move v8, v4

    move v4, v2

    move v2, v8

    goto :goto_40

    .line 1000
    :cond_3e
    move v4, v3

    move v6, v4

    .line 1015
    :goto_40
    if-eqz p2, :cond_47

    .line 1021
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    array-length p1, p1

    sub-int/2addr p1, v2

    goto :goto_51

    .line 1027
    :cond_47
    if-eqz p1, :cond_4b

    add-int/2addr v4, v1

    goto :goto_4c

    :cond_4b
    move v4, v3

    :goto_4c
    sub-int p1, v0, v4

    .line 1028
    if-gez p1, :cond_51

    .line 1029
    move p1, v3

    .line 1033
    :cond_51
    :goto_51
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    .line 1034
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    array-length v4, v4

    invoke-static {p1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1035
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1037
    if-eqz p2, :cond_69

    .line 1039
    sub-int/2addr v0, v6

    .line 1041
    if-gez v0, :cond_67

    goto :goto_68

    :cond_67
    move v3, v0

    :goto_68
    return v3

    .line 1044
    :cond_69
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    array-length p1, p1

    return p1
.end method

.method blacklist getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .registers 5

    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 923
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    .line 926
    :try_start_e
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_e .. :try_end_17} :catch_1e

    .line 931
    nop

    .line 933
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 935
    return-object v1

    .line 927
    :catch_1e
    move-exception v0

    .line 928
    nop

    .line 930
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist getByte()I
    .registers 4

    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method blacklist getSCAddress()Ljava/lang/String;
    .registers 6

    .line 882
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 884
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 886
    goto :goto_1b

    .line 890
    :cond_8
    :try_start_8
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const/4 v4, 0x2

    invoke-static {v2, v3, v0, v4}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_11} :catch_12

    .line 895
    goto :goto_1b

    .line 892
    :catch_12
    move-exception v2

    .line 893
    const-string v3, "SmsMessage"

    const-string v4, "invalid SC address: "

    invoke-static {v3, v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    nop

    .line 898
    :goto_1b
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 900
    return-object v1
.end method

.method blacklist getSCTimestampMillis()J
    .registers 10

    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    .line 945
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    .line 946
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    .line 947
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v5

    .line 948
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    .line 949
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v7

    .line 956
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v8, v2, 0x1

    iput v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v1, v1, v2

    .line 959
    and-int/lit8 v2, v1, -0x9

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v2

    .line 961
    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_6a

    goto :goto_6b

    :cond_6a
    neg-int v2, v2

    .line 963
    :goto_6b
    mul-int/lit8 v2, v2, 0xf

    mul-int/lit8 v1, v2, 0x3c

    .line 966
    const/16 v2, 0x5a

    if-lt v0, v2, :cond_76

    add-int/lit16 v0, v0, 0x76c

    goto :goto_78

    :cond_76
    add-int/lit16 v0, v0, 0x7d0

    :goto_78
    move v2, v0

    .line 968
    :try_start_79
    invoke-static/range {v2 .. v7}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 975
    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    .line 976
    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v2
    :try_end_83
    .catch Ljava/time/DateTimeException; {:try_start_79 .. :try_end_83} :catch_89

    int-to-long v0, v1

    sub-long/2addr v2, v0

    .line 978
    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    return-wide v2

    .line 979
    :catch_89
    move-exception v0

    .line 980
    const-string v1, "SmsMessage"

    const-string v2, "Invalid timestamp"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 982
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method greylist getUserData()[B
    .registers 2

    .line 1055
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    return-object v0
.end method

.method blacklist getUserDataGSM7Bit(III)Ljava/lang/String;
    .registers 10

    .line 1078
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object p1

    .line 1081
    iget p2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    mul-int/lit8 p3, v2, 0x7

    div-int/lit8 p3, p3, 0x8

    add-int/2addr p2, p3

    iput p2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1083
    return-object p1
.end method

.method blacklist getUserDataGSM8bit(I)Ljava/lang/String;
    .registers 4

    .line 1096
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 1098
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1100
    return-object v0
.end method

.method blacklist getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .registers 2

    .line 1064
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method blacklist getUserDataKSC5601(I)Ljava/lang/String;
    .registers 6

    .line 1136
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string v3, "KSC5601"

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1140
    goto :goto_17

    .line 1137
    :catch_c
    move-exception v0

    .line 1138
    nop

    .line 1139
    const-string v1, "SmsMessage"

    const-string v2, "implausible UnsupportedEncodingException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    .line 1142
    :goto_17
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1143
    return-object v0
.end method

.method greylist getUserDataUCS2(I)Ljava/lang/String;
    .registers 6

    .line 1115
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string v3, "utf-16"

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1119
    goto :goto_17

    .line 1116
    :catch_c
    move-exception v0

    .line 1117
    nop

    .line 1118
    const-string v1, "SmsMessage"

    const-string v2, "implausible UnsupportedEncodingException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    .line 1121
    :goto_17
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 1122
    return-object v0
.end method

.method blacklist moreDataPresent()Z
    .registers 3

    .line 1147
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
