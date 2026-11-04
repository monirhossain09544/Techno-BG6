.class public Landroid/preference/RingtonePreference;
.super Landroid/preference/Preference;
.source "RingtonePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "RingtonePreference"


# instance fields
.field private greylist mRequestCode:I

.field private greylist-max-o mRingtoneType:I

.field private greylist-max-o mShowDefault:Z

.field private greylist-max-o mShowSilent:Z


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 83
    const v0, 0x1010093

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    sget-object v0, Lcom/android/internal/R$styleable;->RingtonePreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/preference/RingtonePreference;->mRingtoneType:I

    .line 71
    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    .line 73
    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/preference/RingtonePreference;->mShowSilent:Z

    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method


# virtual methods
.method public whitelist getRingtoneType()I
    .registers 2

    .line 97
    iget v0, p0, Landroid/preference/RingtonePreference;->mRingtoneType:I

    return v0
.end method

.method public whitelist getShowDefault()Z
    .registers 2

    .line 116
    iget-boolean v0, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    return v0
.end method

.method public whitelist getShowSilent()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Landroid/preference/RingtonePreference;->mShowSilent:Z

    return v0
.end method

.method public whitelist onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    .line 249
    iget p2, p0, Landroid/preference/RingtonePreference;->mRequestCode:I

    if-ne p1, p2, :cond_24

    .line 251
    if-eqz p3, :cond_22

    .line 252
    const-string p1, "android.intent.extra.ringtone.PICKED_URI"

    const-class p2, Landroid/net/Uri;

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 254
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_19

    :cond_17
    const-string p2, ""

    :goto_19
    invoke-virtual {p0, p2}, Landroid/preference/RingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_22

    .line 255
    invoke-virtual {p0, p1}, Landroid/preference/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 259
    :cond_22
    const/4 p1, 0x1

    return p1

    .line 262
    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method protected whitelist onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .registers 2

    .line 241
    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 243
    invoke-virtual {p1, p0}, Landroid/preference/PreferenceManager;->registerOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    .line 244
    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getNextRequestCode()I

    move-result p1

    iput p1, p0, Landroid/preference/RingtonePreference;->mRequestCode:I

    .line 245
    return-void
.end method

.method protected whitelist onClick()V
    .registers 4

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, v0}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getFragment()Landroid/preference/PreferenceFragment;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_1a

    .line 156
    iget v2, p0, Landroid/preference/RingtonePreference;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_27

    .line 158
    :cond_1a
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Landroid/preference/RingtonePreference;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 160
    :goto_27
    return-void
.end method

.method protected whitelist onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 3

    .line 215
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .registers 4

    .line 171
    nop

    .line 172
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v0

    .line 171
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 174
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v1, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    iget-boolean v0, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    if-eqz v0, :cond_23

    .line 176
    nop

    .line 177
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getRingtoneType()I

    move-result v0

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 176
    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 180
    :cond_23
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v1, p0, Landroid/preference/RingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const-string v0, "android.intent.extra.ringtone.TYPE"

    iget v1, p0, Landroid/preference/RingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 183
    const-string v0, "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    return-void
.end method

.method protected whitelist onRestoreRingtone()Landroid/net/Uri;
    .registers 4

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/RingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_f
    return-object v0
.end method

.method protected whitelist onSaveRingtone(Landroid/net/Uri;)V
    .registers 2

    .line 196
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_7
    const-string p1, ""

    :goto_9
    invoke-virtual {p0, p1}, Landroid/preference/RingtonePreference;->persistString(Ljava/lang/String;)Z

    .line 197
    return-void
.end method

.method protected whitelist onSetInitialValue(ZLjava/lang/Object;)V
    .registers 3

    .line 220
    check-cast p2, Ljava/lang/String;

    .line 229
    if-eqz p1, :cond_5

    .line 230
    return-void

    .line 234
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 235
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 237
    :cond_12
    return-void
.end method

.method public whitelist setRingtoneType(I)V
    .registers 2

    .line 107
    iput p1, p0, Landroid/preference/RingtonePreference;->mRingtoneType:I

    .line 108
    return-void
.end method

.method public whitelist setShowDefault(Z)V
    .registers 2

    .line 127
    iput-boolean p1, p0, Landroid/preference/RingtonePreference;->mShowDefault:Z

    .line 128
    return-void
.end method

.method public whitelist setShowSilent(Z)V
    .registers 2

    .line 146
    iput-boolean p1, p0, Landroid/preference/RingtonePreference;->mShowSilent:Z

    .line 147
    return-void
.end method
