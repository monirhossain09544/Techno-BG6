.class public Landroid/preference/MultiCheckPreference;
.super Landroid/preference/DialogPreference;
.source "MultiCheckPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MultiCheckPreference$SavedState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mEntries:[Ljava/lang/CharSequence;

.field private greylist-max-o mEntryValues:[Ljava/lang/String;

.field private greylist-max-o mOrigValues:[Z

.field private greylist-max-o mSetValues:[Z

.field private greylist-max-o mSummary:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSetValues(Landroid/preference/MultiCheckPreference;)[Z
    .registers 1

    iget-object p0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/MultiCheckPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 80
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/MultiCheckPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/MultiCheckPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    sget-object v0, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 58
    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 59
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_19

    .line 60
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/preference/MultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 62
    :cond_19
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/MultiCheckPreference;->setEntryValuesCS([Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    sget-object p3, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, p3, p4, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 71
    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void
.end method

.method private greylist-max-o setEntryValuesCS([Ljava/lang/CharSequence;)V
    .registers 5

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/MultiCheckPreference;->setValues([Z)V

    .line 143
    if-eqz p1, :cond_1c

    .line 144
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_1c

    .line 146
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 149
    :cond_1c
    return-void
.end method


# virtual methods
.method public greylist-max-o findIndexOfValue(Ljava/lang/String;)I
    .registers 4

    .line 238
    if-eqz p1, :cond_1b

    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 239
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_1b

    .line 240
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 241
    return v0

    .line 239
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 245
    :cond_1b
    const/4 p1, -0x1

    return p1
.end method

.method public greylist-max-o getEntries()[Ljava/lang/CharSequence;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getEntryValues()[Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSummary()Ljava/lang/CharSequence;
    .registers 2

    .line 198
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 199
    invoke-super {p0}, Landroid/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 201
    :cond_9
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getValue(I)Z
    .registers 3

    .line 164
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public greylist-max-o getValues()[Z
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    return-object v0
.end method

.method protected whitelist onDialogClosed(Z)V
    .registers 5

    .line 269
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 271
    if-eqz p1, :cond_10

    .line 272
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->getValues()[Z

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/MultiCheckPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 273
    return-void

    .line 276
    :cond_10
    iget-object p1, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    return-void
.end method

.method protected whitelist onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 3

    .line 281
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 5

    .line 250
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 252
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 257
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    .line 258
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    new-instance v2, Landroid/preference/MultiCheckPreference$1;

    invoke-direct {v2, p0}, Landroid/preference/MultiCheckPreference$1;-><init>(Landroid/preference/MultiCheckPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    return-void

    .line 253
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 303
    if-eqz p1, :cond_1e

    invoke-interface {p1}, Landroid/os/Parcelable;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/preference/MultiCheckPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1e

    .line 309
    :cond_f
    check-cast p1, Landroid/preference/MultiCheckPreference$SavedState;

    .line 310
    invoke-virtual {p1}, Landroid/preference/MultiCheckPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 311
    iget-object p1, p1, Landroid/preference/MultiCheckPreference$SavedState;->values:[Z

    invoke-virtual {p0, p1}, Landroid/preference/MultiCheckPreference;->setValues([Z)V

    .line 312
    return-void

    .line 305
    :cond_1e
    :goto_1e
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 306
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 290
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 291
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 293
    return-object v0

    .line 296
    :cond_b
    new-instance v1, Landroid/preference/MultiCheckPreference$SavedState;

    invoke-direct {v1, v0}, Landroid/preference/MultiCheckPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 297
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->getValues()[Z

    move-result-object v0

    iput-object v0, v1, Landroid/preference/MultiCheckPreference$SavedState;->values:[Z

    .line 298
    return-object v1
.end method

.method protected whitelist onSetInitialValue(ZLjava/lang/Object;)V
    .registers 3

    .line 286
    return-void
.end method

.method public greylist-max-o setEntries(I)V
    .registers 3

    .line 108
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/MultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method public greylist-max-o setEntries([Ljava/lang/CharSequence;)V
    .registers 3

    .line 98
    iput-object p1, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 99
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    .line 100
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    .line 101
    return-void
.end method

.method public greylist-max-o setEntryValues(I)V
    .registers 3

    .line 138
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/preference/MultiCheckPreference;->setEntryValuesCS([Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method public greylist-max-o setEntryValues([Ljava/lang/String;)V
    .registers 3

    .line 128
    iput-object p1, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    .line 129
    iget-object p1, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 130
    iget-object p1, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 131
    return-void
.end method

.method public whitelist setSummary(Ljava/lang/CharSequence;)V
    .registers 3

    .line 216
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    if-nez p1, :cond_d

    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 218
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    goto :goto_1d

    .line 219
    :cond_d
    if-eqz p1, :cond_1d

    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 220
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    .line 222
    :cond_1d
    :goto_1d
    return-void
.end method

.method public greylist-max-o setValue(IZ)V
    .registers 4

    .line 171
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    aput-boolean p2, v0, p1

    .line 172
    return-void
.end method

.method public greylist-max-o setValues([Z)V
    .registers 6

    .line 178
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    if-eqz v0, :cond_21

    .line 179
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 180
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 181
    if-eqz p1, :cond_21

    .line 182
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    .line 183
    array-length v2, p1

    iget-object v3, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_1b

    array-length v2, p1

    goto :goto_1e

    :cond_1b
    iget-object v2, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    array-length v2, v2

    .line 182
    :goto_1e
    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    :cond_21
    return-void
.end method
