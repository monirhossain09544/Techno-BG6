.class public Lcom/android/internal/app/procstats/PssTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "PssTable.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    .line 45
    return-void
.end method

.method public static blacklist mergeStats([JIIJJJJJJJJJ)V
    .registers 37

    .line 98
    move/from16 v0, p2

    move-wide/from16 v1, p5

    move-wide/from16 v3, p11

    move-wide/from16 v5, p17

    add-int/lit8 v7, p1, 0x0

    aget-wide v8, p0, v7

    .line 99
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_3a

    .line 100
    int-to-long v8, v0

    aput-wide v8, p0, v7

    .line 101
    add-int/lit8 v0, p1, 0x1

    aput-wide p3, p0, v0

    .line 102
    add-int/lit8 v0, p1, 0x2

    aput-wide v1, p0, v0

    .line 103
    add-int/lit8 v0, p1, 0x3

    aput-wide p7, p0, v0

    .line 104
    add-int/lit8 v0, p1, 0x4

    aput-wide p9, p0, v0

    .line 105
    add-int/lit8 v0, p1, 0x5

    aput-wide v3, p0, v0

    .line 106
    add-int/lit8 v0, p1, 0x6

    aput-wide p13, p0, v0

    .line 107
    add-int/lit8 v0, p1, 0x7

    aput-wide p15, p0, v0

    .line 108
    add-int/lit8 v0, p1, 0x8

    aput-wide v5, p0, v0

    .line 109
    add-int/lit8 v0, p1, 0x9

    aput-wide p19, p0, v0

    goto :goto_9e

    .line 111
    :cond_3a
    int-to-long v10, v0

    add-long/2addr v10, v8

    aput-wide v10, p0, v7

    .line 113
    add-int/lit8 v7, p1, 0x1

    aget-wide v12, p0, v7

    cmp-long v12, v12, p3

    if-lez v12, :cond_48

    .line 114
    aput-wide p3, p0, v7

    .line 117
    :cond_48
    add-int/lit8 v7, p1, 0x2

    aget-wide v12, p0, v7

    long-to-double v12, v12

    long-to-double v8, v8

    mul-double/2addr v12, v8

    long-to-double v1, v1

    int-to-double v14, v0

    mul-double/2addr v1, v14

    add-double/2addr v12, v1

    long-to-double v0, v10

    div-double/2addr v12, v0

    double-to-long v10, v12

    aput-wide v10, p0, v7

    .line 120
    add-int/lit8 v2, p1, 0x3

    aget-wide v10, p0, v2

    cmp-long v7, v10, p7

    if-gez v7, :cond_62

    .line 121
    aput-wide p7, p0, v2

    .line 124
    :cond_62
    add-int/lit8 v2, p1, 0x4

    aget-wide v10, p0, v2

    cmp-long v7, v10, p9

    if-lez v7, :cond_6c

    .line 125
    aput-wide p9, p0, v2

    .line 128
    :cond_6c
    add-int/lit8 v2, p1, 0x5

    aget-wide v10, p0, v2

    long-to-double v10, v10

    mul-double/2addr v10, v8

    long-to-double v3, v3

    mul-double/2addr v3, v14

    add-double/2addr v10, v3

    div-double/2addr v10, v0

    double-to-long v3, v10

    aput-wide v3, p0, v2

    .line 131
    add-int/lit8 v2, p1, 0x6

    aget-wide v3, p0, v2

    cmp-long v3, v3, p13

    if-gez v3, :cond_83

    .line 132
    aput-wide p13, p0, v2

    .line 135
    :cond_83
    add-int/lit8 v2, p1, 0x7

    aget-wide v2, p0, v2

    .line 138
    add-int/lit8 v2, p1, 0x8

    aget-wide v3, p0, v2

    long-to-double v3, v3

    mul-double/2addr v3, v8

    long-to-double v5, v5

    mul-double/2addr v5, v14

    add-double/2addr v3, v5

    div-double/2addr v3, v0

    double-to-long v0, v3

    aput-wide v0, p0, v2

    .line 141
    add-int/lit8 v0, p1, 0x9

    aget-wide v1, p0, v0

    cmp-long v1, v1, p19

    if-gez v1, :cond_9e

    .line 142
    aput-wide p19, p0, v0

    .line 145
    :cond_9e
    :goto_9e
    return-void
.end method

.method public static blacklist mergeStats([JI[JI)V
    .registers 27

    .line 82
    add-int/lit8 v0, p3, 0x0

    aget-wide v0, p2, v0

    long-to-int v4, v0

    add-int/lit8 v0, p3, 0x1

    aget-wide v5, p2, v0

    add-int/lit8 v0, p3, 0x2

    aget-wide v7, p2, v0

    add-int/lit8 v0, p3, 0x3

    aget-wide v9, p2, v0

    add-int/lit8 v0, p3, 0x4

    aget-wide v11, p2, v0

    add-int/lit8 v0, p3, 0x5

    aget-wide v13, p2, v0

    add-int/lit8 v0, p3, 0x6

    aget-wide v15, p2, v0

    add-int/lit8 v0, p3, 0x7

    aget-wide v17, p2, v0

    add-int/lit8 v0, p3, 0x8

    aget-wide v19, p2, v0

    add-int/lit8 v0, p3, 0x9

    aget-wide v21, p2, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-static/range {v2 .. v22}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JIIJJJJJJJJJ)V

    .line 92
    return-void
.end method

.method public static blacklist writeStatsToProto(Landroid/util/proto/ProtoOutputStream;[JI)V
    .registers 16

    .line 155
    add-int/lit8 v0, p2, 0x0

    aget-wide v0, p1, v0

    const-wide v2, 0x10500000005L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 156
    add-int/lit8 v0, p2, 0x1

    aget-wide v7, p1, v0

    add-int/lit8 v0, p2, 0x2

    aget-wide v9, p1, v0

    add-int/lit8 v0, p2, 0x3

    aget-wide v11, p1, v0

    const-wide v5, 0x10b00000006L

    move-object v4, p0

    invoke-static/range {v4 .. v12}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    .line 160
    add-int/lit8 v0, p2, 0x4

    aget-wide v7, p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-wide v9, p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-wide v11, p1, v0

    const-wide v5, 0x10b00000007L

    invoke-static/range {v4 .. v12}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    .line 164
    add-int/lit8 v0, p2, 0x7

    aget-wide v7, p1, v0

    add-int/lit8 v0, p2, 0x8

    aget-wide v9, p1, v0

    add-int/lit8 v0, p2, 0x9

    aget-wide v11, p1, v0

    const-wide v5, 0x10b00000008L

    invoke-static/range {v4 .. v12}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    .line 168
    return-void
.end method


# virtual methods
.method blacklist getRssMeanAndMax(I)[J
    .registers 7

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v0

    .line 172
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result p1

    .line 173
    add-int/lit8 v1, p1, 0x8

    aget-wide v1, v0, v1

    add-int/lit8 p1, p1, 0x9

    aget-wide v3, v0, p1

    const/4 p1, 0x2

    new-array p1, p1, [J

    const/4 v0, 0x0

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aput-wide v3, p1, v0

    return-object p1
.end method

.method public blacklist mergeStats(IIJJJJJJJJJ)V
    .registers 44

    .line 73
    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-byte v1, v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getOrAddKey(BI)I

    move-result v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v2

    .line 75
    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v3

    .line 76
    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    move-wide/from16 v19, p17

    move-wide/from16 v21, p19

    invoke-static/range {v2 .. v22}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JIIJJJJJJJJJ)V

    .line 78
    return-void
.end method

.method public blacklist mergeStats(Lcom/android/internal/app/procstats/PssTable;)V
    .registers 8

    .line 51
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    .line 52
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2c

    .line 53
    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v2

    .line 54
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 56
    int-to-byte v3, v3

    const/16 v4, 0xa

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/procstats/PssTable;->getOrAddKey(BI)I

    move-result v3

    .line 57
    invoke-virtual {p0, v3}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v4

    .line 58
    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v3

    .line 60
    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v5

    .line 61
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v2

    .line 63
    invoke-static {v4, v3, v5, v2}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JI[JI)V

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 65
    :cond_2c
    return-void
.end method

.method public blacklist writeStatsToProtoForKey(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 4

    .line 148
    invoke-virtual {p0, p2}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v0

    .line 149
    invoke-static {p2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result p2

    .line 150
    invoke-static {p1, v0, p2}, Lcom/android/internal/app/procstats/PssTable;->writeStatsToProto(Landroid/util/proto/ProtoOutputStream;[JI)V

    .line 151
    return-void
.end method
