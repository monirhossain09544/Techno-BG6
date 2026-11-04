.class public final Landroid/print/PrintAttributes$Margins;
.super Ljava/lang/Object;
.source "PrintAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Margins"
.end annotation


# static fields
.field public static final whitelist NO_MARGINS:Landroid/print/PrintAttributes$Margins;


# instance fields
.field private final greylist-max-o mBottomMils:I

.field private final greylist-max-o mLeftMils:I

.field private final greylist-max-o mRightMils:I

.field private final greylist-max-o mTopMils:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1279
    new-instance v0, Landroid/print/PrintAttributes$Margins;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    sput-object v0, Landroid/print/PrintAttributes$Margins;->NO_MARGINS:Landroid/print/PrintAttributes$Margins;

    return-void
.end method

.method public constructor whitelist <init>(IIII)V
    .registers 5

    .line 1294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1295
    iput p2, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    .line 1296
    iput p1, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    .line 1297
    iput p3, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    .line 1298
    iput p4, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    .line 1299
    return-void
.end method

.method static greylist-max-o createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;
    .registers 5

    .line 1345
    new-instance v0, Landroid/print/PrintAttributes$Margins;

    .line 1346
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1347
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1348
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1349
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    .line 1345
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1365
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1366
    return v0

    .line 1368
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1369
    return v1

    .line 1371
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 1372
    return v1

    .line 1374
    :cond_13
    check-cast p1, Landroid/print/PrintAttributes$Margins;

    .line 1375
    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    iget v3, p1, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    if-eq v2, v3, :cond_1c

    .line 1376
    return v1

    .line 1378
    :cond_1c
    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    iget v3, p1, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    if-eq v2, v3, :cond_23

    .line 1379
    return v1

    .line 1381
    :cond_23
    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    iget v3, p1, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    if-eq v2, v3, :cond_2a

    .line 1382
    return v1

    .line 1384
    :cond_2a
    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    iget p1, p1, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    if-eq v2, p1, :cond_31

    .line 1385
    return v1

    .line 1387
    :cond_31
    return v0
.end method

.method public whitelist getBottomMils()I
    .registers 2

    .line 1334
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    return v0
.end method

.method public whitelist getLeftMils()I
    .registers 2

    .line 1307
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    return v0
.end method

.method public whitelist getRightMils()I
    .registers 2

    .line 1325
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    return v0
.end method

.method public whitelist getTopMils()I
    .registers 2

    .line 1316
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1355
    nop

    .line 1356
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 1357
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    add-int/2addr v0, v2

    .line 1358
    mul-int/2addr v0, v1

    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    add-int/2addr v0, v2

    .line 1359
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    add-int/2addr v0, v1

    .line 1360
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1393
    const-string v1, "Margins{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    const-string v1, "leftMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1395
    const-string v1, ", topMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1396
    const-string v1, ", rightMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1397
    const-string v1, ", bottomMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1398
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 1338
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1339
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1340
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1341
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1342
    return-void
.end method
