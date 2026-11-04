.class public final Landroid/security/AppUriAuthenticationPolicy;
.super Ljava/lang/Object;
.source "AppUriAuthenticationPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/AppUriAuthenticationPolicy$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/AppUriAuthenticationPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist KEY_AUTHENTICATION_POLICY_APP:Ljava/lang/String; = "policy_app"

.field private static final blacklist KEY_AUTHENTICATION_POLICY_APP_TO_URIS:Ljava/lang/String; = "authentication_policy_app_to_uris"


# instance fields
.field private final blacklist mAppToUris:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/security/UrisToAliases;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 160
    new-instance v0, Landroid/security/AppUriAuthenticationPolicy$1;

    invoke-direct {v0}, Landroid/security/AppUriAuthenticationPolicy$1;-><init>()V

    sput-object v0, Landroid/security/AppUriAuthenticationPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/security/UrisToAliases;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Landroid/security/AppUriAuthenticationPolicy;->mAppToUris:Ljava/util/Map;

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Map;Landroid/security/AppUriAuthenticationPolicy-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/AppUriAuthenticationPolicy;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static blacklist readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/security/AppUriAuthenticationPolicy;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 205
    new-instance v0, Landroid/security/AppUriAuthenticationPolicy$Builder;

    invoke-direct {v0}, Landroid/security/AppUriAuthenticationPolicy$Builder;-><init>()V

    .line 206
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 208
    :cond_9
    :goto_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3c

    const/4 v3, 0x3

    if-ne v2, v3, :cond_19

    .line 209
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_3c

    .line 210
    :cond_19
    if-eq v2, v3, :cond_9

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1f

    .line 211
    goto :goto_9

    .line 213
    :cond_1f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "authentication_policy_app_to_uris"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 214
    goto :goto_9

    .line 216
    :cond_2c
    const/4 v2, 0x0

    const-string/jumbo v3, "policy_app"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-static {p0}, Landroid/security/UrisToAliases;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/security/UrisToAliases;

    move-result-object v3

    .line 218
    invoke-virtual {v0, v2, v3}, Landroid/security/AppUriAuthenticationPolicy$Builder;->addAppAndUriMapping(Ljava/lang/String;Landroid/security/UrisToAliases;)Landroid/security/AppUriAuthenticationPolicy$Builder;

    .line 219
    goto :goto_9

    .line 220
    :cond_3c
    invoke-virtual {v0}, Landroid/security/AppUriAuthenticationPolicy$Builder;->build()Landroid/security/AppUriAuthenticationPolicy;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 252
    if-ne p0, p1, :cond_4

    .line 253
    const/4 p1, 0x1

    return p1

    .line 255
    :cond_4
    instance-of v0, p1, Landroid/security/AppUriAuthenticationPolicy;

    if-nez v0, :cond_a

    .line 256
    const/4 p1, 0x0

    return p1

    .line 258
    :cond_a
    check-cast p1, Landroid/security/AppUriAuthenticationPolicy;

    .line 259
    iget-object v0, p0, Landroid/security/AppUriAuthenticationPolicy;->mAppToUris:Ljava/util/Map;

    iget-object p1, p1, Landroid/security/AppUriAuthenticationPolicy;->mAppToUris:Ljava/util/Map;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist getAliases()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 244
    iget-object v1, p0, Landroid/security/AppUriAuthenticationPolicy;->mAppToUris:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/UrisToAliases;

    .line 245
    invoke-virtual {v2}, Landroid/security/UrisToAliases;->getUrisToAliases()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 246
    goto :goto_f

    .line 247
    :cond_27
    return-object v0
.end method

.method public whitelist getAppAndUriMappings()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    iget-object v1, p0, Landroid/security/AppUriAuthenticationPolicy;->mAppToUris:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/UrisToAliases;

    invoke-virtual {v2}, Landroid/security/UrisToAliases;->getUrisToAliases()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    goto :goto_f

    .line 194
    :cond_2f
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 264
    iget-object v0, p0, Landroid/security/AppUriAuthenticationPolicy;->mAppToUris:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppUriAuthenticationPolicy{mPackageNameToUris="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/security/AppUriAuthenticationPolicy;->mAppToUris:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 156
    iget-object p2, p0, Landroid/security/AppUriAuthenticationPolicy;->mAppToUris:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 157
    return-void
.end method

.method public blacklist writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Landroid/security/AppUriAuthenticationPolicy;->mAppToUris:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 230
    const/4 v2, 0x0

    const-string v3, "authentication_policy_app_to_uris"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "policy_app"

    invoke-interface {p1, v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/UrisToAliases;

    invoke-virtual {v1, p1}, Landroid/security/UrisToAliases;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 233
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 234
    goto :goto_a

    .line 235
    :cond_35
    return-void
.end method
