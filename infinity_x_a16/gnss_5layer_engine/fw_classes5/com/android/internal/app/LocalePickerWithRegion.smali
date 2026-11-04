.class public Lcom/android/internal/app/LocalePickerWithRegion;
.super Landroid/app/ListFragment;
.source "LocalePickerWithRegion.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist PARENT_FRAGMENT_NAME:Ljava/lang/String; = "localeListEditor"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

.field private blacklist mFirstVisiblePosition:I

.field private blacklist mIsNumberingSystem:Z

.field private blacklist mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

.field private blacklist mLocaleList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLocalePickerCollector:Lcom/android/internal/app/LocaleCollectorBase;

.field private blacklist mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private blacklist mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

.field private blacklist mPreviousSearch:Ljava/lang/CharSequence;

.field private blacklist mPreviousSearchHadFocus:Z

.field private blacklist mSearchView:Landroid/widget/SearchView;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mTopDistance:I

.field private blacklist mTranslatedOnly:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const-class v0, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocalePickerWithRegion;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    .line 61
    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    .line 62
    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    .line 63
    iput v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    .line 64
    iput v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    .line 65
    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTitle:Ljava/lang/CharSequence;

    .line 67
    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsNumberingSystem:Z

    return-void
.end method

.method private static blacklist createCountryPicker(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/view/MenuItem$OnActionExpandListener;Lcom/android/internal/app/LocaleCollectorBase;)Lcom/android/internal/app/LocalePickerWithRegion;
    .registers 6

    .line 99
    new-instance v0, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-direct {v0}, Lcom/android/internal/app/LocalePickerWithRegion;-><init>()V

    .line 100
    invoke-virtual {v0, p3}, Lcom/android/internal/app/LocalePickerWithRegion;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)V

    .line 101
    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/internal/app/LocalePickerWithRegion;->setListener(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLcom/android/internal/app/LocaleCollectorBase;)Z

    move-result p0

    .line 103
    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public static blacklist createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Z)Lcom/android/internal/app/LocalePickerWithRegion;
    .registers 9

    .line 108
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/LocalePickerWithRegion;->createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;ZLandroid/os/LocaleList;Ljava/lang/String;Landroid/view/MenuItem$OnActionExpandListener;)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;ZLandroid/os/LocaleList;)Lcom/android/internal/app/LocalePickerWithRegion;
    .registers 10

    .line 113
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/LocalePickerWithRegion;->createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;ZLandroid/os/LocaleList;Ljava/lang/String;Landroid/view/MenuItem$OnActionExpandListener;)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;ZLandroid/os/LocaleList;Ljava/lang/String;Landroid/view/MenuItem$OnActionExpandListener;)Lcom/android/internal/app/LocalePickerWithRegion;
    .registers 7

    .line 121
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 122
    new-instance p4, Lcom/android/internal/app/SystemLocaleCollector;

    invoke-direct {p4, p0, p3}, Lcom/android/internal/app/SystemLocaleCollector;-><init>(Landroid/content/Context;Landroid/os/LocaleList;)V

    goto :goto_12

    .line 124
    :cond_c
    new-instance p3, Lcom/android/internal/app/AppLocaleCollector;

    invoke-direct {p3, p0, p4}, Lcom/android/internal/app/AppLocaleCollector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object p4, p3

    .line 126
    :goto_12
    new-instance p0, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;-><init>()V

    .line 127
    invoke-virtual {p0, p5}, Lcom/android/internal/app/LocalePickerWithRegion;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)V

    .line 128
    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/android/internal/app/LocalePickerWithRegion;->setListener(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLcom/android/internal/app/LocaleCollectorBase;)Z

    .line 130
    return-object p0
.end method

.method private static blacklist createNumberingSystemPicker(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/view/MenuItem$OnActionExpandListener;Lcom/android/internal/app/LocaleCollectorBase;)Lcom/android/internal/app/LocalePickerWithRegion;
    .registers 6

    .line 87
    new-instance v0, Lcom/android/internal/app/LocalePickerWithRegion;

    invoke-direct {v0}, Lcom/android/internal/app/LocalePickerWithRegion;-><init>()V

    .line 88
    invoke-virtual {v0, p3}, Lcom/android/internal/app/LocalePickerWithRegion;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)V

    .line 89
    const/4 p3, 0x1

    invoke-direct {v0, p3}, Lcom/android/internal/app/LocalePickerWithRegion;->setIsNumberingSystem(Z)V

    .line 90
    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/internal/app/LocalePickerWithRegion;->setListener(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLcom/android/internal/app/LocaleCollectorBase;)Z

    move-result p0

    .line 92
    if-eqz p0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method

.method private blacklist returnToParentFrame()V
    .registers 4

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "localeListEditor"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 172
    return-void
.end method

.method private blacklist setIsNumberingSystem(Z)V
    .registers 2

    .line 134
    iput-boolean p1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsNumberingSystem:Z

    .line 135
    return-void
.end method

.method private blacklist setListener(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLcom/android/internal/app/LocaleCollectorBase;)Z
    .registers 8

    .line 152
    iput-object p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 153
    iput-object p1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    .line 154
    iput-boolean p3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    .line 155
    iput-object p4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocalePickerCollector:Lcom/android/internal/app/LocaleCollectorBase;

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePickerWithRegion;->setRetainInstance(Z)V

    .line 158
    const/4 v1, 0x0

    if-eqz p2, :cond_11

    move v2, v0

    goto :goto_12

    :cond_11
    move v2, v1

    :goto_12
    invoke-interface {p4, p2, p3, v2}, Lcom/android/internal/app/LocaleCollectorBase;->getSupportedLocaleList(Lcom/android/internal/app/LocaleStore$LocaleInfo;ZZ)Ljava/util/Set;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    .line 161
    if-eqz p2, :cond_34

    if-eqz p1, :cond_34

    iget-object p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-ne p2, v0, :cond_34

    .line 162
    iget-object p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {p1, p2}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;->onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 163
    return v1

    .line 165
    :cond_34
    return v0
.end method


# virtual methods
.method public whitelist onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 176
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/LocalePickerWithRegion;->setHasOptionsMenu(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    if-nez v0, :cond_f

    .line 183
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    .line 184
    return-void

    .line 187
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTitle:Ljava/lang/CharSequence;

    .line 188
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    move v0, p1

    goto :goto_21

    :cond_20
    move v0, v1

    .line 189
    :goto_21
    if-eqz v0, :cond_2a

    iget-object v2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    goto :goto_2e

    :cond_2a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 190
    :goto_2e
    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocalePickerCollector:Lcom/android/internal/app/LocaleCollectorBase;

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocalePickerCollector:Lcom/android/internal/app/LocaleCollectorBase;

    .line 191
    invoke-interface {v3}, Lcom/android/internal/app/LocaleCollectorBase;->hasSpecificPackageName()Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_3c

    :cond_3b
    move p1, v1

    .line 192
    :goto_3c
    new-instance v1, Lcom/android/internal/app/SuggestedLocaleAdapter;

    iget-object v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocaleList:Ljava/util/Set;

    invoke-direct {v1, v3, v0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;-><init>(Ljava/util/Set;ZZ)V

    iput-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    .line 193
    iget-object p1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    iget-boolean v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsNumberingSystem:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setNumberingSystemMode(Z)V

    .line 194
    new-instance p1, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;

    invoke-direct {p1, v2, v0}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;-><init>(Ljava/util/Locale;Z)V

    .line 196
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->sort(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V

    .line 197
    iget-object p1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/LocalePickerWithRegion;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    return-void
.end method

.method public whitelist onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-nez v0, :cond_6b

    .line 305
    const/high16 v0, 0x1140000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 307
    const p2, 0x10203c6

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 308
    iget-object p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz p2, :cond_19

    .line 309
    iget-object p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 312
    :cond_19
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SearchView;

    iput-object p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    .line 313
    iget-object p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    const v0, 0x10409c7

    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePickerWithRegion;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 314
    iget-object p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 317
    iget-object p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_5a

    .line 318
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 319
    iget-object p1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p1, v0}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 320
    iget-object p1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->setActivated(Z)V

    .line 321
    iget-boolean p1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    if-eqz p1, :cond_52

    .line 322
    iget-object p1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/widget/SearchView;->requestFocus()Z

    .line 324
    :cond_52
    iget-object p1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_60

    .line 326
    :cond_5a
    iget-object p1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 330
    :goto_60
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    iget v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 332
    :cond_6b
    return-void
.end method

.method public whitelist onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    .line 254
    nop

    .line 255
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 256
    if-nez p1, :cond_15

    .line 257
    sget-object p1, Lcom/android/internal/app/LocalePickerWithRegion;->TAG:Ljava/lang/String;

    const-string p2, "Can not get the locale."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void

    .line 262
    :cond_15
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result p2

    .line 263
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object p3

    if-eqz p3, :cond_21

    const/4 p3, 0x1

    goto :goto_22

    :cond_21
    const/4 p3, 0x0

    .line 264
    :goto_22
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->hasNumberingSystems()Z

    move-result p4

    .line 266
    if-nez p2, :cond_7c

    .line 270
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result p2

    if-nez p2, :cond_7c

    if-eqz p3, :cond_32

    if-eqz p4, :cond_7c

    :cond_32
    iget-boolean p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mIsNumberingSystem:Z

    if-eqz p2, :cond_37

    goto :goto_7c

    .line 280
    :cond_37
    if-eqz p4, :cond_46

    .line 281
    iget-object p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    iget-boolean p3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    iget-object p4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    iget-object p5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocalePickerCollector:Lcom/android/internal/app/LocaleCollectorBase;

    .line 282
    invoke-static {p2, p1, p3, p4, p5}, Lcom/android/internal/app/LocalePickerWithRegion;->createNumberingSystemPicker(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/view/MenuItem$OnActionExpandListener;Lcom/android/internal/app/LocaleCollectorBase;)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object p2

    goto :goto_52

    .line 286
    :cond_46
    iget-object p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    iget-boolean p3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTranslatedOnly:Z

    iget-object p4, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    iget-object p5, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mLocalePickerCollector:Lcom/android/internal/app/LocaleCollectorBase;

    invoke-static {p2, p1, p3, p4, p5}, Lcom/android/internal/app/LocalePickerWithRegion;->createCountryPicker(Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/view/MenuItem$OnActionExpandListener;Lcom/android/internal/app/LocaleCollectorBase;)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object p2

    .line 290
    :goto_52
    iget-object p3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    invoke-interface {p3, p1}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;->onParentLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 291
    if-eqz p2, :cond_78

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 293
    const/16 p3, 0x1001

    invoke-virtual {p1, p3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getId()I

    move-result p3

    invoke-virtual {p1, p3, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_89

    .line 297
    :cond_78
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    goto :goto_89

    .line 273
    :cond_7c
    :goto_7c
    iget-object p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    if-eqz p2, :cond_86

    .line 274
    iget-object p2, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mListener:Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;

    invoke-interface {p2, p1}, Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;->onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    goto :goto_89

    .line 276
    :cond_86
    invoke-direct {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->returnToParentFrame()V

    .line 300
    :goto_89
    return-void
.end method

.method public whitelist onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 212
    packed-switch v0, :pswitch_data_16

    .line 217
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 214
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 215
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_16
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public whitelist onPause()V
    .registers 5

    .line 234
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 237
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 238
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    .line 239
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    goto :goto_1e

    .line 241
    :cond_19
    iput-boolean v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearchHadFocus:Z

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mPreviousSearch:Ljava/lang/CharSequence;

    .line 246
    :goto_1e
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 247
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 248
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mFirstVisiblePosition:I

    .line 249
    if-nez v2, :cond_2f

    goto :goto_38

    :cond_2f
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    sub-int/2addr v1, v0

    :goto_38
    iput v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTopDistance:I

    .line 250
    return-void
.end method

.method public whitelist onQueryTextChange(Ljava/lang/String;)Z
    .registers 3

    .line 341
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    if-eqz v0, :cond_d

    .line 342
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mAdapter:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 344
    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 2

    .line 336
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onResume()V
    .registers 3

    .line 222
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 223
    iget-object v0, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v0, :cond_15

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mParentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1e

    .line 226
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    :goto_1e
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 230
    return-void
.end method

.method public whitelist onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 202
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePickerWithRegion;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 207
    return-void
.end method

.method public blacklist setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/android/internal/app/LocalePickerWithRegion;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 352
    return-void
.end method
