.class public final Landroid/speech/AlternativeSpan;
.super Ljava/lang/Object;
.source "AlternativeSpan.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/speech/AlternativeSpan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAlternatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEndPosition:I

.field private final blacklist mStartPosition:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 243
    new-instance v0, Landroid/speech/AlternativeSpan$1;

    invoke-direct {v0}, Landroid/speech/AlternativeSpan$1;-><init>()V

    sput-object v0, Landroid/speech/AlternativeSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p1, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    .line 121
    iput p2, p0, Landroid/speech/AlternativeSpan;->mEndPosition:I

    .line 122
    iput-object p3, p0, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    .line 123
    const-class p1, Landroid/annotation/NonNull;

    const/4 p2, 0x0

    iget-object p3, p0, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 126
    invoke-direct {p0}, Landroid/speech/AlternativeSpan;->onConstructed()V

    .line 127
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 230
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 233
    iput v0, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    .line 234
    iput v1, p0, Landroid/speech/AlternativeSpan;->mEndPosition:I

    .line 235
    iput-object v2, p0, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    .line 236
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 239
    invoke-direct {p0}, Landroid/speech/AlternativeSpan;->onConstructed()V

    .line 240
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    return-void
.end method

.method private blacklist onConstructed()V
    .registers 4

    .line 73
    iget v0, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    const-string v1, "The range start must be non-negative."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 75
    iget v0, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    iget v1, p0, Landroid/speech/AlternativeSpan;->mEndPosition:I

    if-ge v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget v1, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/speech/AlternativeSpan;->mEndPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 75
    const-string v2, "Illegal range [%d, %d), must be start < end."

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    const-string v1, "List of alternative strings must not be empty."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 79
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 182
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 183
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2d

    .line 185
    :cond_12
    check-cast p1, Landroid/speech/AlternativeSpan;

    .line 187
    iget v2, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    iget v3, p1, Landroid/speech/AlternativeSpan;->mStartPosition:I

    if-ne v2, v3, :cond_2b

    iget v2, p0, Landroid/speech/AlternativeSpan;->mEndPosition:I

    iget v3, p1, Landroid/speech/AlternativeSpan;->mEndPosition:I

    if-ne v2, v3, :cond_2b

    iget-object v2, p0, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    iget-object p1, p1, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    .line 190
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    .line 187
    :goto_2c
    return v0

    .line 183
    :cond_2d
    :goto_2d
    return v1
.end method

.method public whitelist getAlternatives()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getEndPosition()I
    .registers 2

    .line 146
    iget v0, p0, Landroid/speech/AlternativeSpan;->mEndPosition:I

    return v0
.end method

.method public whitelist getStartPosition()I
    .registers 2

    .line 136
    iget v0, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 199
    nop

    .line 200
    iget v0, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 201
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/speech/AlternativeSpan;->mEndPosition:I

    add-int/2addr v0, v2

    .line 202
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlternativeSpan { startPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/speech/AlternativeSpan;->mEndPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alternatives = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 212
    iget p2, p0, Landroid/speech/AlternativeSpan;->mStartPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget p2, p0, Landroid/speech/AlternativeSpan;->mEndPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object p2, p0, Landroid/speech/AlternativeSpan;->mAlternatives:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 215
    return-void
.end method
