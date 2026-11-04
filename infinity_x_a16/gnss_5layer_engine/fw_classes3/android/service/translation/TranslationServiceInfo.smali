.class public final Landroid/service/translation/TranslationServiceInfo;
.super Ljava/lang/Object;
.source "TranslationServiceInfo.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TranslationServiceInfo"

.field private static final blacklist XML_TAG_SERVICE:Ljava/lang/String; = "translation-service"


# instance fields
.field private final blacklist mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private final blacklist mSettingsActivity:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 95
    invoke-static {p2, p3, p4}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfoOrThrow(Landroid/content/ComponentName;ZI)Landroid/content/pm/ServiceInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/service/translation/TranslationServiceInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    .line 96
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V
    .registers 8

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v1, "android.permission.BIND_TRANSLATION_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "TranslationServiceInfo"

    if-eqz v0, :cond_74

    .line 108
    iput-object p2, p0, Landroid/service/translation/TranslationServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.translation_service"

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 114
    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 115
    iput-object v1, p0, Landroid/service/translation/TranslationServiceInfo;->mSettingsActivity:Ljava/lang/String;

    .line 116
    return-void

    .line 119
    :cond_21
    nop

    .line 122
    :try_start_22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    .line 125
    const/4 p2, 0x0

    move v3, p2

    .line 126
    :goto_2e
    const/4 v4, 0x1

    if-eq v3, v4, :cond_39

    const/4 v4, 0x2

    if-eq v3, v4, :cond_39

    .line 127
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    goto :goto_2e

    .line 130
    :cond_39
    const-string/jumbo v3, "translation-service"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 131
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_4a} :catch_6b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_4a} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_4a} :catch_6b

    .line 132
    nop

    .line 134
    :try_start_4b
    sget-object v3, Lcom/android/internal/R$styleable;->TranslationService:[I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_5d

    .line 136
    :try_start_51
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_5b

    .line 139
    if-eqz p1, :cond_5a

    .line 140
    :try_start_57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    :cond_5a
    goto :goto_6a

    .line 139
    :catchall_5b
    move-exception p2

    goto :goto_5f

    :catchall_5d
    move-exception p2

    move-object p1, v1

    :goto_5f
    if-eqz p1, :cond_64

    .line 140
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    :cond_64
    throw p2

    .line 144
    :cond_65
    const-string p1, "Meta-data does not start with translation-service tag"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_57 .. :try_end_6a} :catch_6b
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_6a} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_57 .. :try_end_6a} :catch_6b

    .line 148
    :goto_6a
    goto :goto_71

    .line 146
    :catch_6b
    move-exception p1

    .line 147
    const-string p2, "Error parsing auto fill service meta-data"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    :goto_71
    iput-object v1, p0, Landroid/service/translation/TranslationServiceInfo;->mSettingsActivity:Ljava/lang/String;

    .line 151
    return-void

    .line 101
    :cond_74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TranslationServiceInfo from \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' does not require permission "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Service does not require permission android.permission.BIND_TRANSLATION_SERVICE"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist getServiceInfoOrThrow(Landroid/content/ComponentName;ZI)Landroid/content/pm/ServiceInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 64
    nop

    .line 65
    if-nez p1, :cond_7

    .line 66
    const v0, 0x100080

    goto :goto_9

    .line 65
    :cond_7
    const/16 v0, 0x80

    .line 69
    :goto_9
    nop

    .line 71
    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    int-to-long v2, v0

    invoke-interface {v1, p0, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    .line 73
    goto :goto_16

    .line 72
    :catch_14
    move-exception p2

    const/4 p2, 0x0

    .line 74
    :goto_16
    if-nez p2, :cond_46

    .line 75
    new-instance p2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get serviceInfo for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    if-eqz p1, :cond_2a

    const-string p1, " (temp)"

    goto :goto_2c

    :cond_2a
    const-string p1, "(default system)"

    :goto_2c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 79
    :cond_46
    return-object p2
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 166
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    const-string v0, "Component: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    const-string p1, "Settings: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Landroid/service/translation/TranslationServiceInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public blacklist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/service/translation/TranslationServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public blacklist getSettingsActivity()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/service/translation/TranslationServiceInfo;->mSettingsActivity:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/translation/TranslationServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, ", settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/translation/TranslationServiceInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
