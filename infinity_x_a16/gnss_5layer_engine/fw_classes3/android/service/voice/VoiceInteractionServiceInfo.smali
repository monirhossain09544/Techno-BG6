.class public Landroid/service/voice/VoiceInteractionServiceInfo;
.super Ljava/lang/Object;
.source "VoiceInteractionServiceInfo.java"


# static fields
.field static final greylist-max-o TAG:Ljava/lang/String; = "VoiceInteractionServiceInfo"


# instance fields
.field private blacklist mHotwordDetectionService:Ljava/lang/String;

.field private greylist-max-o mParseError:Ljava/lang/String;

.field private greylist-max-o mRecognitionService:Ljava/lang/String;

.field private greylist-max-o mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private greylist-max-o mSessionService:Ljava/lang/String;

.field private greylist-max-o mSettingsActivity:Ljava/lang/String;

.field private greylist-max-o mSupportsAssist:Z

.field private greylist-max-o mSupportsLaunchFromKeyguard:Z

.field private greylist-max-o mSupportsLocalInteraction:Z

.field private blacklist mVisualQueryDetectionService:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 65
    invoke-static {p2, p3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 66
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V
    .registers 9

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v0, "android.permission.BIND_VOICE_INTERACTION"

    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 95
    const-string p1, "Service does not require permission android.permission.BIND_VOICE_INTERACTION"

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    .line 97
    return-void

    .line 100
    :cond_12
    :try_start_12
    const-string v0, "android.voice_interaction"

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_18} :catch_d3
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_d3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_18} :catch_d3

    .line 102
    if-nez v0, :cond_37

    .line 103
    :try_start_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No android.voice_interaction meta-data for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_c7

    .line 152
    if-eqz v0, :cond_36

    :try_start_33
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_36
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_36} :catch_d3
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_d3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_36} :catch_d3

    .line 105
    :cond_36
    return-void

    .line 108
    :cond_37
    :try_start_37
    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    .line 110
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 113
    :goto_41
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4c

    if-eq v2, v3, :cond_4c

    goto :goto_41

    .line 117
    :cond_4c
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 118
    const-string/jumbo v5, "voice-interaction-service"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 119
    const-string p1, "Meta-data does not start with voice-interaction-service tag"

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_37 .. :try_end_5d} :catchall_c7

    .line 152
    if-eqz v0, :cond_62

    :try_start_5f
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5f .. :try_end_62} :catch_d3
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_d3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5f .. :try_end_62} :catch_d3

    .line 120
    :cond_62
    return-void

    .line 123
    :cond_63
    :try_start_63
    sget-object v2, Lcom/android/internal/R$styleable;->VoiceInteractionService:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 125
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    .line 127
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    .line 129
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSettingsActivity:Ljava/lang/String;

    .line 131
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsAssist:Z

    .line 134
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLaunchFromKeyguard:Z

    .line 137
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLocalInteraction:Z

    .line 139
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mHotwordDetectionService:Ljava/lang/String;

    .line 141
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mVisualQueryDetectionService:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    if-nez p1, :cond_b0

    .line 145
    const-string p1, "No sessionService specified"

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_aa
    .catchall {:try_start_63 .. :try_end_aa} :catchall_c7

    .line 152
    if-eqz v0, :cond_af

    :try_start_ac
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_af
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ac .. :try_end_af} :catch_d3
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_d3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ac .. :try_end_af} :catch_d3

    .line 146
    :cond_af
    return-void

    .line 148
    :cond_b0
    :try_start_b0
    iget-object p1, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    if-nez p1, :cond_be

    .line 149
    const-string p1, "No recognitionService specified"

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_b8
    .catchall {:try_start_b0 .. :try_end_b8} :catchall_c7

    .line 152
    if-eqz v0, :cond_bd

    :try_start_ba
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 150
    :cond_bd
    return-void

    .line 152
    :cond_be
    if-eqz v0, :cond_c3

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_c3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ba .. :try_end_c3} :catch_d3
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_c3} :catch_d3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ba .. :try_end_c3} :catch_d3

    .line 156
    :cond_c3
    nop

    .line 157
    iput-object p2, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 158
    return-void

    .line 100
    :catchall_c7
    move-exception p1

    if-eqz v0, :cond_d2

    :try_start_ca
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_ce

    goto :goto_d2

    :catchall_ce
    move-exception p2

    :try_start_cf
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d2
    :goto_d2
    throw p1
    :try_end_d3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cf .. :try_end_d3} :catch_d3
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d3} :catch_d3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cf .. :try_end_d3} :catch_d3

    .line 152
    :catch_d3
    move-exception p1

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error parsing voice interation service meta-data: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    .line 154
    const-string p2, "VoiceInteractionServiceInfo"

    const-string v0, "error parsing voice interaction service meta-data"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    return-void
.end method

.method private static greylist-max-o getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 72
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/32 v1, 0xc0080

    invoke-interface {v0, p0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_f

    .line 77
    if-eqz p1, :cond_e

    .line 78
    return-object p1

    .line 81
    :cond_e
    goto :goto_10

    .line 80
    :catch_f
    move-exception p1

    .line 82
    :goto_10
    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist getHotwordDetectionService()Ljava/lang/String;
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mHotwordDetectionService:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getParseError()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getRecognitionService()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public greylist-max-o getSessionService()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getSettingsActivity()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSettingsActivity:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getSupportsAssist()Z
    .registers 2

    .line 181
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsAssist:Z

    return v0
.end method

.method public greylist-max-o getSupportsLaunchFromKeyguard()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLaunchFromKeyguard:Z

    return v0
.end method

.method public greylist-max-o getSupportsLocalInteraction()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLocalInteraction:Z

    return v0
.end method

.method public blacklist getVisualQueryDetectionService()Ljava/lang/String;
    .registers 2

    .line 199
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mVisualQueryDetectionService:Ljava/lang/String;

    return-object v0
.end method
