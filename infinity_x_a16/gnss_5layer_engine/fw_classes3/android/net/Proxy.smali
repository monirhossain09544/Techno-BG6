.class public final Landroid/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field public static final greylist EXTRA_PROXY_INFO:Ljava/lang/String; = "android.intent.extra.PROXY_INFO"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROXY_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.PROXY_CHANGE"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Proxy"

.field private static greylist-max-o sConnectivityManager:Landroid/net/ConnectivityManager;

.field private static final greylist-max-o sDefaultProxySelector:Ljava/net/ProxySelector;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 68
    const/4 v0, 0x0

    sput-object v0, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 71
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->sDefaultProxySelector:Ljava/net/ProxySelector;

    .line 72
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist getDefaultHost()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_e
    return-object v0
.end method

.method public static final whitelist getDefaultPort()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 165
    :cond_8
    :try_start_8
    const-string v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 166
    :catch_13
    move-exception v0

    .line 167
    return v1
.end method

.method public static final whitelist getHost(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object p0

    .line 112
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne p0, v1, :cond_a

    return-object v0

    .line 114
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p0

    check-cast p0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_15

    return-object p0

    .line 115
    :catch_15
    move-exception p0

    .line 116
    return-object v0
.end method

.method public static final whitelist getPort(Landroid/content/Context;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object p0

    .line 130
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    const/4 v1, -0x1

    if-ne p0, v0, :cond_b

    return v1

    .line 132
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p0

    check-cast p0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    return p0

    .line 133
    :catch_16
    move-exception p0

    .line 134
    return v1
.end method

.method public static final greylist getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;
    .registers 2

    .line 85
    nop

    .line 86
    if-eqz p1, :cond_25

    const-string p0, ""

    invoke-static {p0}, Landroid/net/Proxy;->isLocalHost(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_25

    .line 87
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    .line 88
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object p1

    .line 90
    invoke-virtual {p1, p0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p0

    .line 92
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_25

    .line 93
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/Proxy;

    return-object p0

    .line 96
    :cond_25
    sget-object p0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object p0
.end method

.method private static final greylist-max-o isLocalHost(Ljava/lang/String;)Z
    .registers 4

    .line 172
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 173
    return v0

    .line 176
    :cond_4
    if-eqz p0, :cond_1d

    .line 177
    :try_start_6
    const-string v1, "localhost"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    .line 178
    return v2

    .line 180
    :cond_10
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p0
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_18} :catch_1b

    if-eqz p0, :cond_1d

    .line 181
    return v2

    .line 184
    :catch_1b
    move-exception p0

    goto :goto_1e

    .line 185
    :cond_1d
    nop

    .line 186
    :goto_1e
    return v0
.end method

.method public static blacklist setHttpProxyConfiguration(Landroid/net/ProxyInfo;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 204
    nop

    .line 205
    nop

    .line 206
    nop

    .line 207
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 208
    if-eqz p0, :cond_20

    .line 209
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/net/module/util/ProxyUtils;->exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object p0

    goto :goto_25

    .line 208
    :cond_20
    const/4 p0, 0x0

    move-object v1, p0

    move-object v2, v1

    move-object p0, v0

    move-object v0, v2

    .line 214
    :goto_25
    invoke-static {v0, v1, v2, p0}, Landroid/net/Proxy;->setHttpProxyConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 215
    return-void
.end method

.method public static blacklist setHttpProxyConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6

    .line 220
    if-eqz p2, :cond_b

    const-string v0, ","

    const-string/jumbo v1, "|"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 222
    :cond_b
    const-string v0, "https.proxyHost"

    const-string v1, "http.proxyHost"

    if-eqz p0, :cond_18

    .line 223
    invoke-static {v1, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1e

    .line 226
    :cond_18
    invoke-static {v1}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    :goto_1e
    const-string p0, "https.proxyPort"

    const-string v0, "http.proxyPort"

    if-eqz p1, :cond_2b

    .line 230
    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    invoke-static {p0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_31

    .line 233
    :cond_2b
    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    invoke-static {p0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    :goto_31
    const-string p0, "https.nonProxyHosts"

    const-string p1, "http.nonProxyHosts"

    if-eqz p2, :cond_3e

    .line 237
    invoke-static {p1, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    invoke-static {p0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_44

    .line 240
    :cond_3e
    invoke-static {p1}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    invoke-static {p0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    :goto_44
    sget-object p0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_55

    .line 244
    new-instance p0, Landroid/net/PacProxySelector;

    invoke-direct {p0}, Landroid/net/PacProxySelector;-><init>()V

    invoke-static {p0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    goto :goto_5a

    .line 246
    :cond_55
    sget-object p0, Landroid/net/Proxy;->sDefaultProxySelector:Ljava/net/ProxySelector;

    invoke-static {p0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 248
    :goto_5a
    return-void
.end method

.method public static greylist-max-r setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    invoke-static {p0}, Landroid/net/Proxy;->setHttpProxyConfiguration(Landroid/net/ProxyInfo;)V

    .line 194
    return-void
.end method
