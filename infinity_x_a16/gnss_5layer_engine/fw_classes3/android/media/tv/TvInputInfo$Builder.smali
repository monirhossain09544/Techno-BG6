.class public final Landroid/media/tv/TvInputInfo$Builder;
.super Ljava/lang/Object;
.source "TvInputInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final greylist-max-o DELIMITER_INFO_IN_ID:Ljava/lang/String; = "/"

.field private static final greylist-max-o LENGTH_HDMI_DEVICE_ID:I = 0x2

.field private static final greylist-max-o LENGTH_HDMI_PHYSICAL_ADDRESS:I = 0x4

.field private static final greylist-max-o PREFIX_HARDWARE_DEVICE:Ljava/lang/String; = "HW"

.field private static final greylist-max-o PREFIX_HDMI_DEVICE:Ljava/lang/String; = "HDMI"

.field private static final greylist-max-o XML_START_TAG_NAME:Ljava/lang/String; = "tv-input"

.field private static final greylist-max-o sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;


# instance fields
.field private blacklist mCanPauseRecording:Ljava/lang/Boolean;

.field private greylist-max-o mCanRecord:Ljava/lang/Boolean;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-o mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mIconDisconnected:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mIconStandby:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private greylist-max-o mLabelResId:I

.field private greylist-max-o mParentId:Ljava/lang/String;

.field private final greylist-max-o mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private greylist-max-o mSetupActivity:Ljava/lang/String;

.field private greylist-max-o mTunerCount:Ljava/lang/Integer;

.field private greylist-max-o mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 684
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    .line 686
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 688
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 689
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 691
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/16 v2, 0x3ea

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 692
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/16 v2, 0x3eb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 693
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const/16 v2, 0x3ec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 695
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const/16 v2, 0x3ed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 696
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const/16 v2, 0x3ee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 697
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/16 v2, 0x3ef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 698
    sget-object v0, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const/16 v2, 0x3f0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 700
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 5

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    if-eqz p1, :cond_2b

    .line 729
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.tv.TvInputService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    .line 730
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x84

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    iput-object p2, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 732
    iget-object p2, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz p2, :cond_23

    .line 735
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mContext:Landroid/content/Context;

    .line 736
    return-void

    .line 733
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid component. Can\'t find the service."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 727
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .registers 3

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    if-eqz p1, :cond_15

    .line 749
    if-eqz p2, :cond_c

    .line 752
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mContext:Landroid/content/Context;

    .line 753
    iput-object p2, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 754
    return-void

    .line 750
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "resolveInfo cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 747
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static greylist-max-o generateInputId(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 1

    .line 967
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o generateInputId(Landroid/content/ComponentName;Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;
    .registers 4

    .line 972
    nop

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 976
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 975
    const-string v1, "/HDMI%04X%02X"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o generateInputId(Landroid/content/ComponentName;Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;
    .registers 3

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "HW"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 982
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 981
    return-object p0
.end method

.method private static blacklist getRelativePosition(Landroid/content/Context;Landroid/hardware/hdmi/HdmiDeviceInfo;)I
    .registers 3

    .line 986
    nop

    .line 987
    const-string v0, "hdmi_control"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/hdmi/HdmiControlManager;

    .line 988
    if-nez p0, :cond_d

    .line 989
    const/4 p0, 0x0

    return p0

    .line 991
    :cond_d
    nop

    .line 992
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result p1

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiControlManager;->getPhysicalAddress()I

    move-result p0

    .line 991
    invoke-static {p1, p0}, Landroid/hardware/hdmi/HdmiUtils;->getHdmiAddressRelativePosition(II)I

    move-result p0

    return p0
.end method

.method private greylist-max-o parseServiceMetadata(I)V
    .registers 10

    .line 996
    iget-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 997
    iget-object v1, p0, Landroid/media/tv/TvInputInfo$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 998
    :try_start_a
    const-string v2, "android.media.tv.input"

    .line 999
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_d8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_10} :catch_d8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_10} :catch_bc

    .line 1000
    if-eqz v2, :cond_96

    .line 1005
    :try_start_12
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1006
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 1009
    :goto_1c
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v4, v6, :cond_27

    if-eq v4, v5, :cond_27

    goto :goto_1c

    .line 1013
    :cond_27
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1014
    const-string/jumbo v7, "tv-input"

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 1019
    sget-object v4, Lcom/android/internal/R$styleable;->TvInputService:[I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1021
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/TvInputInfo$Builder;->mSetupActivity:Ljava/lang/String;

    .line 1023
    iget-object v3, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    const/4 v4, 0x0

    if-nez v3, :cond_4f

    .line 1024
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    .line 1027
    :cond_4f
    iget-object v3, p0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    if-nez v3, :cond_60

    if-nez p1, :cond_60

    .line 1028
    const/4 p1, 0x3

    invoke-virtual {v1, p1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    .line 1031
    :cond_60
    iget-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanPauseRecording:Ljava/lang/Boolean;

    if-nez p1, :cond_6f

    .line 1032
    const/4 p1, 0x4

    invoke-virtual {v1, p1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanPauseRecording:Ljava/lang/Boolean;

    .line 1037
    :cond_6f
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_72
    .catchall {:try_start_12 .. :try_end_72} :catchall_94

    .line 1038
    if-eqz v2, :cond_77

    :try_start_74
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_d8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_74 .. :try_end_77} :catch_d8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_74 .. :try_end_77} :catch_bc

    .line 1042
    :cond_77
    nop

    .line 1043
    return-void

    .line 1015
    :cond_79
    :try_start_79
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Meta-data does not start with tv-input tag for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 998
    :catchall_94
    move-exception p1

    goto :goto_b1

    .line 1001
    :cond_96
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No android.media.tv.input meta-data found for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_b1
    .catchall {:try_start_79 .. :try_end_b1} :catchall_94

    .line 998
    :goto_b1
    if-eqz v2, :cond_bb

    :try_start_b3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b7

    goto :goto_bb

    :catchall_b7
    move-exception v1

    :try_start_b8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_bb
    :goto_bb
    throw p1
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bc} :catch_d8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b8 .. :try_end_bc} :catch_d8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b8 .. :try_end_bc} :catch_bc

    .line 1040
    :catch_bc
    move-exception p1

    .line 1041
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No resources found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1038
    :catch_d8
    move-exception p1

    .line 1039
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed reading meta-data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/TvInputInfo;
    .registers 26

    .line 928
    move-object/from16 v0, p0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    nop

    .line 933
    nop

    .line 935
    nop

    .line 937
    iget-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3c

    .line 938
    iget-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-static {v1, v2}, Landroid/media/tv/TvInputInfo$Builder;->generateInputId(Landroid/content/ComponentName;Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    move-result-object v1

    .line 939
    nop

    .line 940
    nop

    .line 941
    iget-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mContext:Landroid/content/Context;

    iget-object v5, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-static {v2, v5}, Landroid/media/tv/TvInputInfo$Builder;->getRelativePosition(Landroid/content/Context;Landroid/hardware/hdmi/HdmiDeviceInfo;)I

    move-result v2

    .line 942
    const/4 v5, 0x2

    if-ne v2, v5, :cond_31

    move v5, v3

    goto :goto_32

    :cond_31
    move v5, v4

    :goto_32
    const/16 v6, 0x3ef

    move-object v7, v1

    move/from16 v21, v2

    move v9, v3

    move/from16 v20, v5

    move v8, v6

    goto :goto_7f

    .line 944
    :cond_3c
    iget-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    if-eqz v2, :cond_74

    .line 945
    iget-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-static {v1, v2}, Landroid/media/tv/TvInputInfo$Builder;->generateInputId(Landroid/content/ComponentName;Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    move-result-object v1

    .line 946
    sget-object v2, Landroid/media/tv/TvInputInfo$Builder;->sHardwareTypeToTvInputType:Landroid/util/SparseIntArray;

    iget-object v5, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 947
    nop

    .line 948
    iget-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v2

    const/16 v5, 0x9

    if-ne v2, v5, :cond_6c

    .line 949
    iget-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 950
    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    move-result v2

    .line 949
    const v5, 0xffff

    invoke-static {v5, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->hardwarePort(II)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    iput-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 956
    :cond_6c
    move-object v7, v1

    move v9, v3

    move/from16 v20, v4

    move/from16 v21, v20

    move v8, v6

    goto :goto_7f

    .line 953
    :cond_74
    invoke-static {v1}, Landroid/media/tv/TvInputInfo$Builder;->generateInputId(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    .line 954
    move-object v7, v1

    move v8, v4

    move v9, v8

    move/from16 v20, v9

    move/from16 v21, v20

    .line 956
    :goto_7f
    invoke-direct {v0, v8}, Landroid/media/tv/TvInputInfo$Builder;->parseServiceMetadata(I)V

    .line 957
    new-instance v5, Landroid/media/tv/TvInputInfo;

    iget-object v6, v0, Landroid/media/tv/TvInputInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v10, v0, Landroid/media/tv/TvInputInfo$Builder;->mLabel:Ljava/lang/CharSequence;

    iget v11, v0, Landroid/media/tv/TvInputInfo$Builder;->mLabelResId:I

    iget-object v12, v0, Landroid/media/tv/TvInputInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v13, v0, Landroid/media/tv/TvInputInfo$Builder;->mIconStandby:Landroid/graphics/drawable/Icon;

    iget-object v14, v0, Landroid/media/tv/TvInputInfo$Builder;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    iget-object v15, v0, Landroid/media/tv/TvInputInfo$Builder;->mSetupActivity:Ljava/lang/String;

    .line 959
    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    if-nez v1, :cond_99

    move/from16 v16, v4

    goto :goto_a1

    :cond_99
    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v16, v1

    .line 960
    :goto_a1
    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mCanPauseRecording:Ljava/lang/Boolean;

    if-nez v1, :cond_a8

    move/from16 v17, v4

    goto :goto_b0

    :cond_a8
    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mCanPauseRecording:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v17, v1

    .line 961
    :goto_b0
    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    if-nez v1, :cond_b5

    goto :goto_bb

    :cond_b5
    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_bb
    move/from16 v18, v4

    iget-object v1, v0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    iget-object v2, v0, Landroid/media/tv/TvInputInfo$Builder;->mParentId:Ljava/lang/String;

    iget-object v0, v0, Landroid/media/tv/TvInputInfo$Builder;->mExtras:Landroid/os/Bundle;

    const/16 v24, 0x0

    move-object/from16 v23, v0

    move-object/from16 v19, v1

    move-object/from16 v22, v2

    invoke-direct/range {v5 .. v24}, Landroid/media/tv/TvInputInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;IZLjava/lang/CharSequence;ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/String;ZZILandroid/hardware/hdmi/HdmiDeviceInfo;ZILjava/lang/String;Landroid/os/Bundle;Landroid/media/tv/TvInputInfo-IA;)V

    .line 957
    return-object v5
.end method

.method public whitelist setCanPauseRecording(Z)Landroid/media/tv/TvInputInfo$Builder;
    .registers 2

    .line 903
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanPauseRecording:Ljava/lang/Boolean;

    .line 904
    return-object p0
.end method

.method public whitelist setCanRecord(Z)Landroid/media/tv/TvInputInfo$Builder;
    .registers 2

    .line 891
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mCanRecord:Ljava/lang/Boolean;

    .line 892
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/media/tv/TvInputInfo$Builder;
    .registers 2

    .line 916
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mExtras:Landroid/os/Bundle;

    .line 917
    return-object p0
.end method

.method public whitelist setHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 835
    iget-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    if-eqz v0, :cond_e

    .line 836
    const-string v0, "TvInputInfo"

    const-string v1, "TvInputHardwareInfo will not be used to build this TvInputInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 839
    :cond_e
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 840
    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;)Landroid/media/tv/TvInputInfo$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 765
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 766
    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;I)Landroid/media/tv/TvInputInfo$Builder;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 782
    if-nez p2, :cond_5

    .line 783
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    goto :goto_10

    .line 784
    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_b

    .line 785
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIconStandby:Landroid/graphics/drawable/Icon;

    goto :goto_10

    .line 786
    :cond_b
    const/4 v0, 0x2

    if-ne p2, v0, :cond_11

    .line 787
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mIconDisconnected:Landroid/graphics/drawable/Icon;

    .line 791
    :goto_10
    return-object p0

    .line 789
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setLabel(I)Landroid/media/tv/TvInputInfo$Builder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 819
    iget-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_7

    .line 822
    iput p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabelResId:I

    .line 823
    return-object p0

    .line 820
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Label text is already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setLabel(Ljava/lang/CharSequence;)Landroid/media/tv/TvInputInfo$Builder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 803
    iget v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabelResId:I

    if-nez v0, :cond_7

    .line 806
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 807
    return-object p0

    .line 804
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Resource ID for label is already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setParentId(Ljava/lang/String;)Landroid/media/tv/TvInputInfo$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 852
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mParentId:Ljava/lang/String;

    .line 853
    return-object p0
.end method

.method public whitelist setTunerCount(I)Landroid/media/tv/TvInputInfo$Builder;
    .registers 2

    .line 880
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mTunerCount:Ljava/lang/Integer;

    .line 881
    return-object p0
.end method

.method public whitelist setTvInputHardwareInfo(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 865
    iget-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    if-eqz v0, :cond_e

    .line 866
    const-string v0, "TvInputInfo"

    const-string v1, "mHdmiDeviceInfo will not be used to build this TvInputInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputInfo$Builder;->mHdmiDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 869
    :cond_e
    iput-object p1, p0, Landroid/media/tv/TvInputInfo$Builder;->mTvInputHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 870
    return-object p0
.end method
