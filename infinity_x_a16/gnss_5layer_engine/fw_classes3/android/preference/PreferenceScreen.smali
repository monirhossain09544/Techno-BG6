.class public final Landroid/preference/PreferenceScreen;
.super Landroid/preference/PreferenceGroup;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceScreen$SavedState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mDialog:Landroid/app/Dialog;

.field private blacklist mDialogFitsSystemWindows:Z

.field private greylist-max-o mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mDividerSpecified:Z

.field private greylist-max-o mLayoutResId:I

.field private greylist-max-r mListView:Landroid/widget/ListView;

.field private greylist mRootAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 120
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    const p2, 0x109011c

    iput p2, p0, Landroid/preference/PreferenceScreen;->mLayoutResId:I

    .line 112
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/preference/PreferenceScreen;->mDialogFitsSystemWindows:Z

    .line 122
    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->PreferenceScreen:[I

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 127
    iget v0, p0, Landroid/preference/PreferenceScreen;->mLayoutResId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/preference/PreferenceScreen;->mLayoutResId:I

    .line 130
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 131
    nop

    .line 132
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/preference/PreferenceScreen;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 133
    iput-boolean v1, p0, Landroid/preference/PreferenceScreen;->mDividerSpecified:Z

    .line 136
    :cond_2d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    return-void
.end method

.method private greylist-max-o showDialog(Landroid/os/Bundle;)V
    .registers 9

    .line 207
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 208
    iget-object v1, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 209
    iget-object v1, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    :cond_e
    nop

    .line 213
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 214
    iget v3, p0, Landroid/preference/PreferenceScreen;->mLayoutResId:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 215
    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 216
    const v3, 0x102000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    .line 219
    iget-boolean v3, p0, Landroid/preference/PreferenceScreen;->mDialogFitsSystemWindows:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_39

    .line 220
    iget-object v3, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setFitsSystemWindows(Z)V

    .line 222
    :cond_39
    iget-boolean v3, p0, Landroid/preference/PreferenceScreen;->mDividerSpecified:Z

    if-eqz v3, :cond_44

    .line 223
    iget-object v3, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Landroid/preference/PreferenceScreen;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 226
    :cond_44
    iget-object v3, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 229
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 230
    new-instance v5, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v6

    invoke-direct {v5, v0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 231
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 232
    if-eqz v2, :cond_65

    .line 233
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :cond_65
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    goto :goto_7f

    .line 237
    :cond_6d
    instance-of v0, v2, Landroid/widget/TextView;

    if-eqz v0, :cond_7c

    .line 238
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7f

    .line 241
    :cond_7c
    invoke-virtual {v5, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 244
    :goto_7f
    invoke-virtual {v5, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 245
    invoke-virtual {v5, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 246
    if-eqz p1, :cond_8a

    .line 247
    invoke-virtual {v5, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 251
    :cond_8a
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    .line 253
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 254
    return-void
.end method


# virtual methods
.method public whitelist bind(Landroid/widget/ListView;)V
    .registers 3

    .line 191
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 192
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onAttachedToActivity()V

    .line 195
    return-void
.end method

.method public whitelist getDialog()Landroid/app/Dialog;
    .registers 2

    .line 267
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public whitelist getRootAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_a

    .line 167
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 170
    :cond_a
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected whitelist isOnSameScreenAsChildren()Z
    .registers 2

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onClick()V
    .registers 2

    .line 199
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_18

    .line 203
    :cond_13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    .line 204
    return-void

    .line 200
    :cond_18
    :goto_18
    return-void
.end method

.method protected whitelist onCreateRootAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 180
    new-instance v0, Landroid/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceGroupAdapter;-><init>(Landroid/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 258
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    .line 259
    return-void
.end method

.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 272
    instance-of p2, p1, Landroid/widget/ListView;

    if-eqz p2, :cond_b

    .line 273
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p3, p1

    .line 275
    :cond_b
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 276
    instance-of p2, p1, Landroid/preference/Preference;

    if-nez p2, :cond_18

    return-void

    .line 278
    :cond_18
    check-cast p1, Landroid/preference/Preference;

    .line 279
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 280
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 303
    if-eqz p1, :cond_22

    invoke-interface {p1}, Landroid/os/Parcelable;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/preference/PreferenceScreen$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_22

    .line 309
    :cond_f
    check-cast p1, Landroid/preference/PreferenceScreen$SavedState;

    .line 310
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 311
    iget-boolean v0, p1, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v0, :cond_21

    .line 312
    iget-object p1, p1, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    .line 314
    :cond_21
    return-void

    .line 305
    :cond_22
    :goto_22
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 306
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 289
    invoke-super {p0}, Landroid/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 290
    iget-object v1, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 291
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_1e

    .line 295
    :cond_f
    new-instance v2, Landroid/preference/PreferenceScreen$SavedState;

    invoke-direct {v2, v0}, Landroid/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    .line 297
    invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v2, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 298
    return-object v2

    .line 292
    :cond_1e
    :goto_1e
    return-object v0
.end method

.method public blacklist setDialogFitsSystemWindows(Z)V
    .registers 2

    .line 148
    iput-boolean p1, p0, Landroid/preference/PreferenceScreen;->mDialogFitsSystemWindows:Z

    .line 149
    return-void
.end method
