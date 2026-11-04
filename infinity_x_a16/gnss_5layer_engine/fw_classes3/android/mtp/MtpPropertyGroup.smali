.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final greylist-max-o PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private greylist-max-o mColumns:[Ljava/lang/String;

.field private final greylist-max-o mProperties:[Landroid/mtp/MtpPropertyGroup$Property;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    const-class v0, Landroid/mtp/MtpPropertyGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>([I)V
    .registers 8

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    array-length v0, p1

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-array v2, v0, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 64
    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v0, :cond_23

    .line 65
    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v5, p1, v3

    invoke-direct {p0, v5, v1}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v5

    aput-object v5, v4, v3

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 67
    :cond_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 68
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 69
    nop

    :goto_2c
    if-ge v2, p1, :cond_3b

    .line 70
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 72
    :cond_3b
    return-void
.end method

.method private greylist-max-o createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .line 75
    nop

    .line 78
    const/4 v0, 0x4

    const/4 v1, 0x6

    const v2, 0xffff

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_a0

    .line 160
    nop

    .line 161
    sget-object v0, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_88

    .line 152
    :sswitch_27
    nop

    .line 153
    move v0, v1

    goto/16 :goto_88

    .line 157
    :sswitch_2b
    nop

    .line 158
    goto/16 :goto_88

    .line 122
    :sswitch_2e
    nop

    .line 123
    move v0, v2

    goto/16 :goto_88

    .line 133
    :sswitch_32
    nop

    .line 134
    nop

    .line 135
    const-string v3, "album_artist"

    move v0, v2

    goto/16 :goto_88

    .line 129
    :sswitch_39
    nop

    .line 130
    nop

    .line 131
    const-string v3, "album"

    move v0, v2

    goto/16 :goto_88

    .line 104
    :sswitch_40
    nop

    .line 105
    nop

    .line 106
    const-string/jumbo v3, "year"

    move v0, v2

    goto :goto_88

    .line 141
    :sswitch_47
    nop

    .line 142
    nop

    .line 143
    const-string v3, "composer"

    move v0, v2

    goto :goto_88

    .line 137
    :sswitch_4d
    nop

    .line 138
    nop

    .line 139
    const-string v3, "genre"

    move v0, v2

    goto :goto_88

    .line 118
    :sswitch_53
    nop

    .line 119
    nop

    .line 120
    const-string/jumbo v3, "track"

    goto :goto_88

    .line 114
    :sswitch_59
    nop

    .line 115
    nop

    .line 116
    const-string v3, "duration"

    move v0, v1

    goto :goto_88

    .line 101
    :sswitch_5f
    nop

    .line 102
    move v0, v2

    goto :goto_88

    .line 145
    :sswitch_62
    nop

    .line 146
    nop

    .line 147
    const-string v3, "description"

    move v0, v2

    goto :goto_88

    .line 125
    :sswitch_68
    nop

    .line 126
    nop

    .line 127
    const-string v3, "artist"

    move v0, v2

    goto :goto_88

    .line 95
    :sswitch_6e
    nop

    .line 96
    move v0, v2

    goto :goto_88

    .line 111
    :sswitch_71
    nop

    .line 112
    const/16 v0, 0xa

    goto :goto_88

    .line 108
    :sswitch_75
    nop

    .line 109
    move v0, v1

    goto :goto_88

    .line 98
    :sswitch_78
    nop

    .line 99
    move v0, v2

    goto :goto_88

    .line 92
    :sswitch_7b
    nop

    .line 93
    move v0, v2

    goto :goto_88

    .line 89
    :sswitch_7e
    nop

    .line 90
    const/16 v0, 0x8

    goto :goto_88

    .line 86
    :sswitch_82
    nop

    .line 87
    goto :goto_88

    .line 83
    :sswitch_84
    nop

    .line 84
    goto :goto_88

    .line 80
    :sswitch_86
    nop

    .line 81
    move v0, v1

    .line 165
    :goto_88
    if-eqz v3, :cond_99

    .line 166
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v1, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-direct {v1, p0, p1, v0, p2}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v1

    .line 169
    :cond_99
    new-instance p2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v1, -0x1

    invoke-direct {p2, p0, p1, v0, v1}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object p2

    :sswitch_data_a0
    .sparse-switch
        0xdc01 -> :sswitch_86
        0xdc02 -> :sswitch_84
        0xdc03 -> :sswitch_82
        0xdc04 -> :sswitch_7e
        0xdc07 -> :sswitch_7b
        0xdc09 -> :sswitch_78
        0xdc0b -> :sswitch_75
        0xdc41 -> :sswitch_71
        0xdc44 -> :sswitch_6e
        0xdc46 -> :sswitch_68
        0xdc48 -> :sswitch_62
        0xdc4e -> :sswitch_5f
        0xdc89 -> :sswitch_59
        0xdc8b -> :sswitch_53
        0xdc8c -> :sswitch_4d
        0xdc96 -> :sswitch_47
        0xdc99 -> :sswitch_40
        0xdc9a -> :sswitch_39
        0xdc9b -> :sswitch_32
        0xdce0 -> :sswitch_2e
        0xde92 -> :sswitch_2b
        0xde93 -> :sswitch_27
        0xde94 -> :sswitch_2b
        0xde99 -> :sswitch_27
        0xde9a -> :sswitch_27
    .end sparse-switch
.end method

.method private native greylist-max-o format_date_time(J)Ljava/lang/String;
.end method


# virtual methods
.method public blacklist getPropertyList(Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpPropertyList;)I
    .registers 27

    .line 180
    move-object/from16 v1, p0

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v3

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    .line 183
    iget-object v9, v1, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, v11

    move v13, v12

    :goto_15
    if-ge v13, v10, :cond_1a1

    aget-object v4, v9, v13

    .line 184
    iget v0, v4, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_5f

    if-nez v2, :cond_5f

    .line 187
    :try_start_20
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v0
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_24} :catch_5a
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_4e

    move-object/from16 v14, p2

    :try_start_26
    invoke-static {v0, v14}, Landroid/mtp/MtpDatabase;->getObjectPropertiesUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 189
    iget-object v0, v1, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const-string v18, "_data=?"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p1

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v21}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 191
    if-eqz v2, :cond_4a

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 192
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_49} :catch_5a
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_49} :catch_4c

    .line 193
    move-object v2, v11

    .line 199
    :cond_4a
    move-object v0, v2

    goto :goto_62

    .line 197
    :catch_4c
    move-exception v0

    goto :goto_51

    :catch_4e
    move-exception v0

    move-object/from16 v14, p2

    .line 198
    :goto_51
    sget-object v0, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    const-string v5, "Mediaprovider lookup failed"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_62

    .line 195
    :catch_5a
    move-exception v0

    .line 196
    const v0, 0xa801

    return v0

    .line 184
    :cond_5f
    move-object/from16 v14, p2

    .line 201
    move-object v0, v2

    :goto_62
    iget v2, v4, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const-wide/16 v5, 0x0

    sparse-switch v2, :sswitch_data_1aa

    .line 264
    move-object/from16 v2, p4

    move-wide v6, v5

    iget v5, v4, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    sparse-switch v5, :sswitch_data_1f4

    .line 275
    nop

    .line 276
    if-eqz v0, :cond_192

    .line 277
    iget v2, v4, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-wide v6, v5

    goto/16 :goto_192

    .line 256
    :sswitch_7d
    iget v4, v4, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x6

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 257
    goto/16 :goto_19c

    .line 261
    :sswitch_89
    iget v4, v4, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 262
    goto/16 :goto_19c

    .line 239
    :sswitch_95
    move-object/from16 v2, p4

    .line 240
    if-eqz v0, :cond_a0

    .line 241
    iget v5, v4, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    goto :goto_a1

    .line 240
    :cond_a0
    move v5, v12

    .line 242
    :goto_a1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0101T000000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 243
    iget v4, v4, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 244
    goto/16 :goto_19c

    .line 246
    :sswitch_bf
    move-object/from16 v2, p4

    .line 247
    if-eqz v0, :cond_ca

    .line 248
    iget v5, v4, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    goto :goto_cb

    .line 247
    :cond_ca
    move v5, v12

    .line 249
    :goto_cb
    iget v4, v4, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    rem-int/lit16 v5, v5, 0x3e8

    int-to-long v6, v5

    const/4 v5, 0x4

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 251
    goto/16 :goto_19c

    .line 233
    :sswitch_d6
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v5, v2

    const/16 v2, 0x20

    shl-long/2addr v5, v2

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v15

    add-long v6, v5, v15

    .line 235
    iget v2, v4, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v4, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move v4, v2

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 236
    goto/16 :goto_19c

    .line 227
    :sswitch_f8
    iget v2, v4, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    move-wide v6, v5

    iget v5, v4, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v4

    if-eqz v4, :cond_108

    goto :goto_111

    :cond_108
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v4

    int-to-long v6, v4

    .line 227
    :goto_111
    move v4, v2

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 229
    goto/16 :goto_19c

    .line 214
    :sswitch_119
    move-object/from16 v2, p4

    iget v4, v4, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v5

    .line 214
    invoke-virtual {v2, v3, v4, v5}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 216
    goto/16 :goto_19c

    .line 209
    :sswitch_12a
    move-object/from16 v2, p4

    iget v4, v4, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 210
    goto/16 :goto_19c

    .line 224
    :sswitch_137
    move-object/from16 v2, p4

    iget v5, v4, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    move v6, v5

    iget v5, v4, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move v4, v6

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 225
    goto :goto_19c

    .line 204
    :sswitch_147
    iget v2, v4, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v4, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v6, 0x0

    move v4, v2

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 205
    goto :goto_19c

    .line 221
    :sswitch_154
    iget v2, v4, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v4, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v4

    int-to-long v6, v4

    move v4, v2

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 222
    goto :goto_19c

    .line 218
    :sswitch_164
    iget v2, v4, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v4, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v4

    int-to-long v6, v4

    move v4, v2

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 219
    goto :goto_19c

    .line 269
    :sswitch_174
    nop

    .line 270
    if-eqz v0, :cond_17e

    .line 271
    iget v5, v4, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_180

    .line 270
    :cond_17e
    const-string v5, ""

    .line 272
    :goto_180
    iget v4, v4, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 273
    goto :goto_19c

    .line 266
    :sswitch_186
    iget v5, v4, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    move v6, v5

    iget v5, v4, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move v4, v6

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 267
    goto :goto_19c

    .line 278
    :cond_192
    :goto_192
    iget v2, v4, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v4, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move v4, v2

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 183
    :goto_19c
    add-int/lit8 v13, v13, 0x1

    move-object v2, v0

    goto/16 :goto_15

    .line 282
    :cond_1a1
    if-eqz v2, :cond_1a6

    .line 283
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_1a6
    const/16 v0, 0x2001

    return v0

    nop

    :sswitch_data_1aa
    .sparse-switch
        0xdc01 -> :sswitch_164
        0xdc02 -> :sswitch_154
        0xdc03 -> :sswitch_147
        0xdc04 -> :sswitch_137
        0xdc07 -> :sswitch_12a
        0xdc09 -> :sswitch_119
        0xdc0b -> :sswitch_f8
        0xdc41 -> :sswitch_d6
        0xdc44 -> :sswitch_12a
        0xdc4e -> :sswitch_119
        0xdc8b -> :sswitch_bf
        0xdc99 -> :sswitch_95
        0xdce0 -> :sswitch_12a
        0xde92 -> :sswitch_89
        0xde93 -> :sswitch_7d
        0xde94 -> :sswitch_89
        0xde99 -> :sswitch_7d
        0xde9a -> :sswitch_7d
    .end sparse-switch

    :sswitch_data_1f4
    .sparse-switch
        0x0 -> :sswitch_186
        0xffff -> :sswitch_174
    .end sparse-switch
.end method
