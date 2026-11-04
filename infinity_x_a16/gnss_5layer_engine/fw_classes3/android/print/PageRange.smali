.class public final Landroid/print/PageRange;
.super Ljava/lang/Object;
.source "PageRange.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist ALL_PAGES:Landroid/print/PageRange;

.field public static final greylist-max-o ALL_PAGES_ARRAY:[Landroid/print/PageRange;

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/print/PageRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mEnd:I

.field private final greylist-max-o mStart:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 34
    new-instance v0, Landroid/print/PageRange;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Landroid/print/PageRange;-><init>(II)V

    sput-object v0, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    .line 37
    sget-object v0, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    filled-new-array {v0}, [Landroid/print/PageRange;

    move-result-object v0

    sput-object v0, Landroid/print/PageRange;->ALL_PAGES_ARRAY:[Landroid/print/PageRange;

    .line 166
    new-instance v0, Landroid/print/PageRange$1;

    invoke-direct {v0}, Landroid/print/PageRange$1;-><init>()V

    sput-object v0, Landroid/print/PageRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-ltz p1, :cond_1f

    .line 55
    if-ltz p2, :cond_17

    .line 58
    if-gt p1, p2, :cond_e

    .line 61
    iput p1, p0, Landroid/print/PageRange;->mStart:I

    .line 62
    iput p2, p0, Landroid/print/PageRange;->mEnd:I

    .line 63
    return-void

    .line 59
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "start must be lesser than end."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end cannot be less than zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "start cannot be less than zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/print/PageRange;-><init>(II)V

    .line 67
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/print/PageRange-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/print/PageRange;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o contains(I)Z
    .registers 3

    .line 96
    iget v0, p0, Landroid/print/PageRange;->mStart:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    if-gt p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 133
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 134
    return v0

    .line 136
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 137
    return v1

    .line 139
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 140
    return v1

    .line 142
    :cond_13
    check-cast p1, Landroid/print/PageRange;

    .line 143
    iget v2, p0, Landroid/print/PageRange;->mEnd:I

    iget v3, p1, Landroid/print/PageRange;->mEnd:I

    if-eq v2, v3, :cond_1c

    .line 144
    return v1

    .line 146
    :cond_1c
    iget v2, p0, Landroid/print/PageRange;->mStart:I

    iget p1, p1, Landroid/print/PageRange;->mStart:I

    if-eq v2, p1, :cond_23

    .line 147
    return v1

    .line 149
    :cond_23
    return v0
.end method

.method public whitelist getEnd()I
    .registers 2

    .line 84
    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    return v0
.end method

.method public greylist-max-o getSize()I
    .registers 3

    .line 108
    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    iget v1, p0, Landroid/print/PageRange;->mStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist getStart()I
    .registers 2

    .line 75
    iget v0, p0, Landroid/print/PageRange;->mStart:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 125
    nop

    .line 126
    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 127
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/print/PageRange;->mStart:I

    add-int/2addr v0, v1

    .line 128
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 154
    iget v0, p0, Landroid/print/PageRange;->mStart:I

    if-nez v0, :cond_e

    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_e

    .line 155
    const-string v0, "PageRange[<all pages>]"

    return-object v0

    .line 157
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    const-string v1, "PageRange["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PageRange;->mStart:I

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PageRange;->mEnd:I

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 118
    iget p2, p0, Landroid/print/PageRange;->mStart:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget p2, p0, Landroid/print/PageRange;->mEnd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return-void
.end method
