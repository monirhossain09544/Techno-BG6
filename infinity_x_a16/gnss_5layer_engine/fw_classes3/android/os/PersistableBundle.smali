.class public final Landroid/os/PersistableBundle;
.super Landroid/os/BaseBundle;
.source "PersistableBundle.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;
.implements Lcom/android/internal/util/XmlUtils$WriteMapCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PersistableBundle$MyReadMapCallback;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMPTY:Landroid/os/PersistableBundle;

.field private static final blacklist TAG:Ljava/lang/String; = "PersistableBundle"

.field private static final greylist-max-o TAG_PERSISTABLEMAP:Ljava/lang/String; = "pbundle_as_map"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 63
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    sput-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 64
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    sget-object v1, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v1, v0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    .line 251
    new-instance v0, Landroid/os/PersistableBundle$1;

    invoke-direct {v0}, Landroid/os/PersistableBundle$1;-><init>()V

    sput-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 83
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 2

    .line 92
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(I)V

    .line 93
    const/4 p1, 0x1

    iput p1, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 94
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Bundle;)V
    .registers 3

    .line 125
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;Z)V

    .line 126
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Bundle;Z)V
    .registers 3

    .line 129
    invoke-virtual {p1}, Landroid/os/Bundle;->getItemwiseMap()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/os/PersistableBundle;-><init>(Landroid/util/ArrayMap;Z)V

    .line 130
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;I)V
    .registers 3

    .line 169
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;I)V

    .line 170
    const/4 p1, 0x1

    iput p1, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 171
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/PersistableBundle;)V
    .registers 2

    .line 106
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    .line 107
    iget p1, p1, Landroid/os/PersistableBundle;->mFlags:I

    iput p1, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 108
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/PersistableBundle;Z)V
    .registers 3

    .line 182
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;Z)V

    .line 183
    return-void
.end method

.method private constructor blacklist <init>(Landroid/util/ArrayMap;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    .line 140
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 143
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->putAll(Landroid/util/ArrayMap;)V

    .line 146
    iget-object p1, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    .line 147
    sub-int/2addr p1, v0

    :goto_10
    if-ltz p1, :cond_7b

    .line 148
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 149
    instance-of v1, v0, Landroid/util/ArrayMap;

    if-eqz v1, :cond_29

    .line 151
    iget-object v1, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    new-instance v2, Landroid/os/PersistableBundle;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-direct {v2, v0, p2}, Landroid/os/PersistableBundle;-><init>(Landroid/util/ArrayMap;Z)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    .line 153
    :cond_29
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_3a

    .line 154
    iget-object v1, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    new-instance v2, Landroid/os/PersistableBundle;

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {v2, v0, p2}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;Z)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    .line 155
    :cond_3a
    invoke-static {v0}, Landroid/os/PersistableBundle;->isValidType(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad value in PersistableBundle key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    .line 157
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    if-nez p2, :cond_72

    .line 161
    const-string v1, "PersistableBundle"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_78

    .line 159
    :cond_72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_78
    :goto_78
    add-int/lit8 p1, p1, -0x1

    goto :goto_10

    .line 166
    :cond_7b
    return-void
.end method

.method public static greylist-max-o forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 4

    .line 191
    new-instance v0, Landroid/os/PersistableBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(I)V

    .line 192
    invoke-virtual {v0, p0, p1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-object v0
.end method

.method public static greylist-max-o isValidType(Ljava/lang/Object;)Z
    .registers 2

    .line 69
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_31

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_31

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_31

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_31

    instance-of v0, p0, [I

    if-nez v0, :cond_31

    instance-of v0, p0, [J

    if-nez v0, :cond_31

    instance-of v0, p0, [D

    if-nez v0, :cond_31

    instance-of v0, p0, [Ljava/lang/String;

    if-nez v0, :cond_31

    instance-of v0, p0, Landroid/os/PersistableBundle;

    if-nez v0, :cond_31

    if-eqz p0, :cond_31

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_31

    instance-of p0, p0, [Z

    if-eqz p0, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 p0, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 p0, 0x1

    :goto_32
    return p0
.end method

.method public static whitelist readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 475
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 476
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 477
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object p0
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    .line 478
    :catch_15
    move-exception p0

    .line 479
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static blacklist restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 379
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 380
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 381
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 383
    :cond_b
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    if-eq v4, v2, :cond_2d

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1a

    .line 384
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-ge v5, v0, :cond_2d

    .line 385
    :cond_1a
    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    .line 388
    new-instance v0, Landroid/os/PersistableBundle;

    new-instance v2, Landroid/os/PersistableBundle$MyReadMapCallback;

    invoke-direct {v2}, Landroid/os/PersistableBundle$MyReadMapCallback;-><init>()V

    .line 389
    invoke-static {p0, v1, v3, v2}, Lcom/android/internal/util/XmlUtils;->readThisArrayMapXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Landroid/util/ArrayMap;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/util/ArrayMap;Z)V

    .line 388
    return-object v0

    .line 394
    :cond_2d
    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    return-object p0
.end method

.method public static greylist-max-o restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 373
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p0

    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 202
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public whitelist deepCopy()Landroid/os/PersistableBundle;
    .registers 3

    .line 213
    new-instance v0, Landroid/os/PersistableBundle;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;Z)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 428
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 430
    iget-object v0, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_22

    .line 431
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmptyParcel()Z

    move-result v0

    const-wide v1, 0x10500000001L

    if-eqz v0, :cond_18

    .line 432
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_30

    .line 434
    :cond_18
    iget-object v0, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_30

    .line 437
    :cond_22
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 440
    :goto_30
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 441
    return-void
.end method

.method public whitelist getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 6

    .line 238
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    .line 239
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 241
    return-object v1

    .line 244
    :cond_d
    :try_start_d
    check-cast v0, Landroid/os/PersistableBundle;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_10

    return-object v0

    .line 245
    :catch_10
    move-exception v2

    .line 246
    const-string v3, "Bundle"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/PersistableBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 247
    return-object v1
.end method

.method public blacklist isBundleContentsWithinLengthLimit(I)Z
    .registers 8

    .line 308
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    .line 309
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 310
    return v1

    .line 312
    :cond_9
    const/4 v0, 0x0

    move v2, v0

    :goto_b
    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_69

    .line 313
    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p1, :cond_2a

    .line 314
    return v0

    .line 316
    :cond_2a
    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 317
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3e

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, p1, :cond_3e

    .line 318
    return v0

    .line 319
    :cond_3e
    instance-of v4, v3, [Ljava/lang/String;

    if-eqz v4, :cond_58

    .line 320
    check-cast v3, [Ljava/lang/String;

    .line 321
    move v4, v0

    :goto_45
    array-length v5, v3

    if-ge v4, v5, :cond_65

    .line 322
    aget-object v5, v3, v4

    if-eqz v5, :cond_55

    aget-object v5, v3, v4

    .line 323
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, p1, :cond_55

    .line 324
    return v0

    .line 321
    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 327
    :cond_58
    instance-of v4, v3, Landroid/os/PersistableBundle;

    if-eqz v4, :cond_65

    check-cast v3, Landroid/os/PersistableBundle;

    .line 328
    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->isBundleContentsWithinLengthLimit(I)Z

    move-result v3

    if-nez v3, :cond_66

    .line 329
    return v0

    .line 327
    :cond_65
    nop

    .line 312
    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 332
    :cond_69
    return v1
.end method

.method public whitelist putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 4

    .line 224
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    .line 225
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void
.end method

.method public blacklist saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    .line 287
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_4b

    .line 288
    iget-object v1, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 289
    invoke-static {v1}, Landroid/os/PersistableBundle;->isValidType(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping bad data before persisting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    .line 291
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    const-string v2, "PersistableBundle"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v1, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 287
    :cond_48
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 295
    :cond_4b
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {v0, p1, p0}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    .line 296
    return-void
.end method

.method public greylist-max-o saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 280
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 281
    return-void
.end method

.method public declared-synchronized greylist-max-o toShortString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 416
    :try_start_1
    iget-object v0, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_2a

    .line 417
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 418
    const-string v0, "EMPTY_PARCEL"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_32

    monitor-exit p0

    return-object v0

    .line 420
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_32

    monitor-exit p0

    return-object v0

    .line 423
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_32

    monitor-exit p0

    return-object v0

    .line 415
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 403
    :try_start_1
    iget-object v0, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_30

    .line 404
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 405
    const-string v0, "PersistableBundle[EMPTY_PARCEL]"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_51

    monitor-exit p0

    return-object v0

    .line 407
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersistableBundle[mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_51

    .line 407
    monitor-exit p0

    return-object v0

    .line 411
    :cond_30
    :try_start_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersistableBundle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4f
    .catchall {:try_start_30 .. :try_end_4f} :catchall_51

    monitor-exit p0

    return-object v0

    .line 402
    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 362
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->pushAllowFds(Z)Z

    move-result v0

    .line 364
    :try_start_5
    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->writeToParcelInner(Landroid/os/Parcel;I)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 366
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 367
    nop

    .line 368
    return-void

    .line 366
    :catchall_d
    move-exception p2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 367
    throw p2
.end method

.method public whitelist writeToStream(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .line 452
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 453
    const/4 p1, 0x0

    const-string v1, "bundle"

    invoke-interface {v0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 455
    :try_start_13
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_16} :catch_1e

    .line 458
    nop

    .line 459
    invoke-interface {v0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 460
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 461
    return-void

    .line 456
    :catch_1e
    move-exception p1

    .line 457
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist writeUnknownObject(Ljava/lang/Object;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    instance-of v0, p1, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_19

    .line 269
    const/4 v0, 0x0

    const-string/jumbo v1, "pbundle_as_map"

    invoke-interface {p3, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 270
    const-string v2, "name"

    invoke-interface {p3, v0, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {p1, p3}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 272
    invoke-interface {p3, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    return-void

    .line 274
    :cond_19
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown Object o="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
