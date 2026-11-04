.class public final Landroid/os/ParcelableHolder;
.super Ljava/lang/Object;
.source "ParcelableHolder.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/ParcelableHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mParcel:Landroid/os/Parcel;

.field private blacklist mParcelable:Landroid/os/Parcelable;

.field private blacklist mStability:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Landroid/os/ParcelableHolder$1;

    invoke-direct {v0}, Landroid/os/ParcelableHolder$1;-><init>()V

    sput-object v0, Landroid/os/ParcelableHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/ParcelableHolder;->mStability:I

    .line 92
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/ParcelableHolder;->mStability:I

    .line 87
    iput p1, p0, Landroid/os/ParcelableHolder;->mStability:I

    .line 88
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/ParcelableHolder-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/ParcelableHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    if-eqz v0, :cond_b

    .line 235
    iget-object v0, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v0

    return v0

    .line 237
    :cond_b
    iget-object v0, p0, Landroid/os/ParcelableHolder;->mParcelable:Landroid/os/Parcelable;

    if-eqz v0, :cond_16

    .line 238
    iget-object v0, p0, Landroid/os/ParcelableHolder;->mParcelable:Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 240
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getParcelable(Ljava/lang/Class;)Landroid/os/Parcelable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    if-nez v0, :cond_45

    .line 155
    iget-object v0, p0, Landroid/os/ParcelableHolder;->mParcelable:Landroid/os/Parcelable;

    if-eqz v0, :cond_42

    iget-object v0, p0, Landroid/os/ParcelableHolder;->mParcelable:Landroid/os/Parcelable;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_42

    .line 156
    :cond_11
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The ParcelableHolder has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/ParcelableHolder;->mParcelable:Landroid/os/Parcelable;

    .line 157
    invoke-interface {v2}, Landroid/os/Parcelable;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but the requested type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_42
    :goto_42
    iget-object p1, p0, Landroid/os/ParcelableHolder;->mParcelable:Landroid/os/Parcelable;

    return-object p1

    .line 163
    :cond_45
    iget-object v0, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 165
    iget-object v0, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    .line 166
    iput-object p1, p0, Landroid/os/ParcelableHolder;->mParcelable:Landroid/os/Parcelable;

    .line 168
    iget-object v0, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    .line 170
    return-object p1
.end method

.method public whitelist getStability()I
    .registers 2

    .line 101
    iget v0, p0, Landroid/os/ParcelableHolder;->mStability:I

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 178
    iget v1, p0, Landroid/os/ParcelableHolder;->mStability:I

    if-ne v1, v0, :cond_4d

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/ParcelableHolder;->mParcelable:Landroid/os/Parcelable;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 186
    if-ltz v1, :cond_45

    .line 188
    if-nez v1, :cond_1f

    .line 189
    iget-object p1, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_1e

    .line 190
    iget-object p1, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 191
    iput-object v0, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    .line 193
    :cond_1e
    return-void

    .line 195
    :cond_1f
    iget-object v0, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    if-nez v0, :cond_29

    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    .line 198
    :cond_29
    iget-object v0, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 199
    iget-object v0, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataSize(I)V

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 202
    iget-object v2, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 203
    invoke-static {v0, v1}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 204
    return-void

    .line 187
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dataSize from parcel is negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected stability "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/ParcelableHolder;->mStability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setParcelable(Landroid/os/Parcelable;)V
    .registers 5

    .line 131
    if-eqz p1, :cond_38

    invoke-virtual {p0}, Landroid/os/ParcelableHolder;->getStability()I

    move-result v0

    invoke-interface {p1}, Landroid/os/Parcelable;->getStability()I

    move-result v1

    if-gt v0, v1, :cond_d

    goto :goto_38

    .line 132
    :cond_d
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A ParcelableHolder can only hold things at its stability or higher. The ParcelableHolder\'s stability is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 134
    invoke-virtual {p0}, Landroid/os/ParcelableHolder;->getStability()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but the parcelable\'s stability is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    invoke-interface {p1}, Landroid/os/Parcelable;->getStability()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_38
    :goto_38
    iput-object p1, p0, Landroid/os/ParcelableHolder;->mParcelable:Landroid/os/Parcelable;

    .line 138
    iget-object p1, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_46

    .line 139
    iget-object p1, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 140
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    .line 142
    :cond_46
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 208
    iget p2, p0, Landroid/os/ParcelableHolder;->mStability:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object p2, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    const/4 v0, 0x0

    if-eqz p2, :cond_1f

    .line 211
    iget-object p2, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object p2, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    iget-object v1, p0, Landroid/os/ParcelableHolder;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 213
    return-void

    .line 216
    :cond_1f
    iget-object p2, p0, Landroid/os/ParcelableHolder;->mParcelable:Landroid/os/Parcelable;

    if-nez p2, :cond_27

    .line 217
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    return-void

    .line 221
    :cond_27
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 222
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 224
    iget-object v2, p0, Landroid/os/ParcelableHolder;->mParcelable:Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int/2addr v0, v1

    .line 227
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 228
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    invoke-static {p2, v0}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 230
    return-void
.end method
