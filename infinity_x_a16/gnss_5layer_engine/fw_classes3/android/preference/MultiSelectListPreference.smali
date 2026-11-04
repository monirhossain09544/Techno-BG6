.class public Landroid/preference/MultiSelectListPreference;
.super Landroid/preference/DialogPreference;
.source "MultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MultiSelectListPreference$SavedState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mEntries:[Ljava/lang/CharSequence;

.field private greylist-max-o mEntryValues:[Ljava/lang/CharSequence;

.field private greylist-max-o mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPreferenceChanged:Z

.field private greylist-max-o mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEntryValues(Landroid/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNewValues(Landroid/preference/MultiSelectListPreference;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreferenceChanged(Landroid/preference/MultiSelectListPreference;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreferenceChanged(Landroid/preference/MultiSelectListPreference;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 73
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 60
    sget-object v0, Lcom/android/internal/R$styleable;->MultiSelectListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 63
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 64
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 65
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method

.method private greylist-max-o getSelectedItems()[Z
    .registers 7

    .line 202
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 203
    array-length v1, v0

    .line 204
    iget-object v2, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 205
    new-array v3, v1, [Z

    .line 207
    const/4 v4, 0x0

    :goto_8
    if-ge v4, v1, :cond_19

    .line 208
    aget-object v5, v0, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v3, v4

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 211
    :cond_19
    return-object v3
.end method


# virtual methods
.method public whitelist findIndexOfValue(Ljava/lang/String;)I
    .registers 4

    .line 166
    if-eqz p1, :cond_1b

    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b

    .line 167
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_1b

    .line 168
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 169
    return v0

    .line 167
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 173
    :cond_1b
    const/4 p1, -0x1

    return p1
.end method

.method public whitelist getEntries()[Ljava/lang/CharSequence;
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getEntryValues()[Ljava/lang/CharSequence;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getValues()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method protected whitelist onDialogClosed(Z)V
    .registers 3

    .line 216
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 218
    if-eqz p1, :cond_14

    iget-boolean p1, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    if-eqz p1, :cond_14

    .line 219
    iget-object p1, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 220
    invoke-virtual {p0, p1}, Landroid/preference/MultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 221
    invoke-virtual {p0, p1}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 224
    :cond_14
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    .line 225
    return-void
.end method

.method protected whitelist onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 6

    .line 229
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 230
    array-length p2, p1

    .line 231
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 233
    const/4 v1, 0x0

    :goto_b
    if-ge v1, p2, :cond_19

    .line 234
    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 237
    :cond_19
    return-object v0
.end method

.method protected whitelist onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 5

    .line 178
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 180
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_26

    .line 186
    invoke-direct {p0}, Landroid/preference/MultiSelectListPreference;->getSelectedItems()[Z

    move-result-object v0

    .line 187
    iget-object v1, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    new-instance v2, Landroid/preference/MultiSelectListPreference$1;

    invoke-direct {v2, p0}, Landroid/preference/MultiSelectListPreference$1;-><init>(Landroid/preference/MultiSelectListPreference;)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    iget-object p1, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 198
    iget-object p1, p0, Landroid/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 199
    return-void

    .line 181
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 247
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 248
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 250
    return-object v0

    .line 253
    :cond_b
    new-instance v1, Landroid/preference/MultiSelectListPreference$SavedState;

    invoke-direct {v1, v0}, Landroid/preference/MultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 254
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v0

    iput-object v0, v1, Landroid/preference/MultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    .line 255
    return-object v1
.end method

.method protected whitelist onSetInitialValue(ZLjava/lang/Object;)V
    .registers 3

    .line 242
    if-eqz p1, :cond_9

    iget-object p1, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-virtual {p0, p1}, Landroid/preference/MultiSelectListPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_c

    :cond_9
    move-object p1, p2

    check-cast p1, Ljava/util/Set;

    :goto_c
    invoke-virtual {p0, p1}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 243
    return-void
.end method

.method public whitelist setEntries(I)V
    .registers 3

    .line 99
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method public whitelist setEntries([Ljava/lang/CharSequence;)V
    .registers 2

    .line 91
    iput-object p1, p0, Landroid/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 92
    return-void
.end method

.method public whitelist setEntryValues(I)V
    .registers 3

    .line 127
    invoke-virtual {p0}, Landroid/preference/MultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public whitelist setEntryValues([Ljava/lang/CharSequence;)V
    .registers 2

    .line 119
    iput-object p1, p0, Landroid/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 120
    return-void
.end method

.method public whitelist setValues(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 147
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 149
    invoke-virtual {p0, p1}, Landroid/preference/MultiSelectListPreference;->persistStringSet(Ljava/util/Set;)Z

    .line 150
    return-void
.end method
