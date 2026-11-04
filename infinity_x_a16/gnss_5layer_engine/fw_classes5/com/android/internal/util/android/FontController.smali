.class public Lcom/android/internal/util/android/FontController;
.super Ljava/lang/Object;
.source "FontController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/android/FontController$TypefaceFactory;
    }
.end annotation


# static fields
.field private static final blacklist CUSTOM_FONT_NAME_SETTING:Ljava/lang/String; = "custom_font_name"

.field private static final blacklist DEFAULT_FONT_FALLBACKS:[Ljava/lang/String;

.field private static final blacklist DEFAULT_FONT_ROOT:Ljava/lang/String; = "google-sans-flex"

.field private static final blacklist EXCLUDED_APPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LEGACY_OVERRIDE_FONTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LEGACY_SYS_OVERRIDE_FONTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist OVERRIDE_FONTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SYS_OVERRIDE_APPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SYS_OVERRIDE_FONTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "FontController"

.field private static final blacklist WEIGHT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sInstance:Lcom/android/internal/util/android/FontController;


# instance fields
.field private volatile blacklist sFontFamily:Ljava/lang/String;

.field private volatile blacklist sResources:Landroid/content/res/Resources;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetCurrentFont(Lcom/android/internal/util/android/FontController;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/util/android/FontController;->getCurrentFont()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetWEIGHT_MAP()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smlogger(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/util/android/FontController;->logger(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 8

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/util/android/FontController;->sInstance:Lcom/android/internal/util/android/FontController;

    .line 50
    const-string v0, "google-sans-flex"

    const-string v1, "google-sans"

    const-string v2, "sans-serif"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/android/FontController;->DEFAULT_FONT_FALLBACKS:[Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "google"

    const-string v3, "gsf-"

    const-string v4, "variable"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/util/android/FontController;->OVERRIDE_FONTS:Ljava/util/Set;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    const-string v5, "serif"

    const-string v6, "monospace"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/util/android/FontController;->SYS_OVERRIDE_FONTS:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/util/android/FontController;->LEGACY_OVERRIDE_FONTS:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    filled-new-array {v5, v6, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/util/android/FontController;->LEGACY_SYS_OVERRIDE_FONTS:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "tv.arte.plus7"

    const-string v2, "com.google.android.gm"

    const-string v3, "it.subito"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/util/android/FontController;->EXCLUDED_APPS:Ljava/util/Set;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.android.launcher3"

    const-string v2, "android"

    const-string v3, "com.android.settings"

    const-string v4, "com.android.systemui"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/util/android/FontController;->SYS_OVERRIDE_APPS:Ljava/util/Set;

    .line 85
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    .line 87
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "thin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "extralight"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "light"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "normal"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v2, "regular"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "medium"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const/16 v3, 0x258

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "semibold"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const/16 v4, 0x2bc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "bold"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const/16 v4, 0x320

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "extrabold"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const/16 v4, 0x384

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "black"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v4, "variable-display-large-emphasized"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v4, "variable-display-medium-emphasized"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v4, "variable-display-small-emphasized"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v4, "variable-headline-large-emphasized"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v4, "variable-headline-medium-emphasized"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v4, "variable-headline-small-emphasized"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v4, "variable-title-large-emphasized"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v4, "variable-title-medium-emphasized"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v4, "variable-title-small-emphasized"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v4, "variable-label-large-emphasized"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v4, "variable-label-medium-emphasized"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v4, "variable-label-small-emphasized"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v3, "variable-body-large-emphasized"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v3, "variable-body-medium-emphasized"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v3, "variable-body-small-emphasized"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v3, "variable-display-large"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v3, "variable-display-medium"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v3, "variable-display-small"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v3, "variable-headline-large"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v3, "variable-headline-medium"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v3, "variable-headline-small"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v3, "variable-title-large"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v3, "variable-title-medium"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v3, "variable-title-small"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v3, "variable-label-large"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v3, "variable-label-medium"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v3, "variable-label-small"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v2, "variable-body-large"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v2, "variable-body-medium"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/internal/util/android/FontController;->WEIGHT_MAP:Ljava/util/Map;

    const-string v2, "variable-body-small"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/android/FontController;->sResources:Landroid/content/res/Resources;

    .line 45
    const-string v0, "sans-serif"

    iput-object v0, p0, Lcom/android/internal/util/android/FontController;->sFontFamily:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public static blacklist OnConfigurationChanged(Landroid/content/res/Resources;)V
    .registers 2

    .line 141
    invoke-static {}, Lcom/android/internal/util/android/FontController;->get()Lcom/android/internal/util/android/FontController;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/android/internal/util/android/FontController;->handleOnConfiguration(Landroid/content/res/Resources;)V

    .line 142
    return-void
.end method

.method public static blacklist get()Lcom/android/internal/util/android/FontController;
    .registers 1

    .line 132
    sget-object v0, Lcom/android/internal/util/android/FontController;->sInstance:Lcom/android/internal/util/android/FontController;

    if-nez v0, :cond_b

    .line 133
    new-instance v0, Lcom/android/internal/util/android/FontController;

    invoke-direct {v0}, Lcom/android/internal/util/android/FontController;-><init>()V

    sput-object v0, Lcom/android/internal/util/android/FontController;->sInstance:Lcom/android/internal/util/android/FontController;

    .line 135
    :cond_b
    sget-object v0, Lcom/android/internal/util/android/FontController;->sInstance:Lcom/android/internal/util/android/FontController;

    return-object v0
.end method

.method private blacklist getCurrentFont()Ljava/lang/String;
    .registers 5

    .line 161
    iget-object v0, p0, Lcom/android/internal/util/android/FontController;->sResources:Landroid/content/res/Resources;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/util/android/FontController;->sFontFamily:Ljava/lang/String;

    return-object v0

    .line 163
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/util/android/FontController;->sResources:Landroid/content/res/Resources;

    const-string v1, "config_bodyFontFamily"

    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 164
    if-eqz v0, :cond_3d

    .line 165
    iget-object v1, p0, Lcom/android/internal/util/android/FontController;->sResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/android/internal/util/android/FontController;->sFontFamily:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 167
    iput-object v0, p0, Lcom/android/internal/util/android/FontController;->sFontFamily:Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Font changed to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/android/FontController;->sFontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/android/FontController;->logger(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3d} :catch_3e

    .line 173
    :cond_3d
    goto :goto_59

    .line 171
    :catch_3e
    move-exception v0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentFont failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/android/FontController;->logger(Ljava/lang/String;)V

    .line 174
    :goto_59
    iget-object v0, p0, Lcom/android/internal/util/android/FontController;->sFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getCurrentFontFamily()Ljava/lang/String;
    .registers 1

    .line 149
    invoke-static {}, Lcom/android/internal/util/android/FontController;->get()Lcom/android/internal/util/android/FontController;

    move-result-object v0

    invoke-direct {v0}, Lcom/android/internal/util/android/FontController;->getCurrentFont()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCurrentPackageName()Ljava/lang/String;
    .registers 4

    .line 296
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 297
    :catch_5
    move-exception v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPackageName failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/android/FontController;->logger(Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getFontWeightAdjustment()I
    .registers 5

    .line 305
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/android/FontController;->sResources:Landroid/content/res/Resources;

    .line 306
    if-nez v1, :cond_6

    return v0

    .line 307
    :cond_6
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 308
    if-eqz v1, :cond_e

    iget v0, v1, Landroid/content/res/Configuration;->fontWeightAdjustment:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    :cond_e
    return v0

    .line 309
    :catch_f
    move-exception v1

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFontWeightAdjustment failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/android/FontController;->logger(Ljava/lang/String;)V

    .line 311
    return v0
.end method

.method public static blacklist getOverrideTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 2

    .line 145
    invoke-static {}, Lcom/android/internal/util/android/FontController;->get()Lcom/android/internal/util/android/FontController;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/android/internal/util/android/FontController;->getOverrideTypefaceInternal(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getOverrideTypefaceInternal(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 9

    .line 178
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 180
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/util/android/FontController;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 182
    if-nez v1, :cond_b

    return-object v0

    .line 184
    :cond_b
    sget-object v2, Lcom/android/internal/util/android/FontController;->SYS_OVERRIDE_APPS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 186
    if-eqz v1, :cond_34

    sget-object v3, Lcom/android/internal/util/android/FontController;->EXCLUDED_APPS:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    if-nez v2, :cond_34

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Excluded app, skipping override: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/android/FontController;->logger(Ljava/lang/String;)V

    .line 188
    return-object v0

    .line 191
    :cond_34
    invoke-direct {p0}, Lcom/android/internal/util/android/FontController;->getCurrentFont()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-direct {p0}, Lcom/android/internal/util/android/FontController;->shouldBypassVariableFontInternal()Z

    move-result v3

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(-.*)?$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " matches current font root \'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\', skipping override!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/android/FontController;->logger(Ljava/lang/String;)V

    .line 196
    return-object v0

    .line 202
    :cond_80
    if-nez v3, :cond_a9

    .line 203
    const-string v4, "variable"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 204
    const-string v4, "google-sans-flex"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default font active, passing through variable family: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/android/FontController;->logger(Ljava/lang/String;)V

    .line 206
    return-object v0

    .line 209
    :cond_a9
    if-eqz v3, :cond_ae

    .line 210
    sget-object v4, Lcom/android/internal/util/android/FontController;->LEGACY_OVERRIDE_FONTS:Ljava/util/Set;

    goto :goto_b0

    :cond_ae
    sget-object v4, Lcom/android/internal/util/android/FontController;->OVERRIDE_FONTS:Ljava/util/Set;

    .line 211
    :goto_b0
    if-eqz v3, :cond_b5

    .line 212
    sget-object v5, Lcom/android/internal/util/android/FontController;->LEGACY_SYS_OVERRIDE_FONTS:Ljava/util/Set;

    goto :goto_b7

    :cond_b5
    sget-object v5, Lcom/android/internal/util/android/FontController;->SYS_OVERRIDE_FONTS:Ljava/util/Set;

    .line 214
    :goto_b7
    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup$$ExternalSyntheticLambda0;

    invoke-direct {v6, p1}, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-nez v4, :cond_e0

    if-eqz v2, :cond_de

    .line 215
    invoke-interface {v5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_de

    goto :goto_e0

    :cond_de
    const/4 v2, 0x0

    goto :goto_e1

    :cond_e0
    :goto_e0
    const/4 v2, 0x1

    .line 216
    :goto_e1
    if-nez v2, :cond_fa

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not on override list, skipping override: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/android/FontController;->logger(Ljava/lang/String;)V

    .line 218
    return-object v0

    .line 221
    :cond_fa
    invoke-direct {p0}, Lcom/android/internal/util/android/FontController;->getFontWeightAdjustment()I

    move-result v0

    .line 222
    if-eqz v3, :cond_105

    .line 223
    invoke-static {p1, v1, v0}, Lcom/android/internal/util/android/FontController$TypefaceFactory;->createLegacy(Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    .line 225
    :cond_105
    invoke-direct {p0}, Lcom/android/internal/util/android/FontController;->resolveDefaultTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 226
    invoke-static {p1, v1, v0}, Lcom/android/internal/util/android/FontController$TypefaceFactory;->create(Ljava/lang/String;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method private blacklist handleOnConfiguration(Landroid/content/res/Resources;)V
    .registers 3

    .line 287
    iput-object p1, p0, Lcom/android/internal/util/android/FontController;->sResources:Landroid/content/res/Resources;

    .line 288
    invoke-direct {p0}, Lcom/android/internal/util/android/FontController;->getCurrentPackageName()Ljava/lang/String;

    move-result-object p1

    .line 289
    if-eqz p1, :cond_2f

    sget-object v0, Lcom/android/internal/util/android/FontController;->EXCLUDED_APPS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_2f

    .line 290
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleOnConfiguration: Changing default font to: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/graphics/Typeface;->getFontName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/android/FontController;->logger(Ljava/lang/String;)V

    .line 291
    invoke-static {}, Landroid/graphics/Typeface;->changeFont()V

    .line 292
    return-void

    .line 289
    :cond_2f
    :goto_2f
    return-void
.end method

.method public static blacklist isCustomFontPickerActive()Z
    .registers 1

    .line 153
    invoke-static {}, Lcom/android/internal/util/android/FontController;->get()Lcom/android/internal/util/android/FontController;

    move-result-object v0

    invoke-direct {v0}, Lcom/android/internal/util/android/FontController;->isCustomFontPickerActiveInternal()Z

    move-result v0

    return v0
.end method

.method private blacklist isCustomFontPickerActiveInternal()Z
    .registers 5

    .line 231
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 232
    if-nez v1, :cond_8

    .line 233
    return v0

    .line 235
    :cond_8
    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 236
    if-nez v1, :cond_f

    .line 237
    return v0

    .line 239
    :cond_f
    const-string v2, "custom_font_name"

    .line 242
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 239
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_20

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 244
    :catch_20
    move-exception v1

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCustomFontPickerActiveInternal failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/android/FontController;->logger(Ljava/lang/String;)V

    .line 246
    return v0
.end method

.method private static blacklist logger(Ljava/lang/String;)V
    .registers 3

    .line 316
    const-string v0, "persist.sys.ax_font_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 317
    const-string v0, "FontController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_e
    return-void
.end method

.method public static blacklist resolveBaseTypeface()Landroid/graphics/Typeface;
    .registers 1

    .line 261
    invoke-static {}, Lcom/android/internal/util/android/FontController;->get()Lcom/android/internal/util/android/FontController;

    move-result-object v0

    invoke-direct {v0}, Lcom/android/internal/util/android/FontController;->resolveDefaultTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private blacklist resolveDefaultTypeface()Landroid/graphics/Typeface;
    .registers 8

    .line 266
    invoke-direct {p0}, Lcom/android/internal/util/android/FontController;->getCurrentFont()Ljava/lang/String;

    move-result-object v0

    .line 267
    const-string v1, "\'"

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    .line 268
    invoke-static {v0}, Landroid/graphics/Typeface;->getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 269
    if-eqz v2, :cond_33

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-eq v2, v3, :cond_33

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolveDefaultTypeface: resolved current font \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/android/FontController;->logger(Ljava/lang/String;)V

    .line 271
    return-object v2

    .line 275
    :cond_33
    sget-object v0, Lcom/android/internal/util/android/FontController;->DEFAULT_FONT_FALLBACKS:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_37
    if-ge v3, v2, :cond_63

    aget-object v4, v0, v3

    .line 276
    invoke-static {v4}, Landroid/graphics/Typeface;->getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 277
    if-eqz v5, :cond_60

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-eq v5, v6, :cond_60

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveDefaultTypeface: resolved via fallback \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/android/FontController;->logger(Ljava/lang/String;)V

    .line 279
    return-object v5

    .line 275
    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 282
    :cond_63
    const-string v0, "resolveDefaultTypeface: all fallbacks failed, using DEFAULT"

    invoke-static {v0}, Lcom/android/internal/util/android/FontController;->logger(Ljava/lang/String;)V

    .line 283
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static blacklist shouldBypassVariableFont()Z
    .registers 1

    .line 157
    invoke-static {}, Lcom/android/internal/util/android/FontController;->get()Lcom/android/internal/util/android/FontController;

    move-result-object v0

    invoke-direct {v0}, Lcom/android/internal/util/android/FontController;->shouldBypassVariableFontInternal()Z

    move-result v0

    return v0
.end method

.method private blacklist shouldBypassVariableFontInternal()Z
    .registers 4

    .line 251
    invoke-direct {p0}, Lcom/android/internal/util/android/FontController;->isCustomFontPickerActiveInternal()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 252
    return v1

    .line 254
    :cond_8
    iget-object v0, p0, Lcom/android/internal/util/android/FontController;->sResources:Landroid/content/res/Resources;

    if-nez v0, :cond_e

    .line 255
    const/4 v0, 0x0

    return v0

    .line 257
    :cond_e
    const-string v0, "google-sans-flex"

    invoke-direct {p0}, Lcom/android/internal/util/android/FontController;->getCurrentFont()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method
