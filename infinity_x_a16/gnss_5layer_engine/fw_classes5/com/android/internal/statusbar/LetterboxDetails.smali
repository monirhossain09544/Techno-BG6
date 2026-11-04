.class public Lcom/android/internal/statusbar/LetterboxDetails;
.super Ljava/lang/Object;
.source "LetterboxDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/statusbar/LetterboxDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAppAppearance:I

.field private final blacklist mLetterboxFullBounds:Landroid/graphics/Rect;

.field private final blacklist mLetterboxInnerBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 218
    new-instance v0, Lcom/android/internal/statusbar/LetterboxDetails$1;

    invoke-direct {v0}, Lcom/android/internal/statusbar/LetterboxDetails$1;-><init>()V

    sput-object v0, Lcom/android/internal/statusbar/LetterboxDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 6

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxInnerBounds:Landroid/graphics/Rect;

    .line 126
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxInnerBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 128
    iput-object p2, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxFullBounds:Landroid/graphics/Rect;

    .line 129
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxFullBounds:Landroid/graphics/Rect;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 131
    iput p3, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mAppAppearance:I

    .line 134
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 203
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 206
    iput-object v0, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxInnerBounds:Landroid/graphics/Rect;

    .line 207
    const-class v0, Landroid/annotation/NonNull;

    iget-object v2, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxInnerBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 209
    iput-object v1, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxFullBounds:Landroid/graphics/Rect;

    .line 210
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxFullBounds:Landroid/graphics/Rect;

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 212
    iput p1, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mAppAppearance:I

    .line 215
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    return-void
.end method


# virtual methods
.method public blacklist appAppearanceToString()Ljava/lang/String;
    .registers 4

    .line 102
    const-class v0, Landroid/view/InsetsFlags;

    const-string v1, "appearance"

    iget v2, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mAppAppearance:I

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 156
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 157
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_31

    .line 159
    :cond_12
    check-cast p1, Lcom/android/internal/statusbar/LetterboxDetails;

    .line 161
    iget-object v2, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxInnerBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxInnerBounds:Landroid/graphics/Rect;

    .line 162
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxFullBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxFullBounds:Landroid/graphics/Rect;

    .line 163
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget v2, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mAppAppearance:I

    iget p1, p1, Lcom/android/internal/statusbar/LetterboxDetails;->mAppAppearance:I

    if-ne v2, p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    .line 161
    :goto_30
    return v0

    .line 157
    :cond_31
    :goto_31
    return v1
.end method

.method public blacklist getAppAppearance()I
    .registers 2

    .line 97
    iget v0, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mAppAppearance:I

    return v0
.end method

.method public blacklist getLetterboxFullBounds()Landroid/graphics/Rect;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxFullBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getLetterboxInnerBounds()Landroid/graphics/Rect;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxInnerBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 173
    nop

    .line 174
    iget-object v0, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxInnerBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 175
    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxFullBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 176
    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mAppAppearance:I

    add-int/2addr v0, v1

    .line 177
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LetterboxDetails { letterboxInnerBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxInnerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", letterboxFullBounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appAppearance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/statusbar/LetterboxDetails;->appAppearanceToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxInnerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 187
    iget-object v0, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mLetterboxFullBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 188
    iget p2, p0, Lcom/android/internal/statusbar/LetterboxDetails;->mAppAppearance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    return-void
.end method
