.class public final Landroid/service/chooser/ChooserTarget;
.super Ljava/lang/Object;
.source "ChooserTarget.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ChooserTarget"


# instance fields
.field private greylist-max-o mComponentName:Landroid/content/ComponentName;

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mIntentExtras:Landroid/os/Bundle;

.field private greylist-max-o mScore:F

.field private greylist-max-o mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 210
    new-instance v0, Landroid/service/chooser/ChooserTarget$1;

    invoke-direct {v0}, Landroid/service/chooser/ChooserTarget$1;-><init>()V

    sput-object v0, Landroid/service/chooser/ChooserTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/chooser/ChooserTarget;->mTitle:Ljava/lang/CharSequence;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 124
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/chooser/ChooserTarget;->mIcon:Landroid/graphics/drawable/Icon;

    goto :goto_1d

    .line 126
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/chooser/ChooserTarget;->mIcon:Landroid/graphics/drawable/Icon;

    .line 128
    :goto_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/chooser/ChooserTarget;->mScore:F

    .line 129
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/service/chooser/ChooserTarget;->mComponentName:Landroid/content/ComponentName;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/service/chooser/ChooserTarget;->mIntentExtras:Landroid/os/Bundle;

    .line 131
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;FLandroid/content/ComponentName;Landroid/os/Bundle;)V
    .registers 6

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Landroid/service/chooser/ChooserTarget;->mTitle:Ljava/lang/CharSequence;

    .line 111
    iput-object p2, p0, Landroid/service/chooser/ChooserTarget;->mIcon:Landroid/graphics/drawable/Icon;

    .line 112
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_19

    const/4 p1, 0x0

    cmpg-float p1, p3, p1

    if-ltz p1, :cond_19

    .line 116
    iput p3, p0, Landroid/service/chooser/ChooserTarget;->mScore:F

    .line 117
    iput-object p4, p0, Landroid/service/chooser/ChooserTarget;->mComponentName:Landroid/content/ComponentName;

    .line 118
    iput-object p5, p0, Landroid/service/chooser/ChooserTarget;->mIntentExtras:Landroid/os/Bundle;

    .line 119
    return-void

    .line 113
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Score "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " out of range; must be between 0.0f and 1.0f"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/service/chooser/ChooserTarget;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/service/chooser/ChooserTarget;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getIntentExtras()Landroid/os/Bundle;
    .registers 2

    .line 179
    iget-object v0, p0, Landroid/service/chooser/ChooserTarget;->mIntentExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getScore()F
    .registers 2

    .line 161
    iget v0, p0, Landroid/service/chooser/ChooserTarget;->mScore:F

    return v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/service/chooser/ChooserTarget;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChooserTarget{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/chooser/ChooserTarget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/chooser/ChooserTarget;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/chooser/ChooserTarget;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/chooser/ChooserTarget;->mScore:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 198
    iget-object p2, p0, Landroid/service/chooser/ChooserTarget;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 199
    iget-object p2, p0, Landroid/service/chooser/ChooserTarget;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v0, 0x0

    if-eqz p2, :cond_14

    .line 200
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object p2, p0, Landroid/service/chooser/ChooserTarget;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 203
    :cond_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    :goto_17
    iget p2, p0, Landroid/service/chooser/ChooserTarget;->mScore:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 206
    iget-object p2, p0, Landroid/service/chooser/ChooserTarget;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 207
    iget-object p2, p0, Landroid/service/chooser/ChooserTarget;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 208
    return-void
.end method
