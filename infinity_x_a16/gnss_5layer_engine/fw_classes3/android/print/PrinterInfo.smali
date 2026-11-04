.class public final Landroid/print/PrinterInfo;
.super Ljava/lang/Object;
.source "PrinterInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrinterInfo$Builder;,
        Landroid/print/PrinterInfo$Status;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATUS_BUSY:I = 0x2

.field public static final whitelist STATUS_IDLE:I = 0x1

.field public static final whitelist STATUS_UNAVAILABLE:I = 0x3


# instance fields
.field private final greylist-max-o mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

.field private final greylist-max-o mCustomPrinterIconGen:I

.field private final greylist-max-o mDescription:Ljava/lang/String;

.field private final greylist-max-o mHasCustomPrinterIcon:Z

.field private final greylist-max-o mIconResourceId:I

.field private final greylist-max-o mId:Landroid/print/PrinterId;

.field private final greylist-max-o mInfoIntent:Landroid/app/PendingIntent;

.field private final greylist-max-o mName:Ljava/lang/String;

.field private final greylist-max-o mStatus:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCapabilities(Landroid/print/PrinterInfo;)Landroid/print/PrinterCapabilitiesInfo;
    .registers 1

    iget-object p0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomPrinterIconGen(Landroid/print/PrinterInfo;)I
    .registers 1

    iget p0, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDescription(Landroid/print/PrinterInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasCustomPrinterIcon(Landroid/print/PrinterInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconResourceId(Landroid/print/PrinterInfo;)I
    .registers 1

    iget p0, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/print/PrinterInfo;)Landroid/print/PrinterId;
    .registers 1

    iget-object p0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInfoIntent(Landroid/print/PrinterInfo;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/print/PrinterInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatus(Landroid/print/PrinterInfo;)I
    .registers 1

    iget p0, p0, Landroid/print/PrinterInfo;->mStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/print/PrinterInfo;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckPrinterId(Landroid/print/PrinterId;)Landroid/print/PrinterId;
    .registers 1

    invoke-static {p0}, Landroid/print/PrinterInfo;->checkPrinterId(Landroid/print/PrinterId;)Landroid/print/PrinterId;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckStatus(I)I
    .registers 1

    invoke-static {p0}, Landroid/print/PrinterInfo;->checkStatus(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 566
    new-instance v0, Landroid/print/PrinterInfo$1;

    invoke-direct {v0}, Landroid/print/PrinterInfo$1;-><init>()V

    sput-object v0, Landroid/print/PrinterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const-class v0, Landroid/print/PrinterId;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterId;

    invoke-static {v0}, Landroid/print/PrinterInfo;->checkPrinterId(Landroid/print/PrinterId;)Landroid/print/PrinterId;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/print/PrinterInfo;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/print/PrinterInfo;->checkStatus(I)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    .line 277
    const-class v0, Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterCapabilitiesInfo;

    iput-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    goto :goto_45

    :cond_44
    const/4 v0, 0x0

    :goto_45
    iput-boolean v0, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    .line 281
    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    iput-object p1, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    .line 282
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/print/PrinterInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/print/PrinterInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/print/PrinterId;Ljava/lang/String;IIZLjava/lang/String;Landroid/app/PendingIntent;Landroid/print/PrinterCapabilitiesInfo;I)V
    .registers 10

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    .line 101
    iput-object p2, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    .line 102
    iput p3, p0, Landroid/print/PrinterInfo;->mStatus:I

    .line 103
    iput p4, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    .line 104
    iput-boolean p5, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    .line 105
    iput-object p6, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    .line 106
    iput-object p7, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    .line 107
    iput-object p8, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    .line 108
    iput p9, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    .line 109
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/print/PrinterId;Ljava/lang/String;IIZLjava/lang/String;Landroid/app/PendingIntent;Landroid/print/PrinterCapabilitiesInfo;ILandroid/print/PrinterInfo-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/print/PrinterInfo;-><init>(Landroid/print/PrinterId;Ljava/lang/String;IIZLjava/lang/String;Landroid/app/PendingIntent;Landroid/print/PrinterCapabilitiesInfo;I)V

    return-void
.end method

.method private static greylist-max-o checkName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 267
    const-string v0, "name cannot be empty."

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static greylist-max-o checkPrinterId(Landroid/print/PrinterId;)Landroid/print/PrinterId;
    .registers 2

    .line 239
    const-string/jumbo v0, "printerId cannot be null."

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/print/PrinterId;

    return-object p0
.end method

.method private static greylist-max-o checkStatus(I)I
    .registers 2

    .line 250
    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-ne p0, v0, :cond_a

    goto :goto_13

    .line 253
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "status is invalid."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 256
    :cond_13
    :goto_13
    return p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 364
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 365
    return v0

    .line 367
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 368
    return v1

    .line 370
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 371
    return v1

    .line 373
    :cond_13
    check-cast p1, Landroid/print/PrinterInfo;

    .line 374
    invoke-virtual {p0, p1}, Landroid/print/PrinterInfo;->equalsIgnoringStatus(Landroid/print/PrinterInfo;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 375
    return v1

    .line 377
    :cond_1c
    iget v2, p0, Landroid/print/PrinterInfo;->mStatus:I

    iget p1, p1, Landroid/print/PrinterInfo;->mStatus:I

    if-eq v2, p1, :cond_23

    .line 378
    return v1

    .line 380
    :cond_23
    return v0
.end method

.method public greylist-max-o equalsIgnoringStatus(Landroid/print/PrinterInfo;)Z
    .registers 5

    .line 327
    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    iget-object v1, p1, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v0, v1}, Landroid/print/PrinterId;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 328
    return v1

    .line 330
    :cond_c
    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    iget-object v2, p1, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 331
    return v1

    .line 333
    :cond_17
    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    iget-object v2, p1, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 334
    return v1

    .line 336
    :cond_22
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-nez v0, :cond_2b

    .line 337
    iget-object v0, p1, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-eqz v0, :cond_36

    .line 338
    return v1

    .line 340
    :cond_2b
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    iget-object v2, p1, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {v0, v2}, Landroid/print/PrinterCapabilitiesInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 341
    return v1

    .line 343
    :cond_36
    iget v0, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    iget v2, p1, Landroid/print/PrinterInfo;->mIconResourceId:I

    if-eq v0, v2, :cond_3d

    .line 344
    return v1

    .line 346
    :cond_3d
    iget-boolean v0, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    iget-boolean v2, p1, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    if-eq v0, v2, :cond_44

    .line 347
    return v1

    .line 349
    :cond_44
    iget v0, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    iget v2, p1, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    if-eq v0, v2, :cond_4b

    .line 350
    return v1

    .line 352
    :cond_4b
    iget-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_54

    .line 353
    iget-object p1, p1, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_5f

    .line 354
    return v1

    .line 356
    :cond_54
    iget-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    iget-object p1, p1, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    .line 357
    return v1

    .line 359
    :cond_5f
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist getCapabilities()Landroid/print/PrinterCapabilitiesInfo;
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 2

    .line 207
    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getHasCustomPrinterIcon()Z
    .registers 2

    .line 176
    iget-boolean v0, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    return v0
.end method

.method public whitelist getId()Landroid/print/PrinterId;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    return-object v0
.end method

.method public greylist-max-o getInfoIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 198
    iget v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 305
    nop

    .line 306
    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v0}, Landroid/print/PrinterId;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 307
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 308
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/print/PrinterInfo;->mStatus:I

    add-int/2addr v0, v2

    .line 309
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    iget-object v2, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v3

    :goto_24
    add-int/2addr v0, v2

    .line 310
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-eqz v2, :cond_31

    iget-object v2, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {v2}, Landroid/print/PrinterCapabilitiesInfo;->hashCode()I

    move-result v2

    goto :goto_32

    :cond_31
    move v2, v3

    :goto_32
    add-int/2addr v0, v2

    .line 311
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    add-int/2addr v0, v2

    .line 312
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    add-int/2addr v0, v2

    .line 313
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    add-int/2addr v0, v2

    .line 314
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->hashCode()I

    move-result v3

    :cond_4a
    add-int/2addr v0, v3

    .line 315
    return v0
.end method

.method public blacklist loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 132
    nop

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 135
    iget-boolean v1, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    if-eqz v1, :cond_20

    .line 136
    nop

    .line 137
    const-string/jumbo v1, "print"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager;

    .line 139
    iget-object v2, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v1, v2}, Landroid/print/PrintManager;->getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_20

    .line 142
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_21

    .line 146
    :cond_20
    const/4 p1, 0x0

    :goto_21
    if-nez p1, :cond_46

    .line 148
    :try_start_23
    iget-object v1, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 149
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 150
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 153
    iget v3, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    if-eqz v3, :cond_3e

    .line 154
    iget v3, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 158
    :cond_3e
    if-nez p1, :cond_44

    .line 159
    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_44} :catch_45

    .line 162
    :cond_44
    goto :goto_46

    .line 161
    :catch_45
    move-exception v0

    .line 165
    :cond_46
    :goto_46
    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    const-string v1, "PrinterInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 388
    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrinterInfo;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v1, ", capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    const-string v1, ", iconResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    const-string v1, ", hasCustomPrinterIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 394
    const-string v1, ", customPrinterIconGen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    const-string v1, ", infoIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 291
    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 292
    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 296
    iget v0, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-boolean v0, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 298
    iget v0, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 300
    return-void
.end method
