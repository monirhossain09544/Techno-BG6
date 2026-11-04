.class public final Landroid/security/metrics/KeystoreAtomPayload;
.super Ljava/lang/Object;
.source "KeystoreAtomPayload.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/metrics/KeystoreAtomPayload$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/metrics/KeystoreAtomPayload;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist crashStats:I = 0x8

.field public static final blacklist keyCreationWithAuthInfo:I = 0x2

.field public static final blacklist keyCreationWithGeneralInfo:I = 0x1

.field public static final blacklist keyCreationWithPurposeAndModesInfo:I = 0x3

.field public static final blacklist keyOperationWithGeneralInfo:I = 0x6

.field public static final blacklist keyOperationWithPurposeAndModesInfo:I = 0x5

.field public static final blacklist keysPerUid:I = 0x9

.field public static final blacklist keystore2AtomWithOverflow:I = 0x4

.field public static final blacklist rkpErrorStats:I = 0x7

.field public static final blacklist storageStats:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 196
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload$1;

    invoke-direct {v0}, Landroid/security/metrics/KeystoreAtomPayload$1;-><init>()V

    sput-object v0, Landroid/security/metrics/KeystoreAtomPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    nop

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    .line 39
    iput-object p2, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/security/metrics/KeystoreAtomPayload-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5

    .line 348
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 351
    return-void

    .line 349
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_tagString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is available."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .registers 3

    .line 370
    iput p1, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    .line 371
    iput-object p2, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    .line 372
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5

    .line 354
    packed-switch p1, :pswitch_data_3e

    .line 366
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :pswitch_1d
    const-string p1, "keysPerUid"

    return-object p1

    .line 363
    :pswitch_20
    const-string p1, "crashStats"

    return-object p1

    .line 362
    :pswitch_23
    const-string/jumbo p1, "rkpErrorStats"

    return-object p1

    .line 361
    :pswitch_27
    const-string p1, "keyOperationWithGeneralInfo"

    return-object p1

    .line 360
    :pswitch_2a
    const-string p1, "keyOperationWithPurposeAndModesInfo"

    return-object p1

    .line 359
    :pswitch_2d
    const-string p1, "keystore2AtomWithOverflow"

    return-object p1

    .line 358
    :pswitch_30
    const-string p1, "keyCreationWithPurposeAndModesInfo"

    return-object p1

    .line 357
    :pswitch_33
    const-string p1, "keyCreationWithAuthInfo"

    return-object p1

    .line 356
    :pswitch_36
    const-string p1, "keyCreationWithGeneralInfo"

    return-object p1

    .line 355
    :pswitch_39
    const-string/jumbo p1, "storageStats"

    return-object p1

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist crashStats(Landroid/security/metrics/CrashStats;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3

    .line 169
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 340
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 341
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 342
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 344
    :cond_f
    return v0
.end method

.method public static blacklist keyCreationWithAuthInfo(Landroid/security/metrics/KeyCreationWithAuthInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3

    .line 79
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyCreationWithGeneralInfo(Landroid/security/metrics/KeyCreationWithGeneralInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3

    .line 64
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyCreationWithPurposeAndModesInfo(Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3

    .line 94
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyOperationWithGeneralInfo(Landroid/security/metrics/KeyOperationWithGeneralInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3

    .line 139
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyOperationWithPurposeAndModesInfo(Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3

    .line 124
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keysPerUid(Landroid/security/metrics/KeysPerUid;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3

    .line 184
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keystore2AtomWithOverflow(Landroid/security/metrics/Keystore2AtomWithOverflow;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3

    .line 109
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist rkpErrorStats(Landroid/security/metrics/RkpErrorStats;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3

    .line 154
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist storageStats(Landroid/security/metrics/StorageStats;)Landroid/security/metrics/KeystoreAtomPayload;
    .registers 3

    .line 49
    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 304
    nop

    .line 305
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_70

    goto :goto_6e

    .line 334
    :pswitch_a
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeysPerUid()Landroid/security/metrics/KeysPerUid;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_6e

    .line 331
    :pswitch_14
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getCrashStats()Landroid/security/metrics/CrashStats;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 332
    goto :goto_6e

    .line 328
    :pswitch_1e
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 329
    goto :goto_6e

    .line 325
    :pswitch_28
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 326
    goto :goto_6e

    .line 322
    :pswitch_32
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 323
    goto :goto_6e

    .line 319
    :pswitch_3c
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 320
    goto :goto_6e

    .line 316
    :pswitch_46
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 317
    goto :goto_6e

    .line 313
    :pswitch_50
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 314
    goto :goto_6e

    .line 310
    :pswitch_5a
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 311
    goto :goto_6e

    .line 307
    :pswitch_64
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getStorageStats()Landroid/security/metrics/StorageStats;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v1, v0

    .line 308
    nop

    .line 337
    :goto_6e
    return v1

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_64
        :pswitch_5a
        :pswitch_50
        :pswitch_46
        :pswitch_3c
        :pswitch_32
        :pswitch_28
        :pswitch_1e
        :pswitch_14
        :pswitch_a
    .end packed-switch
.end method

.method public blacklist getCrashStats()Landroid/security/metrics/CrashStats;
    .registers 2

    .line 173
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 174
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/CrashStats;

    return-object v0
.end method

.method public blacklist getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;
    .registers 2

    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 84
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyCreationWithAuthInfo;

    return-object v0
.end method

.method public blacklist getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;
    .registers 2

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 69
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyCreationWithGeneralInfo;

    return-object v0
.end method

.method public blacklist getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;
    .registers 2

    .line 98
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 99
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    return-object v0
.end method

.method public blacklist getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;
    .registers 2

    .line 143
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 144
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyOperationWithGeneralInfo;

    return-object v0
.end method

.method public blacklist getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;
    .registers 2

    .line 128
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 129
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    return-object v0
.end method

.method public blacklist getKeysPerUid()Landroid/security/metrics/KeysPerUid;
    .registers 2

    .line 188
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 189
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeysPerUid;

    return-object v0
.end method

.method public blacklist getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;
    .registers 2

    .line 113
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 114
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/Keystore2AtomWithOverflow;

    return-object v0
.end method

.method public blacklist getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;
    .registers 2

    .line 158
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 159
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/RkpErrorStats;

    return-object v0
.end method

.method public blacklist getStorageStats()Landroid/security/metrics/StorageStats;
    .registers 2

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    .line 54
    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/StorageStats;

    return-object v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 43
    iget v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    packed-switch v0, :pswitch_data_9a

    .line 299
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "union: unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 295
    :pswitch_21
    sget-object v1, Landroid/security/metrics/KeysPerUid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/metrics/KeysPerUid;

    .line 296
    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 297
    return-void

    .line 290
    :pswitch_2d
    sget-object v1, Landroid/security/metrics/CrashStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/metrics/CrashStats;

    .line 291
    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 292
    return-void

    .line 285
    :pswitch_39
    sget-object v1, Landroid/security/metrics/RkpErrorStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/metrics/RkpErrorStats;

    .line 286
    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 287
    return-void

    .line 280
    :pswitch_45
    sget-object v1, Landroid/security/metrics/KeyOperationWithGeneralInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/metrics/KeyOperationWithGeneralInfo;

    .line 281
    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 282
    return-void

    .line 275
    :pswitch_51
    sget-object v1, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    .line 276
    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 277
    return-void

    .line 270
    :pswitch_5d
    sget-object v1, Landroid/security/metrics/Keystore2AtomWithOverflow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/metrics/Keystore2AtomWithOverflow;

    .line 271
    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 272
    return-void

    .line 265
    :pswitch_69
    sget-object v1, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    .line 266
    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 267
    return-void

    .line 260
    :pswitch_75
    sget-object v1, Landroid/security/metrics/KeyCreationWithAuthInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/metrics/KeyCreationWithAuthInfo;

    .line 261
    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 262
    return-void

    .line 255
    :pswitch_81
    sget-object v1, Landroid/security/metrics/KeyCreationWithGeneralInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/metrics/KeyCreationWithGeneralInfo;

    .line 256
    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 257
    return-void

    .line 250
    :pswitch_8d
    sget-object v1, Landroid/security/metrics/StorageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/metrics/StorageStats;

    .line 251
    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 252
    return-void

    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_81
        :pswitch_75
        :pswitch_69
        :pswitch_5d
        :pswitch_51
        :pswitch_45
        :pswitch_39
        :pswitch_2d
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist setCrashStats(Landroid/security/metrics/CrashStats;)V
    .registers 3

    .line 178
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 179
    return-void
.end method

.method public blacklist setKeyCreationWithAuthInfo(Landroid/security/metrics/KeyCreationWithAuthInfo;)V
    .registers 3

    .line 88
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 89
    return-void
.end method

.method public blacklist setKeyCreationWithGeneralInfo(Landroid/security/metrics/KeyCreationWithGeneralInfo;)V
    .registers 3

    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 74
    return-void
.end method

.method public blacklist setKeyCreationWithPurposeAndModesInfo(Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;)V
    .registers 3

    .line 103
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 104
    return-void
.end method

.method public blacklist setKeyOperationWithGeneralInfo(Landroid/security/metrics/KeyOperationWithGeneralInfo;)V
    .registers 3

    .line 148
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 149
    return-void
.end method

.method public blacklist setKeyOperationWithPurposeAndModesInfo(Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;)V
    .registers 3

    .line 133
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 134
    return-void
.end method

.method public blacklist setKeysPerUid(Landroid/security/metrics/KeysPerUid;)V
    .registers 3

    .line 193
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 194
    return-void
.end method

.method public blacklist setKeystore2AtomWithOverflow(Landroid/security/metrics/Keystore2AtomWithOverflow;)V
    .registers 3

    .line 118
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 119
    return-void
.end method

.method public blacklist setRkpErrorStats(Landroid/security/metrics/RkpErrorStats;)V
    .registers 3

    .line 163
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 164
    return-void
.end method

.method public blacklist setStorageStats(Landroid/security/metrics/StorageStats;)V
    .registers 3

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 209
    iget v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    packed-switch v0, :pswitch_data_5c

    goto :goto_5b

    .line 239
    :pswitch_b
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeysPerUid()Landroid/security/metrics/KeysPerUid;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    .line 236
    :pswitch_13
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getCrashStats()Landroid/security/metrics/CrashStats;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 237
    goto :goto_5b

    .line 233
    :pswitch_1b
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 234
    goto :goto_5b

    .line 230
    :pswitch_23
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 231
    goto :goto_5b

    .line 227
    :pswitch_2b
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 228
    goto :goto_5b

    .line 224
    :pswitch_33
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 225
    goto :goto_5b

    .line 221
    :pswitch_3b
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 222
    goto :goto_5b

    .line 218
    :pswitch_43
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 219
    goto :goto_5b

    .line 215
    :pswitch_4b
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 216
    goto :goto_5b

    .line 212
    :pswitch_53
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getStorageStats()Landroid/security/metrics/StorageStats;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 213
    nop

    .line 242
    :goto_5b
    return-void

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_53
        :pswitch_4b
        :pswitch_43
        :pswitch_3b
        :pswitch_33
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
