.class public final Landroid/media/tv/DsmccResponse;
.super Landroid/media/tv/BroadcastInfoResponse;
.source "DsmccResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/DsmccResponse$BiopMessageType;
    }
.end annotation


# static fields
.field public static final whitelist BIOP_MESSAGE_TYPE_DIRECTORY:Ljava/lang/String; = "directory"

.field public static final whitelist BIOP_MESSAGE_TYPE_FILE:Ljava/lang/String; = "file"

.field public static final whitelist BIOP_MESSAGE_TYPE_SERVICE_GATEWAY:Ljava/lang/String; = "service_gateway"

.field public static final whitelist BIOP_MESSAGE_TYPE_STREAM:Ljava/lang/String; = "stream"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/DsmccResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RESPONSE_TYPE:I = 0x6


# instance fields
.field private final blacklist mBiopMessageType:Ljava/lang/String;

.field private final blacklist mChildList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEventIds:[I

.field private final blacklist mEventNames:[Ljava/lang/String;

.field private final blacklist mFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Landroid/media/tv/DsmccResponse$1;

    invoke-direct {v0}, Landroid/media/tv/DsmccResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/DsmccResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIILandroid/os/ParcelFileDescriptor;)V
    .registers 6

    .line 88
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    .line 89
    const-string p1, "file"

    iput-object p1, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 91
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 92
    iput-object p1, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 93
    iput-object p1, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor whitelist <init>(IIIZLjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    .line 102
    if-eqz p4, :cond_c

    .line 103
    const-string/jumbo p1, "service_gateway"

    iput-object p1, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    goto :goto_10

    .line 105
    :cond_c
    const-string p1, "directory"

    iput-object p1, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    .line 107
    :goto_10
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 108
    iput-object p5, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 109
    iput-object p1, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 110
    iput-object p1, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor whitelist <init>(III[I[Ljava/lang/String;)V
    .registers 7

    .line 121
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    .line 122
    const-string/jumbo p1, "stream"

    iput-object p1, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    .line 123
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 124
    iput-object p1, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 125
    if-eqz p4, :cond_16

    if-eqz p5, :cond_16

    array-length p1, p4

    array-length p2, p5

    if-eq p1, p2, :cond_1a

    :cond_16
    if-nez p4, :cond_1f

    if-nez p5, :cond_1f

    .line 129
    :cond_1a
    iput-object p4, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 130
    iput-object p5, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 131
    return-void

    .line 127
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The size of eventIds and eventNames must be equal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 134
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_ae

    :cond_14
    goto :goto_3f

    :sswitch_15
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    goto :goto_40

    :sswitch_1f
    const-string/jumbo v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x3

    goto :goto_40

    :sswitch_2a
    const-string/jumbo v1, "service_gateway"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v2

    goto :goto_40

    :sswitch_35
    const-string v1, "directory"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_40

    :goto_3f
    const/4 v0, -0x1

    :goto_40
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_c0

    .line 175
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "unexpected BIOP message type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :pswitch_4d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    if-lez v0, :cond_71

    .line 161
    new-array v3, v0, [I

    iput-object v3, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 162
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 163
    nop

    :goto_5c
    if-ge v2, v0, :cond_75

    .line 164
    iget-object v3, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v2

    .line 165
    iget-object v3, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 168
    :cond_71
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 169
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 171
    :cond_75
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 172
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 173
    goto :goto_ac

    .line 153
    :pswitch_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 154
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 155
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 156
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 157
    goto :goto_ac

    .line 140
    :pswitch_87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 141
    if-lez v0, :cond_a3

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 143
    nop

    :goto_95
    if-ge v2, v0, :cond_a5

    .line 144
    iget-object v3, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    .line 147
    :cond_a3
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    .line 148
    :cond_a5
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 149
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    .line 150
    iput-object v1, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    .line 151
    nop

    .line 177
    :goto_ac
    return-void

    nop

    :sswitch_data_ae
    .sparse-switch
        -0x395fe193 -> :sswitch_35
        -0x3935d146 -> :sswitch_2a
        -0x352ab080 -> :sswitch_1f
        0x2ff57c -> :sswitch_15
    .end sparse-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_87
        :pswitch_87
        :pswitch_7a
        :pswitch_4d
    .end packed-switch
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/DsmccResponse;
    .registers 2

    .line 80
    new-instance v0, Landroid/media/tv/DsmccResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/DsmccResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBiopMessageType()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getChildList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    const-string v1, "directory"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    .line 205
    const-string/jumbo v1, "service_gateway"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1e

    .line 206
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not directory object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1e
    :goto_1e
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2f

    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2f
    return-object v0
.end method

.method public whitelist getFile()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 192
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 195
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0

    .line 193
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not file object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getStreamEventIds()[I
    .registers 3

    .line 216
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    const-string/jumbo v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 219
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    goto :goto_15

    :cond_12
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_15
    return-object v0

    .line 217
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not stream event object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getStreamEventNames()[Ljava/lang/String;
    .registers 3

    .line 227
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    const-string/jumbo v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 230
    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    goto :goto_15

    :cond_12
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_15
    return-object v0

    .line 228
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not stream event object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 240
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 241
    iget-object p2, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object p2, p0, Landroid/media/tv/DsmccResponse;->mBiopMessageType:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_b0

    :cond_12
    goto :goto_3d

    :sswitch_13
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    const/4 p2, 0x2

    goto :goto_3e

    :sswitch_1d
    const-string/jumbo v0, "stream"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    const/4 p2, 0x3

    goto :goto_3e

    :sswitch_28
    const-string/jumbo v0, "service_gateway"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    move p2, v1

    goto :goto_3e

    :sswitch_33
    const-string v0, "directory"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    const/4 p2, 0x1

    goto :goto_3e

    :goto_3d
    const/4 p2, -0x1

    :goto_3e
    packed-switch p2, :pswitch_data_c2

    .line 267
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "unexpected BIOP message type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 257
    :pswitch_4a
    iget-object p2, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    if-eqz p2, :cond_70

    iget-object p2, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    array-length p2, p2

    if-lez p2, :cond_70

    .line 258
    iget-object p2, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    nop

    :goto_5a
    iget-object p2, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    array-length p2, p2

    if-ge v1, p2, :cond_ae

    .line 260
    iget-object p2, p0, Landroid/media/tv/DsmccResponse;->mEventIds:[I

    aget p2, p2, v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object p2, p0, Landroid/media/tv/DsmccResponse;->mEventNames:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 264
    :cond_70
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    goto :goto_ae

    .line 254
    :pswitch_74
    iget-object p2, p0, Landroid/media/tv/DsmccResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 255
    goto :goto_ae

    .line 245
    :pswitch_7e
    iget-object p2, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    if-eqz p2, :cond_aa

    iget-object p2, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_aa

    .line 246
    iget-object p2, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-object p2, p0, Landroid/media/tv/DsmccResponse;->mChildList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_99
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    goto :goto_99

    :cond_a9
    goto :goto_ae

    .line 251
    :cond_aa
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    nop

    .line 269
    :cond_ae
    :goto_ae
    return-void

    nop

    :sswitch_data_b0
    .sparse-switch
        -0x395fe193 -> :sswitch_33
        -0x3935d146 -> :sswitch_28
        -0x352ab080 -> :sswitch_1d
        0x2ff57c -> :sswitch_13
    .end sparse-switch

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7e
        :pswitch_74
        :pswitch_4a
    .end packed-switch
.end method
