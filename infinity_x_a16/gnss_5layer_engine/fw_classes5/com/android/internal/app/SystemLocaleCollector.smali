.class public Lcom/android/internal/app/SystemLocaleCollector;
.super Ljava/lang/Object;
.source "SystemLocaleCollector.java"

# interfaces
.implements Lcom/android/internal/app/LocaleCollectorBase;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mExplicitLocales:Landroid/os/LocaleList;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/SystemLocaleCollector;-><init>(Landroid/content/Context;Landroid/os/LocaleList;)V

    .line 33
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/LocaleList;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/internal/app/SystemLocaleCollector;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/internal/app/SystemLocaleCollector;->mExplicitLocales:Landroid/os/LocaleList;

    .line 38
    return-void
.end method


# virtual methods
.method public blacklist getIgnoredLocaleList(Z)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 43
    if-nez p1, :cond_18

    .line 44
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 48
    :cond_18
    return-object v0
.end method

.method public blacklist getSupportedLocaleList(Lcom/android/internal/app/LocaleStore$LocaleInfo;ZZ)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "ZZ)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p2}, Lcom/android/internal/app/SystemLocaleCollector;->getIgnoredLocaleList(Z)Ljava/util/Set;

    move-result-object v0

    .line 56
    if-eqz p3, :cond_f

    .line 57
    iget-object p3, p0, Lcom/android/internal/app/SystemLocaleCollector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/SystemLocaleCollector;->mExplicitLocales:Landroid/os/LocaleList;

    invoke-static {p3, v0, p1, p2, v1}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/os/LocaleList;)Ljava/util/Set;

    move-result-object p1

    goto :goto_18

    .line 60
    :cond_f
    iget-object p1, p0, Lcom/android/internal/app/SystemLocaleCollector;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    iget-object v1, p0, Lcom/android/internal/app/SystemLocaleCollector;->mExplicitLocales:Landroid/os/LocaleList;

    invoke-static {p1, v0, p3, p2, v1}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/os/LocaleList;)Ljava/util/Set;

    move-result-object p1

    .line 63
    :goto_18
    return-object p1
.end method

.method public blacklist hasSpecificPackageName()Z
    .registers 2

    .line 68
    const/4 v0, 0x0

    return v0
.end method
