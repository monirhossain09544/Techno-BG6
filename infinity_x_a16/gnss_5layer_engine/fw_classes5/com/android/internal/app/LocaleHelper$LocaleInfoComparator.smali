.class public final Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;
.super Ljava/lang/Object;
.source "LocaleHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocaleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocaleInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist PREFIX_ARABIC:Ljava/lang/String; = "\u0627\u0644"


# instance fields
.field private final blacklist mCollator:Ljava/text/Collator;

.field private final blacklist mCountryMode:Z


# direct methods
.method public constructor greylist <init>(Ljava/util/Locale;Z)V
    .registers 3

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCollator:Ljava/text/Collator;

    .line 223
    iput-boolean p2, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCountryMode:Z

    .line 224
    return-void
.end method

.method private blacklist removePrefixForCompare(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 234
    const-string v0, "ar"

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const-string p1, "\u0627\u0644"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 237
    :cond_1d
    return-object p2
.end method


# virtual methods
.method public greylist compare(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore$LocaleInfo;)I
    .registers 7

    .line 253
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_5b

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_5b

    .line 255
    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v0

    if-nez v0, :cond_52

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_52

    .line 257
    :cond_1c
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v3

    if-ne v0, v3, :cond_49

    .line 259
    iget-object v0, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCollator:Ljava/text/Collator;

    .line 260
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCountryMode:Z

    invoke-virtual {p1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->removePrefixForCompare(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCountryMode:Z

    invoke-virtual {p2, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->removePrefixForCompare(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 259
    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 264
    :cond_49
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result p1

    if-eqz p1, :cond_50

    goto :goto_51

    :cond_50
    move v1, v2

    :goto_51
    return v1

    .line 256
    :cond_52
    :goto_52
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result p1

    if-eqz p1, :cond_59

    goto :goto_5a

    :cond_59
    move v1, v2

    :goto_5a
    return v1

    .line 254
    :cond_5b
    :goto_5b
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result p1

    if-eqz p1, :cond_62

    goto :goto_63

    :cond_62
    move v1, v2

    :goto_63
    return v1
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 210
    check-cast p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    check-cast p2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->compare(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result p1

    return p1
.end method
