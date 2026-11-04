.class public Lcom/android/contacts/activities/PeopleActivity;
.super Lcom/android/contacts/AppCompatContactsActivity;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/PeopleActivity$ContactsView;
    }
.end annotation


# static fields
.field public static final E:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final F:Landroid/os/Handler;


# instance fields
.field public A:Z

.field public final B:Lmv$a;

.field public final C:Lic2$c;

.field public D:Ltz2;

.field public b:Lmz;

.field public c:Lvz;

.field public d:Lcom/android/contacts/model/ContactsAccountTypeManager;

.field public e:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

.field public f:Z

.field public g:Z

.field public final p:Lic2;

.field public q:Ljava/lang/Integer;

.field public r:Lcom/transsion/widgetslib/widget/FootOperationBar;

.field public s:Lcom/android/contacts/list/f;

.field public t:Z

.field public final u:I

.field public v:Lmv;

.field public w:Ljava/lang/Object;

.field public x:Lev2;

.field public y:Landroid/widget/FrameLayout;

.field public z:Landroid/content/SyncStatusObserver;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/contacts/activities/PeopleActivity;->E:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/contacts/activities/PeopleActivity;->F:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/contacts/AppCompatContactsActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->f:Z

    .line 6
    .line 7
    new-instance v1, Li42;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Li42;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->z:Landroid/content/SyncStatusObserver;

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->A:Z

    .line 15
    .line 16
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$a;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$a;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->B:Lmv$a;

    .line 22
    .line 23
    new-instance v0, Lj42;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lj42;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->C:Lic2$c;

    .line 29
    .line 30
    const-string v0, "PeopleActivity"

    .line 31
    .line 32
    const-string v1, "[PeopleActivity]new"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lve1;->p()V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity;->E:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->u:I

    .line 47
    .line 48
    new-instance v0, Lmz;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lmz;-><init>(Landroid/app/Activity;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->b:Lmz;

    .line 54
    .line 55
    invoke-static {}, Lxx;->c()Landroid/app/Application;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lic2;->j(Landroid/content/Context;)Lic2;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->p:Lic2;

    .line 64
    .line 65
    return-void
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
.end method

.method public static synthetic A0(Lcom/android/contacts/activities/PeopleActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->d1()V

    return-void
.end method

.method public static synthetic B0(Lcom/android/contacts/activities/PeopleActivity;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZZFF)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/contacts/activities/PeopleActivity;->Z0(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZZFF)V

    return-void
.end method

.method public static synthetic C0(Lcom/android/contacts/activities/PeopleActivity;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->e1()V

    return-void
.end method

.method public static synthetic D0(Lcom/android/contacts/activities/PeopleActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->X0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E0(Lcom/android/contacts/activities/PeopleActivity;ZLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/activities/PeopleActivity;->Y0(ZLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic F0(Lcom/android/contacts/activities/PeopleActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->a1(I)V

    return-void
.end method

.method public static synthetic H0(Lcom/android/contacts/activities/PeopleActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->c1()V

    return-void
.end method

.method public static synthetic I0(Lcom/android/contacts/activities/PeopleActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->b1(I)V

    return-void
.end method

.method public static synthetic J0(Lcom/android/contacts/activities/PeopleActivity;)Lmv;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/contacts/activities/PeopleActivity;->v:Lmv;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
.end method

.method public static synthetic K0(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/list/ContactListFilter;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->S0(Lcom/android/contacts/list/ContactListFilter;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
.end method

.method public static synthetic L0(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/list/ContactListFilter;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->R0(Lcom/android/contacts/list/ContactListFilter;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
.end method

.method private synthetic X0(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->v:Lmv;

    .line 6
    .line 7
    invoke-virtual {v0}, Lmv;->c()Lcom/android/contacts/list/ContactListFilter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0, p1, v0}, Ly0;->j(Landroid/content/Context;Landroid/content/Intent;Lcom/android/contacts/list/ContactListFilter;)V

    .line 12
    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
.end method

.method private synthetic Y0(ZLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 5

    .line 1
    if-nez p1, :cond_1e

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity;->g:Z

    .line 4
    .line 5
    if-nez p1, :cond_1e

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    cmpl-float p1, p4, p1

    .line 9
    .line 10
    if-nez p1, :cond_1e

    .line 11
    .line 12
    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    cmpg-float p1, p3, p1

    .line 15
    .line 16
    if-gez p1, :cond_1e

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/android/contacts/activities/PeopleActivity;->v:Lmv;

    .line 23
    .line 24
    invoke-virtual {p2}, Lmv;->c()Lcom/android/contacts/list/ContactListFilter;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p0, p1, p2}, Ly0;->j(Landroid/content/Context;Landroid/content/Intent;Lcom/android/contacts/list/ContactListFilter;)V

    .line 29
    .line 30
    .line 31
    :cond_1e
    return-void
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
.end method

.method private synthetic Z0(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZZFF)V
    .registers 7

    .line 1
    iput-boolean p4, p0, Lcom/android/contacts/activities/PeopleActivity;->g:Z

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
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
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
.end method

.method private synthetic a1(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 2
    .line 3
    if-nez v0, :cond_c

    .line 4
    .line 5
    const-string p1, "PeopleActivity"

    .line 6
    .line 7
    const-string v0, "[createViewsAndFragments] list is null"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    if-eqz p1, :cond_1e

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    if-eq p1, v0, :cond_12

    .line 17
    .line 18
    goto :goto_29

    .line 19
    :cond_12
    invoke-static {}, Lhp;->c()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_29

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/contacts/list/f;->Z4()V

    .line 28
    .line 29
    .line 30
    goto :goto_29

    .line 31
    :cond_1e
    invoke-static {}, Lhp;->c()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_29

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/contacts/list/f;->k6()V

    .line 40
    .line 41
    .line 42
    :cond_29
    :goto_29
    return-void
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
.end method

.method private synthetic b1(I)V
    .registers 3

    .line 1
    sget-object p1, Lcom/android/contacts/activities/PeopleActivity;->F:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lp42;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lp42;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
.end method

.method private synthetic c1()V
    .registers 3

    .line 1
    const-string v0, "PeopleActivity"

    .line 2
    .line 3
    const-string v1, "[onProviderStatusChange]"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->r1(Z)V

    .line 10
    .line 11
    .line 12
    return-void
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private synthetic d1()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->t:Z

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->o1()V

    .line 6
    .line 7
    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->p:Lic2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lic2;->o()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->r1(Z)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x7

    .line 18
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->z:Landroid/content/SyncStatusObserver;

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->w:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->e1()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->T0()V

    .line 30
    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "[Performance test][Contacts] loading data end time: ["

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, "]"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "PeopleActivity"

    .line 59
    .line 60
    invoke-static {v2, v1}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->A:Z

    .line 64
    .line 65
    return-void
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
.end method


# virtual methods
.method public final M0()V
    .registers 4

    .line 1
    const-string v0, "createViewsAndFragments"

    .line 2
    .line 3
    invoke-static {v0}, Lt22;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "PeopleActivity"

    .line 7
    .line 8
    const-string v1, "[createViewsAndFragments]"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->h1(Landroidx/fragment/app/FragmentManager;)V

    .line 18
    .line 19
    .line 20
    sget v0, Lcom/android/contacts/R$id;->floating_action_button:I

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->e:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->getImage()Landroid/widget/ImageView;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget v2, Lcom/android/contacts/R$color;->os_ui8_letter_main_colors:I

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->e:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    .line 52
    .line 53
    new-instance v1, Lk42;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lk42;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->e:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    .line 62
    .line 63
    new-instance v1, Ll42;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Ll42;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setOnAnimationUpdateListener(Ld02$h;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->e:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    .line 72
    .line 73
    new-instance v1, Lm42;

    .line 74
    .line 75
    invoke-direct {v1, p0}, Lm42;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setOnAnimationEndListener(Ld02$g;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->U0()V

    .line 82
    .line 83
    .line 84
    sget v0, Lcom/android/contacts/R$id;->foot_operation_bar:I

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/transsion/widgetslib/widget/FootOperationBar;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->r:Lcom/transsion/widgetslib/widget/FootOperationBar;

    .line 93
    .line 94
    new-instance v1, Ln42;

    .line 95
    .line 96
    invoke-direct {v1, p0}, Ln42;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$o;)V

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lt22;->b()V

    .line 103
    .line 104
    .line 105
    return-void
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
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

.method public N0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->D:Ltz2;

    .line 2
    .line 3
    if-eqz v0, :cond_17

    .line 4
    .line 5
    invoke-virtual {v0}, Ltz2;->c()Lvb2;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_17

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->D:Ltz2;

    .line 12
    .line 13
    invoke-virtual {v0}, Ltz2;->c()Lvb2;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lvb2;->a(Landroidx/fragment/app/FragmentManager;)V

    .line 22
    .line 23
    .line 24
    :cond_17
    return-void
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
.end method

.method public final O0()Z
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "[exitSearchOrSelectionModeIfNecessary] isInSearchMode = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->V0()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", isInSelectionMode = "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->W0()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "PeopleActivity"

    .line 35
    .line 36
    invoke-static {v1, v0}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->V0()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v1, 0x1

    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz v0, :cond_4a

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/android/contacts/list/f;->e5()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/contacts/list/f;->h5()Lh42;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, v2}, Lh42;->G(Z)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/contacts/list/f;->y6()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_49

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/android/contacts/list/f;->N5()V

    .line 72
    .line 73
    .line 74
    :cond_49
    return v1

    .line 75
    :cond_4a
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->W0()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_60

    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/android/contacts/list/f;->h5()Lh42;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, v2}, Lh42;->I(Z)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->q1(Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->m1(Z)V

    .line 94
    .line 95
    .line 96
    return v1

    .line 97
    :cond_60
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->v:Lmv;

    .line 98
    .line 99
    invoke-virtual {v0}, Lmv;->c()Lcom/android/contacts/list/ContactListFilter;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Ly0;->g(Lcom/android/contacts/list/ContactListFilter;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_78

    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_78

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->o1()V

    .line 118
    .line 119
    .line 120
    return v1

    .line 121
    :cond_78
    return v2
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
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

.method public P0()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->r:Lcom/transsion/widgetslib/widget/FootOperationBar;

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    return v0

    .line 8
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public Q0()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->y:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final R0(Lcom/android/contacts/list/ContactListFilter;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListFilter;->u()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_10

    .line 6
    .line 7
    const-string p1, "PeopleActivity"

    .line 8
    .line 9
    const-string v0, "[handleFilterChangeForActivity]set mShouldSwitchToAllContacts"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity;->t:Z

    .line 16
    .line 17
    :cond_10
    invoke-static {}, Lmp;->i()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_23

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/16 v0, 0x20

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 34
    .line 35
    .line 36
    :cond_23
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 37
    .line 38
    .line 39
    return-void
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
.end method

.method public final S0(Lcom/android/contacts/list/ContactListFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/contacts/list/f;->P4()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_12

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/f;->b6(Lcom/android/contacts/list/ContactListFilter;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/contacts/list/f;->Q5()V

    .line 17
    .line 18
    .line 19
    :cond_12
    return-void
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
.end method

.method public final T0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->e:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    .line 2
    .line 3
    if-eqz v0, :cond_11

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->i1()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_d

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v1, 0x0

    .line 15
    :goto_e
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_11
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->i1()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    xor-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->f:Z

    .line 25
    .line 26
    return-void
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
.end method

.method public final U0()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public final V0()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 2
    .line 3
    if-eqz v0, :cond_18

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/contacts/list/f;->h5()Lh42;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_18

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/contacts/list/f;->h5()Lh42;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lh42;->r()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_18

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    :goto_19
    return v0
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
.end method

.method public final W0()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 2
    .line 3
    if-eqz v0, :cond_18

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/contacts/list/f;->h5()Lh42;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_18

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/contacts/list/f;->h5()Lh42;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lh42;->s()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_18

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    :goto_19
    return v0
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
.end method

.method public final e1()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->V0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_65

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->W0()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 12
    .line 13
    goto :goto_65

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->v:Lmv;

    .line 15
    .line 16
    invoke-virtual {v0}, Lmv;->c()Lcom/android/contacts/list/ContactListFilter;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_65

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/android/contacts/list/f;->l5()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_2c

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    const-string v1, "PeopleActivity"

    .line 32
    .line 33
    invoke-static {v1, v0}, Lrg1;->h(Ljava/lang/String;I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2b

    .line 38
    .line 39
    const-string v0, "Can not load swipeRefreshLayout, swipeRefreshLayout is null"

    .line 40
    .line 41
    invoke-static {v1, v0}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_2b
    return-void

    .line 45
    :cond_2c
    iget v2, v0, Lcom/android/contacts/list/ContactListFilter;->a:I

    .line 46
    .line 47
    if-nez v2, :cond_45

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilter;->v()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_45

    .line 54
    .line 55
    new-instance v2, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 56
    .line 57
    iget-object v3, v0, Lcom/android/contacts/list/ContactListFilter;->c:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilter;->b:Ljava/lang/String;

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-direct {v2, v3, v0, v4}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_5a

    .line 70
    :cond_45
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilter;->B()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_56

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->d:Lcom/android/contacts/model/ContactsAccountTypeManager;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/android/contacts/model/ContactsAccountTypeManager;->n()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0}, Lc1;->b(Ljava/util/List;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    goto :goto_5a

    .line 87
    :cond_56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :goto_5a
    invoke-static {v0}, Lw03;->d(Ljava/util/List;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_61

    .line 96
    .line 97
    return-void

    .line 98
    :cond_61
    const/4 v0, 0x0

    .line 99
    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 100
    .line 101
    .line 102
    :cond_65
    :goto_65
    return-void
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
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

.method public final f1(Z)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->b:Lmz;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lmz;->a(Landroid/content/Intent;)Lvz;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->c:Lvz;

    .line 12
    .line 13
    const-string v0, "PeopleActivity"

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-static {v0, v1}, Lrg1;->h(Ljava/lang/String;I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_42

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, " processIntent: forNewIntent="

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " intent="

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, " request="

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->c:Lvz;

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v0, p1}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_42
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->c:Lvz;

    .line 68
    .line 69
    invoke-virtual {p1}, Lvz;->h()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const/4 v1, 0x0

    .line 74
    if-nez p1, :cond_54

    .line 75
    .line 76
    const-string p1, "[processIntent]request is inValid"

    .line 77
    .line 78
    invoke-static {v0, p1}, Lrg1;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 82
    .line 83
    .line 84
    return v1

    .line 85
    :cond_54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v2, "[processIntent]action code="

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->c:Lvz;

    .line 96
    .line 97
    invoke-virtual {v2}, Lvz;->a()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {v0, p1}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->c:Lvz;

    .line 112
    .line 113
    invoke-virtual {p1}, Lvz;->a()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    const/16 v0, 0x8c

    .line 118
    .line 119
    if-ne p1, v0, :cond_82

    .line 120
    .line 121
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->c:Lvz;

    .line 122
    .line 123
    invoke-virtual {p1}, Lvz;->c()Landroid/net/Uri;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p0, p1, v1}, Lo51;->k(Landroid/app/Activity;Landroid/net/Uri;I)V

    .line 128
    .line 129
    .line 130
    return v1

    .line 131
    :cond_82
    const/4 p1, 0x1

    .line 132
    return p1
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
.end method

.method public final g1()V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ly0;->a(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilter;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "contactListFilter"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->v:Lmv;

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    invoke-static {v1, v2, v0}, Ly0;->f(Lmv;ILandroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    return-void
    .line 22
.end method

.method public final h1(Landroidx/fragment/app/FragmentManager;)V
    .registers 6

    .line 1
    const-string v0, "contacts-all"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/contacts/list/f;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 10
    .line 11
    if-nez v1, :cond_29

    .line 12
    .line 13
    new-instance v1, Lcom/android/contacts/list/f;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/android/contacts/list/f;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/p;->g3(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget v2, Lcom/android/contacts/R$id;->contacts_list_container:I

    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 31
    .line 32
    invoke-virtual {v1, v2, v3, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 40
    .line 41
    .line 42
    :cond_29
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->v:Lmv;

    .line 45
    .line 46
    invoke-virtual {v0}, Lmv;->d()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p1, v0}, Lcom/android/contacts/list/d;->z2(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->c:Lvz;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/list/f;->e6(Lvz;Z)V

    .line 59
    .line 60
    .line 61
    return-void
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
.end method

.method public final i1()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_c

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/contacts/list/f;->h5()Lh42;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_c

    .line 11
    .line 12
    return v1

    .line 13
    :cond_c
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->V0()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1a

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->W0()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_19

    .line 24
    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v1, 0x0

    .line 27
    :cond_1a
    :goto_1a
    return v1
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
.end method

.method public final j1()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public k1(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_c

    .line 2
    .line 3
    sget v0, Lcom/android/contacts/R$string;->connection_error_message:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->d0(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->Q()V

    .line 11
    .line 12
    .line 13
    :cond_c
    return-void
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
.end method

.method public m1(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->e:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_13

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity;->f:Z

    .line 10
    .line 11
    if-nez p1, :cond_f

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_f
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity;->f:Z

    .line 18
    .line 19
    goto :goto_1e

    .line 20
    :cond_13
    iget-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity;->f:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1c

    .line 23
    .line 24
    const/16 p1, 0x8

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_1c
    iput-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->f:Z

    .line 30
    .line 31
    :goto_1e
    return-void
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
.end method

.method public n1()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->D:Ltz2;

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    new-instance v0, Ltz2;

    .line 6
    .line 7
    invoke-direct {v0}, Ltz2;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->D:Ltz2;

    .line 11
    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->D:Ltz2;

    .line 13
    .line 14
    invoke-virtual {v0}, Ltz2;->c()Lvb2;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lvb2;->b(Landroidx/fragment/app/FragmentManager;)V

    .line 23
    .line 24
    .line 25
    return-void
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
.end method

.method public o1()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->t:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->m1(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/contacts/list/f;->Q5()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->g1()V

    .line 14
    .line 15
    .line 16
    sget v0, Lcom/android/contacts/R$string;->contactsList:I

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    return-void
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/list/f;->onActivityResult(IILandroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
.end method

.method public onBackPressed()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/smartcaller/base/utils/TransactionSafeActivity;->isSafeToCommitTransactions()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->O0()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_15

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 15
    .line 16
    if-eqz v0, :cond_14

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/contacts/list/f;->K5()V

    .line 19
    .line 20
    .line 21
    :cond_14
    return-void

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 23
    .line 24
    if-eqz v0, :cond_1c

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/contacts/list/f;->K5()V

    .line 27
    .line 28
    .line 29
    :cond_1c
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 30
    .line 31
    .line 32
    return-void
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p0}, Lcom/transsion/contacts/SimAutoSyncHelper;->syncAsync(Landroid/content/Context;)V

    .line 1
    const-string v0, "onCreate"

    .line 2
    .line 3
    invoke-static {v0}, Lt22;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "[onCreate] savedState="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "PeopleActivity"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lrg1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "ContactsPerf"

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    invoke-static {v0, v2}, Lrg1;->h(Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_29

    .line 36
    .line 37
    const-string v2, "PeopleActivity.onCreate start"

    .line 38
    .line 39
    invoke-static {v0, v2}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_29
    sget v0, Lcom/android/contacts/R$style;->PeopleActivityTheme_Hios:I

    .line 43
    .line 44
    sget v2, Lcom/android/contacts/R$style;->PeopleActivityTheme_Xos:I

    .line 45
    .line 46
    sget v3, Lcom/android/contacts/R$style;->PeopleActivityTheme_Itel:I

    .line 47
    .line 48
    invoke-static {p0, v0, v2, v3}, Lar3;->S(Landroid/content/Context;III)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lcom/android/contacts/util/ThemeUtils;->f(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    invoke-super {p0, p1}, Lcom/android/contacts/AppCompatContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Lev2;

    .line 58
    .line 59
    invoke-direct {p1, p0}, Lev2;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->x:Lev2;

    .line 63
    .line 64
    invoke-static {p0}, Lcom/android/contacts/model/ContactsAccountTypeManager;->k(Landroid/content/Context;)Lcom/android/contacts/model/ContactsAccountTypeManager;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->d:Lcom/android/contacts/model/ContactsAccountTypeManager;

    .line 69
    .line 70
    invoke-static {p0}, Lmv;->e(Landroid/content/Context;)Lmv;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->v:Lmv;

    .line 75
    .line 76
    invoke-static {}, Lnp3;->d()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-static {}, Ld9;->g()Ld9;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, p1}, Ld9;->h(Z)V

    .line 85
    .line 86
    .line 87
    invoke-static {p0}, Lcom/android/contacts/activities/RequestPermissionsActivity;->K0(Landroid/app/Activity;)Z

    .line 88
    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->f1(Z)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_7c

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/smartcaller/base/utils/TransactionSafeActivity;->finish()V

    .line 98
    .line 99
    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v0, "[onCreate]can not process intent:"

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v1, p1}, Lrg1;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_7c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v2, "[Performance test][Contacts] loading data start time: ["

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 136
    .line 137
    .line 138
    move-result-wide v2

    .line 139
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v2, "]"

    .line 143
    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v1, v0}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->v:Lmv;

    .line 155
    .line 156
    invoke-virtual {v0, p1}, Lmv;->b(Z)V

    .line 157
    .line 158
    .line 159
    sget p1, Lcom/android/contacts/R$layout;->people_activity:I

    .line 160
    .line 161
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 162
    .line 163
    .line 164
    sget p1, Lcom/android/contacts/R$id;->root:I

    .line 165
    .line 166
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    check-cast p1, Landroid/widget/FrameLayout;

    .line 171
    .line 172
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->y:Landroid/widget/FrameLayout;

    .line 173
    .line 174
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->v:Lmv;

    .line 175
    .line 176
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->B:Lmv$a;

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Lmv;->a(Lmv$a;)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->p:Lic2;

    .line 182
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->C:Lic2$c;

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Lic2;->i(Lic2$c;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->M0()V

    .line 189
    .line 190
    .line 191
    invoke-static {}, Lt22;->b()V

    .line 192
    .line 193
    .line 194
    new-instance p1, Lv80;

    .line 195
    .line 196
    invoke-direct {p1}, Lv80;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p0}, Lv80;->d(Landroidx/fragment/app/FragmentActivity;)V

    .line 200
    .line 201
    .line 202
    return-void
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
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
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    const-string v0, "onDestroy"

    .line 2
    .line 3
    invoke-static {v0}, Lt22;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "PeopleActivity"

    .line 7
    .line 8
    const-string v1, "[onDestroy]"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lrg1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->p:Lic2;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->C:Lic2$c;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lic2;->n(Lic2$c;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->v:Lmv;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->B:Lmv$a;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lmv;->h(Lmv$a;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->N0()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->z:Landroid/content/SyncStatusObserver;

    .line 32
    .line 33
    invoke-super {p0}, Lcom/android/contacts/AppCompatContactsActivity;->onDestroy()V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lt22;->b()V

    .line 37
    .line 38
    .line 39
    return-void
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1b

    .line 6
    .line 7
    const/high16 v1, -0x80000000

    .line 8
    .line 9
    and-int/2addr v1, v0

    .line 10
    if-nez v1, :cond_1b

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1b

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/f;->J5(I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1b

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_1b
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/smartcaller/base/utils/TransactionSafeActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "onNewIntent"

    .line 5
    .line 6
    invoke-static {v0}, Lt22;->a(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "[onNewIntent] action = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "PeopleActivity"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->f1(Z)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_48

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/smartcaller/base/utils/TransactionSafeActivity;->finish()V

    .line 46
    .line 47
    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v0, "[onNewIntent]can not process intent:"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Lrg1;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_48
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->v:Lmv;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    invoke-virtual {v0, v2}, Lmv;->b(Z)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 80
    .line 81
    if-eqz v0, :cond_65

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->V0()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_65

    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->c:Lvz;

    .line 92
    .line 93
    invoke-virtual {v0, v2, p1}, Lcom/android/contacts/list/f;->e6(Lvz;Z)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/f;->s5(Landroid/os/Bundle;)V

    .line 100
    .line 101
    .line 102
    :cond_65
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->c:Lvz;

    .line 103
    .line 104
    if-eqz v0, :cond_78

    .line 105
    .line 106
    invoke-virtual {v0}, Lvz;->a()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    const/16 v2, 0xf

    .line 111
    .line 112
    if-ne v0, v2, :cond_78

    .line 113
    .line 114
    iput-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity;->t:Z

    .line 115
    .line 116
    const-string p1, "[onNewIntent]set mShouldSwitchToAllContacts"

    .line 117
    .line 118
    invoke-static {v1, p1}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_78
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->T0()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->U0()V

    .line 125
    .line 126
    .line 127
    invoke-static {}, Lt22;->b()V

    .line 128
    .line 129
    .line 130
    return-void
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
.end method

.method public onPause()V
    .registers 3

    .line 1
    const-string v0, "PeopleActivity"

    .line 2
    .line 3
    const-string v1, "[onPause]"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lrg1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->A:Z

    .line 10
    .line 11
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->w:Ljava/lang/Object;

    .line 15
    .line 16
    if-eqz v0, :cond_14

    .line 17
    .line 18
    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_14
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->e1()V

    .line 22
    .line 23
    .line 24
    return-void
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
.end method

.method public onResume()V
    .registers 5

    .line 1
    const-string v0, "onResume"

    .line 2
    .line 3
    invoke-static {v0}, Lt22;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/smartcaller/base/utils/TransactionSafeActivity;->onResume()V

    .line 7
    .line 8
    .line 9
    const-string v0, "PeopleActivity"

    .line 10
    .line 11
    const-string v1, "[onResume]"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lrg1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ld9;->g()Ld9;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "con_list_show"

    .line 21
    .line 22
    const-wide v2, 0x5977ae4901L

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Ld9;->c(Ljava/lang/String;J)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lt22;->b()V

    .line 31
    .line 32
    .line 33
    return-void
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "PeopleActivity"

    .line 2
    .line 3
    const-string v1, "[onSaveInstanceState]"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lrg1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/smartcaller/base/utils/TransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    return-void
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
.end method

.method public onStart()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/smartcaller/base/utils/TransactionSafeActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    const-string v0, "onStart"

    .line 5
    .line 6
    invoke-static {v0}, Lt22;->a(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity;->F:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v1, Lo42;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lo42;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lt22;->b()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public p1(Z)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "[updateFootOperationBarState] enable: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "PeopleActivity"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->r:Lcom/transsion/widgetslib/widget/FootOperationBar;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->C(IZ)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->r:Lcom/transsion/widgetslib/widget/FootOperationBar;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->C(IZ)V

    .line 33
    .line 34
    .line 35
    return-void
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
.end method

.method public q1(Z)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "[updateFootOperationBarStatus] visible: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "PeopleActivity"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/f;->w6(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->r:Lcom/transsion/widgetslib/widget/FootOperationBar;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->P(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->r:Lcom/transsion/widgetslib/widget/FootOperationBar;

    .line 34
    .line 35
    if-eqz p1, :cond_26

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    goto :goto_28

    .line 39
    :cond_26
    const/16 v1, 0x8

    .line 40
    .line 41
    :goto_28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->x:Lev2;

    .line 45
    .line 46
    if-nez v0, :cond_30

    .line 47
    .line 48
    return-void

    .line 49
    :cond_30
    sget v1, Lcom/android/contacts/R$attr;->OsAltitudePrimary:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lev2;->c(I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz p1, :cond_39

    .line 56
    .line 57
    goto :goto_3b

    .line 58
    :cond_39
    sget v0, Lcom/android/contacts/R$color;->os_actionbar_background:I

    .line 59
    .line 60
    :goto_3b
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 69
    .line 70
    .line 71
    return-void
    .line 72
.end method

.method public final r1(Z)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "[updateViewConfiguration]forceUpdate = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "PeopleActivity"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->p:Lic2;

    .line 24
    .line 25
    invoke-virtual {v0}, Lic2;->k()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez p1, :cond_2d

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->q:Ljava/lang/Integer;

    .line 32
    .line 33
    if-eqz p1, :cond_2d

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2d

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->q:Ljava/lang/Integer;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->s:Lcom/android/contacts/list/f;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->j1()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p1, v0}, Lcom/android/contacts/list/d;->setEnabled(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->U0()V

    .line 62
    .line 63
    .line 64
    return-void
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    iget v1, p0, Lcom/android/contacts/activities/PeopleActivity;->u:I

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    const-string v1, "%s@%d"

    .line 25
    .line 26
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
.end method
