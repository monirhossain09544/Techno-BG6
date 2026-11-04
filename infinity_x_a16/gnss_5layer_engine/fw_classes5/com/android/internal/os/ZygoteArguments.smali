.class Lcom/android/internal/os/ZygoteArguments;
.super Ljava/lang/Object;
.source "ZygoteArguments.java"


# instance fields
.field blacklist mAbiListQuery:Z

.field blacklist mAllowlistedDataInfoList:[Ljava/lang/String;

.field blacklist mApiDenylistExemptions:[Ljava/lang/String;

.field blacklist mAppDataDir:Ljava/lang/String;

.field blacklist mBindMountAppDataDirs:Z

.field blacklist mBindMountAppStorageDirs:Z

.field blacklist mBindMountSyspropOverrides:Z

.field blacklist mBootCompleted:Z

.field private blacklist mCapabilitiesSpecified:Z

.field blacklist mDisabledCompatChanges:[J

.field blacklist mEffectiveCapabilities:J

.field blacklist mGid:I

.field blacklist mGidSpecified:Z

.field blacklist mGids:[I

.field blacklist mHiddenApiAccessLogSampleRate:I

.field blacklist mHiddenApiAccessStatslogSampleRate:I

.field blacklist mInstructionSet:Ljava/lang/String;

.field blacklist mInvokeWith:Ljava/lang/String;

.field blacklist mIsTopApp:Z

.field blacklist mMountExternal:I

.field blacklist mNiceName:Ljava/lang/String;

.field blacklist mPackageName:Ljava/lang/String;

.field blacklist mPermittedCapabilities:J

.field blacklist mPidQuery:Z

.field blacklist mPkgDataInfoList:[Ljava/lang/String;

.field blacklist mPreloadApp:Ljava/lang/String;

.field blacklist mPreloadDefault:Z

.field blacklist mRLimits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field blacklist mRemainingArgs:[Ljava/lang/String;

.field blacklist mRuntimeFlags:I

.field blacklist mSeInfo:Ljava/lang/String;

.field private blacklist mSeInfoSpecified:Z

.field blacklist mStartChildZygote:Z

.field blacklist mTargetSdkVersion:I

.field private blacklist mTargetSdkVersionSpecified:Z

.field blacklist mUid:I

.field blacklist mUidSpecified:Z

.field blacklist mUsapPoolEnabled:Z

.field blacklist mUsapPoolStatusSpecified:Z


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/os/ZygoteCommandBuffer;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    .line 61
    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    .line 77
    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    .line 107
    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    .line 189
    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/ZygoteArguments;->parseArgs(Lcom/android/internal/os/ZygoteCommandBuffer;I)V

    .line 237
    return-void
.end method

.method private static blacklist getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 522
    invoke-static {p0}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 518
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteCommandBuffer;->getCount()I

    move-result v0

    .line 247
    if-nez v0, :cond_8

    const/4 p0, 0x0

    goto :goto_e

    :cond_8
    new-instance v1, Lcom/android/internal/os/ZygoteArguments;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/os/ZygoteArguments;-><init>(Lcom/android/internal/os/ZygoteCommandBuffer;I)V

    move-object p0, v1

    :goto_e
    return-object p0
.end method

.method private blacklist parseArgs(Lcom/android/internal/os/ZygoteCommandBuffer;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 270
    nop

    .line 271
    nop

    .line 272
    nop

    .line 273
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v2

    move v4, v1

    .line 275
    :goto_8
    const/4 v5, 0x0

    if-ge v2, p2, :cond_381

    .line 276
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v6

    .line 278
    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 279
    add-int/lit8 v2, v2, 0x1

    .line 280
    goto/16 :goto_381

    .line 281
    :cond_1b
    const-string v5, "--setuid="

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v7, "Duplicate arg specified"

    if-eqz v5, :cond_3d

    .line 282
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    if-nez v5, :cond_37

    .line 286
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    .line 287
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    goto/16 :goto_37c

    .line 283
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 288
    :cond_3d
    const-string v5, "--setgid="

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 289
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    if-nez v5, :cond_57

    .line 293
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    .line 294
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    goto/16 :goto_37c

    .line 290
    :cond_57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 295
    :cond_5d
    const-string v5, "--target-sdk-version="

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 296
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersionSpecified:Z

    if-nez v5, :cond_77

    .line 300
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersionSpecified:Z

    .line 301
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    goto/16 :goto_37c

    .line 297
    :cond_77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Duplicate target-sdk-version specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 302
    :cond_7f
    const-string v5, "--runtime-args"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 303
    move v3, v1

    goto/16 :goto_37c

    .line 304
    :cond_8a
    const-string v5, "--runtime-flags="

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 305
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto/16 :goto_37c

    .line 306
    :cond_9e
    const-string v5, "--seinfo="

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 307
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfoSpecified:Z

    if-nez v5, :cond_b4

    .line 311
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfoSpecified:Z

    .line 312
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfo:Ljava/lang/String;

    goto/16 :goto_37c

    .line 308
    :cond_b4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 313
    :cond_ba
    const-string v5, "--capabilities="

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v8, 0x2

    if-eqz v5, :cond_107

    .line 314
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mCapabilitiesSpecified:Z

    if-nez v5, :cond_101

    .line 318
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mCapabilitiesSpecified:Z

    .line 319
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 321
    const-string v6, ","

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 323
    array-length v6, v5

    if-ne v6, v1, :cond_e7

    .line 324
    aget-object v5, v5, v0

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    .line 325
    iget-wide v5, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    iput-wide v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    goto :goto_ff

    .line 327
    :cond_e7
    aget-object v6, v5, v0

    invoke-static {v6}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    .line 328
    aget-object v5, v5, v1

    invoke-static {v5}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    .line 330
    :goto_ff
    goto/16 :goto_37c

    .line 315
    :cond_101
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 330
    :cond_107
    const-string v5, "--rlimit="

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v9, 0x3

    if-eqz v5, :cond_143

    .line 332
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 334
    array-length v6, v5

    if-ne v6, v9, :cond_13b

    .line 338
    array-length v6, v5

    new-array v6, v6, [I

    .line 340
    move v7, v0

    :goto_11b
    array-length v8, v5

    if-ge v7, v8, :cond_129

    .line 341
    aget-object v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    .line 340
    add-int/lit8 v7, v7, 0x1

    goto :goto_11b

    .line 344
    :cond_129
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    if-nez v5, :cond_134

    .line 345
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    .line 348
    :cond_134
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    goto/16 :goto_37c

    .line 335
    :cond_13b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "--rlimit= should have 3 comma-delimited ints"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 349
    :cond_143
    const-string v5, "--setgroups="

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_171

    .line 350
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    if-nez v5, :cond_16b

    .line 355
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 357
    array-length v6, v5

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    .line 359
    array-length v6, v5

    sub-int/2addr v6, v1

    :goto_15a
    if-ltz v6, :cond_169

    .line 360
    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    aget-object v8, v5, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v6

    .line 359
    add-int/lit8 v6, v6, -0x1

    goto :goto_15a

    .line 362
    :cond_169
    goto/16 :goto_37c

    .line 351
    :cond_16b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_171
    const-string v5, "--invoke-with"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_196

    .line 363
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v5, :cond_190

    .line 368
    add-int/lit8 v2, v2, 0x1

    .line 369
    :try_start_17f
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;
    :try_end_185
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17f .. :try_end_185} :catch_187

    .line 373
    goto/16 :goto_37c

    .line 370
    :catch_187
    move-exception p1

    .line 371
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "--invoke-with requires argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :cond_190
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 374
    :cond_196
    const-string v5, "--nice-name="

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    .line 375
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-nez v5, :cond_1aa

    .line 379
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    goto/16 :goto_37c

    .line 376
    :cond_1aa
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 380
    :cond_1b0
    const-string v5, "--mount-external-default"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1bc

    .line 381
    iput v1, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_37c

    .line 382
    :cond_1bc
    const-string v5, "--mount-external-installer"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c8

    .line 383
    iput v8, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_37c

    .line 384
    :cond_1c8
    const-string v5, "--mount-external-pass-through"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d4

    .line 385
    iput v9, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_37c

    .line 386
    :cond_1d4
    const-string v5, "--mount-external-android-writable"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e1

    .line 387
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_37c

    .line 388
    :cond_1e1
    const-string v5, "--query-abi-list"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ed

    .line 389
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    goto/16 :goto_37c

    .line 390
    :cond_1ed
    const-string v5, "--get-pid"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f9

    .line 391
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    goto/16 :goto_37c

    .line 392
    :cond_1f9
    const-string v5, "--boot-completed"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_205

    .line 393
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mBootCompleted:Z

    goto/16 :goto_37c

    .line 394
    :cond_205
    const-string v5, "--instruction-set="

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_215

    .line 395
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mInstructionSet:Ljava/lang/String;

    goto/16 :goto_37c

    .line 396
    :cond_215
    const-string v5, "--app-data-dir="

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_225

    .line 397
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mAppDataDir:Ljava/lang/String;

    goto/16 :goto_37c

    .line 398
    :cond_225
    const-string v5, "--preload-app"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_237

    .line 399
    add-int/lit8 v2, v2, 0x1

    .line 400
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    goto/16 :goto_37c

    .line 401
    :cond_237
    const-string v5, "--preload-default"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_244

    .line 402
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadDefault:Z

    .line 403
    move v4, v0

    goto/16 :goto_37c

    .line 404
    :cond_244
    const-string v5, "--start-child-zygote"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_250

    .line 405
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    goto/16 :goto_37c

    .line 406
    :cond_250
    const-string v5, "--set-api-denylist-exemptions"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_273

    .line 409
    sub-int v4, p2, v2

    sub-int/2addr v4, v1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    .line 410
    add-int/lit8 v2, v2, 0x1

    .line 411
    move v4, v0

    :goto_262
    if-ge v2, p2, :cond_270

    .line 412
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 411
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v4, v1

    goto :goto_262

    .line 414
    :cond_270
    move v4, v0

    goto/16 :goto_37c

    .line 415
    :cond_273
    const-string v5, "--hidden-api-log-sampling-rate="

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a4

    .line 416
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 418
    :try_start_27f
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I
    :try_end_285
    .catch Ljava/lang/NumberFormatException; {:try_start_27f .. :try_end_285} :catch_28a

    .line 422
    nop

    .line 423
    nop

    .line 424
    move v4, v0

    goto/16 :goto_37c

    .line 419
    :catch_28a
    move-exception p1

    .line 420
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid log sampling rate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 424
    :cond_2a4
    const-string v5, "--hidden-api-statslog-sampling-rate="

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d5

    .line 425
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 427
    :try_start_2b0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I
    :try_end_2b6
    .catch Ljava/lang/NumberFormatException; {:try_start_2b0 .. :try_end_2b6} :catch_2bb

    .line 431
    nop

    .line 432
    nop

    .line 433
    move v4, v0

    goto/16 :goto_37c

    .line 428
    :catch_2bb
    move-exception p1

    .line 429
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid statslog sampling rate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 433
    :cond_2d5
    const-string v5, "--package-name="

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2ef

    .line 434
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    if-nez v5, :cond_2e9

    .line 437
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    goto/16 :goto_37c

    .line 435
    :cond_2e9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 438
    :cond_2ef
    const-string v5, "--usap-pool-enabled="

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_306

    .line 439
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    .line 440
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolEnabled:Z

    .line 441
    move v4, v0

    goto/16 :goto_37c

    .line 442
    :cond_306
    const-string v5, "--is-top-app"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_312

    .line 443
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mIsTopApp:Z

    goto/16 :goto_37c

    .line 444
    :cond_312
    const-string v5, "--disabled-compat-changes="

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33e

    .line 445
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    if-nez v5, :cond_338

    .line 448
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 449
    array-length v6, v5

    .line 450
    new-array v7, v6, [J

    iput-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    .line 451
    move v7, v0

    :goto_328
    if-ge v7, v6, :cond_337

    .line 452
    iget-object v8, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    aget-object v9, v5, v7

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    aput-wide v9, v8, v7

    .line 451
    add-int/lit8 v7, v7, 0x1

    goto :goto_328

    .line 454
    :cond_337
    goto :goto_37c

    .line 446
    :cond_338
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 454
    :cond_33e
    const-string v5, "--pkg-data-info-map"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34d

    .line 455
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPkgDataInfoList:[Ljava/lang/String;

    goto :goto_37c

    .line 456
    :cond_34d
    const-string v5, "--allowlisted-data-info-map"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35c

    .line 457
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mAllowlistedDataInfoList:[Ljava/lang/String;

    goto :goto_37c

    .line 458
    :cond_35c
    const-string v5, "--bind-mount-storage-dirs"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_367

    .line 459
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppStorageDirs:Z

    goto :goto_37c

    .line 460
    :cond_367
    const-string v5, "--bind-mount-data-dirs"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_372

    .line 461
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppDataDirs:Z

    goto :goto_37c

    .line 462
    :cond_372
    const-string v5, "--bind-mount-sysprop-overrides"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37f

    .line 463
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mBindMountSyspropOverrides:Z

    .line 275
    :goto_37c
    add-int/2addr v2, v1

    goto/16 :goto_8

    .line 465
    :cond_37f
    nop

    .line 466
    move-object v5, v6

    .line 472
    :cond_381
    :goto_381
    iget-boolean v6, p0, Lcom/android/internal/os/ZygoteArguments;->mBootCompleted:Z

    if-eqz v6, :cond_390

    .line 473
    if-gt p2, v2, :cond_388

    goto :goto_3e9

    .line 474
    :cond_388
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected arguments after --boot-completed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 476
    :cond_390
    iget-boolean v6, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    if-nez v6, :cond_3e7

    iget-boolean v6, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    if-eqz v6, :cond_399

    goto :goto_3e7

    .line 480
    :cond_399
    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    if-eqz v6, :cond_3a8

    .line 481
    if-gt p2, v2, :cond_3a0

    goto :goto_3e9

    .line 482
    :cond_3a0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected arguments after --preload-app."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 485
    :cond_3a8
    if-eqz v4, :cond_3e9

    .line 486
    if-nez v3, :cond_3cb

    .line 487
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected argument : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 488
    if-nez v5, :cond_3bf

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v5

    :cond_3bf
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 491
    :cond_3cb
    sub-int/2addr p2, v2

    new-array v2, p2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    .line 492
    nop

    .line 493
    if-eqz v5, :cond_3d9

    .line 494
    iget-object v2, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    aput-object v5, v2, v0

    .line 495
    move v2, v1

    goto :goto_3da

    .line 493
    :cond_3d9
    move v2, v0

    .line 497
    :goto_3da
    if-ge v2, p2, :cond_3e9

    .line 498
    iget-object v3, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 497
    add-int/lit8 v2, v2, 0x1

    goto :goto_3da

    .line 477
    :cond_3e7
    :goto_3e7
    if-gt p2, v2, :cond_410

    .line 502
    :cond_3e9
    :goto_3e9
    iget-boolean p1, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    if-eqz p1, :cond_40f

    .line 503
    nop

    .line 504
    iget-object p1, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    array-length p2, p1

    move v2, v0

    :goto_3f2
    if-ge v2, p2, :cond_404

    aget-object v3, p1, v2

    .line 505
    const-string v4, "--zygote-socket="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_401

    .line 506
    nop

    .line 507
    move v0, v1

    goto :goto_404

    .line 504
    :cond_401
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f2

    .line 510
    :cond_404
    :goto_404
    if-eqz v0, :cond_407

    goto :goto_40f

    .line 511
    :cond_407
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "--start-child-zygote specified without --zygote-socket="

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 515
    :cond_40f
    :goto_40f
    return-void

    .line 478
    :cond_410
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected arguments after --query-abi-list."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
