.class public final Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;
.super Ljava/lang/Object;
.source "TvInteractiveAppServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/TvInteractiveAppServiceInfo$InteractiveAppType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field public static final whitelist INTERACTIVE_APP_TYPE_ATSC:I = 0x2

.field public static final whitelist INTERACTIVE_APP_TYPE_GINGA:I = 0x4

.field public static final whitelist INTERACTIVE_APP_TYPE_HBBTV:I = 0x1

.field public static final whitelist INTERACTIVE_APP_TYPE_OTHER:I = -0x80000000

.field public static final whitelist INTERACTIVE_APP_TYPE_TARGETED_AD:I = 0x8

.field private static final blacklist TAG:Ljava/lang/String; = "TvInteractiveAppServiceInfo"

.field private static final blacklist XML_START_TAG_NAME:Ljava/lang/String; = "tv-interactive-app"


# instance fields
.field private final blacklist mExtraTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mService:Landroid/content/pm/ResolveInfo;

.field private blacklist mTypes:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 125
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo$1;

    invoke-direct {v0}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 6

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mExtraTypes:Ljava/util/List;

    .line 88
    if-eqz p1, :cond_4c

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.tv.interactive.TvInteractiveAppService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x84

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    .line 95
    if-eqz p2, :cond_44

    .line 99
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->generateInteractiveAppServiceId(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-static {p2, p1, v1}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->parseServiceMetadata(Landroid/content/pm/ResolveInfo;Landroid/content/Context;Ljava/util/List;)V

    .line 106
    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 107
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    .line 108
    invoke-direct {p0, v1}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->toTypesFlag(Ljava/util/List;)V

    .line 109
    return-void

    .line 96
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid component. Can\'t find the service."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor blacklist <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mExtraTypes:Ljava/util/List;

    .line 112
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 113
    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    .line 114
    iput p3, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    .line 115
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mExtraTypes:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mExtraTypes:Ljava/util/List;

    .line 119
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    .line 122
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mExtraTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 123
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/interactive/TvInteractiveAppServiceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist generateInteractiveAppServiceId(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 1

    .line 209
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseServiceMetadata(Landroid/content/pm/ResolveInfo;Landroid/content/Context;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 214
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 216
    :try_start_6
    const-string v0, "android.media.tv.interactive.app"

    .line 217
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_b7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_c} :catch_b7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_c} :catch_9b

    .line 218
    if-eqz v0, :cond_75

    .line 224
    :try_start_e
    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    .line 225
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 228
    :goto_18
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_23

    const/4 v3, 0x2

    if-eq v2, v3, :cond_23

    goto :goto_18

    .line 233
    :cond_23
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 234
    const-string/jumbo v3, "tv-interactive-app"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 239
    sget-object v2, Lcom/android/internal/R$styleable;->TvInteractiveAppService:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 241
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 243
    array-length v3, v2

    :goto_3c
    if-ge v1, v3, :cond_4e

    aget-object v4, v2, v1

    .line 244
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 247
    :cond_4e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_51
    .catchall {:try_start_e .. :try_end_51} :catchall_73

    .line 248
    if-eqz v0, :cond_56

    :try_start_53
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_b7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_56} :catch_b7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_53 .. :try_end_56} :catch_9b

    .line 253
    :cond_56
    nop

    .line 254
    return-void

    .line 235
    :cond_58
    :try_start_58
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Meta-data does not start with tv-interactive-app tag for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 216
    :catchall_73
    move-exception p1

    goto :goto_90

    .line 219
    :cond_75
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No android.media.tv.interactive.app meta-data found for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_90
    .catchall {:try_start_58 .. :try_end_90} :catchall_73

    .line 216
    :goto_90
    if-eqz v0, :cond_9a

    :try_start_92
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_96

    goto :goto_9a

    :catchall_96
    move-exception p2

    :try_start_97
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9a
    :goto_9a
    throw p1
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9b} :catch_b7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_97 .. :try_end_9b} :catch_b7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_97 .. :try_end_9b} :catch_9b

    .line 251
    :catch_9b
    move-exception p1

    .line 252
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No resources found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 248
    :catch_b7
    move-exception p1

    .line 249
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed reading meta-data for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private blacklist toTypesFlag(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    .line 258
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mExtraTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 259
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 260
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_78

    :cond_21
    goto :goto_4b

    :sswitch_22
    const-string v2, "hbbtv"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v0

    goto :goto_4c

    :sswitch_2c
    const-string v2, "ginga"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v3

    goto :goto_4c

    :sswitch_36
    const-string v2, "atsc"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v4

    goto :goto_4c

    :sswitch_40
    const-string/jumbo v2, "targeted_ad"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x3

    goto :goto_4c

    :goto_4b
    const/4 v2, -0x1

    :goto_4c
    packed-switch v2, :pswitch_data_8a

    goto :goto_6a

    .line 271
    :pswitch_50
    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    goto :goto_6a

    .line 268
    :pswitch_57
    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    .line 269
    goto :goto_76

    .line 265
    :pswitch_5e
    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    or-int/2addr v1, v3

    iput v1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    .line 266
    goto :goto_76

    .line 262
    :pswitch_64
    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    or-int/2addr v1, v4

    iput v1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    .line 263
    goto :goto_76

    .line 273
    :goto_6a
    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    iput v2, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    .line 274
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mExtraTypes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :goto_76
    goto :goto_c

    .line 278
    :cond_77
    return-void

    :sswitch_data_78
    .sparse-switch
        -0x7bf2f32e -> :sswitch_40
        0x2dd9c3 -> :sswitch_36
        0x5dcd9a6 -> :sswitch_2c
        0x5e7972a -> :sswitch_22
    .end sparse-switch

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_64
        :pswitch_5e
        :pswitch_57
        :pswitch_50
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getComponent()Landroid/content/ComponentName;
    .registers 4

    .line 165
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getCustomSupportedTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mExtraTypes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public whitelist getSupportedTypes()I
    .registers 2

    .line 195
    iget v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 145
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 146
    iget-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget p2, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mTypes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->mExtraTypes:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 149
    return-void
.end method
