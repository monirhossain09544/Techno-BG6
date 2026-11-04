.class public Ltv$b;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 62

    .line 1
    const-string v0, "name_raw_contact_id"

    .line 2
    .line 3
    const-string v1, "display_name_source"

    .line 4
    .line 5
    const-string v2, "lookup"

    .line 6
    .line 7
    const-string v3, "display_name"

    .line 8
    .line 9
    const-string v4, "display_name_alt"

    .line 10
    .line 11
    const-string v5, "phonetic_name"

    .line 12
    .line 13
    const-string v6, "photo_id"

    .line 14
    .line 15
    const-string/jumbo v7, "starred"

    .line 16
    .line 17
    .line 18
    const-string v8, "contact_presence"

    .line 19
    .line 20
    const-string v9, "contact_status"

    .line 21
    .line 22
    const-string v10, "contact_status_ts"

    .line 23
    .line 24
    const-string v11, "contact_status_res_package"

    .line 25
    .line 26
    const-string v12, "contact_status_label"

    .line 27
    .line 28
    const-string v13, "contact_id"

    .line 29
    .line 30
    const-string v14, "raw_contact_id"

    .line 31
    .line 32
    const-string v15, "account_name"

    .line 33
    .line 34
    const-string v16, "account_type"

    .line 35
    .line 36
    const-string v17, "data_set"

    .line 37
    .line 38
    const-string v18, "dirty"

    .line 39
    .line 40
    const-string/jumbo v19, "version"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v20, "sourceid"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v21, "sync1"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v22, "sync2"

    .line 50
    .line 51
    .line 52
    const-string/jumbo v23, "sync3"

    .line 53
    .line 54
    .line 55
    const-string/jumbo v24, "sync4"

    .line 56
    .line 57
    .line 58
    const-string v25, "deleted"

    .line 59
    .line 60
    const-string v26, "data_id"

    .line 61
    .line 62
    const-string v27, "data1"

    .line 63
    .line 64
    const-string v28, "data2"

    .line 65
    .line 66
    const-string v29, "data3"

    .line 67
    .line 68
    const-string v30, "data4"

    .line 69
    .line 70
    const-string v31, "data5"

    .line 71
    .line 72
    const-string v32, "data6"

    .line 73
    .line 74
    const-string v33, "data7"

    .line 75
    .line 76
    const-string v34, "data8"

    .line 77
    .line 78
    const-string v35, "data9"

    .line 79
    .line 80
    const-string v36, "data10"

    .line 81
    .line 82
    const-string v37, "data11"

    .line 83
    .line 84
    const-string v38, "data12"

    .line 85
    .line 86
    const-string v39, "data13"

    .line 87
    .line 88
    const-string v40, "data14"

    .line 89
    .line 90
    const-string v41, "data15"

    .line 91
    .line 92
    const-string v42, "data_sync1"

    .line 93
    .line 94
    const-string v43, "data_sync2"

    .line 95
    .line 96
    const-string v44, "data_sync3"

    .line 97
    .line 98
    const-string v45, "data_sync4"

    .line 99
    .line 100
    const-string v46, "data_version"

    .line 101
    .line 102
    const-string v47, "is_primary"

    .line 103
    .line 104
    const-string v48, "is_super_primary"

    .line 105
    .line 106
    const-string v49, "mimetype"

    .line 107
    .line 108
    const-string v50, "group_sourceid"

    .line 109
    .line 110
    const-string v51, "mode"

    .line 111
    .line 112
    const-string v52, "chat_capability"

    .line 113
    .line 114
    const-string/jumbo v53, "status"

    .line 115
    .line 116
    .line 117
    const-string/jumbo v54, "status_res_package"

    .line 118
    .line 119
    .line 120
    const-string/jumbo v55, "status_icon"

    .line 121
    .line 122
    .line 123
    const-string/jumbo v56, "status_label"

    .line 124
    .line 125
    .line 126
    const-string/jumbo v57, "status_ts"

    .line 127
    .line 128
    .line 129
    const-string v58, "photo_uri"

    .line 130
    .line 131
    const-string v59, "send_to_voicemail"

    .line 132
    .line 133
    const-string v60, "custom_ringtone"

    .line 134
    .line 135
    const-string v61, "is_user_profile"

    .line 136
    .line 137
    filled-new-array/range {v0 .. v61}, [Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sput-object v0, Ltv$b;->a:[Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v0}, Lcom/google/common/collect/Lists;->k([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {}, Lmp;->g()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_9d

    .line 152
    .line 153
    const-string v1, "carrier_presence"

    .line 154
    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    :cond_9d
    sget-boolean v1, Lsz;->a:Z

    .line 159
    .line 160
    if-eqz v1, :cond_bb

    .line 161
    .line 162
    const-string v1, "send_to_voicemail_vt"

    .line 163
    .line 164
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    const-string v1, "indicate_phone_or_sim_contact"

    .line 168
    .line 169
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    const-string v1, "index_in_sim"

    .line 173
    .line 174
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    const-string v1, "is_sdn_contact"

    .line 178
    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    const-string v1, "is_additional_number"

    .line 183
    .line 184
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    goto :goto_c0

    .line 188
    :cond_bb

    .line 191
    .line 192
    .line 193
    :goto_c0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    new-array v1, v1, [Ljava/lang/String;

    .line 198
    .line 199
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, [Ljava/lang/String;

    .line 204
    .line 205
    sput-object v0, Ltv$b;->b:[Ljava/lang/String;

    .line 206
    .line 207
    return-void
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
.end method
