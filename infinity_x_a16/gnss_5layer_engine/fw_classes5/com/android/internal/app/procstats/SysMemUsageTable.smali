.class public Lcom/android/internal/app/procstats/SysMemUsageTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "SysMemUsageTable.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    .line 54
    return-void
.end method

.method private blacklist dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8

    .line 177
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    int-to-byte p2, p4

    invoke-virtual {p0, p2, p5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide p3

    const-wide/16 v0, 0x400

    mul-long/2addr p3, v0

    invoke-static {p1, p3, p4}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 180
    const-string p3, " min, "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    add-int/lit8 p3, p5, 0x1

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide p3

    mul-long/2addr p3, v0

    invoke-static {p1, p3, p4}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 182
    const-string p3, " avg, "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    add-int/lit8 p5, p5, 0x2

    invoke-virtual {p0, p2, p5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide p2

    mul-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 184
    const-string p2, " max"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public static blacklist mergeSysMemUsage([JI[JI)V
    .registers 20

    .line 117
    add-int/lit8 v0, p1, 0x0

    aget-wide v1, p0, v0

    .line 118
    add-int/lit8 v3, p3, 0x0

    aget-wide v3, p2, v3

    .line 119
    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    const/16 v8, 0x10

    const/4 v9, 0x1

    if-nez v7, :cond_21

    .line 120
    aput-wide v3, p0, v0

    .line 121
    nop

    :goto_14
    if-ge v9, v8, :cond_66

    .line 122
    add-int v0, p1, v9

    add-int v1, p3, v9

    aget-wide v1, p2, v1

    aput-wide v1, p0, v0

    .line 121
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    .line 124
    :cond_21
    cmp-long v5, v3, v5

    if-lez v5, :cond_66

    .line 125
    add-long v5, v1, v3

    aput-wide v5, p0, v0

    .line 126
    nop

    :goto_2a
    if-ge v9, v8, :cond_66

    .line 127
    add-int v0, p1, v9

    aget-wide v10, p0, v0

    add-int v7, p3, v9

    aget-wide v12, p2, v7

    cmp-long v10, v10, v12

    if-lez v10, :cond_3c

    .line 128
    aget-wide v10, p2, v7

    aput-wide v10, p0, v0

    .line 130
    :cond_3c
    add-int/lit8 v10, v0, 0x1

    aget-wide v11, p0, v10

    long-to-double v11, v11

    long-to-double v13, v1

    mul-double/2addr v11, v13

    add-int/lit8 v13, v7, 0x1

    aget-wide v13, p2, v13

    long-to-double v13, v13

    move v15, v9

    long-to-double v8, v3

    mul-double/2addr v13, v8

    add-double/2addr v11, v13

    long-to-double v8, v5

    div-double/2addr v11, v8

    double-to-long v8, v11

    aput-wide v8, p0, v10

    .line 134
    add-int/lit8 v0, v0, 0x2

    aget-wide v8, p0, v0

    add-int/lit8 v7, v7, 0x2

    aget-wide v10, p2, v7

    cmp-long v8, v8, v10

    if-gez v8, :cond_61

    .line 135
    aget-wide v7, p2, v7

    aput-wide v7, p0, v0

    .line 126
    :cond_61
    add-int/lit8 v9, v15, 0x3

    const/16 v8, 0x10

    goto :goto_2a

    .line 139
    :cond_66
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V
    .registers 23

    .line 143
    move-object/from16 v1, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 144
    const/4 v9, 0x0

    move v10, v9

    const/4 v0, -0x1

    :goto_9
    array-length v2, v6

    if-ge v10, v2, :cond_89

    .line 145
    nop

    .line 146
    move v11, v9

    const/4 v2, -0x1

    :goto_f
    array-length v3, v7

    if-ge v11, v3, :cond_84

    .line 147
    aget v3, v6, v10

    .line 148
    aget v4, v7, v11

    .line 149
    add-int v5, v3, v4

    mul-int/lit8 v5, v5, 0x10

    .line 150
    int-to-byte v12, v5

    move-object/from16 v13, p0

    invoke-virtual {v13, v12, v9}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v14

    .line 151
    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-lez v12, :cond_7f

    .line 152
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    array-length v12, v6

    const/4 v8, 0x1

    if-le v12, v8, :cond_38

    .line 154
    if-eq v0, v3, :cond_32

    .line 155
    move v0, v3

    goto :goto_33

    :cond_32
    const/4 v0, -0x1

    .line 154
    :goto_33
    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 156
    move v12, v3

    goto :goto_39

    .line 153
    :cond_38
    move v12, v0

    .line 158
    :goto_39
    array-length v0, v7

    if-le v0, v8, :cond_47

    .line 159
    nop

    .line 160
    if-eq v2, v4, :cond_41

    move v0, v4

    goto :goto_42

    :cond_41
    const/4 v0, -0x1

    .line 159
    :goto_42
    invoke-static {v1, v0, v9}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 161
    move v8, v4

    goto :goto_48

    .line 158
    :cond_47
    move v8, v2

    .line 163
    :goto_48
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 165
    const-string v0, " samples:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    const-string v3, "  Cached"

    move v4, v5

    const/4 v5, 0x1

    move-object/from16 v2, p2

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 167
    const-string v3, "  Free"

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 168
    const-string v3, "  ZRam"

    const/4 v5, 0x7

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 169
    const-string v3, "  Kernel"

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 170
    const-string v3, "  Native"

    const/16 v5, 0xd

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    move v2, v8

    move v0, v12

    .line 146
    :cond_7f
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    goto :goto_f

    .line 144
    :cond_84
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    goto :goto_9

    .line 174
    :cond_89
    return-void
.end method

.method public blacklist getTotalMemUsage()[J
    .registers 7

    .line 94
    const/16 v0, 0x10

    new-array v0, v0, [J

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v1

    .line 96
    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_1e

    .line 97
    invoke-virtual {p0, v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v4

    .line 99
    invoke-virtual {p0, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v5

    .line 100
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v4

    .line 102
    invoke-static {v0, v2, v5, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 104
    :cond_1e
    return-object v0
.end method

.method public blacklist mergeStats(I[JI)V
    .registers 5

    .line 82
    int-to-byte p1, p1

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getOrAddKey(BI)I

    move-result p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v0

    .line 85
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result p1

    .line 87
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    .line 88
    return-void
.end method

.method public blacklist mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V
    .registers 7

    .line 62
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v0

    .line 63
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1d

    .line 64
    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v2

    .line 66
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 67
    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v4

    .line 68
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v2

    .line 70
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 72
    :cond_1d
    return-void
.end method
