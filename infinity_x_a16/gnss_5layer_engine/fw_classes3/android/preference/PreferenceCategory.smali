.class public Landroid/preference/PreferenceCategory;
.super Landroid/preference/PreferenceGroup;
.source "PreferenceCategory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "PreferenceCategory"


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 53
    const v0, 0x101008c

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist isEnabled()Z
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onPrepareAddPreference(Landroid/preference/Preference;)Z
    .registers 3

    .line 62
    instance-of v0, p1, Landroid/preference/PreferenceCategory;

    if-nez v0, :cond_9

    .line 67
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onPrepareAddPreference(Landroid/preference/Preference;)Z

    move-result p1

    return p1

    .line 63
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add a PreferenceCategory directly to a PreferenceCategory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist shouldDisableDependents()Z
    .registers 2

    .line 77
    invoke-super {p0}, Landroid/preference/PreferenceGroup;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
