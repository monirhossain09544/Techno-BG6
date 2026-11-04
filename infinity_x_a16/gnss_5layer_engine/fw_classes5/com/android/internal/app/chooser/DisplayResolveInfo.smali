.class public Lcom/android/internal/app/chooser/DisplayResolveInfo;
.super Ljava/lang/Object;
.source "DisplayResolveInfo.java"

# interfaces
.implements Lcom/android/internal/app/chooser/TargetInfo;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDisplayIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mDisplayLabel:Ljava/lang/CharSequence;

.field private blacklist mExtendedInfo:Ljava/lang/CharSequence;

.field private blacklist mIsSuspended:Z

.field private blacklist mPinned:Z

.field private final blacklist mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private blacklist mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

.field private final blacklist mResolvedIntent:Landroid/content/Intent;

.field private final blacklist mSourceIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 218
    new-instance v0, Lcom/android/internal/app/chooser/DisplayResolveInfo$1;

    invoke-direct {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V
    .registers 12

    .line 57
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V
    .registers 9

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    .line 64
    iget-object v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iput-object p2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 66
    iput-object p3, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 67
    iput-object p4, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 68
    iput-object p6, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    .line 70
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 71
    const/high16 p2, 0x3000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    iget-object p2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 74
    new-instance p3, Landroid/content/ComponentName;

    iget-object p4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p5, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p3, p4, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 76
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p3, 0x40000000    # 2.0f

    and-int/2addr p2, p3

    if-eqz p2, :cond_40

    const/4 v0, 0x1

    :cond_40
    iput-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSuspended:Z

    .line 78
    iput-object p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    .line 79
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 232
    const-class v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    .line 233
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSuspended:Z

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    .line 236
    const-class v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iput-object p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 237
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/app/chooser/DisplayResolveInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .registers 4

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    .line 94
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 96
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 97
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 98
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 99
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    .line 100
    iget-object p1, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    iput-object p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    .line 101
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/content/Intent;ILcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V
    .registers 7

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    .line 83
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 85
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 86
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 87
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 88
    new-instance v0, Landroid/content/Intent;

    iget-object p1, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    .line 89
    iget-object p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 90
    iput-object p4, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    .line 91
    return-void
.end method


# virtual methods
.method public blacklist addAlternateSourceIntent(Landroid/content/Intent;)V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public blacklist cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;
    .registers 5

    .line 133
    new-instance v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/content/Intent;ILcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllSourceIntents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 128
    iget-object p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public blacklist getDisplayLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    if-eqz v0, :cond_18

    .line 109
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 110
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getSubLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 112
    :cond_18
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getExtendedInfo()Ljava/lang/CharSequence;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getResolveInfo()Landroid/content/pm/ResolveInfo;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public blacklist getResolvedComponentName()Landroid/content/ComponentName;
    .registers 4

    .line 163
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getResolvedIntent()Landroid/content/Intent;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist hasDisplayIcon()Z
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist hasDisplayLabel()Z
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isPinned()Z
    .registers 2

    .line 195
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    return v0
.end method

.method public blacklist isSuspended()Z
    .registers 2

    .line 190
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSuspended:Z

    return v0
.end method

.method public blacklist setDisplayIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 147
    return-void
.end method

.method public blacklist setDisplayLabel(Ljava/lang/CharSequence;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 121
    return-void
.end method

.method public blacklist setExtendedInfo(Ljava/lang/CharSequence;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 125
    return-void
.end method

.method public blacklist setPinned(Z)V
    .registers 2

    .line 199
    iput-boolean p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    .line 200
    return-void
.end method

.method public blacklist start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .registers 4

    .line 169
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 170
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
    .registers 6

    .line 175
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-static {v0, p3}, Lcom/android/internal/app/chooser/TargetInfo;->prepareIntentForCrossProfileLaunch(Landroid/content/Intent;I)V

    .line 176
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/internal/app/chooser/TargetInfo;->refreshIntentCreatorToken(Landroid/content/Intent;)V

    .line 177
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/android/internal/app/ResolverActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 178
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .registers 6

    .line 183
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/app/chooser/TargetInfo;->prepareIntentForCrossProfileLaunch(Landroid/content/Intent;I)V

    .line 184
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/internal/app/chooser/TargetInfo;->refreshIntentCreatorToken(Landroid/content/Intent;)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 186
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 209
    iget-object p2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 210
    iget-object p2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 211
    iget-object p2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 212
    iget-object p2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 213
    iget-boolean p2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSuspended:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 214
    iget-boolean p2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 215
    iget-object p2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 216
    return-void
.end method
