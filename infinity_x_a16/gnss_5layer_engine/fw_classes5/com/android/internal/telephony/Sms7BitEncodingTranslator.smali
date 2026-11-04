.class public Lcom/android/internal/telephony/Sms7BitEncodingTranslator;
.super Ljava/lang/Object;
.source "Sms7BitEncodingTranslator.java"


# static fields
.field private static final greylist-max-r DBG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "Sms7BitEncodingTranslator"

.field private static final blacklist XML_CHARACTOR_TAG:Ljava/lang/String; = "Character"

.field private static final blacklist XML_FROM_TAG:Ljava/lang/String; = "from"

.field private static final blacklist XML_START_TAG:Ljava/lang/String; = "SmsEnforce7BitTranslationTable"

.field private static final blacklist XML_TO_TAG:Ljava/lang/String; = "to"

.field private static final blacklist XML_TRANSLATION_TYPE_TAG:Ljava/lang/String; = "TranslationType"

.field private static blacklist mIs7BitTranslationTableLoaded:Z

.field private static blacklist mTranslationTable:Landroid/util/SparseIntArray;

.field private static greylist-max-r mTranslationTableCDMA:Landroid/util/SparseIntArray;

.field private static greylist-max-r mTranslationTableCommon:Landroid/util/SparseIntArray;

.field private static greylist-max-r mTranslationTableGSM:Landroid/util/SparseIntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mIs7BitTranslationTableLoaded:Z

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    .line 37
    sput-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    .line 39
    sput-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    .line 41
    sput-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist ensure7BitTranslationTableLoaded()V
    .registers 2

    .line 156
    const-class v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;

    monitor-enter v0

    .line 157
    :try_start_3
    sget-boolean v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mIs7BitTranslationTableLoaded:Z

    if-nez v1, :cond_22

    .line 158
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    .line 159
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    .line 160
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    .line 161
    invoke-static {}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->load7BitTranslationTableFromXml()V

    .line 162
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mIs7BitTranslationTableLoaded:Z

    .line 164
    :cond_22
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private static blacklist load7BitTranslationTableFromXml()V
    .registers 6

    .line 172
    nop

    .line 173
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 175
    nop

    .line 176
    sget-boolean v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    const-string v2, "Sms7BitEncodingTranslator"

    if-eqz v1, :cond_11

    const-string v1, "load7BitTranslationTableFromXml: open normal file"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_11
    const v1, 0x1170018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 181
    :try_start_18
    const-string v1, "SmsEnforce7BitTranslationTable"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 183
    :goto_1d
    invoke-static {v0}, Lcom/android/internal/telephony/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 184
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 185
    sget-boolean v3, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v3, :cond_3e

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_3e
    const-string v3, "TranslationType"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_a5

    .line 189
    const-string v1, "Type"

    invoke-interface {v0, v4, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    sget-boolean v3, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v3, :cond_67

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_67
    const-string v3, "common"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 194
    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    goto :goto_a4

    .line 195
    :cond_74
    const-string v3, "gsm"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 196
    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    goto :goto_a4

    .line 197
    :cond_81
    const-string v3, "cdma"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 198
    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    goto :goto_a4

    .line 200
    :cond_8e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error Parsing 7BitTranslationTable: found incorrect type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_a4
    goto :goto_101

    :cond_a5
    const-string v3, "Character"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_103

    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_103

    .line 203
    const-string v1, "from"

    const/4 v3, -0x1

    invoke-interface {v0, v4, v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 205
    const-string v5, "to"

    invoke-interface {v0, v4, v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 207
    if-eq v1, v3, :cond_fc

    if-eq v4, v3, :cond_fc

    .line 208
    sget-boolean v3, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v3, :cond_f6

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading mapping "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 210
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 211
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_f6
    sget-object v3, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_101

    .line 215
    :cond_fc
    const-string v1, "Invalid translation table file format"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_101
    goto/16 :goto_1d

    .line 221
    :cond_103
    sget-boolean v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v1, :cond_10c

    const-string v1, "load7BitTranslationTableFromXml: parsing successful, file loaded"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_10c} :catch_113
    .catchall {:try_start_18 .. :try_end_10c} :catchall_111

    .line 225
    :cond_10c
    instance-of v1, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_120

    .line 226
    goto :goto_11d

    .line 225
    :catchall_111
    move-exception v1

    goto :goto_121

    .line 222
    :catch_113
    move-exception v1

    .line 223
    :try_start_114
    const-string v3, "Got exception while loading 7BitTranslationTable file."

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_119
    .catchall {:try_start_114 .. :try_end_119} :catchall_111

    .line 225
    instance-of v1, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_120

    .line 226
    :goto_11d
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 229
    :cond_120
    return-void

    .line 225
    :goto_121
    instance-of v2, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_128

    .line 226
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 228
    :cond_128
    throw v1
.end method

.method private static blacklist noTranslationNeeded(CZ)Z
    .registers 3

    .line 147
    if-eqz p1, :cond_15

    .line 148
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->isGsmSeptets(C)Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p1, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0

    .line 151
    :cond_15
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->isGsmSeptets(C)Z

    move-result p0

    return p0
.end method

.method public static blacklist translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .registers 6

    .line 59
    const/4 v0, 0x0

    if-nez p0, :cond_b

    .line 60
    const-string p0, "Sms7BitEncodingTranslator"

    const-string p1, "Null message can not be translated"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-object v0

    .line 64
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 65
    if-gtz v1, :cond_14

    .line 66
    const-string p0, ""

    return-object p0

    .line 69
    :cond_14
    invoke-static {}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->ensure7BitTranslationTableLoaded()V

    .line 71
    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_23

    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_3b

    :cond_23
    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_2f

    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    .line 72
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_3b

    :cond_2f
    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_52

    sget-object v2, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    .line 73
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_52

    .line 74
    :cond_3b
    new-array v0, v1, [C

    .line 75
    const/4 v2, 0x0

    :goto_3e
    if-ge v2, v1, :cond_4d

    .line 76
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translateIfNeeded(CZ)C

    move-result v3

    aput-char v3, v0, v2

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 79
    :cond_4d
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 82
    :cond_52
    return-object v0
.end method

.method private static blacklist translateIfNeeded(CZ)C
    .registers 5

    .line 97
    invoke-static {p0, p1}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->noTranslationNeeded(CZ)Z

    move-result v0

    const-string v1, "Sms7BitEncodingTranslator"

    if-eqz v0, :cond_27

    .line 98
    sget-boolean p1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz p1, :cond_26

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No translation needed for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_26
    return p0

    .line 111
    :cond_27
    nop

    .line 113
    invoke-static {}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->ensure7BitTranslationTableLoaded()V

    .line 115
    sget-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    if-eqz v0, :cond_37

    .line 116
    sget-object v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_38

    .line 115
    :cond_37
    move v0, v2

    .line 119
    :goto_38
    if-ne v0, v2, :cond_51

    .line 120
    if-eqz p1, :cond_47

    .line 121
    sget-object p1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_51

    .line 122
    sget-object p1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_51

    .line 125
    :cond_47
    sget-object p1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_51

    .line 126
    sget-object p1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 131
    :cond_51
    :goto_51
    if-eq v0, v2, :cond_94

    .line 132
    sget-boolean p1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz p1, :cond_92

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") translated to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    int-to-char p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 133
    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_92
    int-to-char p0, v0

    return p0

    .line 138
    :cond_94
    sget-boolean p1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz p1, :cond_b8

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No translation found for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "! Replacing for empty space"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_b8
    const/16 p0, 0x20

    return p0
.end method
