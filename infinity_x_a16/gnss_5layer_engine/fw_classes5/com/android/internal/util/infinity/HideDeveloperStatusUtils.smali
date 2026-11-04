.class public Lcom/android/internal/util/infinity/HideDeveloperStatusUtils;
.super Ljava/lang/Object;
.source "HideDeveloperStatusUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;
    }
.end annotation


# static fields
.field private static final blacklist settingsToHide:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 14
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "adb_wifi_enabled"

    const-string v2, "development_settings_enabled"

    const-string v3, "adb_enabled"

    const-string v4, "mock_location"

    const-string v5, "allow_mock_location"

    filled-new-array {v3, v1, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils;->settingsToHide:Ljava/util/Set;

    .line 14
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getApps(Landroid/content/ContentResolver;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    if-nez p0, :cond_8

    .line 54
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 57
    :cond_8
    const-string v0, "hide_developer_status"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 58
    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 59
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 62
    :cond_2c
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method private static blacklist getApps(Landroid/content/Context;)Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    if-nez p0, :cond_8

    .line 46
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 49
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils;->getApps(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist putAppsForUser(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;)V
    .registers 5

    .line 68
    if-eqz p0, :cond_29

    if-gez p2, :cond_5

    goto :goto_29

    .line 72
    :cond_5
    invoke-static {p0}, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils;->getApps(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 73
    invoke-virtual {p3}, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_2a

    goto :goto_19

    .line 78
    :pswitch_11
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 79
    goto :goto_19

    .line 75
    :pswitch_15
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    nop

    .line 85
    :goto_19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 86
    const-string p1, ","

    invoke-static {p1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 85
    const-string p3, "hide_developer_status"

    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 87
    return-void

    .line 69
    :cond_29
    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_11
    .end packed-switch
.end method

.method public static blacklist shouldHideDevStatus(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    if-nez p2, :cond_6

    goto :goto_30

    :cond_6
    sget-object v1, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils;->settingsToHide:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    return v0

    :cond_f
    const-string p2, "com.android.settings"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_30

    const-string p2, "com.android.systemui"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_30

    const-string p2, "com.android.shell"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_30

    const-string p2, "android"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_30

    const/4 v0, 0x1

    return v0

    :cond_30
    :goto_30
    return v0
.end method


# virtual methods
.method public blacklist addApp(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .line 90
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    if-gez p3, :cond_7

    goto :goto_d

    .line 94
    :cond_7
    sget-object v0, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;->ADD:Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils;->putAppsForUser(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;)V

    .line 95
    return-void

    .line 91
    :cond_d
    :goto_d
    return-void
.end method

.method public blacklist removeApp(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .line 98
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    if-gez p3, :cond_7

    goto :goto_d

    .line 102
    :cond_7
    sget-object v0, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;->REMOVE:Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils;->putAppsForUser(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;)V

    .line 103
    return-void

    .line 99
    :cond_d
    :goto_d
    return-void
.end method

.method public blacklist setApps(Landroid/content/Context;I)V
    .registers 5

    .line 106
    if-eqz p1, :cond_c

    if-gez p2, :cond_5

    goto :goto_c

    .line 110
    :cond_5
    const/4 v0, 0x0

    sget-object v1, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;->SET:Lcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;

    invoke-static {p1, v0, p2, v1}, Lcom/android/internal/util/infinity/HideDeveloperStatusUtils;->putAppsForUser(Landroid/content/Context;Ljava/lang/String;ILcom/android/internal/util/infinity/HideDeveloperStatusUtils$Action;)V

    .line 111
    return-void

    .line 107
    :cond_c
    :goto_c
    return-void
.end method
