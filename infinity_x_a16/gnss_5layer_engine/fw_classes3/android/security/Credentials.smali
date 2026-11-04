.class public Landroid/security/Credentials;
.super Ljava/lang/Object;
.source "Credentials.java"


# static fields
.field public static final blacklist ACTION_MANAGE_CREDENTIALS:Ljava/lang/String; = "android.security.MANAGE_CREDENTIALS"

.field public static final blacklist APP_SOURCE_CERTIFICATE:Ljava/lang/String; = "FSV_"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o CA_CERTIFICATE:Ljava/lang/String; = "CACERT_"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CERTIFICATE_USAGE_APP_SOURCE:Ljava/lang/String; = "appsrc"

.field public static final blacklist CERTIFICATE_USAGE_CA:Ljava/lang/String; = "ca"

.field public static final blacklist CERTIFICATE_USAGE_USER:Ljava/lang/String; = "user"

.field public static final blacklist CERTIFICATE_USAGE_WIFI:Ljava/lang/String; = "wifi"

.field public static final greylist-max-o EXTENSION_CER:Ljava/lang/String; = ".cer"

.field public static final greylist-max-o EXTENSION_CRT:Ljava/lang/String; = ".crt"

.field public static final greylist-max-o EXTENSION_P12:Ljava/lang/String; = ".p12"

.field public static final greylist-max-o EXTENSION_PFX:Ljava/lang/String; = ".pfx"

.field public static final greylist-max-o EXTRA_CA_CERTIFICATES_DATA:Ljava/lang/String; = "ca_certificates_data"

.field public static final blacklist EXTRA_CERTIFICATE_USAGE:Ljava/lang/String; = "certificate_install_usage"

.field public static final greylist-max-o EXTRA_INSTALL_AS_UID:Ljava/lang/String; = "install_as_uid"

.field public static final greylist-max-o EXTRA_PRIVATE_KEY:Ljava/lang/String; = "PKEY"

.field public static final greylist-max-o EXTRA_PUBLIC_KEY:Ljava/lang/String; = "KEY"

.field public static final greylist-max-o EXTRA_USER_CERTIFICATE_DATA:Ljava/lang/String; = "user_certificate_data"

.field public static final blacklist EXTRA_USER_KEY_ALIAS:Ljava/lang/String; = "user_key_pair_name"

.field public static final greylist-max-o EXTRA_USER_PRIVATE_KEY_DATA:Ljava/lang/String; = "user_private_key_data"

.field public static final greylist-max-o INSTALL_ACTION:Ljava/lang/String; = "android.credentials.INSTALL"

.field public static final greylist-max-o INSTALL_AS_USER_ACTION:Ljava/lang/String; = "android.credentials.INSTALL_AS_USER"

.field public static final greylist-max-o LOCKDOWN_VPN:Ljava/lang/String; = "LOCKDOWN_VPN"

.field private static final greylist-max-o LOGTAG:Ljava/lang/String; = "Credentials"

.field public static final blacklist PLATFORM_VPN:Ljava/lang/String; = "PLATFORM_VPN_"

.field public static final greylist-max-o USER_CERTIFICATE:Ljava/lang/String; = "USRCERT_"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o USER_PRIVATE_KEY:Ljava/lang/String; = "USRPKEY_"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o USER_SECRET_KEY:Ljava/lang/String; = "USRSKEY_"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o VPN:Ljava/lang/String; = "VPN_"

.field public static final greylist-max-o WIFI:Ljava/lang/String; = "WIFI_"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o convertFromPem([B)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 189
    new-instance p0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 190
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/io/pem/PemReader;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemReader;-><init>(Ljava/io/Reader;)V

    .line 193
    :try_start_11
    const-string p0, "X509"

    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    :goto_1c
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemReader;->readPemObject()Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 198
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CERTIFICATE"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 199
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 200
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 199
    invoke-virtual {p0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 201
    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    goto :goto_1c

    .line 203
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5e
    .catchall {:try_start_11 .. :try_end_5e} :catchall_63

    .line 206
    :cond_5e
    nop

    .line 208
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemReader;->close()V

    .line 206
    return-object v1

    .line 208
    :catchall_63
    move-exception p0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemReader;->close()V

    .line 209
    throw p0
.end method

.method public static varargs greylist-max-r convertToPem([Ljava/security/cert/Certificate;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 173
    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 174
    new-instance v2, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;-><init>(Ljava/io/Writer;)V

    .line 175
    array-length v1, p0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_28

    aget-object v4, p0, v3

    .line 176
    new-instance v5, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;

    const-string v6, "CERTIFICATE"

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v2, v5}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->writeObject(Lcom/android/internal/org/bouncycastle/util/io/pem/PemObjectGenerator;)V

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 178
    :cond_28
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->close()V

    .line 179
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
