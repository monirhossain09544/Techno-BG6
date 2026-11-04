.class public final Landroid/os/BatteryStats$LevelStepTracker;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LevelStepTracker"
.end annotation


# instance fields
.field public greylist-max-o mLastStepTime:J

.field public greylist-max-o mNumStepDurations:I

.field public final greylist-max-o mStepDurations:[J


# direct methods
.method public constructor greylist-max-o <init>(I)V
    .registers 4

    .line 1226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1222
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1227
    new-array p1, p1, [J

    iput-object p1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1228
    return-void
.end method

.method public constructor greylist-max-o <init>(I[J)V
    .registers 5

    .line 1230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1222
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1231
    iput p1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1232
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1233
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    invoke-static {p2, v0, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1234
    return-void
.end method

.method private greylist-max-o appendHex(JILjava/lang/StringBuilder;)V
    .registers 10

    .line 1256
    const/4 v0, 0x0

    .line 1257
    :goto_1
    if-ltz p3, :cond_28

    .line 1258
    shr-long v1, p1, p3

    const-wide/16 v3, 0xf

    and-long/2addr v1, v3

    long-to-int v1, v1

    .line 1259
    add-int/lit8 p3, p3, -0x4

    .line 1260
    if-nez v0, :cond_10

    if-nez v1, :cond_10

    .line 1261
    goto :goto_1

    .line 1263
    :cond_10
    nop

    .line 1264
    if-ltz v1, :cond_1e

    const/16 v0, 0x9

    if-gt v1, v0, :cond_1e

    .line 1265
    add-int/lit8 v1, v1, 0x30

    int-to-char v0, v1

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 1267
    :cond_1e
    add-int/lit8 v1, v1, 0x61

    add-int/lit8 v1, v1, -0xa

    int-to-char v0, v1

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1269
    :goto_26
    const/4 v0, 0x1

    goto :goto_1

    .line 1270
    :cond_28
    return-void
.end method


# virtual methods
.method public greylist-max-o addLevelSteps(IJJ)V
    .registers 19

    .line 1469
    move-wide/from16 v0, p4

    iget v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1470
    iget-wide v3, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1471
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_37

    if-lez p1, :cond_37

    .line 1472
    iget-object v5, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1473
    sub-long v3, v0, v3

    .line 1474
    const/4 v6, 0x0

    move v7, v6

    :goto_14
    if-ge v7, p1, :cond_32

    .line 1475
    array-length v8, v5

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1476
    sub-int v8, p1, v7

    int-to-long v8, v8

    div-long v8, v3, v8

    .line 1477
    sub-long/2addr v3, v8

    .line 1478
    const-wide v10, 0xffffffffffL

    cmp-long v12, v8, v10

    if-lez v12, :cond_2c

    .line 1479
    move-wide v8, v10

    .line 1481
    :cond_2c
    or-long/2addr v8, p2

    aput-wide v8, v5, v6

    .line 1474
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 1483
    :cond_32
    add-int/2addr v2, p1

    .line 1484
    array-length p1, v5

    if-le v2, p1, :cond_37

    .line 1485
    array-length v2, v5

    .line 1488
    :cond_37
    iput v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1489
    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1490
    return-void
.end method

.method public greylist-max-o clearTime()V
    .registers 3

    .line 1387
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1388
    return-void
.end method

.method public greylist-max-o computeTimeEstimate(JJ[I)J
    .registers 23

    .line 1433
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1434
    iget v0, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1435
    const-wide/16 v2, -0x1

    if-gtz v0, :cond_b

    .line 1436
    return-wide v2

    .line 1438
    :cond_b
    nop

    .line 1439
    nop

    .line 1440
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v9, v4

    move v7, v6

    move v8, v7

    :goto_13
    if-ge v7, v0, :cond_3f

    .line 1441
    aget-wide v11, v1, v7

    const-wide/high16 v13, 0xff000000000000L

    and-long/2addr v11, v13

    const/16 v13, 0x30

    shr-long/2addr v11, v13

    .line 1443
    aget-wide v13, v1, v7

    const-wide/high16 v15, -0x100000000000000L

    and-long/2addr v13, v15

    const/16 v15, 0x38

    shr-long/2addr v13, v15

    .line 1446
    and-long v13, v13, p1

    cmp-long v13, v13, v4

    if-nez v13, :cond_3c

    .line 1448
    and-long v11, v11, p1

    cmp-long v11, v11, p3

    if-nez v11, :cond_3c

    .line 1450
    add-int/lit8 v8, v8, 0x1

    .line 1451
    aget-wide v11, v1, v7

    const-wide v13, 0xffffffffffL

    and-long/2addr v11, v13

    add-long/2addr v9, v11

    .line 1440
    :cond_3c
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 1455
    :cond_3f
    if-gtz v8, :cond_42

    .line 1456
    return-wide v2

    .line 1459
    :cond_42
    if-eqz p5, :cond_46

    .line 1460
    aput v8, p5, v6

    .line 1465
    :cond_46
    int-to-long v0, v8

    div-long/2addr v9, v0

    const-wide/16 v0, 0x64

    mul-long/2addr v9, v0

    return-wide v9
.end method

.method public greylist-max-o computeTimePerLevel()J
    .registers 10

    .line 1391
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1392
    iget v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1395
    if-gtz v1, :cond_9

    .line 1396
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1398
    :cond_9
    nop

    .line 1399
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v1, :cond_1b

    .line 1400
    aget-wide v5, v0, v4

    const-wide v7, 0xffffffffffL

    and-long/2addr v5, v7

    add-long/2addr v2, v5

    .line 1399
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1402
    :cond_1b
    int-to-long v0, v1

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public greylist-max-o decodeEntryAt(ILjava/lang/String;)V
    .registers 23

    .line 1312
    move-object/from16 v0, p2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1313
    nop

    .line 1315
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v5, v3

    .line 1316
    :goto_b
    const/16 v7, 0x2d

    if-ge v2, v1, :cond_48

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v7, :cond_48

    .line 1317
    add-int/lit8 v2, v2, 0x1

    .line 1318
    sparse-switch v8, :sswitch_data_d8

    goto :goto_47

    .line 1325
    :sswitch_1b
    const-wide/high16 v7, 0x3000000000000L

    or-long/2addr v5, v7

    .line 1327
    goto :goto_47

    .line 1328
    :sswitch_1f
    const-wide/high16 v7, 0x4000000000000L

    or-long/2addr v5, v7

    .line 1330
    goto :goto_47

    .line 1321
    :sswitch_23
    const-wide/high16 v7, 0x1000000000000L

    or-long/2addr v5, v7

    .line 1322
    goto :goto_47

    .line 1331
    :sswitch_27
    const-wide/high16 v7, 0x8000000000000L

    or-long/2addr v5, v7

    .line 1333
    goto :goto_47

    .line 1319
    :sswitch_2b
    or-long/2addr v5, v3

    .line 1320
    goto :goto_47

    .line 1323
    :sswitch_2d
    const-wide/high16 v7, 0x2000000000000L

    or-long/2addr v5, v7

    .line 1324
    goto :goto_47

    .line 1340
    :sswitch_31
    const-wide/high16 v7, 0x300000000000000L    # 3.13151306251402E-294

    or-long/2addr v5, v7

    .line 1342
    goto :goto_47

    .line 1343
    :sswitch_35
    const-wide/high16 v7, 0x400000000000000L

    or-long/2addr v5, v7

    .line 1345
    goto :goto_47

    .line 1336
    :sswitch_39
    const-wide/high16 v7, 0x100000000000000L

    or-long/2addr v5, v7

    .line 1337
    goto :goto_47

    .line 1346
    :sswitch_3d
    const-wide/high16 v7, 0x800000000000000L

    or-long/2addr v5, v7

    goto :goto_47

    .line 1334
    :sswitch_41
    or-long/2addr v5, v3

    .line 1335
    goto :goto_47

    .line 1338
    :sswitch_43
    const-wide/high16 v7, 0x200000000000000L

    or-long/2addr v5, v7

    .line 1339
    nop

    .line 1348
    :goto_47
    goto :goto_b

    .line 1351
    :cond_48
    add-int/lit8 v2, v2, 0x1

    .line 1352
    move-wide v8, v3

    .line 1353
    :goto_4b
    const/16 v10, 0x46

    const/16 v11, 0x66

    const/16 v12, 0x39

    const/4 v13, 0x4

    const/16 v14, 0x41

    const/16 v15, 0x61

    const/16 v3, 0x30

    if-ge v2, v1, :cond_8b

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_8b

    .line 1354
    add-int/lit8 v2, v2, 0x1

    .line 1355
    shl-long/2addr v8, v13

    .line 1356
    if-lt v4, v3, :cond_6e

    if-gt v4, v12, :cond_6e

    .line 1357
    add-int/lit8 v4, v4, -0x30

    int-to-long v3, v4

    add-long/2addr v8, v3

    const-wide/16 v3, 0x0

    goto :goto_4b

    .line 1358
    :cond_6e
    if-lt v4, v15, :cond_7b

    if-gt v4, v11, :cond_7b

    .line 1359
    add-int/lit8 v4, v4, -0x61

    add-int/lit8 v4, v4, 0xa

    int-to-long v3, v4

    add-long/2addr v8, v3

    const-wide/16 v3, 0x0

    goto :goto_4b

    .line 1360
    :cond_7b
    if-lt v4, v14, :cond_88

    if-gt v4, v10, :cond_88

    .line 1361
    add-int/lit8 v4, v4, -0x41

    add-int/lit8 v4, v4, 0xa

    int-to-long v3, v4

    add-long/2addr v8, v3

    const-wide/16 v3, 0x0

    goto :goto_4b

    .line 1353
    :cond_88
    const-wide/16 v3, 0x0

    goto :goto_4b

    .line 1364
    :cond_8b
    add-int/lit8 v2, v2, 0x1

    .line 1365
    const/16 v4, 0x28

    shl-long/2addr v8, v4

    const-wide v18, 0xff0000000000L

    and-long v8, v8, v18

    or-long v4, v5, v8

    .line 1366
    const-wide/16 v16, 0x0

    .line 1367
    :cond_9b
    :goto_9b
    if-ge v2, v1, :cond_c9

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_c9

    .line 1368
    add-int/lit8 v2, v2, 0x1

    .line 1369
    shl-long v16, v16, v13

    .line 1370
    if-lt v6, v3, :cond_b1

    if-gt v6, v12, :cond_b1

    .line 1371
    add-int/lit8 v6, v6, -0x30

    int-to-long v8, v6

    add-long v16, v16, v8

    goto :goto_9b

    .line 1372
    :cond_b1
    if-lt v6, v15, :cond_bd

    if-gt v6, v11, :cond_bd

    .line 1373
    add-int/lit8 v6, v6, -0x61

    add-int/lit8 v6, v6, 0xa

    int-to-long v8, v6

    add-long v16, v16, v8

    goto :goto_9b

    .line 1374
    :cond_bd
    if-lt v6, v14, :cond_9b

    if-gt v6, v10, :cond_9b

    .line 1375
    add-int/lit8 v6, v6, -0x41

    add-int/lit8 v6, v6, 0xa

    int-to-long v8, v6

    add-long v16, v16, v8

    goto :goto_9b

    .line 1378
    :cond_c9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    const-wide v1, 0xffffffffffL

    and-long v1, v16, v1

    or-long/2addr v1, v4

    aput-wide v1, v0, p1

    .line 1379
    return-void

    :sswitch_data_d8
    .sparse-switch
        0x44 -> :sswitch_43
        0x46 -> :sswitch_41
        0x49 -> :sswitch_3d
        0x4f -> :sswitch_39
        0x50 -> :sswitch_35
        0x5a -> :sswitch_31
        0x64 -> :sswitch_2d
        0x66 -> :sswitch_2b
        0x69 -> :sswitch_27
        0x6f -> :sswitch_23
        0x70 -> :sswitch_1f
        0x7a -> :sswitch_1b
    .end sparse-switch
.end method

.method public greylist-max-o encodeEntryAt(ILjava/lang/StringBuilder;)V
    .registers 10

    .line 1273
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    .line 1274
    const-wide v2, 0xffffffffffL

    and-long/2addr v2, v0

    .line 1275
    const-wide v4, 0xff0000000000L

    and-long/2addr v4, v0

    const/16 p1, 0x28

    shr-long/2addr v4, p1

    long-to-int p1, v4

    .line 1277
    const-wide/high16 v4, 0xff000000000000L

    and-long/2addr v4, v0

    const/16 v6, 0x30

    shr-long/2addr v4, v6

    long-to-int v4, v4

    .line 1279
    const-wide/high16 v5, -0x100000000000000L

    and-long/2addr v0, v5

    const/16 v5, 0x38

    shr-long/2addr v0, v5

    long-to-int v0, v0

    .line 1281
    and-int/lit8 v1, v4, 0x3

    add-int/lit8 v1, v1, 0x1

    packed-switch v1, :pswitch_data_98

    goto :goto_41

    .line 1285
    :pswitch_2a
    const/16 v1, 0x7a

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 1284
    :pswitch_30
    const/16 v1, 0x64

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 1283
    :pswitch_36
    const/16 v1, 0x6f

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 1282
    :pswitch_3c
    const/16 v1, 0x66

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1287
    :goto_41
    and-int/lit8 v1, v4, 0x4

    if-eqz v1, :cond_4a

    .line 1288
    const/16 v1, 0x70

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1290
    :cond_4a
    and-int/lit8 v1, v4, 0x8

    if-eqz v1, :cond_53

    .line 1291
    const/16 v1, 0x69

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1293
    :cond_53
    and-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0x1

    packed-switch v1, :pswitch_data_a4

    goto :goto_72

    .line 1297
    :pswitch_5b
    const/16 v1, 0x5a

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 1296
    :pswitch_61
    const/16 v1, 0x44

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 1295
    :pswitch_67
    const/16 v1, 0x4f

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 1294
    :pswitch_6d
    const/16 v1, 0x46

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1299
    :goto_72
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_7b

    .line 1300
    const/16 v1, 0x50

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1302
    :cond_7b
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_84

    .line 1303
    const/16 v0, 0x49

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1305
    :cond_84
    const/16 v0, 0x2d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1306
    int-to-long v4, p1

    const/4 p1, 0x4

    invoke-direct {p0, v4, v5, p1, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    .line 1307
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1308
    const/16 p1, 0x24

    invoke-direct {p0, v2, v3, p1, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    .line 1309
    return-void

    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_36
        :pswitch_30
        :pswitch_2a
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_67
        :pswitch_61
        :pswitch_5b
    .end packed-switch
.end method

.method public greylist-max-o getDurationAt(I)J
    .registers 6

    .line 1237
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o getInitModeAt(I)I
    .registers 6

    .line 1246
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, 0xff000000000000L

    and-long/2addr v0, v2

    const/16 p1, 0x30

    shr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public greylist-max-o getLevelAt(I)I
    .registers 6

    .line 1241
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xff0000000000L

    and-long/2addr v0, v2

    const/16 p1, 0x28

    shr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public greylist-max-o getModModeAt(I)I
    .registers 6

    .line 1251
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v0, v2

    const/16 p1, 0x38

    shr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public greylist-max-o init()V
    .registers 3

    .line 1382
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1383
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1384
    return-void
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 1493
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1494
    iget-object v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    array-length v1, v1

    if-gt v0, v1, :cond_1a

    .line 1497
    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1498
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_19

    .line 1499
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 1498
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1501
    :cond_19
    return-void

    .line 1495
    :cond_1a
    new-instance p1, Landroid/os/ParcelFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "more step durations than available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .registers 6

    .line 1504
    iget v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1505
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1506
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_12

    .line 1507
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1506
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1509
    :cond_12
    return-void
.end method
