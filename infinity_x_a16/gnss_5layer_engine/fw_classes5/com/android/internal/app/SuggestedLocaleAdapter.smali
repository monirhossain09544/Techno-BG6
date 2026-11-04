.class public Lcom/android/internal/app/SuggestedLocaleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestedLocaleAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;
    }
.end annotation


# static fields
.field protected static final blacklist APP_LANGUAGE_PICKER_TYPE_COUNT:I = 0x5

.field protected static final blacklist MIN_REGIONS_FOR_SUGGESTIONS:I = 0x6

.field protected static final blacklist SYSTEM_LANGUAGE_TYPE_COUNT:I = 0x3

.field protected static final blacklist SYSTEM_LANGUAGE_WITHOUT_HEADER_TYPE_COUNT:I = 0x1

.field protected static final blacklist TYPE_CURRENT_LOCALE:I = 0x4

.field protected static final blacklist TYPE_HEADER_ALL_OTHERS:I = 0x1

.field protected static final blacklist TYPE_HEADER_SUGGESTED:I = 0x0

.field protected static final blacklist TYPE_LOCALE:I = 0x2

.field protected static final blacklist TYPE_SYSTEM_LANGUAGE_FOR_APP_LANGUAGE_PICKER:I = 0x3


# instance fields
.field protected blacklist mContextOverride:Landroid/content/Context;

.field protected final blacklist mCountryMode:Z

.field protected blacklist mDisplayLocale:Ljava/util/Locale;

.field private blacklist mHasSpecificAppPackageName:Z

.field protected blacklist mInflater:Landroid/view/LayoutInflater;

.field protected blacklist mIsNumberingMode:Z

.field protected blacklist mLocaleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mOriginalLocaleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mSuggestionCount:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/Set;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;-><init>(Ljava/util/Set;ZZ)V

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    .line 73
    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    .line 82
    iput-boolean p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    .line 83
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    .line 84
    iput-boolean p3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mHasSpecificAppPackageName:Z

    .line 86
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 87
    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result p3

    if-eqz p3, :cond_33

    .line 88
    iget p3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    .line 90
    :cond_33
    iget-object p3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    goto :goto_1b

    .line 92
    :cond_39
    return-void
.end method

.method private blacklist getNewViewIfNeeded(Landroid/view/View;Landroid/view/ViewGroup;II)Landroid/view/View;
    .registers 12

    .line 278
    nop

    .line 280
    const v0, 0x10900a1

    const v1, 0x10203c4

    const v2, 0x10203b0

    const v3, 0x1020001

    const v4, 0x109003f

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch p3, :pswitch_data_d2

    .line 320
    :pswitch_15
    invoke-virtual {p0, p4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 321
    iget-boolean p4, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mHasSpecificAppPackageName:Z

    if-eqz p4, :cond_bc

    .line 322
    invoke-virtual {p3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result p3

    if-eqz p3, :cond_bc

    iget-boolean p3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-nez p3, :cond_bc

    .line 323
    instance-of p3, p1, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_a9

    .line 324
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_a9

    goto/16 :goto_aa

    .line 310
    :pswitch_35
    instance-of p3, p1, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_41

    .line 311
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_41

    move p3, v5

    goto :goto_42

    :cond_41
    move p3, v6

    .line 312
    :goto_42
    if-nez p3, :cond_d0

    .line 313
    iget-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 315
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    .line 316
    invoke-virtual {p2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 317
    goto/16 :goto_d0

    .line 291
    :pswitch_55
    iget-boolean p3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mHasSpecificAppPackageName:Z

    if-eqz p3, :cond_79

    .line 292
    iget-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 294
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    .line 295
    invoke-virtual {p0, p4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {p3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result p3

    if-eqz p3, :cond_75

    .line 296
    invoke-virtual {p2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_78

    .line 298
    :cond_75
    invoke-virtual {p2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 300
    :goto_78
    goto :goto_d0

    .line 301
    :cond_79
    instance-of p3, p1, Landroid/widget/TextView;

    if-eqz p3, :cond_84

    .line 302
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_84

    goto :goto_85

    :cond_84
    move v5, v6

    .line 303
    :goto_85
    if-nez v5, :cond_d0

    .line 304
    iget-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 305
    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_d0

    .line 283
    :pswitch_8e
    instance-of p3, p1, Landroid/widget/TextView;

    if-eqz p3, :cond_9c

    .line 284
    const p3, 0x10203af

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_9c

    goto :goto_9d

    :cond_9c
    move v5, v6

    .line 285
    :goto_9d
    if-nez v5, :cond_d0

    .line 286
    iget-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x10900a2

    invoke-virtual {p1, p3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_d0

    .line 324
    :cond_a9
    move v5, v6

    .line 325
    :goto_aa
    if-nez v5, :cond_d0

    .line 326
    iget-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 328
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    .line 329
    invoke-virtual {p2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 330
    goto :goto_d0

    .line 332
    :cond_bc
    instance-of p3, p1, Landroid/widget/TextView;

    if-eqz p3, :cond_c7

    .line 333
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_c7

    goto :goto_c8

    :cond_c7
    move v5, v6

    .line 334
    :goto_c8
    if-nez v5, :cond_d0

    .line 335
    iget-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 341
    :cond_d0
    :goto_d0
    return-object p1

    nop

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_8e
        :pswitch_15
        :pswitch_55
        :pswitch_35
    .end packed-switch
.end method

.method private blacklist isHeaderPosition(I)Z
    .registers 4

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/2addr v1, v0

    if-ne p1, v1, :cond_f

    :cond_e
    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private blacklist updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V
    .registers 5

    .line 452
    invoke-virtual {p0, p3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 453
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsNumberingMode:Z

    if-eqz v0, :cond_f

    .line 454
    invoke-virtual {p3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getNumberingSystem()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {p3, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object v0

    .line 453
    :goto_15
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    invoke-virtual {p3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 456
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsNumberingMode:Z

    if-eqz v0, :cond_28

    .line 457
    invoke-virtual {p3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getNumberingSystem()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_28
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {p3, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v0

    .line 456
    :goto_2e
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 458
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v0, :cond_49

    .line 459
    invoke-virtual {p3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p3

    .line 461
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 462
    const/4 p1, 0x1

    if-ne p3, p1, :cond_45

    .line 463
    const/4 p1, 0x4

    goto :goto_46

    .line 464
    :cond_45
    const/4 p1, 0x3

    .line 462
    :goto_46
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 466
    :cond_49
    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCount()I
    .registers 2

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 163
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0

    .line 165
    :cond_f
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getFilter()Landroid/widget/Filter;
    .registers 2

    .line 448
    new-instance v0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;

    invoke-direct {v0, p0}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;-><init>(Lcom/android/internal/app/SuggestedLocaleAdapter;)V

    return-object v0
.end method

.method public blacklist getIsForNumberingSystem()Z
    .registers 2

    .line 99
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsNumberingMode:Z

    return v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 4

    .line 171
    invoke-direct {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->isHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 172
    const/4 p1, 0x0

    return-object p1

    .line 175
    :cond_8
    nop

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 177
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-le p1, v0, :cond_15

    const/4 v0, -0x2

    goto :goto_18

    :cond_15
    const/4 v0, -0x1

    goto :goto_18

    .line 176
    :cond_17
    const/4 v0, 0x0

    .line 180
    :goto_18
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    add-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .registers 4

    .line 189
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .registers 7

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-nez v0, :cond_1e

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 118
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 119
    return v3

    .line 121
    :cond_16
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 122
    return v1

    .line 124
    :cond_1d
    return v2

    .line 126
    :cond_1e
    if-nez p1, :cond_22

    .line 127
    const/4 p1, 0x0

    return p1

    .line 129
    :cond_22
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    if-ne p1, v0, :cond_29

    .line 130
    return v4

    .line 133
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 134
    if-eqz p1, :cond_40

    .line 137
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 138
    return v3

    .line 140
    :cond_38
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 141
    return v1

    .line 143
    :cond_3f
    return v2

    .line 135
    :cond_40
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Non header locale cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 219
    if-nez p2, :cond_10

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_10

    .line 220
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 222
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    .line 223
    invoke-direct {p0, p2, p3, v0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getNewViewIfNeeded(Landroid/view/View;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p2

    .line 224
    const p3, 0x10203c4

    const v1, 0x10203b0

    packed-switch v0, :pswitch_data_b8

    .line 258
    :pswitch_21
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 259
    if-eqz v0, :cond_b0

    .line 262
    iget-boolean v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mHasSpecificAppPackageName:Z

    if-eqz v2, :cond_a6

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v0

    if-eqz v0, :cond_a6

    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-nez v0, :cond_a6

    .line 263
    nop

    .line 265
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 263
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V

    goto/16 :goto_af

    .line 254
    :pswitch_43
    nop

    .line 255
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 254
    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V

    .line 256
    goto :goto_af

    .line 246
    :pswitch_4e
    iget-boolean p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mHasSpecificAppPackageName:Z

    if-eqz p1, :cond_59

    .line 247
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_5f

    .line 249
    :cond_59
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 251
    :goto_5f
    const p3, 0x1040a79

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 252
    goto :goto_af

    .line 227
    :pswitch_66
    move-object p1, p2

    check-cast p1, Landroid/widget/TextView;

    .line 228
    if-nez v0, :cond_81

    .line 229
    iget-boolean p3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz p3, :cond_7a

    iget-boolean p3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsNumberingMode:Z

    if-nez p3, :cond_7a

    .line 230
    const p3, 0x10405a0

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_96

    .line 232
    :cond_7a
    const p3, 0x10405a2

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_96

    .line 235
    :cond_81
    iget-boolean p3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz p3, :cond_90

    iget-boolean p3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsNumberingMode:Z

    if-nez p3, :cond_90

    .line 236
    const p3, 0x1040941

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_96

    .line 238
    :cond_90
    const p3, 0x10405a1

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    .line 241
    :goto_96
    nop

    .line 242
    iget-object p3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    if-eqz p3, :cond_9e

    iget-object p3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    goto :goto_a2

    :cond_9e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 241
    :goto_a2
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 243
    goto :goto_af

    .line 268
    :cond_a6
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V

    .line 272
    :goto_af
    return-object p2

    .line 260
    :cond_b0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Non header locale cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_66
        :pswitch_66
        :pswitch_21
        :pswitch_4e
        :pswitch_43
    .end packed-switch
.end method

.method public whitelist getViewTypeCount()I
    .registers 2

    .line 149
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mHasSpecificAppPackageName:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 151
    const/4 v0, 0x5

    return v0

    .line 152
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 154
    const/4 v0, 0x3

    return v0

    .line 156
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isEnabled(I)Z
    .registers 4

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p1, 0x1

    .line 109
    :goto_19
    return p1
.end method

.method public blacklist setDisplayLocale(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 4

    .line 197
    if-nez p2, :cond_8

    .line 198
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    .line 199
    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    goto :goto_20

    .line 200
    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 201
    iput-object p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    .line 202
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 203
    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 204
    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    .line 206
    :cond_20
    :goto_20
    return-void
.end method

.method public blacklist setNumberingSystemMode(Z)V
    .registers 2

    .line 95
    iput-boolean p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsNumberingMode:Z

    .line 96
    return-void
.end method

.method protected blacklist setTextTo(Landroid/widget/TextView;I)V
    .registers 4

    .line 209
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    if-nez v0, :cond_8

    .line 210
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_11

    .line 212
    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_11
    return-void
.end method

.method protected blacklist showHeaders()Z
    .registers 4

    .line 353
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_f

    .line 354
    return v1

    .line 356
    :cond_f
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public blacklist sort(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V
    .registers 3

    .line 364
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 365
    return-void
.end method
