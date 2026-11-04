.class public Lcom/android/server/location/provider/KernelLocationHook;
.super Ljava/lang/Object;
.source "KernelLocationHook.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHardwareGnssFix()Landroid/location/Location;
    .registers 3

    .line 84
    const-string v0, "persist.sys.kernel.gps.coords"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_38

    .line 86
    :cond_11
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 87
    const v1, 0x4059999a    # 3.4f

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 88
    const-wide v1, 0x402e666666666666L    # 15.2

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 89
    const v1, 0x40333333    # 2.8f

    invoke-virtual {v0, v1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    .line 90
    const-wide v1, 0x40e5f90000000000L    # 45000.0

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setElapsedRealtimeUncertaintyNanos(D)V

    .line 91
    invoke-static {v0}, Lcom/android/server/location/provider/KernelLocationHook;->sanitizeAndOverrideLocation(Landroid/location/Location;)V

    .line 92
    return-object v0

    .line 85
    :cond_38
    :goto_38
    const/4 v0, 0x0

    return-object v0
.end method

.method public static sanitizeAndOverrideLocation(Landroid/location/Location;)V
    .registers 22

    .line 12
    move-object/from16 v0, p0

    if-nez v0, :cond_5

    return-void

    .line 13
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Location;->setMock(Z)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 16
    if-eqz v2, :cond_19

    .line 17
    const-string v3, "mockLocation"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 18
    const-string v3, "isMock"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 21
    :cond_19
    const-string v3, "gps"

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 22
    if-nez v2, :cond_2c

    .line 23
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 25
    :cond_2c
    const-string v3, "satellites"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-gtz v4, :cond_5e

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 27
    const-wide/16 v6, 0x1b58

    div-long v6, v4, v6

    const-wide/16 v8, 0x4

    rem-long/2addr v6, v8

    long-to-int v7, v6

    add-int/lit8 v7, v7, 0xc

    .line 28
    const-wide/16 v10, 0xbb8

    div-long v10, v4, v10

    rem-long/2addr v10, v8

    long-to-int v6, v10

    add-int/lit8 v6, v6, 0x21

    .line 29
    const-wide/16 v10, 0x1388

    div-long/2addr v4, v10

    rem-long/2addr v4, v8

    long-to-int v5, v4

    add-int/lit8 v5, v5, 0x29

    .line 30
    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    const-string v3, "meanCn0"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    const-string v3, "maxCn0"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    :cond_5e
    invoke-virtual {v0, v2}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v2

    if-nez v2, :cond_75

    .line 36
    const-wide v2, 0x402d99999999999aL    # 14.8

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 37
    const v2, 0x404ccccd    # 3.2f

    invoke-virtual {v0, v2}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    .line 39
    :cond_75
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v2

    if-nez v2, :cond_89

    .line 40
    const-wide v2, 0x40e5f90000000000L    # 45000.0

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setElapsedRealtimeUncertaintyNanos(D)V

    goto :goto_89

    .line 42
    :cond_84
    if-eqz v2, :cond_89

    .line 43
    invoke-virtual {v0, v2}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 46
    :cond_89
    :goto_89
    const-string v2, "persist.sys.kernel.gps.coords"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    if-eqz v2, :cond_125

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_125

    .line 49
    :try_start_99
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 50
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_123

    .line 51
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 52
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 53
    array-length v3, v2

    const/4 v9, 0x3

    if-lt v3, v9, :cond_c7

    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    goto :goto_cc

    :cond_c7
    const-wide v3, 0x402e666666666666L    # 15.2

    .line 54
    :goto_cc
    array-length v10, v2

    const/4 v11, 0x4

    if-lt v10, v11, :cond_db

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto :goto_de

    :cond_db
    const v2, 0x4059999a    # 3.4f

    .line 55
    :goto_de
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    .line 56
    const-wide/16 v11, 0x29

    rem-long v13, v9, v11
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_e6} :catch_124

    const-wide/16 v15, 0x14

    sub-long/2addr v13, v15

    long-to-double v13, v13

    const-wide v17, 0x3e7ad7f29abcaf48L    # 1.0E-7

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v17

    .line 57
    const-wide/16 v19, 0x7

    :try_start_f6
    div-long v19, v9, v19

    rem-long v19, v19, v11
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_fa} :catch_124

    sub-long v11, v19, v15

    long-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v17

    .line 58
    add-double/2addr v5, v13

    :try_start_103
    invoke-virtual {v0, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    .line 59
    add-double/2addr v7, v11

    invoke-virtual {v0, v7, v8}, Landroid/location/Location;->setLongitude(D)V

    .line 60
    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setAltitude(D)V

    .line 61
    invoke-virtual {v0, v2}, Landroid/location/Location;->setAccuracy(F)V

    .line 62
    const v2, 0x40333333    # 2.8f

    invoke-virtual {v0, v2}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 64
    invoke-virtual {v0, v9, v10}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/location/Location;->setMock(Z)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_123} :catch_124

    .line 68
    :cond_123
    goto :goto_125

    .line 67
    :catch_124
    move-exception v0

    .line 70
    :cond_125
    :goto_125
    return-void
.end method

.method public static sanitizeAndOverrideResult(Landroid/location/LocationResult;)Landroid/location/LocationResult;
    .registers 4

    .line 73
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_4
    invoke-virtual {p0}, Landroid/location/LocationResult;->asList()Ljava/util/List;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_1d

    .line 76
    const/4 v1, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-static {v2}, Lcom/android/server/location/provider/KernelLocationHook;->sanitizeAndOverrideLocation(Landroid/location/Location;)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 80
    :cond_1d
    return-object p0
.end method
