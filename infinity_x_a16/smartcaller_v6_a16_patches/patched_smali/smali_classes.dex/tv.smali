.class public Ltv;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv$a;,
        Ltv$c;,
        Ltv$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Lcom/android/contacts/model/Contact;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/String; = "tv"

.field public static l:Lcom/android/contacts/model/Contact;


# instance fields
.field public final a:Landroid/net/Uri;

.field public b:Landroid/net/Uri;

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public f:Z

.field public g:Lcom/android/contacts/model/Contact;

.field public h:Landroidx/loader/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader<",
            "Lcom/android/contacts/model/Contact;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .registers 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Ltv;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Ltv;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZZZ)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Ltv;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V
    .registers 7

    .line 4
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/google/common/collect/Sets;->f()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Ltv;->i:Ljava/util/Set;

    const-string p1, " ? LIMIT 7"

    .line 6
    iput-object p1, p0, Ltv;->j:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Ltv;->b:Landroid/net/Uri;

    .line 8
    iput-object p2, p0, Ltv;->a:Landroid/net/Uri;

    .line 9
    iput-boolean p3, p0, Ltv;->c:Z

    .line 10
    iput-boolean p4, p0, Ltv;->d:Z

    .line 11
    iput-boolean p5, p0, Ltv;->e:Z

    .line 12
    iput-boolean p6, p0, Ltv;->f:Z

    return-void
.end method

.method public static i(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v13, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "directory"

    .line 19
    .line 20
    invoke-virtual {v12, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    const-string v0, "display_name"

    .line 33
    .line 34
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v15, v0

    .line 39
    const-string v6, "display_name_alt"

    .line 40
    .line 41
    invoke-virtual {v13, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v16

    .line 45
    const-string v0, "display_name_source"

    .line 46
    .line 47
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    const-string v0, "photo_uri"

    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    invoke-virtual {v13, v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v14

    .line 58
    new-instance v10, Lcom/android/contacts/model/Contact;

    .line 59
    .line 60
    move-object v0, v10

    .line 61
    const/4 v6, 0x0

    .line 62
    const-wide/16 v7, -0x1

    .line 63
    .line 64
    const-wide/16 v17, -0x1

    .line 65
    .line 66
    move-object/from16 v23, v10

    .line 67
    .line 68
    move-wide/from16 v9, v17

    .line 69
    .line 70
    const-wide/16 v17, 0x0

    .line 71
    .line 72
    move-object/from16 v24, v13

    .line 73
    .line 74
    move-wide/from16 v12, v17

    .line 75
    .line 76
    const/16 v17, 0x0

    .line 77
    .line 78
    const/16 v18, 0x0

    .line 79
    .line 80
    const/16 v19, 0x0

    .line 81
    .line 82
    const/16 v20, 0x0

    .line 83
    .line 84
    const/16 v21, 0x0

    .line 85
    .line 86
    const/16 v22, 0x0

    .line 87
    .line 88
    invoke-direct/range {v0 .. v22}, Lcom/android/contacts/model/Contact;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lcom/google/common/collect/ImmutableMap$b;

    .line 92
    .line 93
    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$b;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    move-object/from16 v1, v23

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Lcom/android/contacts/model/Contact;->Z(Lcom/google/common/collect/ImmutableMap;)V

    .line 103
    .line 104
    .line 105
    const-string v0, "account_name"

    .line 106
    .line 107
    move-object/from16 v2, v24

    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v20

    .line 114
    const-string v0, "displayName"

    .line 115
    .line 116
    move-object/from16 v3, p0

    .line 117
    .line 118
    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v18

    .line 122
    const-string v0, "exportSupport"

    .line 123
    .line 124
    if-eqz v20, :cond_90

    .line 125
    .line 126
    const-string v3, "account_type"

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v21

    .line 132
    const/16 v19, 0x0

    .line 133
    .line 134
    const/4 v3, 0x1

    .line 135
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 136
    .line 137
    .line 138
    move-result v22

    .line 139
    move-object/from16 v17, v1

    .line 140
    .line 141
    invoke-virtual/range {v17 .. v22}, Lcom/android/contacts/model/Contact;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    goto :goto_a0

    .line 145
    :cond_90
    const/16 v19, 0x0

    .line 146
    .line 147
    const/16 v20, 0x0

    .line 148
    .line 149
    const/16 v21, 0x0

    .line 150
    .line 151
    const/4 v3, 0x2

    .line 152
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 153
    .line 154
    .line 155
    move-result v22

    .line 156
    move-object/from16 v17, v1

    .line 157
    .line 158
    invoke-virtual/range {v17 .. v22}, Lcom/android/contacts/model/Contact;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    :goto_a0
    new-instance v0, Landroid/content/ContentValues;

    .line 162
    .line 163
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 164
    .line 165
    .line 166
    const/4 v3, -0x1

    .line 167
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    const-string v5, "_id"

    .line 172
    .line 173
    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    const-string v4, "contact_id"

    .line 181
    .line 182
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    .line 184
    .line 185
    new-instance v3, Lcom/android/contacts/model/RawContact;

    .line 186
    .line 187
    invoke-direct {v3, v0}, Lcom/android/contacts/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    .line 188
    .line 189
    .line 190
    const-string/jumbo v0, "vnd.android.cursor.item/contact"

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    :cond_c8
    :goto_c8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_f9

    .line 206
    .line 207
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    check-cast v4, Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    if-nez v5, :cond_f2

    .line 218
    .line 219
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    const/4 v6, 0x0

    .line 224
    :goto_df
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    if-ge v6, v7, :cond_c8

    .line 229
    .line 230
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-static {v1, v4, v7}, Ltv;->o(Lcom/android/contacts/model/Contact;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 235
    .line 236
    .line 237
    invoke-static {v3, v7, v4}, Ltv;->q(Lcom/android/contacts/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    add-int/lit8 v6, v6, 0x1

    .line 241
    .line 242
    goto :goto_df

    .line 243
    :cond_f2
    invoke-static {v1, v4, v5}, Ltv;->o(Lcom/android/contacts/model/Contact;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 244
    .line 245
    .line 246
    invoke-static {v3, v5, v4}, Ltv;->q(Lcom/android/contacts/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    goto :goto_c8

    .line 250
    :cond_f9
    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    .line 251
    .line 252
    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$a;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->l()Lcom/google/common/collect/ImmutableList;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v1, v0}, Lcom/android/contacts/model/Contact;->V(Lcom/google/common/collect/ImmutableList;)V

    .line 264
    .line 265
    .line 266
    return-object v1
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
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
.end method

.method public static o(Lcom/android/contacts/model/Contact;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    return-void

    .line 4
    :cond_3
    const-string/jumbo v0, "vnd.android.cursor.item/phone_v2"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_15

    .line 12
    .line 13
    const-string p1, "data1"

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/Contact;->a(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_15
    return-void
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

.method public static q(Lcom/android/contacts/model/RawContact;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mimetype"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p2, -0x1

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string v1, "_id"

    .line 17
    .line 18
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    :cond_18
    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_3c

    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    instance-of v3, v2, Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v3, :cond_32

    .line 44
    .line 45
    check-cast v2, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_18

    .line 51
    :cond_32
    instance-of v3, v2, Ljava/lang/Integer;

    .line 52
    .line 53
    if-eqz v3, :cond_18

    .line 54
    .line 55
    check-cast v2, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    .line 59
    .line 60
    goto :goto_18

    .line 61
    :cond_3c
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContact;->a(Landroid/content/ContentValues;)V

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


# virtual methods
.method public final a(Lcom/android/contacts/model/Contact;)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lxw0;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->A()Lcom/google/common/collect/ImmutableList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_12
    if-ge v3, v1, :cond_3a

    .line 20
    .line 21
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/android/contacts/model/RawContact;

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContact;->v()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    move v6, v2

    .line 36
    :goto_23
    if-ge v6, v5, :cond_37

    .line 37
    .line 38
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    check-cast v7, Ly60;

    .line 43
    .line 44
    instance-of v8, v7, Lq52;

    .line 45
    .line 46
    if-eqz v8, :cond_34

    .line 47
    .line 48
    check-cast v7, Lq52;

    .line 49
    .line 50
    invoke-virtual {v7, v0}, Lq52;->t(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_34
    add-int/lit8 v6, v6, 0x1

    .line 54
    .line 55
    goto :goto_23

    .line 56
    :cond_37
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_12

    .line 59
    :cond_3a
    return-void
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

.method public final b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V
    .registers 7

    .line 1
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3e

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_2f

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq v0, v1, :cond_23

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-ne v0, v1, :cond_1b

    .line 15
    .line 16
    sget-object v0, Ltv$b;->b:[Ljava/lang/String;

    .line 17
    .line 18
    aget-object v0, v0, p3

    .line 19
    .line 20
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 25
    .line 26
    .line 27
    goto :goto_3e

    .line 28
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string p2, "Invalid or unhandled data type"

    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_23
    sget-object v0, Ltv$b;->b:[Ljava/lang/String;

    .line 37
    .line 38
    aget-object v0, v0, p3

    .line 39
    .line 40
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_3e

    .line 48
    :cond_2f
    sget-object v0, Ltv$b;->b:[Ljava/lang/String;

    .line 49
    .line 50
    aget-object v0, v0, p3

    .line 51
    .line 52
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 61
    .line 62
    .line 63
    :cond_3e
    :goto_3e
    return-void
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

.method public c(Lcom/android/contacts/model/Contact;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Ltv;->t()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isReset()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_5f

    .line 9
    .line 10
    if-nez p1, :cond_c

    .line 11
    .line 12
    goto :goto_5f

    .line 13
    :cond_c
    iput-object p1, p0, Ltv;->g:Lcom/android/contacts/model/Contact;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->I()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_5a

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->u()Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Ltv;->b:Landroid/net/Uri;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->G()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_53

    .line 32
    .line 33
    sget-object p1, Ltv;->k:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, "Registering content observer for "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Ltv;->b:Landroid/net/Uri;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {p1, v0}, Lrg1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Ltv;->h:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 58
    .line 59
    if-nez p1, :cond_43

    .line 60
    .line 61
    new-instance p1, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 62
    .line 63
    invoke-direct {p1, p0}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Landroidx/loader/content/Loader;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Ltv;->h:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 67
    .line 68
    :cond_43
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object v0, p0, Ltv;->b:Landroid/net/Uri;

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    iget-object v2, p0, Ltv;->h:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 80
    .line 81
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    .line 83
    .line 84
    :cond_53
    iget-boolean p1, p0, Ltv;->d:Z

    .line 85
    .line 86
    if-eqz p1, :cond_5a

    .line 87
    .line 88
    invoke-virtual {p0}, Ltv;->p()V

    .line 89
    .line 90
    .line 91
    :cond_5a
    iget-object p1, p0, Ltv;->g:Lcom/android/contacts/model/Contact;

    .line 92
    .line 93
    invoke-super {p0, p1}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_5f
    :goto_5f
    return-void
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
.end method

.method public final d(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;
    .registers 12

    .line 1
    const-string v0, "entities"

    .line 2
    .line 3
    invoke-static {p2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    sget-object v3, Ltv$b;->b:[Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "raw_contact_id"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Ltv;->f:Z

    .line 20
    .line 21
    if-eqz v1, :cond_19

    .line 22
    .line 23
    const-string v1, " Limit 7 "

    .line 24
    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    const-string v1, " "

    .line 27
    .line 28
    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    move-object v1, p1

    .line 38
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_39

    .line 43
    .line 44
    sget-object p1, Ltv;->k:Ljava/lang/String;

    .line 45
    .line 46
    const-string p2, "No cursor returned in loadContactEntity"

    .line 47
    .line 48
    invoke-static {p1, p2}, Lrg1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Ltv;->a:Landroid/net/Uri;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/android/contacts/model/Contact;->e(Landroid/net/Uri;)Lcom/android/contacts/model/Contact;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :cond_39
    :try_start_39
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_64

    .line 63
    .line 64
    sget-object p2, Ltv;->k:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v1, "loadContactEntity: cursor has no contact data. loadDatabyLimit: "

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-boolean v1, p0, Ltv;->f:Z

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {p2, v0}, Lrg1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Ltv;->a:Landroid/net/Uri;

    .line 92
    .line 93
    invoke-static {p2}, Lcom/android/contacts/model/Contact;->e(Landroid/net/Uri;)Lcom/android/contacts/model/Contact;

    .line 94
    .line 95
    .line 96
    move-result-object p2
    :try_end_60
    .catchall {:try_start_39 .. :try_end_60} :catchall_ee

    .line 97
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 98
    .line 99
    .line 100
    return-object p2

    .line 101
    :cond_64
    :try_start_64
    invoke-virtual {p0, p1, p2}, Ltv;->f(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    const-wide/16 v0, -0x1

    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    new-instance v3, Lcom/google/common/collect/ImmutableList$a;

    .line 109
    .line 110
    invoke-direct {v3}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    .line 111
    .line 112
    .line 113
    new-instance v4, Lcom/google/common/collect/ImmutableMap$b;

    .line 114
    .line 115
    invoke-direct {v4}, Lcom/google/common/collect/ImmutableMap$b;-><init>()V

    .line 116
    .line 117
    .line 118
    :cond_75
    const/16 v5, 0xe

    .line 119
    .line 120
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 121
    .line 122
    .line 123
    move-result-wide v5

    .line 124
    cmp-long v7, v5, v0

    .line 125
    .line 126
    if-eqz v7, :cond_8d

    .line 127
    .line 128
    new-instance v0, Lcom/android/contacts/model/RawContact;

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Ltv;->m(Landroid/database/Cursor;)Landroid/content/ContentValues;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-direct {v0, v1}, Lcom/android/contacts/model/RawContact;-><init>(Landroid/content/ContentValues;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList$a;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 138
    .line 139
    .line 140
    move-object v2, v0

    .line 141
    move-wide v0, v5

    .line 142
    :cond_8d
    const/16 v5, 0x1a

    .line 143
    .line 144
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-nez v6, :cond_be

    .line 149
    .line 150
    if-eqz v2, :cond_be

    .line 151
    .line 152
    invoke-virtual {p0, p1}, Ltv;->g(Landroid/database/Cursor;)Landroid/content/ContentValues;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {v2, v6}, Lcom/android/contacts/model/RawContact;->a(Landroid/content/ContentValues;)V

    .line 157
    .line 158
    .line 159
    const/16 v6, 0x33

    .line 160
    .line 161
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-eqz v6, :cond_ae

    .line 166
    .line 167
    const/16 v6, 0x35

    .line 168
    .line 169
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-nez v6, :cond_be

    .line 174
    .line 175
    :cond_ae
    new-instance v6, Lk70;

    .line 176
    .line 177
    invoke-direct {v6, p1}, Lk70;-><init>(Landroid/database/Cursor;)V

    .line 178
    .line 179
    .line 180
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 181
    .line 182
    .line 183
    move-result-wide v7

    .line 184
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 189
    .line 190
    .line 191
    :cond_be
    const/16 v5, 0x31

    .line 192
    .line 193
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    const-string/jumbo v6, "vnd.android.cursor.item/phone_v2"

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-eqz v5, :cond_d6

    .line 205
    .line 206
    const/16 v5, 0x1b

    .line 207
    .line 208
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {p2, v5}, Lcom/android/contacts/model/Contact;->a(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_d6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    if-nez v5, :cond_75

    .line 220
    .line 221
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$a;->l()Lcom/google/common/collect/ImmutableList;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {p2, v0}, Lcom/android/contacts/model/Contact;->V(Lcom/google/common/collect/ImmutableList;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {p2, v0}, Lcom/android/contacts/model/Contact;->Z(Lcom/google/common/collect/ImmutableMap;)V
    :try_end_ea
    .catchall {:try_start_64 .. :try_end_ea} :catchall_ee

    .line 233
    .line 234
    .line 235
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 236
    .line 237
    .line 238
    return-object p2

    .line 239
    :catchall_ee
    move-exception p2

    .line 240
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 241
    .line 242
    .line 243
    throw p2
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
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/android/contacts/model/Contact;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ltv;->c(Lcom/android/contacts/model/Contact;)V

    .line 4
    .line 5
    .line 6
    return-void
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

.method public final e(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;
    .registers 32

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "directory"

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    invoke-virtual {v4, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_f

    .line 12
    .line 13
    const-wide/16 v6, 0x0

    .line 14
    .line 15
    goto :goto_14

    .line 16
    :cond_f
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v5

    .line 20
    move-wide v6, v5

    .line 21
    :goto_14
    const/16 v1, 0xd

    .line 22
    .line 23
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 24
    .line 25
    .line 26
    move-result-wide v9

    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 34
    .line 35
    .line 36
    move-result-wide v11

    .line 37
    const/4 v5, 0x1

    .line 38
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 39
    .line 40
    .line 41
    move-result v13

    .line 42
    const/4 v14, 0x3

    .line 43
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v17

    .line 47
    const/4 v14, 0x4

    .line 48
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v18

    .line 52
    const/4 v14, 0x5

    .line 53
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v19

    .line 57
    const/4 v14, 0x6

    .line 58
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 59
    .line 60
    .line 61
    move-result-wide v14

    .line 62
    const/16 v1, 0x3a

    .line 63
    .line 64
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/4 v2, 0x7

    .line 69
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4d

    .line 74
    .line 75
    move/from16 v22, v5

    .line 76
    .line 77
    goto :goto_4f

    .line 78
    :cond_4d
    const/16 v22, 0x0

    .line 79
    .line 80
    :goto_4f
    const/16 v2, 0x8

    .line 81
    .line 82
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_59

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    goto :goto_61

    .line 90
    :cond_59
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    :goto_61
    move-object/from16 v23, v2

    .line 99
    .line 100
    const/16 v2, 0x3b

    .line 101
    .line 102
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-ne v2, v5, :cond_6e

    .line 107
    .line 108
    move/from16 v24, v5

    .line 109
    .line 110
    goto :goto_70

    .line 111
    :cond_6e
    const/16 v24, 0x0

    .line 112
    .line 113
    :goto_70
    const/16 v2, 0x3c

    .line 114
    .line 115
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v25

    .line 119
    const/16 v2, 0x3d

    .line 120
    .line 121
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-ne v2, v5, :cond_81

    .line 126
    .line 127
    move/from16 v26, v5

    .line 128
    .line 129
    goto :goto_83

    .line 130
    :cond_81
    const/16 v26, 0x0

    .line 131
    .line 132
    :goto_83
    sget-boolean v2, Lsz;->a:Z

    .line 133
    .line 134
    if-eqz v2, :cond_9f

    .line 135
    .line 136
    const/16 v2, 0x3f

    .line 137
    .line 138
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-ne v2, v5, :cond_92

    .line 143
    .line 144
    move/from16 v16, v5

    .line 145
    .line 146
    goto :goto_94

    .line 147
    :cond_92
    const/16 v16, 0x0

    .line 148
    .line 149
    :goto_94
    const/16 v2, 0x42

    .line 150
    .line 151
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    move/from16 v27, v16

    .line 156
    .line 157
    const-wide/16 v2, 0x0

    .line 158
    .line 159
    goto :goto_a4

    .line 160
    :cond_9f
    const/4 v0, 0x0

    .line 161
    const-wide/16 v2, 0x0

    .line 162
    .line 163
    const/16 v27, 0x0

    .line 164
    .line 165
    :goto_a4
    cmp-long v2, v6, v2

    .line 166
    .line 167
    if-eqz v2, :cond_b1

    .line 168
    .line 169
    const-wide/16 v2, 0x1

    .line 170
    .line 171
    cmp-long v2, v6, v2

    .line 172
    .line 173
    if-nez v2, :cond_af

    .line 174
    .line 175
    goto :goto_b1

    .line 176
    :cond_af
    move-object v5, v4

    .line 177
    goto :goto_bc

    .line 178
    :cond_b1
    :goto_b1
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 179
    .line 180
    invoke-static {v2, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    move-object v5, v2

    .line 189
    :goto_bc
    new-instance v28, Lcom/android/contacts/model/Contact;

    .line 190
    .line 191
    move-object/from16 v2, v28

    .line 192
    .line 193
    move-object/from16 v3, p0

    .line 194
    .line 195
    iget-object v4, v3, Ltv;->a:Landroid/net/Uri;

    .line 196
    .line 197
    move-object v3, v4

    .line 198
    move-object/from16 v4, p2

    .line 199
    .line 200
    move-object/from16 v16, v1

    .line 201
    .line 202
    move/from16 v20, v22

    .line 203
    .line 204
    move-object/from16 v21, v23

    .line 205
    .line 206
    move/from16 v22, v24

    .line 207
    .line 208
    move-object/from16 v23, v25

    .line 209
    .line 210
    move/from16 v24, v26

    .line 211
    .line 212
    move/from16 v25, v0

    .line 213
    .line 214
    move/from16 v26, v27

    .line 215
    .line 216
    invoke-direct/range {v2 .. v26}, Lcom/android/contacts/model/Contact;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZIZ)V

    .line 217
    .line 218
    .line 219
    return-object v28
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
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
.end method

.method public final f(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2}, Ltv;->e(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    sget-boolean v0, Lsz;->a:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1b

    .line 8
    .line 9
    const/16 v0, 0x40

    .line 10
    .line 11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p2, v0}, Lcom/android/contacts/model/Contact;->T(I)V

    .line 16
    .line 17
    .line 18
    const/16 v0, 0x41

    .line 19
    .line 20
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p2, p1}, Lcom/android/contacts/model/Contact;->W(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_28

    .line 28
    :cond_1b
    const/16 v0, 0xf

    .line 29
    .line 30
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lpz2;->q(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p2, p1}, Lcom/android/contacts/model/Contact;->T(I)V

    .line 39
    .line 40
    .line 41
    :goto_28
    invoke-virtual {p2}, Lcom/android/contacts/model/Contact;->s()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {p1}, Lpz2;->o(I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p2, p1}, Lcom/android/contacts/model/Contact;->X(I)V

    .line 50
    .line 51
    .line 52
    return-object p2
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
.end method

.method public final g(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .registers 5

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x1a

    .line 7
    .line 8
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "_id"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x1b

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x1c

    .line 27
    .line 28
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x1d

    .line 32
    .line 33
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x1e

    .line 37
    .line 38
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x1f

    .line 42
    .line 43
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x20

    .line 47
    .line 48
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 49
    .line 50
    .line 51
    const/16 v1, 0x21

    .line 52
    .line 53
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x22

    .line 57
    .line 58
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 59
    .line 60
    .line 61
    const/16 v1, 0x23

    .line 62
    .line 63
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 64
    .line 65
    .line 66
    const/16 v1, 0x24

    .line 67
    .line 68
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 69
    .line 70
    .line 71
    const/16 v1, 0x25

    .line 72
    .line 73
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 74
    .line 75
    .line 76
    const/16 v1, 0x26

    .line 77
    .line 78
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 79
    .line 80
    .line 81
    const/16 v1, 0x27

    .line 82
    .line 83
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 84
    .line 85
    .line 86
    const/16 v1, 0x28

    .line 87
    .line 88
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 89
    .line 90
    .line 91
    const/16 v1, 0x29

    .line 92
    .line 93
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 94
    .line 95
    .line 96
    const/16 v1, 0x2a

    .line 97
    .line 98
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 99
    .line 100
    .line 101
    const/16 v1, 0x2b

    .line 102
    .line 103
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 104
    .line 105
    .line 106
    const/16 v1, 0x2c

    .line 107
    .line 108
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 109
    .line 110
    .line 111
    const/16 v1, 0x2d

    .line 112
    .line 113
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 114
    .line 115
    .line 116
    const/16 v1, 0x2e

    .line 117
    .line 118
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 119
    .line 120
    .line 121
    const/16 v1, 0x2f

    .line 122
    .line 123
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 124
    .line 125
    .line 126
    const/16 v1, 0x30

    .line 127
    .line 128
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 129
    .line 130
    .line 131
    const/16 v1, 0x31

    .line 132
    .line 133
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 134
    .line 135
    .line 136
    const/16 v1, 0x32

    .line 137
    .line 138
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 139
    .line 140
    .line 141
    const/16 v1, 0x34

    .line 142
    .line 143
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 144
    .line 145
    .line 146
    invoke-static {}, Lmp;->g()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_9c

    .line 151
    .line 152
    const/16 v1, 0x3e

    .line 153
    .line 154
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 155
    .line 156
    .line 157
    :cond_9c
    sget-boolean v1, Lsz;->a:Z

    .line 158
    .line 159
    if-eqz v1, :cond_a5

    .line 160
    .line 161
    const/16 v1, 0x43

    .line 162
    .line 163
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 164
    .line 165
    .line 166
    :cond_a5
    return-object v0
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

.method public final h(Lcom/android/contacts/model/Contact;)V
    .registers 13

    .line 1
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->m()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    sget-object v2, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    .line 14
    .line 15
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    sget-object v5, Ltv$c;->a:[Ljava/lang/String;

    .line 20
    .line 21
    iget-boolean v0, p0, Ltv;->f:Z

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_1d

    .line 25
    .line 26
    const-string v0, " ? LIMIT 7"

    .line 27
    .line 28
    move-object v8, v0

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move-object v8, v1

    .line 31
    :goto_1e
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_27

    .line 38
    .line 39
    return-void

    .line 40
    :cond_27
    :try_start_27
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_85

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v3, 0x2

    .line 57
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/4 v5, 0x3

    .line 62
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    const/4 v5, 0x4

    .line 67
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    const/4 v5, 0x5

    .line 72
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_80

    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 87
    .line 88
    .line 89
    move-result-object v5
    :try_end_59
    .catchall {:try_start_27 .. :try_end_59} :catchall_89

    .line 90
    :try_start_59
    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1
    :try_end_61
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_59 .. :try_end_61} :catch_62
    .catchall {:try_start_59 .. :try_end_61} :catchall_89

    .line 98
    goto :goto_80

    .line 99
    :catch_62
    :try_start_62
    sget-object v5, Ltv;->k:Ljava/lang/String;

    .line 100
    .line 101
    new-instance v9, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v10, "Contact directory resource not found: "

    .line 107
    .line 108
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, "."

    .line 115
    .line 116
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {v5, v2}, Lrg1;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_80
    :goto_80
    move-object v5, v1

    .line 130
    move-object v3, p1

    .line 131
    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/model/Contact;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_85
    .catchall {:try_start_62 .. :try_end_85} :catchall_89

    .line 132
    .line 133
    .line 134
    :cond_85
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :catchall_89
    move-exception p1

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 140
    .line 141
    .line 142
    throw p1
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

.method public final j(Lcom/android/contacts/model/Contact;)V
    .registers 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->A()Lcom/google/common/collect/ImmutableList;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->i()Lcom/google/common/collect/d1;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_72

    .line 29
    .line 30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lcom/android/contacts/model/RawContact;

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContact;->g()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContact;->r()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContact;->z()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    new-instance v7, Ltv$a;

    .line 49
    .line 50
    invoke-direct {v7, v5, v6, v4}, Ltv$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    if-eqz v5, :cond_17

    .line 54
    .line 55
    if-eqz v6, :cond_17

    .line 56
    .line 57
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-nez v8, :cond_17

    .line 62
    .line 63
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_4c

    .line 71
    .line 72
    const-string v7, " OR "

    .line 73
    .line 74
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_4c
    const-string v7, "(account_name=? AND account_type=?"

    .line 78
    .line 79
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    const-string v5, " AND deleted=0"

    .line 89
    .line 90
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    if-eqz v4, :cond_67

    .line 94
    .line 95
    const-string v5, " AND data_set=?"

    .line 96
    .line 97
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_6c

    .line 104
    :cond_67
    const-string v4, " AND data_set IS NULL"

    .line 105
    .line 106
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    :goto_6c
    const-string v4, ")"

    .line 110
    .line 111
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    goto :goto_17

    .line 115
    :cond_72
    new-instance v2, Lcom/google/common/collect/ImmutableList$a;

    .line 116
    .line 117
    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 129
    .line 130
    sget-object v6, Lb01;->a:[Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    const/4 v0, 0x0

    .line 137
    new-array v0, v0, [Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    move-object v8, v0

    .line 144
    check-cast v8, [Ljava/lang/String;

    .line 145
    .line 146
    iget-boolean v0, p0, Ltv;->f:Z

    .line 147
    .line 148
    if-eqz v0, :cond_98

    .line 149
    .line 150
    const-string v0, " ? LIMIT 7"

    .line 151
    .line 152
    goto :goto_99

    .line 153
    :cond_98
    const/4 v0, 0x0

    .line 154
    :goto_99
    move-object v9, v0

    .line 155
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_bc

    .line 160
    .line 161
    :goto_a0
    :try_start_a0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_b3

    .line 166
    .line 167
    new-instance v1, Lcom/android/contacts/group/GroupMetaData;

    .line 168
    .line 169
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-direct {v1, v3, v0}, Lcom/android/contacts/group/GroupMetaData;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList$a;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;
    :try_end_b2
    .catchall {:try_start_a0 .. :try_end_b2} :catchall_b7

    .line 177
    .line 178
    .line 179
    goto :goto_a0

    .line 180
    :cond_b3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 181
    .line 182
    .line 183
    goto :goto_bc

    .line 184
    :catchall_b7
    move-exception p1

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 186
    .line 187
    .line 188
    throw p1

    .line 189
    :cond_bc
    :goto_bc
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$a;->l()Lcom/google/common/collect/ImmutableList;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {p1, v0}, Lcom/android/contacts/model/Contact;->S(Lcom/google/common/collect/ImmutableList;)V

    .line 194
    .line 195
    .line 196
    return-void
    .line 197
    .line 198
    .line 199
.end method

.method public k()Lcom/android/contacts/model/Contact;
    .registers 7

    .line 1
    sget-object v0, Ltv;->k:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "[loadInBackground] loadDatabyLimit:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-boolean v2, p0, Ltv;->f:Z

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :try_start_18
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Ltv;->b:Landroid/net/Uri;

    .line 34
    .line 35
    invoke-static {v1, v2}, Lwv;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    sget-object v3, Ltv;->l:Lcom/android/contacts/model/Contact;

    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v5, "[loadInBackground] mLookupUri="

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v5, p0, Ltv;->b:Landroid/net/Uri;

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v5, ", uriCurrentFormat="

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-static {v0, v4}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    sput-object v0, Ltv;->l:Lcom/android/contacts/model/Contact;

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    if-eqz v3, :cond_60

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->u()Landroid/net/Uri;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    iget-object v5, p0, Ltv;->b:Landroid/net/Uri;

    .line 82
    .line 83
    invoke-static {v4, v5}, Lxo3;->a(Landroid/net/Uri;Landroid/net/Uri;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_60

    .line 88
    .line 89
    new-instance v1, Lcom/android/contacts/model/Contact;

    .line 90
    .line 91
    iget-object v2, p0, Ltv;->a:Landroid/net/Uri;

    .line 92
    .line 93
    invoke-direct {v1, v2, v3}, Lcom/android/contacts/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/model/Contact;)V

    .line 94
    .line 95
    .line 96
    goto :goto_78

    .line 97
    :cond_60
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    const-string v4, "encoded"

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_73

    .line 108
    .line 109
    iget-object v1, p0, Ltv;->b:Landroid/net/Uri;

    .line 110
    .line 111
    invoke-static {v2, v1}, Ltv;->i(Landroid/net/Uri;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    goto :goto_78

    .line 116
    :cond_73
    invoke-virtual {p0, v1, v2}, Ltv;->d(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const/4 v0, 0x0

    .line 121
    :goto_78
    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->I()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_a3

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->G()Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_8a

    .line 132
    .line 133
    if-nez v0, :cond_97

    .line 134
    .line 135
    invoke-virtual {p0, v1}, Ltv;->h(Lcom/android/contacts/model/Contact;)V

    .line 136
    .line 137
    .line 138
    goto :goto_97

    .line 139
    :cond_8a
    iget-boolean v2, p0, Ltv;->c:Z

    .line 140
    .line 141
    if-eqz v2, :cond_97

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->q()Lcom/google/common/collect/ImmutableList;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    if-nez v2, :cond_97

    .line 148
    .line 149
    invoke-virtual {p0, v1}, Ltv;->j(Lcom/android/contacts/model/Contact;)V

    .line 150
    .line 151
    .line 152
    :cond_97
    :goto_97
    iget-boolean v2, p0, Ltv;->e:Z

    .line 153
    .line 154
    if-eqz v2, :cond_9e

    .line 155
    .line 156
    invoke-virtual {p0, v1}, Ltv;->a(Lcom/android/contacts/model/Contact;)V

    .line 157
    .line 158
    .line 159
    :cond_9e
    if-nez v0, :cond_a3

    .line 160
    .line 161
    invoke-virtual {p0, v1}, Ltv;->l(Lcom/android/contacts/model/Contact;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_a3} :catch_a4

    .line 162
    .line 163
    .line 164
    :cond_a3
    return-object v1

    .line 165
    :catch_a4
    move-exception v0

    .line 166
    sget-object v1, Ltv;->k:Ljava/lang/String;

    .line 167
    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v3, "Error loading the contact: "

    .line 174
    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v3, p0, Ltv;->b:Landroid/net/Uri;

    .line 179
    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-static {v1, v2, v0}, Lrg1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Ltv;->a:Landroid/net/Uri;

    .line 191
    .line 192
    invoke-static {v1, v0}, Lcom/android/contacts/model/Contact;->d(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/model/Contact;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    return-object v0
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

.method public final l(Lcom/android/contacts/model/Contact;)V
    .registers 8

    .line 1
    invoke-virtual {p0, p1}, Ltv;->n(Lcom/android/contacts/model/Contact;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->z()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_6e

    .line 9
    .line 10
    :try_start_9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "http"

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_35

    .line 25
    .line 26
    const-string v3, "https"

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_22

    .line 33
    .line 34
    goto :goto_35

    .line 35
    :cond_22
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v2, "r"

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    goto :goto_3f

    .line 54
    :cond_35
    :goto_35
    new-instance v1, Ljava/net/URL;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const/4 v0, 0x0

    .line 64
    :goto_3f
    const/16 v2, 0x4000

    .line 65
    .line 66
    new-array v2, v2, [B

    .line 67
    .line 68
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 69
    .line 70
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_48} :catch_6e

    .line 71
    .line 72
    .line 73
    :goto_48
    :try_start_48
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    const/4 v5, -0x1

    .line 78
    if-eq v4, v5, :cond_54

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 82
    .line 83
    .line 84
    goto :goto_48

    .line 85
    :cond_54
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p1, v2}, Lcom/android/contacts/model/Contact;->U([B)V
    :try_end_5b
    .catchall {:try_start_48 .. :try_end_5b} :catchall_64

    .line 90
    .line 91
    .line 92
    :try_start_5b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 93
    .line 94
    .line 95
    if-eqz v0, :cond_63

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 98
    .line 99
    .line 100
    :cond_63
    return-void

    .line 101
    :catchall_64
    move-exception v2

    .line 102
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 103
    .line 104
    .line 105
    if-eqz v0, :cond_6d

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 108
    .line 109
    .line 110
    :cond_6d
    throw v2
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_6e} :catch_6e

    .line 111
    :catch_6e
    :cond_6e
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->D()[B

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p1, v0}, Lcom/android/contacts/model/Contact;->U([B)V

    .line 116
    .line 117
    .line 118
    return-void
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
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ltv;->k()Lcom/android/contacts/model/Contact;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method public final m(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .registers 5

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xe

    .line 7
    .line 8
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "_id"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 19
    .line 20
    .line 21
    const/16 v1, 0xf

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x10

    .line 27
    .line 28
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x11

    .line 32
    .line 33
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x12

    .line 37
    .line 38
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x13

    .line 42
    .line 43
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x14

    .line 47
    .line 48
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 49
    .line 50
    .line 51
    const/16 v1, 0x15

    .line 52
    .line 53
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x16

    .line 57
    .line 58
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 59
    .line 60
    .line 61
    const/16 v1, 0x17

    .line 62
    .line 63
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 64
    .line 65
    .line 66
    const/16 v1, 0x18

    .line 67
    .line 68
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 69
    .line 70
    .line 71
    const/16 v1, 0x19

    .line 72
    .line 73
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 74
    .line 75
    .line 76
    const/16 v1, 0xd

    .line 77
    .line 78
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 79
    .line 80
    .line 81
    const/4 v1, 0x7

    .line 82
    invoke-virtual {p0, p1, v0, v1}, Ltv;->b(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 83
    .line 84
    .line 85
    goto :cond_5d

    .line 92
    .line 93
    .line 94
    :cond_5d
    return-object v0
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
.end method

.method public final n(Lcom/android/contacts/model/Contact;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->y()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-gtz v2, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->A()Lcom/google/common/collect/ImmutableList;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->i()Lcom/google/common/collect/d1;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_4a

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/contacts/model/RawContact;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContact;->v()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :cond_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_13

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ly60;

    .line 51
    .line 52
    invoke-virtual {v4}, Ly60;->j()J

    .line 53
    .line 54
    .line 55
    move-result-wide v5

    .line 56
    cmp-long v5, v5, v0

    .line 57
    .line 58
    if-nez v5, :cond_27

    .line 59
    .line 60
    instance-of v3, v4, Lb82;

    .line 61
    .line 62
    if-nez v3, :cond_40

    .line 63
    .line 64
    goto :goto_13

    .line 65
    :cond_40
    check-cast v4, Lb82;

    .line 66
    .line 67
    invoke-virtual {v4}, Lb82;->t()[B

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p1, v3}, Lcom/android/contacts/model/Contact;->a0([B)V

    .line 72
    .line 73
    .line 74
    goto :goto_13

    .line 75
    :cond_4a
    return-void
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
.end method

.method public onReset()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/loader/content/Loader;->onReset()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ltv;->t()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Ltv;->g:Lcom/android/contacts/model/Contact;

    .line 12
    .line 13
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
.end method

.method public onStartLoading()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Ltv;->g:Lcom/android/contacts/model/Contact;

    .line 2
    .line 3
    if-eqz v0, :cond_2d

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->u()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Ltv;->b:Landroid/net/Uri;

    .line 10
    .line 11
    if-ne v0, v1, :cond_2d

    .line 12
    .line 13
    sget-object v0, Ltv;->k:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "[onStartLoading] deliver current result, lookup uri = "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Ltv;->g:Lcom/android/contacts/model/Contact;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->u()Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Ltv;->g:Lcom/android/contacts/model/Contact;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ltv;->c(Lcom/android/contacts/model/Contact;)V

    .line 44
    .line 45
    .line 46
    :cond_2d
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->takeContentChanged()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_37

    .line 51
    .line 52
    iget-object v0, p0, Ltv;->g:Lcom/android/contacts/model/Contact;

    .line 53
    .line 54
    if-nez v0, :cond_3f

    .line 55
    .line 56
    :cond_37
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 57
    .line 58
    .line 59
    goto :goto_3f

    .line 60
    :catch_3b
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    :cond_3f
    :goto_3f
    return-void
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

.method public onStopLoading()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

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
.end method

.method public final p()V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ltv;->g:Lcom/android/contacts/model/Contact;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->A()Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->i()Lcom/google/common/collect/d1;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_bd

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/contacts/model/RawContact;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/android/contacts/model/RawContact;->A()Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    iget-object v5, p0, Ltv;->i:Ljava/util/Set;

    .line 36
    .line 37
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_2f

    .line 46
    .line 47
    goto :goto_e

    .line 48
    :cond_2f
    iget-object v5, p0, Ltv;->i:Ljava/util/Set;

    .line 49
    .line 50
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0}, Lcom/android/contacts/model/RawContact;->o(Landroid/content/Context;)Lcom/android/contacts/model/account/AccountType;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/android/contacts/model/account/AccountType;->p()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v2}, Lcom/android/contacts/model/account/AccountType;->q()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-nez v7, :cond_e

    .line 74
    .line 75
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-nez v7, :cond_e

    .line 80
    .line 81
    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 82
    .line 83
    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    new-instance v4, Landroid/content/Intent;

    .line 88
    .line 89
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string/jumbo v7, "vnd.android.cursor.item/raw_contact"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v3, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    instance-of v2, v2, Lcom/android/contacts/model/account/f;

    .line 99
    .line 100
    if-eqz v2, :cond_a6

    .line 101
    .line 102
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    const-string v2, "com.google.android.syncadapters.contacts.SYNC_HIGH_RES_PHOTO"

    .line 106
    .line 107
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    const/4 v3, 0x0

    .line 115
    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-nez v3, :cond_a6

    .line 124
    .line 125
    sget-object v3, Ltv;->k:Ljava/lang/String;

    .line 126
    .line 127
    const/4 v5, 0x3

    .line 128
    invoke-static {v3, v5}, Lrg1;->h(Ljava/lang/String;I)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_a1

    .line 133
    .line 134
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    :goto_89
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_a1

    .line 143
    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 149
    .line 150
    sget-object v5, Ltv;->k:Ljava/lang/String;

    .line 151
    .line 152
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 153
    .line 154
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-static {v5, v3}, Lrg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_89

    .line 162
    :cond_a1
    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_e

    .line 166
    .line 167
    :cond_a6
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    const-string v2, "android.intent.action.VIEW"

    .line 171
    .line 172
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    :try_start_ae
    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b1} :catch_b3

    .line 176
    .line 177
    .line 178
    goto/16 :goto_e

    .line 179
    .line 180
    :catch_b3
    move-exception v2

    .line 181
    sget-object v3, Ltv;->k:Ljava/lang/String;

    .line 182
    .line 183
    const-string v4, "Error sending message to source-app"

    .line 184
    .line 185
    invoke-static {v3, v4, v2}, Lrg1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_e

    .line 189
    .line 190
    :cond_bd
    return-void
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

.method public r(Landroid/net/Uri;)Lcom/android/contacts/model/Contact;
    .registers 3

    .line 1
    if-nez p1, :cond_b

    .line 2
    .line 3
    sget-object p1, Ltv;->k:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "queryContactData: mLookupUri is null!"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lrg1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0, p1}, Lwv;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, v0, p1}, Ltv;->d(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/model/Contact;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->I()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_24

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ltv;->l(Lcom/android/contacts/model/Contact;)V

    .line 35
    .line 36
    .line 37
    :cond_24
    return-object p1
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

.method public s(Landroid/net/Uri;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ltv;->b:Landroid/net/Uri;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Ltv;->g:Lcom/android/contacts/model/Contact;

    .line 5
    .line 6
    return-void
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

.method public final t()V
    .registers 3

    .line 1
    iget-object v0, p0, Ltv;->h:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_14

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Ltv;->h:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Ltv;->h:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 20
    .line 21
    :cond_14
    return-void
    .line 22
.end method
