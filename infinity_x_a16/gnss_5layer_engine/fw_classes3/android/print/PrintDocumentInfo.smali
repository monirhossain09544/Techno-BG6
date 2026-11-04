.class public final Landroid/print/PrintDocumentInfo;
.super Ljava/lang/Object;
.source "PrintDocumentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintDocumentInfo$Builder;,
        Landroid/print/PrintDocumentInfo$ContentType;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_TYPE_DOCUMENT:I = 0x0

.field public static final whitelist CONTENT_TYPE_PHOTO:I = 0x1

.field public static final whitelist CONTENT_TYPE_UNKNOWN:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/print/PrintDocumentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PAGE_COUNT_UNKNOWN:I = -0x1


# instance fields
.field private greylist-max-o mContentType:I

.field private greylist-max-o mDataSize:J

.field private greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mPageCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPageCount(Landroid/print/PrintDocumentInfo;)I
    .registers 1

    iget p0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContentType(Landroid/print/PrintDocumentInfo;I)V
    .registers 2

    iput p1, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmName(Landroid/print/PrintDocumentInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPageCount(Landroid/print/PrintDocumentInfo;I)V
    .registers 2

    iput p1, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 375
    new-instance v0, Landroid/print/PrintDocumentInfo$1;

    invoke-direct {v0}, Landroid/print/PrintDocumentInfo$1;-><init>()V

    sput-object v0, Landroid/print/PrintDocumentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    .line 158
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    if-lez v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    .line 161
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/print/PrintDocumentInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/print/PrintDocumentInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/print/PrintDocumentInfo;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/print/PrintDocumentInfo;)V
    .registers 4

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iget-object v0, p1, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    .line 145
    iget v0, p1, Landroid/print/PrintDocumentInfo;->mPageCount:I

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    .line 146
    iget v0, p1, Landroid/print/PrintDocumentInfo;->mContentType:I

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    .line 147
    iget-wide v0, p1, Landroid/print/PrintDocumentInfo;->mDataSize:J

    iput-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    .line 148
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/print/PrintDocumentInfo;)V

    return-void
.end method

.method private greylist-max-o contentTypeToString(I)Ljava/lang/String;
    .registers 2

    .line 282
    packed-switch p1, :pswitch_data_c

    .line 290
    const-string p1, "CONTENT_TYPE_UNKNOWN"

    return-object p1

    .line 287
    :pswitch_6
    const-string p1, "CONTENT_TYPE_PHOTO"

    return-object p1

    .line 284
    :pswitch_9
    const-string p1, "CONTENT_TYPE_DOCUMENT"

    return-object p1

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 244
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 245
    return v0

    .line 247
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 248
    return v1

    .line 250
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 251
    return v1

    .line 253
    :cond_13
    check-cast p1, Landroid/print/PrintDocumentInfo;

    .line 254
    iget-object v2, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    iget-object v3, p1, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 255
    return v1

    .line 257
    :cond_20
    iget v2, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    iget v3, p1, Landroid/print/PrintDocumentInfo;->mContentType:I

    if-eq v2, v3, :cond_27

    .line 258
    return v1

    .line 260
    :cond_27
    iget v2, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    iget v3, p1, Landroid/print/PrintDocumentInfo;->mPageCount:I

    if-eq v2, v3, :cond_2e

    .line 261
    return v1

    .line 263
    :cond_2e
    iget-wide v2, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    iget-wide v4, p1, Landroid/print/PrintDocumentInfo;->mDataSize:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_37

    .line 264
    return v1

    .line 266
    :cond_37
    return v0
.end method

.method public whitelist getContentType()I
    .registers 2

    .line 194
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    return v0
.end method

.method public whitelist getDataSize()J
    .registers 3

    .line 203
    iget-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    return-wide v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPageCount()I
    .registers 2

    .line 181
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 233
    nop

    .line 234
    iget-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 235
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    add-int/2addr v0, v2

    .line 236
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    add-int/2addr v0, v2

    .line 237
    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 238
    mul-int/2addr v0, v1

    iget-wide v1, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 239
    return v0
.end method

.method public greylist-max-o setDataSize(J)V
    .registers 3

    .line 214
    iput-wide p1, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    .line 215
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    const-string v1, "PrintDocumentInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, ", pageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    invoke-direct {p0, v2}, Landroid/print/PrintDocumentInfo;->contentTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, ", dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 277
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 224
    iget-object p2, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget p2, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget p2, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 228
    return-void
.end method
