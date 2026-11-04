.class Landroid/preference/PreferenceInflater;
.super Landroid/preference/GenericInflater;
.source "PreferenceInflater.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/GenericInflater<",
        "Landroid/preference/Preference;",
        "Landroid/preference/PreferenceGroup;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist EXTRA_TAG_NAME:Ljava/lang/String; = "extra"

.field private static final blacklist INTENT_TAG_NAME:Ljava/lang/String; = "intent"

.field private static final blacklist TAG:Ljava/lang/String; = "PreferenceInflater"


# instance fields
.field private blacklist mPreferenceManager:Landroid/preference/PreferenceManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/preference/PreferenceManager;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1}, Landroid/preference/GenericInflater;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0, p2}, Landroid/preference/PreferenceInflater;->init(Landroid/preference/PreferenceManager;)V

    .line 55
    return-void
.end method

.method constructor blacklist <init>(Landroid/preference/GenericInflater;Landroid/preference/PreferenceManager;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/GenericInflater<",
            "Landroid/preference/Preference;",
            "Landroid/preference/PreferenceGroup;",
            ">;",
            "Landroid/preference/PreferenceManager;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p3}, Landroid/preference/GenericInflater;-><init>(Landroid/preference/GenericInflater;Landroid/content/Context;)V

    .line 59
    invoke-direct {p0, p2}, Landroid/preference/PreferenceInflater;->init(Landroid/preference/PreferenceManager;)V

    .line 60
    return-void
.end method

.method private blacklist init(Landroid/preference/PreferenceManager;)V
    .registers 2

    .line 68
    iput-object p1, p0, Landroid/preference/PreferenceInflater;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 69
    const-string p1, "android.preference."

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceInflater;->setDefaultPackage(Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public blacklist cloneInContext(Landroid/content/Context;)Landroid/preference/GenericInflater;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/preference/GenericInflater<",
            "Landroid/preference/Preference;",
            "Landroid/preference/PreferenceGroup;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Landroid/preference/PreferenceInflater;

    iget-object v1, p0, Landroid/preference/PreferenceInflater;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-direct {v0, p0, v1, p1}, Landroid/preference/PreferenceInflater;-><init>(Landroid/preference/GenericInflater;Landroid/preference/PreferenceManager;Landroid/content/Context;)V

    return-object v0
.end method

.method protected blacklist onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/Preference;Landroid/util/AttributeSet;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 75
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "Error parsing preference"

    if-eqz v1, :cond_2d

    .line 78
    nop

    .line 81
    :try_start_10
    invoke-virtual {p0}, Landroid/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object p1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1c} :catch_23

    .line 87
    nop

    .line 89
    if-eqz p1, :cond_22

    .line 90
    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 93
    :cond_22
    return v2

    .line 82
    :catch_23
    move-exception p1

    .line 83
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 86
    throw p2

    .line 94
    :cond_2d
    const-string v1, "extra"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 95
    invoke-virtual {p0}, Landroid/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 95
    invoke-virtual {v0, v1, p3, p2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 98
    :try_start_44
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_49

    .line 104
    nop

    .line 105
    return v2

    .line 99
    :catch_49
    move-exception p1

    .line 100
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 103
    throw p2

    .line 108
    :cond_53
    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic blacklist onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 44
    check-cast p2, Landroid/preference/Preference;

    invoke-virtual {p0, p1, p2, p3}, Landroid/preference/PreferenceInflater;->onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/Preference;Landroid/util/AttributeSet;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic blacklist onMergeRoots(Landroid/preference/GenericInflater$Parent;ZLandroid/preference/GenericInflater$Parent;)Landroid/preference/GenericInflater$Parent;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 44
    check-cast p1, Landroid/preference/PreferenceGroup;

    check-cast p3, Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, p1, p2, p3}, Landroid/preference/PreferenceInflater;->onMergeRoots(Landroid/preference/PreferenceGroup;ZLandroid/preference/PreferenceGroup;)Landroid/preference/PreferenceGroup;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist onMergeRoots(Landroid/preference/PreferenceGroup;ZLandroid/preference/PreferenceGroup;)Landroid/preference/PreferenceGroup;
    .registers 4

    .line 116
    if-nez p1, :cond_8

    .line 117
    iget-object p1, p0, Landroid/preference/PreferenceInflater;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p3, p1}, Landroid/preference/PreferenceGroup;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 118
    return-object p3

    .line 120
    :cond_8
    return-object p1
.end method
