.class public final Landroid/printservice/PrintServiceInfo;
.super Ljava/lang/Object;
.source "PrintServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String;

.field private static final greylist-max-o TAG_PRINT_SERVICE:Ljava/lang/String; = "print-service"


# instance fields
.field private final greylist-max-o mAddPrintersActivityName:Ljava/lang/String;

.field private final greylist-max-o mAdvancedPrintOptionsActivityName:Ljava/lang/String;

.field private final greylist-max-o mId:Ljava/lang/String;

.field private greylist-max-o mIsEnabled:Z

.field private final greylist-max-o mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private final greylist-max-o mSettingsActivityName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    const-class v0, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    .line 333
    new-instance v0, Landroid/printservice/PrintServiceInfo$1;

    invoke-direct {v0}, Landroid/printservice/PrintServiceInfo$1;-><init>()V

    sput-object v0, Landroid/printservice/PrintServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 100
    iput-object p2, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    .line 79
    const/4 v0, 0x0

    const-class v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static greylist-max-o create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/printservice/PrintServiceInfo;
    .registers 10

    .line 125
    nop

    .line 126
    nop

    .line 127
    nop

    .line 129
    nop

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 131
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v1, "android.printservice"

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 133
    const/4 v1, 0x0

    if-eqz v0, :cond_e7

    .line 135
    const/4 v2, 0x0

    move v3, v2

    .line 136
    :goto_15
    const-string v4, "Error reading meta-data:"

    const/4 v5, 0x1

    if-eq v3, v5, :cond_22

    const/4 v6, 0x2

    if-eq v3, v6, :cond_22

    .line 137
    :try_start_1d
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    goto :goto_15

    .line 140
    :cond_22
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 141
    const-string/jumbo v6, "print-service"

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 142
    sget-object p0, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Ignoring meta-data that does not start with print-service tag"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    move-object v3, p0

    goto :goto_5d

    .line 145
    :cond_39
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    .line 147
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 148
    sget-object v6, Lcom/android/internal/R$styleable;->PrintService:[I

    invoke-virtual {p0, v3, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 151
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_4f} :catch_c1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_4f} :catch_a5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_4f} :catch_83
    .catchall {:try_start_1d .. :try_end_4f} :catchall_81

    .line 154
    :try_start_4f
    invoke-virtual {p0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_53} :catch_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_53} :catch_77
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4f .. :try_end_53} :catch_72
    .catchall {:try_start_4f .. :try_end_53} :catchall_81

    .line 157
    const/4 v5, 0x3

    :try_start_54
    invoke-virtual {p0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5b} :catch_6c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_5b} :catch_67
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_54 .. :try_end_5b} :catch_64
    .catchall {:try_start_54 .. :try_end_5b} :catchall_81

    move-object p0, v1

    move-object v1, v2

    .line 170
    :goto_5d
    if-eqz v0, :cond_e9

    .line 171
    :goto_5f
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_e9

    .line 166
    :catch_64
    move-exception p0

    move-object p0, v1

    goto :goto_75

    .line 164
    :catch_67
    move-exception p0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_a8

    .line 162
    :catch_6c
    move-exception p0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_c4

    .line 166
    :catch_72
    move-exception p0

    move-object p0, v1

    move-object v3, p0

    :goto_75
    move-object v1, v2

    goto :goto_86

    .line 164
    :catch_77
    move-exception p0

    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_a8

    .line 162
    :catch_7c
    move-exception p0

    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_c4

    .line 170
    :catchall_81
    move-exception p0

    goto :goto_e1

    .line 166
    :catch_83
    move-exception p0

    move-object p0, v1

    move-object v3, p0

    .line 167
    :goto_86
    :try_start_86
    sget-object v2, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load resources for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-eqz v0, :cond_e9

    .line 171
    goto :goto_5f

    .line 164
    :catch_a5
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    .line 165
    :goto_a8
    sget-object v5, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-eqz v0, :cond_df

    .line 171
    goto :goto_dc

    .line 162
    :catch_c1
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    .line 163
    :goto_c4
    sget-object v5, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_86 .. :try_end_da} :catchall_81

    .line 170
    if-eqz v0, :cond_df

    .line 171
    :goto_dc
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 176
    :cond_df
    move-object p0, v2

    goto :goto_e9

    .line 170
    :goto_e1
    if-eqz v0, :cond_e6

    .line 171
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 173
    :cond_e6
    throw p0

    .line 133
    :cond_e7
    move-object p0, v1

    move-object v3, p0

    .line 176
    :cond_e9
    :goto_e9
    new-instance v0, Landroid/printservice/PrintServiceInfo;

    invoke-direct {v0, p1, v1, v3, p0}, Landroid/printservice/PrintServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 297
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 298
    return v0

    .line 300
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 301
    return v1

    .line 303
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 304
    return v1

    .line 306
    :cond_13
    check-cast p1, Landroid/printservice/PrintServiceInfo;

    .line 307
    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 308
    iget-object p1, p1, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    if-eqz p1, :cond_29

    .line 309
    return v1

    .line 311
    :cond_1e
    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    iget-object p1, p1, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 312
    return v1

    .line 314
    :cond_29
    return v0
.end method

.method public greylist-max-o getAddPrintersActivityName()Ljava/lang/String;
    .registers 2

    .line 254
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getAdvancedOptionsActivityName()Ljava/lang/String;
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .registers 4

    .line 111
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist-max-o getId()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getResolveInfo()Landroid/content/pm/ResolveInfo;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public greylist-max-o getSettingsActivityName()Ljava/lang/String;
    .registers 2

    .line 239
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_c
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public greylist-max-o isEnabled()Z
    .registers 2

    .line 202
    iget-boolean v0, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    return v0
.end method

.method public greylist-max-o setIsEnabled(Z)V
    .registers 2

    .line 213
    iput-boolean p1, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    .line 214
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    const-string v1, "PrintServiceInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v1, "isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, ", resolveInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    const-string v1, ", settingsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v1, ", addPrintersActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v1, ", advancedPrintOptionsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    .line 328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 282
    iget-object p2, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-boolean p2, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 284
    iget-object p2, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 285
    iget-object p2, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object p2, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object p2, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    return-void
.end method
