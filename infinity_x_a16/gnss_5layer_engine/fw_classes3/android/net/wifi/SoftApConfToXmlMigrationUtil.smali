.class public final Landroid/net/wifi/SoftApConfToXmlMigrationUtil;
.super Ljava/lang/Object;
.source "SoftApConfToXmlMigrationUtil.java"


# static fields
.field private static final blacklist CONFIG_STORE_DATA_VERSION:I = 0x3

.field private static final blacklist LEGACY_AP_CONFIG_FILE:Ljava/lang/String; = "softap.conf"

.field private static final blacklist LEGACY_WIFI_STORE_DIRECTORY_NAME:Ljava/lang/String; = "wifi"

.field private static final blacklist TAG:Ljava/lang/String; = "SoftApConfToXmlMigrationUtil"

.field private static final blacklist WIFICONFIG_AP_BAND_2GHZ:I = 0x0

.field private static final blacklist WIFICONFIG_AP_BAND_5GHZ:I = 0x1

.field private static final blacklist WIFICONFIG_AP_BAND_ANY:I = -0x1

.field private static final blacklist XML_TAG_ALLOWED_CLIENT_LIST:Ljava/lang/String; = "AllowedClientList"

.field private static final blacklist XML_TAG_AP_BAND:Ljava/lang/String; = "ApBand"

.field private static final blacklist XML_TAG_AUTO_SHUTDOWN_ENABLED:Ljava/lang/String; = "AutoShutdownEnabled"

.field private static final blacklist XML_TAG_BLOCKED_CLIENT_LIST:Ljava/lang/String; = "BlockedClientList"

.field private static final blacklist XML_TAG_BSSID:Ljava/lang/String; = "Bssid"

.field private static final blacklist XML_TAG_CHANNEL:Ljava/lang/String; = "Channel"

.field private static final blacklist XML_TAG_CLIENT_CONTROL_BY_USER:Ljava/lang/String; = "ClientControlByUser"

.field public static final blacklist XML_TAG_CLIENT_MACADDRESS:Ljava/lang/String; = "ClientMacAddress"

.field private static final blacklist XML_TAG_DOCUMENT_HEADER:Ljava/lang/String; = "WifiConfigStoreData"

.field private static final blacklist XML_TAG_HIDDEN_SSID:Ljava/lang/String; = "HiddenSSID"

.field private static final blacklist XML_TAG_MAX_NUMBER_OF_CLIENTS:Ljava/lang/String; = "MaxNumberOfClients"

.field private static final blacklist XML_TAG_PASSPHRASE:Ljava/lang/String; = "Passphrase"

.field private static final blacklist XML_TAG_SECTION_HEADER_SOFTAP:Ljava/lang/String; = "SoftAp"

.field private static final blacklist XML_TAG_SECURITY_TYPE:Ljava/lang/String; = "SecurityType"

.field private static final blacklist XML_TAG_SHUTDOWN_TIMEOUT_MILLIS:Ljava/lang/String; = "ShutdownTimeoutMillis"

.field private static final blacklist XML_TAG_SSID:Ljava/lang/String; = "SSID"

.field private static final blacklist XML_TAG_VERSION:Ljava/lang/String; = "Version"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convert()Ljava/io/InputStream;
    .registers 3

    .line 265
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->getLegacyWifiSharedDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "softap.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    nop

    .line 268
    :try_start_d
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_19

    .line 271
    nop

    .line 272
    nop

    .line 273
    invoke-static {v1}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->convert(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 269
    :catch_19
    move-exception v0

    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist convert(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2

    .line 250
    invoke-static {p0}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->loadFromLegacyFile(Ljava/io/InputStream;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    .line 251
    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 253
    :cond_8
    invoke-static {p0}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->convertConfToXml(Landroid/net/wifi/SoftApConfiguration;)[B

    move-result-object p0

    .line 254
    if-nez p0, :cond_f

    return-object v0

    .line 256
    :cond_f
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method private static blacklist convertConfToXml(Landroid/net/wifi/SoftApConfiguration;)[B
    .registers 11

    .line 187
    const-string v0, "AllowedClientList"

    const-string v1, "BlockedClientList"

    const-string v2, "SoftAp"

    const-string v3, "WifiConfigStoreData"

    const/4 v4, 0x0

    :try_start_9
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 188
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 189
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 192
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 193
    invoke-interface {v5, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Version"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 195
    invoke-interface {v5, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SSID"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 199
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v7

    if-eqz v7, :cond_50

    .line 200
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Bssid"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 202
    :cond_50
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "ApBand"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 203
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Channel"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 204
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "HiddenSSID"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 205
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "SecurityType"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 206
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v7

    if-eqz v7, :cond_93

    .line 207
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Passphrase"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 209
    :cond_93
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "MaxNumberOfClients"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 211
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "ClientControlByUser"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 213
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "AutoShutdownEnabled"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 215
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "ShutdownTimeoutMillis"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 217
    invoke-interface {v5, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d6} :catch_11b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_d6} :catch_11b

    const-string v9, "ClientMacAddress"

    if-eqz v8, :cond_e8

    :try_start_da
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/MacAddress;

    .line 219
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 220
    goto :goto_d2

    .line 221
    :cond_e8
    invoke-interface {v5, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/MacAddress;

    .line 224
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 225
    goto :goto_f6

    .line 226
    :cond_10a
    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    invoke-interface {v5, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    invoke-interface {v5, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 233
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_11a} :catch_11b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_da .. :try_end_11a} :catch_11b

    return-object p0

    .line 234
    :catch_11b
    move-exception p0

    .line 235
    const-string v0, "SoftApConfToXmlMigrationUtil"

    const-string v1, "Failed to convert softap conf to XML"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    return-object v4
.end method

.method public static blacklist convertWifiConfigBandToSoftApConfigBand(I)I
    .registers 2

    .line 95
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_a

    .line 103
    return v0

    .line 99
    :pswitch_5
    const/4 p0, 0x2

    return p0

    .line 97
    :pswitch_7
    return v0

    .line 101
    :pswitch_8
    const/4 p0, 0x3

    return p0

    :pswitch_data_a
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist getLegacyWifiSharedDirectory()Ljava/io/File;
    .registers 3

    .line 70
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist loadFromLegacyFile(Ljava/io/InputStream;)Landroid/net/wifi/SoftApConfiguration;
    .registers 10

    .line 112
    const-string v0, "Error closing hotspot configuration during read"

    const-string v1, "SoftApConfToXmlMigrationUtil"

    .line 113
    nop

    .line 115
    const/4 v2, 0x0

    :try_start_6
    new-instance v3, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v3}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    .line 116
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_15} :catch_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_15} :catch_80
    .catchall {:try_start_6 .. :try_end_15} :catchall_7e

    .line 118
    :try_start_15
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    .line 119
    const/4 v5, 0x1

    if-lt p0, v5, :cond_6a

    const/4 v6, 0x3

    if-le p0, v6, :cond_20

    goto :goto_6a

    .line 123
    :cond_20
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 125
    const/4 v7, 0x2

    if-lt p0, v7, :cond_45

    .line 126
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 127
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 128
    if-nez v8, :cond_3d

    .line 129
    nop

    .line 130
    invoke-static {v7}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->convertWifiConfigBandToSoftApConfigBand(I)I

    move-result v7

    .line 129
    invoke-virtual {v3, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_45

    .line 132
    :cond_3d
    nop

    .line 133
    invoke-static {v7}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->convertWifiConfigBandToSoftApConfigBand(I)I

    move-result v7

    .line 132
    invoke-virtual {v3, v8, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 136
    :cond_45
    :goto_45
    if-lt p0, v6, :cond_4e

    .line 137
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p0

    invoke-virtual {v3, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 139
    :cond_4e
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    .line 140
    const/4 v6, 0x4

    if-ne p0, v6, :cond_5c

    .line 141
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 144
    :cond_5c
    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_60} :catch_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_60} :catch_7a
    .catchall {:try_start_15 .. :try_end_60} :catchall_97

    .line 152
    nop

    .line 154
    :goto_61
    :try_start_61
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 157
    :goto_64
    goto :goto_96

    .line 155
    :catch_65
    move-exception p0

    .line 156
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 120
    :cond_6a
    :goto_6a
    :try_start_6a
    const-string p0, "Bad version on hotspot configuration file"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6f} :catch_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6a .. :try_end_6f} :catch_7a
    .catchall {:try_start_6a .. :try_end_6f} :catchall_97

    .line 121
    nop

    .line 152
    nop

    .line 154
    :try_start_71
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    .line 157
    goto :goto_79

    .line 155
    :catch_75
    move-exception p0

    .line 156
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :goto_79
    return-object v2

    .line 148
    :catch_7a
    move-exception p0

    goto :goto_82

    .line 145
    :catch_7c
    move-exception p0

    goto :goto_8d

    .line 152
    :catchall_7e
    move-exception p0

    goto :goto_99

    .line 148
    :catch_80
    move-exception p0

    move-object v4, v2

    .line 149
    :goto_82
    :try_start_82
    const-string v3, "Invalid hotspot configuration "

    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    nop

    .line 152
    if-eqz v4, :cond_96

    .line 154
    goto :goto_61

    .line 145
    :catch_8b
    move-exception p0

    move-object v4, v2

    .line 146
    :goto_8d
    const-string v3, "Error reading hotspot configuration "

    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catchall {:try_start_82 .. :try_end_92} :catchall_97

    .line 147
    nop

    .line 152
    if-eqz v4, :cond_96

    .line 154
    goto :goto_61

    .line 161
    :cond_96
    :goto_96
    return-object v2

    .line 152
    :catchall_97
    move-exception p0

    move-object v2, v4

    :goto_99
    if-eqz v2, :cond_a3

    .line 154
    :try_start_9b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    .line 157
    goto :goto_a3

    .line 155
    :catch_9f
    move-exception v2

    .line 156
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :cond_a3
    :goto_a3
    throw p0
.end method

.method public static blacklist remove()V
    .registers 3

    .line 281
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->getLegacyWifiSharedDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "softap.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 283
    return-void
.end method
