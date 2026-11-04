.class public Landroid/preference/VolumePreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "VolumePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/preference/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/VolumePreference$SavedState;,
        Landroid/preference/VolumePreference$VolumeStore;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

.field private greylist mStreamType:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 66
    const v0, 0x11200ec

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    sget-object v0, Lcom/android/internal/R$styleable;->VolumePreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 56
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/preference/VolumePreference;->mStreamType:I

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-void
.end method

.method private greylist-max-o cleanup()V
    .registers 4

    .line 141
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 143
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_38

    .line 144
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 145
    const/4 v1, 0x0

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 146
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x102050b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_2c

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 152
    :cond_2c
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->revertVolume()V

    .line 155
    :cond_31
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 156
    iput-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    .line 159
    :cond_38
    return-void
.end method


# virtual methods
.method public whitelist onActivityStop()V
    .registers 2

    .line 132
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_9

    .line 133
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 135
    :cond_9
    return-void
.end method

.method protected whitelist onBindDialogView(Landroid/view/View;)V
    .registers 7

    .line 79
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 81
    const v0, 0x102050b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 82
    new-instance v1, Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/preference/VolumePreference;->mStreamType:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, p0}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    .line 83
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v1}, Landroid/preference/SeekBarVolumizer;->start()V

    .line 84
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v1, v0}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 86
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 90
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 93
    return-void
.end method

.method protected whitelist onDialogClosed(Z)V
    .registers 2

    .line 122
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 124
    if-nez p1, :cond_e

    iget-object p1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz p1, :cond_e

    .line 125
    iget-object p1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p1}, Landroid/preference/SeekBarVolumizer;->revertVolume()V

    .line 128
    :cond_e
    invoke-direct {p0}, Landroid/preference/VolumePreference;->cleanup()V

    .line 129
    return-void
.end method

.method public whitelist onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 97
    iget-object p1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    const/4 v0, 0x1

    if-nez p1, :cond_6

    return v0

    .line 98
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_f

    move p1, v0

    goto :goto_10

    :cond_f
    move p1, p3

    .line 99
    :goto_10
    sparse-switch p2, :sswitch_data_2e

    .line 116
    return p3

    .line 111
    :sswitch_14
    if-eqz p1, :cond_1b

    .line 112
    iget-object p1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p1}, Landroid/preference/SeekBarVolumizer;->muteVolume()V

    .line 114
    :cond_1b
    return v0

    .line 101
    :sswitch_1c
    if-eqz p1, :cond_24

    .line 102
    iget-object p1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/preference/SeekBarVolumizer;->changeVolumeBy(I)V

    .line 104
    :cond_24
    return v0

    .line 106
    :sswitch_25
    if-eqz p1, :cond_2c

    .line 107
    iget-object p1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p1, v0}, Landroid/preference/SeekBarVolumizer;->changeVolumeBy(I)V

    .line 109
    :cond_2c
    return v0

    nop

    :sswitch_data_2e
    .sparse-switch
        0x18 -> :sswitch_25
        0x19 -> :sswitch_1c
        0xa4 -> :sswitch_14
    .end sparse-switch
.end method

.method public greylist-max-o onMuted(ZZ)V
    .registers 3

    .line 176
    return-void
.end method

.method public greylist-max-o onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    .line 171
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 200
    if-eqz p1, :cond_26

    invoke-interface {p1}, Landroid/os/Parcelable;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/preference/VolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_26

    .line 206
    :cond_f
    check-cast p1, Landroid/preference/VolumePreference$SavedState;

    .line 207
    invoke-virtual {p1}, Landroid/preference/VolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 208
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_25

    .line 209
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p1}, Landroid/preference/VolumePreference$SavedState;->getVolumeStore()Landroid/preference/VolumePreference$VolumeStore;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 211
    :cond_25
    return-void

    .line 202
    :cond_26
    :goto_26
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 203
    return-void
.end method

.method public greylist-max-o onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .registers 3

    .line 163
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eq p1, v0, :cond_d

    .line 164
    iget-object p1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p1}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 166
    :cond_d
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 185
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 188
    return-object v0

    .line 191
    :cond_b
    new-instance v1, Landroid/preference/VolumePreference$SavedState;

    invoke-direct {v1, v0}, Landroid/preference/VolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 192
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_1d

    .line 193
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v1}, Landroid/preference/VolumePreference$SavedState;->getVolumeStore()Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 195
    :cond_1d
    return-object v1
.end method

.method public blacklist onStartTrackingTouch(Landroid/preference/SeekBarVolumizer;)V
    .registers 2

    .line 181
    return-void
.end method

.method public greylist-max-o setStreamType(I)V
    .registers 2

    .line 74
    iput p1, p0, Landroid/preference/VolumePreference;->mStreamType:I

    .line 75
    return-void
.end method
