.class public Landroid/service/contentcapture/ContentCaptureServiceInfo;
.super Ljava/lang/Object;
.source "ContentCaptureServiceInfo.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist XML_TAG_SERVICE:Ljava/lang/String; = "content-capture-service"


# instance fields
.field private final blacklist mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private final blacklist mSettingsActivity:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    const-class v0, Landroid/service/contentcapture/ContentCaptureServiceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 85
    invoke-static {p2, p3, p4}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->getServiceInfoOrThrow(Landroid/content/ComponentName;ZI)Landroid/content/pm/ServiceInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureServiceInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    .line 86
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V
    .registers 7

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v1, "android.permission.BIND_CONTENT_CAPTURE_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 98
    iput-object p2, p0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.content_capture"

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 103
    const/4 v1, 0x0

    if-nez v0, :cond_1f

    .line 104
    iput-object v1, p0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->mSettingsActivity:Ljava/lang/String;

    .line 105
    return-void

    .line 108
    :cond_1f
    nop

    .line 111
    :try_start_20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    .line 114
    const/4 p2, 0x0

    move v2, p2

    .line 115
    :goto_2c
    const/4 v3, 0x1

    if-eq v2, v3, :cond_37

    const/4 v3, 0x2

    if-eq v2, v3, :cond_37

    .line 116
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    goto :goto_2c

    .line 119
    :cond_37
    const-string v2, "content-capture-service"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 120
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_47} :catch_6a
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_47} :catch_6a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_47} :catch_6a

    .line 121
    nop

    .line 123
    :try_start_48
    sget-object v2, Lcom/android/internal/R$styleable;->ContentCaptureService:[I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_5a

    .line 125
    :try_start_4e
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_58

    .line 128
    if-eqz p1, :cond_57

    .line 129
    :try_start_54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    :cond_57
    goto :goto_69

    .line 128
    :catchall_58
    move-exception p2

    goto :goto_5c

    :catchall_5a
    move-exception p2

    move-object p1, v1

    :goto_5c
    if-eqz p1, :cond_61

    .line 129
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    :cond_61
    throw p2

    .line 133
    :cond_62
    sget-object p1, Landroid/service/contentcapture/ContentCaptureServiceInfo;->TAG:Ljava/lang/String;

    const-string p2, "Meta-data does not start with content-capture-service tag"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_54 .. :try_end_69} :catch_6a
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_69} :catch_6a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_69} :catch_6a

    .line 137
    :goto_69
    goto :goto_72

    .line 135
    :catch_6a
    move-exception p1

    .line 136
    sget-object p2, Landroid/service/contentcapture/ContentCaptureServiceInfo;->TAG:Ljava/lang/String;

    const-string v0, "Error parsing auto fill service meta-data"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    :goto_72
    iput-object v1, p0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->mSettingsActivity:Ljava/lang/String;

    .line 140
    return-void

    .line 91
    :cond_75
    sget-object p1, Landroid/service/contentcapture/ContentCaptureServiceInfo;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentCaptureService from \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\' does not require permission "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Service does not require permission android.permission.BIND_CONTENT_CAPTURE_SERVICE"

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

    .line 58
    nop

    .line 59
    if-nez p1, :cond_7

    .line 60
    const v0, 0x100080

    goto :goto_9

    .line 59
    :cond_7
    const/16 v0, 0x80

    .line 63
    :goto_9
    nop

    .line 65
    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    int-to-long v2, v0

    invoke-interface {v1, p0, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    .line 67
    goto :goto_16

    .line 66
    :catch_14
    move-exception p2

    const/4 p2, 0x0

    .line 68
    :goto_16
    if-nez p2, :cond_46

    .line 69
    new-instance p2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get serviceInfo for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
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

    .line 71
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 73
    :cond_46
    return-object p2
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 165
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    const-string v0, "Component: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    const-string p1, "Settings: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public blacklist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public blacklist getSettingsActivity()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->mSettingsActivity:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, ", settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureServiceInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
