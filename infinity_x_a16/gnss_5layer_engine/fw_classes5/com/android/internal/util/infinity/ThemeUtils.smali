.class public Lcom/android/internal/util/infinity/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field public static final blacklist FONT_KEY:Ljava/lang/String; = "android.theme.customization.font"

.field public static final blacklist ICON_SHAPE_KEY:Ljava/lang/String; = "android.theme.customization.adaptive_icon_shape"

.field public static final blacklist OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TAG:Ljava/lang/String; = "ThemeUtils"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mOverlayManager:Landroid/content/om/IOverlayManager;

.field private blacklist overlayRes:Landroid/content/res/Resources;

.field private blacklist pm:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$q2PXYEByURVNxsV56MCYfPBFQ44(Lcom/android/internal/util/infinity/ThemeUtils;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/util/infinity/ThemeUtils;->lambda$isDefaultOverlay$3(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lcom/android/internal/util/infinity/ThemeUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/util/infinity/ThemeUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 64
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/infinity/ThemeUtils;->OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/internal/util/infinity/ThemeUtils;->mContext:Landroid/content/Context;

    .line 73
    nop

    .line 74
    const-string v0, "overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/infinity/ThemeUtils;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/infinity/ThemeUtils;->pm:Landroid/content/pm/PackageManager;

    .line 76
    return-void
.end method

.method private synthetic blacklist lambda$isDefaultOverlay$3(Ljava/lang/String;)Z
    .registers 2

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/internal/util/infinity/ThemeUtils;->isOverlayEnabled(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic blacklist lambda$setOverlayEnabled$1(Landroid/content/om/OverlayInfo;)Z
    .registers 1

    .line 80
    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$setOverlayEnabled$2(Landroid/content/om/OverlayInfo;)Ljava/lang/String;
    .registers 1

    .line 81
    iget-object p0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist lambda$static$0(Landroid/content/om/OverlayInfo;)I
    .registers 1

    .line 64
    iget p0, p0, Landroid/content/om/OverlayInfo;->priority:I

    return p0
.end method


# virtual methods
.method public blacklist createShapeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/ShapeDrawable;
    .registers 7

    .line 195
    const-string v0, "android"

    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 196
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/infinity/ThemeUtils;->overlayRes:Landroid/content/res/Resources;

    goto :goto_20

    .line 198
    :cond_f
    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move-object p1, v0

    .line 199
    :cond_18
    iget-object v0, p0, Lcom/android/internal/util/infinity/ThemeUtils;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/infinity/ThemeUtils;->overlayRes:Landroid/content/res/Resources;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_20} :catch_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_20} :catch_21

    .line 203
    :goto_20
    goto :goto_22

    .line 201
    :catch_21
    move-exception v0

    .line 204
    :goto_22
    iget-object v0, p0, Lcom/android/internal/util/infinity/ThemeUtils;->overlayRes:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_40

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resources not found for package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThemeUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-object v1

    .line 208
    :cond_40
    iget-object v0, p0, Lcom/android/internal/util/infinity/ThemeUtils;->overlayRes:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/internal/util/infinity/ThemeUtils;->overlayRes:Landroid/content/res/Resources;

    .line 209
    const-string v3, "config_icon_mask"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 208
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_5b

    :cond_57
    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    .line 212
    :goto_5b
    new-instance p1, Landroid/graphics/drawable/shapes/PathShape;

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-direct {p1, v1, v0, v0}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    .line 213
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 214
    iget-object p1, p0, Lcom/android/internal/util/infinity/ThemeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42900000    # 72.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 215
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 216
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 217
    return-object v0
.end method

.method public blacklist getFonts()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    const-string v1, "android.theme.customization.font"

    invoke-virtual {p0, v1}, Lcom/android/internal/util/infinity/ThemeUtils;->getOverlayPackagesForCategory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    nop

    .line 169
    :try_start_1c
    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_2f

    .line 170
    :cond_29
    iget-object v3, p0, Lcom/android/internal/util/infinity/ThemeUtils;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 171
    :goto_2f
    if-eqz v3, :cond_47

    .line 172
    const-string v4, "config_bodyFontFamily"

    const-string v5, "string"

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 173
    if-eqz v4, :cond_47

    .line 174
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 175
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_47} :catch_48
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_47} :catch_48

    .line 180
    :cond_47
    goto :goto_61

    .line 178
    :catch_48
    move-exception v3

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error fetching fonts for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ThemeUtils"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    :goto_61
    goto :goto_f

    .line 182
    :cond_62
    return-object v0
.end method

.method public blacklist getOverlayInfos(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 144
    const-string v0, "android"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/infinity/ThemeUtils;->getOverlayInfos(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getOverlayInfos(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/util/infinity/ThemeUtils;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 151
    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    .line 152
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/OverlayInfo;

    .line 153
    iget-object v2, v1, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 154
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_27} :catch_29

    .line 156
    :cond_27
    goto :goto_10

    .line 159
    :cond_28
    goto :goto_46

    .line 157
    :catch_29
    move-exception p1

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException while getting overlay info: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ThemeUtils"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    :goto_46
    sget-object p1, Lcom/android/internal/util/infinity/ThemeUtils;->OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 161
    return-object v0
.end method

.method public blacklist getOverlayPackagesForCategory(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    const-string v0, "android"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/infinity/ThemeUtils;->getOverlayPackagesForCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getOverlayPackagesForCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/infinity/ThemeUtils;->getOverlayInfos(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayInfo;

    .line 134
    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 135
    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_32
    goto :goto_15

    .line 138
    :cond_33
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 139
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    return-object v0
.end method

.method public blacklist getShapeDrawables()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/ShapeDrawable;",
            ">;"
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    const-string v1, "android.theme.customization.adaptive_icon_shape"

    invoke-virtual {p0, v1}, Lcom/android/internal/util/infinity/ThemeUtils;->getOverlayPackagesForCategory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    invoke-virtual {p0, v2}, Lcom/android/internal/util/infinity/ThemeUtils;->createShapeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    goto :goto_f

    .line 190
    :cond_23
    return-object v0
.end method

.method public blacklist isDefaultOverlay(Ljava/lang/String;)Z
    .registers 3

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/internal/util/infinity/ThemeUtils;->getOverlayPackagesForCategory(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/util/infinity/ThemeUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/util/infinity/ThemeUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/infinity/ThemeUtils;)V

    .line 232
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    .line 231
    return p1
.end method

.method public blacklist isOverlayEnabled(Ljava/lang/String;)Z
    .registers 5

    .line 222
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/infinity/ThemeUtils;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {v1, p1, v0}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object p1

    .line 223
    if-nez p1, :cond_a

    goto :goto_e

    :cond_a
    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_f

    :goto_e
    return v0

    .line 224
    :catch_f
    move-exception p1

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while checking if overlay is enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThemeUtils"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    return v0
.end method

.method public blacklist setOverlayEnabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 79
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/util/infinity/ThemeUtils;->getOverlayInfos(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/infinity/ThemeUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/util/infinity/ThemeUtils$$ExternalSyntheticLambda2;-><init>()V

    .line 80
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/infinity/ThemeUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/util/infinity/ThemeUtils$$ExternalSyntheticLambda3;-><init>()V

    .line 81
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 83
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    :try_start_25
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    .line 87
    if-eqz v0, :cond_39

    .line 88
    iget-object v1, p0, Lcom/android/internal/util/infinity/ThemeUtils;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {v1, v0, v2, v2}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    goto :goto_39

    .line 91
    :cond_34
    iget-object v0, p0, Lcom/android/internal/util/infinity/ThemeUtils;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {v0, p2, v2}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    .line 94
    :cond_39
    :goto_39
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/infinity/ThemeUtils;->writeSettings(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_40} :catch_41

    .line 98
    goto :goto_5e

    .line 96
    :catch_41
    move-exception p1

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteException while setting overlay: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ThemeUtils"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :goto_5e
    return-void
.end method

.method public blacklist writeSettings(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 102
    iget-object v0, p0, Lcom/android/internal/util/infinity/ThemeUtils;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    const-string v1, "theme_customization_overlay_packages"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 107
    if-nez v0, :cond_15

    .line 108
    :try_start_f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1b

    .line 110
    :cond_15
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 112
    :goto_1b
    if-eqz p3, :cond_27

    .line 113
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2a

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2a

    .line 115
    :cond_27
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    :cond_2a
    :goto_2a
    iget-object p1, p0, Lcom/android/internal/util/infinity/ThemeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 117
    invoke-static {p1, v1, p2, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_37} :catch_38

    .line 122
    goto :goto_40

    .line 120
    :catch_38
    move-exception p1

    .line 121
    const-string p2, "ThemeUtils"

    const-string p3, "Failed to parse THEME_CUSTOMIZATION_OVERLAY_PACKAGES."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    :goto_40
    return-void
.end method
