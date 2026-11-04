.class public Landroid/security/CredentialManagementApp;
.super Ljava/lang/Object;
.source "CredentialManagementApp.java"


# static fields
.field private static final blacklist KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final blacklist TAG:Ljava/lang/String; = "CredentialManagementApp"


# instance fields
.field private blacklist mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/security/AppUriAuthenticationPolicy;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Landroid/security/CredentialManagementApp;->mPackageName:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Landroid/security/CredentialManagementApp;->mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

    .line 73
    return-void
.end method

.method public static blacklist readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/security/CredentialManagementApp;
    .registers 4

    .line 105
    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "package_name"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {p0}, Landroid/security/AppUriAuthenticationPolicy;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/security/AppUriAuthenticationPolicy;

    move-result-object p0

    .line 107
    new-instance v2, Landroid/security/CredentialManagementApp;

    invoke-direct {v2, v1, p0}, Landroid/security/CredentialManagementApp;-><init>(Ljava/lang/String;Landroid/security/AppUriAuthenticationPolicy;)V
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_11} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_12

    return-object v2

    .line 108
    :catch_12
    move-exception p0

    .line 109
    const-string v1, "CredentialManagementApp"

    const-string v2, "Reading from xml failed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    return-object v0
.end method


# virtual methods
.method public blacklist getAuthenticationPolicy()Landroid/security/AppUriAuthenticationPolicy;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/security/CredentialManagementApp;->mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/security/CredentialManagementApp;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setAuthenticationPolicy(Landroid/security/AppUriAuthenticationPolicy;)V
    .registers 2

    .line 95
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iput-object p1, p0, Landroid/security/CredentialManagementApp;->mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

    .line 97
    return-void
.end method

.method public blacklist writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    const-string/jumbo v0, "package_name"

    iget-object v1, p0, Landroid/security/CredentialManagementApp;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    iget-object v0, p0, Landroid/security/CredentialManagementApp;->mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

    if-eqz v0, :cond_12

    .line 120
    iget-object v0, p0, Landroid/security/CredentialManagementApp;->mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

    invoke-virtual {v0, p1}, Landroid/security/AppUriAuthenticationPolicy;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 122
    :cond_12
    return-void
.end method
