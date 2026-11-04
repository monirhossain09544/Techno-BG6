.class public Landroid/os/DropBoxManager$Entry;
.super Ljava/lang/Object;
.source "DropBoxManager.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DropBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/DropBoxManager$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mData:[B

.field private final greylist-max-o mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final greylist-max-o mFlags:I

.field private final greylist-max-o mTag:Ljava/lang/String;

.field private final greylist-max-o mTimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 276
    new-instance v0, Landroid/os/DropBoxManager$Entry$1;

    invoke-direct {v0}, Landroid/os/DropBoxManager$Entry$1;-><init>()V

    sput-object v0, Landroid/os/DropBoxManager$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/os/IDropBoxManagerService$Entry;)V
    .registers 4

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    if-eqz p1, :cond_1a

    .line 208
    iget-object v0, p1, Lcom/android/internal/os/IDropBoxManagerService$Entry;->tag:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 209
    iget-wide v0, p1, Lcom/android/internal/os/IDropBoxManagerService$Entry;->timestampMillis:J

    iput-wide v0, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 210
    iget-object v0, p1, Lcom/android/internal/os/IDropBoxManagerService$Entry;->data:[B

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 211
    iget-object v0, p1, Lcom/android/internal/os/IDropBoxManagerService$Entry;->fd:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 212
    iget p1, p1, Lcom/android/internal/os/IDropBoxManagerService$Entry;->flags:I

    iput p1, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 213
    return-void

    .line 206
    :cond_1a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "internalEntry == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/IDropBoxManagerService$Entry;Landroid/os/DropBoxManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/DropBoxManager$Entry;-><init>(Lcom/android/internal/os/IDropBoxManagerService$Entry;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;J)V
    .registers 4

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    if-eqz p1, :cond_12

    .line 133
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 134
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 135
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 136
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 137
    const/4 p1, 0x1

    iput p1, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 138
    return-void

    .line 131
    :cond_12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "tag == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>(Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;I)V
    .registers 9

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    if-eqz p1, :cond_38

    .line 178
    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    if-nez p4, :cond_11

    move v1, v2

    :cond_11
    if-ne v0, v1, :cond_1f

    .line 182
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 183
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 184
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 185
    iput-object p4, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 186
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 187
    return-void

    .line 179
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad flags: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_38
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "tag == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>(Ljava/lang/String;JLjava/io/File;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    if-eqz p1, :cond_34

    .line 196
    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_1b

    .line 198
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 199
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 200
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 201
    const/high16 p1, 0x10000000

    invoke-static {p4, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 202
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 203
    return-void

    .line 196
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad flags: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_34
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "tag == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>(Ljava/lang/String;JLjava/lang/String;)V
    .registers 5

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    if-eqz p1, :cond_23

    .line 144
    if-eqz p4, :cond_1a

    .line 146
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 147
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 148
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 149
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 150
    const/4 p1, 0x2

    iput p1, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 151
    return-void

    .line 144
    :cond_1a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "text == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "tag == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>(Ljava/lang/String;J[BI)V
    .registers 9

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    if-eqz p1, :cond_38

    .line 160
    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    if-nez p4, :cond_11

    move v1, v2

    :cond_11
    if-ne v0, v1, :cond_1f

    .line 164
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 165
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 166
    iput-object p4, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 167
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 168
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 169
    return-void

    .line 161
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad flags: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_38
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "tag == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist toInternalEntry()Lcom/android/internal/os/IDropBoxManagerService$Entry;
    .registers 4

    .line 294
    new-instance v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;

    invoke-direct {v0}, Lcom/android/internal/os/IDropBoxManagerService$Entry;-><init>()V

    .line 295
    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->tag:Ljava/lang/String;

    .line 296
    iget-wide v1, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    iput-wide v1, v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->timestampMillis:J

    .line 297
    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object v1, v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->fd:Landroid/os/ParcelFileDescriptor;

    .line 298
    iget v1, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    iput v1, v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->flags:I

    .line 299
    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    iput-object v1, v0, Lcom/android/internal/os/IDropBoxManagerService$Entry;->data:[B

    .line 300
    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 217
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    .line 218
    :cond_b
    :goto_b
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 286
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 233
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    return v0
.end method

.method public whitelist getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    if-eqz v0, :cond_c

    .line 266
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_17

    .line 267
    :cond_c
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2b

    .line 268
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 272
    :goto_17
    iget v1, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_29

    .line 273
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_2a

    :cond_29
    nop

    .line 272
    :goto_2a
    return-object v0

    .line 270
    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getText(I)Ljava/lang/String;
    .registers 8

    .line 241
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 242
    :cond_8
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    iget-object v3, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    array-length v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    .line 244
    :cond_1c
    nop

    .line 246
    :try_start_1d
    invoke-virtual {p0}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_57
    .catchall {:try_start_1d .. :try_end_21} :catchall_4e

    .line 247
    if-nez v0, :cond_2b

    .line 258
    if-eqz v0, :cond_2a

    :try_start_25
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_2a

    :catch_29
    move-exception p1

    .line 247
    :cond_2a
    :goto_2a
    return-object v1

    .line 248
    :cond_2b
    :try_start_2b
    new-array v3, p1, [B

    .line 249
    nop

    .line 250
    move v4, v2

    move v5, v4

    .line 251
    :goto_30
    if-ltz v4, :cond_3c

    add-int/2addr v5, v4

    if-ge v5, p1, :cond_3c

    .line 252
    sub-int v4, p1, v5

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    goto :goto_30

    .line 254
    :cond_3c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v2, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_41} :catch_4c
    .catchall {:try_start_2b .. :try_end_41} :catchall_49

    .line 258
    if-eqz v0, :cond_48

    :try_start_43
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v0

    .line 254
    :cond_48
    :goto_48
    return-object p1

    .line 258
    :catchall_49
    move-exception p1

    move-object v1, v0

    goto :goto_4f

    .line 255
    :catch_4c
    move-exception p1

    goto :goto_59

    .line 258
    :catchall_4e
    move-exception p1

    :goto_4f
    if-eqz v1, :cond_56

    :try_start_51
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_56

    :catch_55
    move-exception v0

    .line 259
    :cond_56
    :goto_56
    throw p1

    .line 255
    :catch_57
    move-exception p1

    move-object v0, v1

    .line 256
    :goto_59
    nop

    .line 258
    if-eqz v0, :cond_61

    :try_start_5c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_61

    :catch_60
    move-exception p1

    .line 256
    :cond_61
    :goto_61
    return-object v1
.end method

.method public whitelist getTimeMillis()J
    .registers 3

    .line 227
    iget-wide v0, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 290
    invoke-direct {p0}, Landroid/os/DropBoxManager$Entry;->toInternalEntry()Lcom/android/internal/os/IDropBoxManagerService$Entry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/IDropBoxManagerService$Entry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 291
    return-void
.end method
