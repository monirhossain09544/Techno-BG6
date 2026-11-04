.class public Lcom/android/internal/view/AppearanceRegion;
.super Ljava/lang/Object;
.source "AppearanceRegion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/view/AppearanceRegion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAppearance:I

.field private blacklist mBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 121
    new-instance v0, Lcom/android/internal/view/AppearanceRegion$1;

    invoke-direct {v0}, Lcom/android/internal/view/AppearanceRegion$1;-><init>()V

    sput-object v0, Lcom/android/internal/view/AppearanceRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/graphics/Rect;)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/android/internal/view/AppearanceRegion;->mAppearance:I

    .line 71
    iput-object p2, p0, Lcom/android/internal/view/AppearanceRegion;->mBounds:Landroid/graphics/Rect;

    .line 72
    const-class p1, Landroid/annotation/NonNull;

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/android/internal/view/AppearanceRegion;->mBounds:Landroid/graphics/Rect;

    invoke-static {p1, p2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 112
    iput v0, p0, Lcom/android/internal/view/AppearanceRegion;->mAppearance:I

    .line 113
    iput-object p1, p0, Lcom/android/internal/view/AppearanceRegion;->mBounds:Landroid/graphics/Rect;

    .line 114
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/view/AppearanceRegion;->mBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 38
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 39
    return v0

    .line 41
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 44
    :cond_12
    check-cast p1, Lcom/android/internal/view/AppearanceRegion;

    .line 45
    iget v2, p0, Lcom/android/internal/view/AppearanceRegion;->mAppearance:I

    iget v3, p1, Lcom/android/internal/view/AppearanceRegion;->mAppearance:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/android/internal/view/AppearanceRegion;->mBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/internal/view/AppearanceRegion;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    .line 42
    :cond_27
    :goto_27
    return v1
.end method

.method public blacklist getAppearance()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/android/internal/view/AppearanceRegion;->mAppearance:I

    return v0
.end method

.method public blacklist getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/internal/view/AppearanceRegion;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 50
    const-class v0, Landroid/view/InsetsFlags;

    iget v1, p0, Lcom/android/internal/view/AppearanceRegion;->mAppearance:I

    .line 51
    const-string v2, "appearance"

    invoke-static {v0, v2, v1}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppearanceRegion{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/AppearanceRegion;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 94
    iget v0, p0, Lcom/android/internal/view/AppearanceRegion;->mAppearance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/view/AppearanceRegion;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 96
    return-void
.end method
