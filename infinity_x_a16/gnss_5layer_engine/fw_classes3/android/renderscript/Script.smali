.class public Landroid/renderscript/Script;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Script$KernelID;,
        Landroid/renderscript/Script$InvokeID;,
        Landroid/renderscript/Script$FieldID;,
        Landroid/renderscript/Script$LaunchOptions;,
        Landroid/renderscript/Script$FieldBase;,
        Landroid/renderscript/Script$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mFIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/renderscript/Script$FieldID;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/renderscript/Script$InvokeID;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mInIdsBuffer:[J

.field private final greylist-max-o mKIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/renderscript/Script$KernelID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4

    .line 334
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 53
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    .line 92
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    .line 130
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    .line 336
    const/4 p1, 0x1

    new-array p1, p1, [J

    iput-object p1, p0, Landroid/renderscript/Script;->mInIdsBuffer:[J

    .line 349
    iget-object p1, p0, Landroid/renderscript/Script;->guard:Ldalvik/system/CloseGuard;

    const-string p2, "destroy"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 350
    return-void
.end method


# virtual methods
.method public whitelist bindAllocation(Landroid/renderscript/Allocation;I)V
    .registers 14

    .line 357
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 358
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, p1}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 359
    if-eqz p1, :cond_52

    .line 361
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3f

    .line 364
    iget-object v0, p1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 365
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-nez v1, :cond_37

    .line 366
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    if-nez v0, :cond_37

    goto :goto_3f

    .line 368
    :cond_37
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "API 20+ only allows simple 1D allocations to be used with bind."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 373
    :cond_3f
    :goto_3f
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget-object v3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(JJI)V

    .line 374
    goto :goto_61

    .line 375
    :cond_52
    move v5, p2

    move v10, v5

    iget-object v5, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object p1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, p1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(JJI)V

    .line 377
    :goto_61
    return-void
.end method

.method protected whitelist createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;
    .registers 11

    .line 135
    iget-object p2, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/renderscript/Script$FieldID;

    .line 136
    if-eqz p2, :cond_b

    .line 137
    return-object p2

    .line 140
    :cond_b
    iget-object p2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, p1}, Landroid/renderscript/RenderScript;->nScriptFieldIDCreate(JI)J

    move-result-wide v3

    .line 141
    const-wide/16 v0, 0x0

    cmp-long p2, v3, v0

    if-eqz p2, :cond_2c

    .line 145
    new-instance v2, Landroid/renderscript/Script$FieldID;

    iget-object v5, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object v6, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Landroid/renderscript/Script$FieldID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V

    .line 146
    iget-object p1, v6, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {p1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    return-object v2

    .line 142
    :cond_2c
    new-instance p1, Landroid/renderscript/RSDriverException;

    const-string p2, "Failed to create FieldID"

    invoke-direct {p1, p2}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist createInvokeID(I)Landroid/renderscript/Script$InvokeID;
    .registers 11

    .line 97
    iget-object v0, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Script$InvokeID;

    .line 98
    if-eqz v0, :cond_b

    .line 99
    return-object v0

    .line 102
    :cond_b
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptInvokeIDCreate(JI)J

    move-result-wide v4

    .line 103
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_2c

    .line 107
    new-instance v3, Landroid/renderscript/Script$InvokeID;

    iget-object v6, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object v7, p0

    move v8, p1

    invoke-direct/range {v3 .. v8}, Landroid/renderscript/Script$InvokeID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V

    .line 108
    iget-object p1, v7, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    invoke-virtual {p1, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    return-object v3

    .line 104
    :cond_2c
    new-instance p1, Landroid/renderscript/RSDriverException;

    const-string v0, "Failed to create KernelID"

    invoke-direct {p1, v0}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;
    .registers 14

    .line 59
    iget-object p3, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/renderscript/Script$KernelID;

    .line 60
    if-eqz p3, :cond_b

    .line 61
    return-object p3

    .line 64
    :cond_b
    iget-object p3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object p4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, p4}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->nScriptKernelIDCreate(JII)J

    move-result-wide v3

    .line 65
    const-wide/16 p3, 0x0

    cmp-long p3, v3, p3

    if-eqz p3, :cond_2d

    .line 69
    new-instance v2, Landroid/renderscript/Script$KernelID;

    iget-object v5, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    move-object v6, p0

    move v7, p1

    move v8, p2

    invoke-direct/range {v2 .. v8}, Landroid/renderscript/Script$KernelID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;II)V

    .line 70
    iget-object p1, v6, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {p1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    return-object v2

    .line 66
    :cond_2d
    new-instance p1, Landroid/renderscript/RSDriverException;

    const-string p2, "Failed to create KernelID"

    invoke-direct {p1, p2}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected whitelist forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .registers 11

    .line 177
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Script;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 178
    return-void
.end method

.method protected whitelist forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 23

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 188
    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v1}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 189
    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 191
    if-nez v1, :cond_24

    if-nez v2, :cond_24

    if-eqz p5, :cond_1c

    goto :goto_24

    .line 192
    :cond_1c
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "At least one of input allocation, output allocation, or LaunchOptions is required to be non-null."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_24
    :goto_24
    nop

    .line 197
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_35

    .line 198
    iget-object v5, v0, Landroid/renderscript/Script;->mInIdsBuffer:[J

    .line 199
    iget-object v6, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v5, v3

    move-object v12, v5

    goto :goto_36

    .line 197
    :cond_35
    move-object v12, v4

    .line 202
    :goto_36
    nop

    .line 203
    if-eqz v2, :cond_41

    .line 204
    iget-object v1, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move-wide v13, v1

    goto :goto_44

    .line 203
    :cond_41
    const-wide/16 v1, 0x0

    move-wide v13, v1

    .line 207
    :goto_44
    nop

    .line 208
    if-eqz p4, :cond_4d

    .line 209
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    move-object v15, v1

    goto :goto_4e

    .line 208
    :cond_4d
    move-object v15, v4

    .line 212
    :goto_4e
    nop

    .line 213
    if-eqz p5, :cond_80

    .line 214
    const/4 v1, 0x6

    new-array v4, v1, [I

    .line 216
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetxstart(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    aput v1, v4, v3

    .line 217
    const/4 v1, 0x1

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetxend(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    .line 218
    const/4 v1, 0x2

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetystart(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    .line 219
    const/4 v1, 0x3

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetyend(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    .line 220
    const/4 v1, 0x4

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetzstart(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    .line 221
    const/4 v1, 0x5

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetzend(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    move-object/from16 v16, v4

    goto :goto_82

    .line 213
    :cond_80
    move-object/from16 v16, v4

    .line 224
    :goto_82
    iget-object v8, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v9

    move/from16 v11, p1

    invoke-virtual/range {v8 .. v16}, Landroid/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    .line 225
    return-void
.end method

.method protected whitelist forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .registers 11

    .line 234
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Script;->forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 235
    return-void
.end method

.method protected whitelist forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 22

    .line 244
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 245
    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    .line 246
    array-length v4, v1

    move v5, v3

    :goto_10
    if-ge v5, v4, :cond_1c

    aget-object v6, v1, v5

    .line 247
    iget-object v7, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v6}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 246
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 250
    :cond_1c
    iget-object v4, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v4, v2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 252
    if-nez v1, :cond_2e

    if-eqz v2, :cond_26

    goto :goto_2e

    .line 253
    :cond_26
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "At least one of ain or aout is required to be non-null."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_2e
    :goto_2e
    const/4 v4, 0x0

    if-eqz v1, :cond_47

    .line 259
    array-length v5, v1

    new-array v5, v5, [J

    .line 260
    move v6, v3

    :goto_35
    array-length v7, v1

    if-ge v6, v7, :cond_45

    .line 261
    aget-object v7, v1, v6

    iget-object v8, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    .line 260
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    :cond_45
    move-object v11, v5

    goto :goto_48

    .line 264
    :cond_47
    move-object v11, v4

    .line 267
    :goto_48
    nop

    .line 268
    if-eqz v2, :cond_53

    .line 269
    iget-object v1, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move-wide v12, v1

    goto :goto_56

    .line 268
    :cond_53
    const-wide/16 v1, 0x0

    move-wide v12, v1

    .line 272
    :goto_56
    nop

    .line 273
    if-eqz p4, :cond_5f

    .line 274
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    move-object v14, v1

    goto :goto_60

    .line 273
    :cond_5f
    move-object v14, v4

    .line 277
    :goto_60
    nop

    .line 278
    if-eqz p5, :cond_91

    .line 279
    const/4 v1, 0x6

    new-array v4, v1, [I

    .line 281
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetxstart(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    aput v1, v4, v3

    .line 282
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetxend(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v4, v2

    .line 283
    const/4 v1, 0x2

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetystart(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    .line 284
    const/4 v1, 0x3

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetyend(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    .line 285
    const/4 v1, 0x4

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetzstart(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    .line 286
    const/4 v1, 0x5

    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetzend(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    move-object v15, v4

    goto :goto_92

    .line 278
    :cond_91
    move-object v15, v4

    .line 289
    :goto_92
    iget-object v7, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    move/from16 v10, p1

    invoke-virtual/range {v7 .. v15}, Landroid/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    .line 290
    return-void
.end method

.method public whitelist getVarB(I)Z
    .registers 5

    .line 433
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(JI)I

    move-result p1

    if-lez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public whitelist getVarD(I)D
    .registers 5

    .line 398
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarD(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getVarF(I)F
    .registers 5

    .line 387
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarF(JI)F

    move-result p1

    return p1
.end method

.method public whitelist getVarI(I)I
    .registers 5

    .line 409
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(JI)I

    move-result p1

    return p1
.end method

.method public whitelist getVarJ(I)J
    .registers 5

    .line 421
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarJ(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getVarV(ILandroid/renderscript/FieldPacker;)V
    .registers 6

    .line 467
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object p2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptGetVarV(JI[B)V

    .line 468
    return-void
.end method

.method protected whitelist invoke(I)V
    .registers 5

    .line 156
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(JI)V

    .line 157
    return-void
.end method

.method protected whitelist invoke(ILandroid/renderscript/FieldPacker;)V
    .registers 6

    .line 164
    if-eqz p2, :cond_12

    .line 165
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object p2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptInvokeV(JI[B)V

    goto :goto_1d

    .line 167
    :cond_12
    iget-object p2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(JI)V

    .line 169
    :goto_1d
    return-void
.end method

.method protected whitelist reduce(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 16

    .line 297
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 298
    if-eqz p2, :cond_7d

    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7d

    .line 302
    if-eqz p3, :cond_75

    .line 306
    array-length v0, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v0, :cond_1c

    aget-object v4, p2, v3

    .line 307
    iget-object v5, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5, v4}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 310
    :cond_1c
    array-length v0, p2

    new-array v7, v0, [J

    .line 311
    move v0, v2

    :goto_20
    array-length v3, p2

    if-ge v0, v3, :cond_30

    .line 312
    aget-object v3, p2, v0

    iget-object v4, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    aput-wide v3, v7, v0

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 314
    :cond_30
    iget-object p2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, p2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    .line 316
    nop

    .line 317
    if-eqz p4, :cond_66

    .line 318
    const/4 p2, 0x6

    new-array p2, p2, [I

    .line 320
    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetxstart(Landroid/renderscript/Script$LaunchOptions;)I

    move-result p3

    aput p3, p2, v2

    .line 321
    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetxend(Landroid/renderscript/Script$LaunchOptions;)I

    move-result p3

    aput p3, p2, v1

    .line 322
    const/4 p3, 0x2

    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetystart(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v0

    aput v0, p2, p3

    .line 323
    const/4 p3, 0x3

    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetyend(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v0

    aput v0, p2, p3

    .line 324
    const/4 p3, 0x4

    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetzstart(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v0

    aput v0, p2, p3

    .line 325
    const/4 p3, 0x5

    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->-$$Nest$fgetzend(Landroid/renderscript/Script$LaunchOptions;)I

    move-result p4

    aput p4, p2, p3

    move-object v10, p2

    goto :goto_68

    .line 317
    :cond_66
    const/4 p2, 0x0

    move-object v10, p2

    .line 328
    :goto_68
    iget-object v3, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object p2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, p2}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    move v6, p1

    invoke-virtual/range {v3 .. v10}, Landroid/renderscript/RenderScript;->nScriptReduce(JI[JJ[I)V

    .line 329
    return-void

    .line 303
    :cond_75
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "aout is required to be non-null."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 299
    :cond_7d
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "At least one input is required."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setTimeZone(Ljava/lang/String;)V
    .registers 6

    .line 471
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 473
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptSetTimeZone(J[B)V
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_16} :catch_18

    .line 476
    nop

    .line 477
    return-void

    .line 474
    :catch_18
    move-exception p1

    .line 475
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setVar(ID)V
    .registers 10

    .line 395
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarD(JID)V

    .line 396
    return-void
.end method

.method public whitelist setVar(IF)V
    .registers 6

    .line 384
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarF(JIF)V

    .line 385
    return-void
.end method

.method public whitelist setVar(II)V
    .registers 6

    .line 406
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarI(JII)V

    .line 407
    return-void
.end method

.method public whitelist setVar(IJ)V
    .registers 10

    .line 418
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarJ(JIJ)V

    .line 419
    return-void
.end method

.method public whitelist setVar(ILandroid/renderscript/BaseObj;)V
    .registers 10

    .line 441
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 442
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, p2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 443
    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    if-nez p2, :cond_17

    const-wide/16 v4, 0x0

    goto :goto_1d

    :cond_17
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    :goto_1d
    move-wide v5, v4

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nScriptSetVarObj(JIJ)V

    .line 444
    return-void
.end method

.method public whitelist setVar(ILandroid/renderscript/FieldPacker;)V
    .registers 6

    .line 451
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object p2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarV(JI[B)V

    .line 452
    return-void
.end method

.method public whitelist setVar(ILandroid/renderscript/FieldPacker;Landroid/renderscript/Element;[I)V
    .registers 13

    .line 459
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v4

    iget-object p2, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, p2}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    move v3, p1

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->nScriptSetVarVE(JI[BJ[I)V

    .line 460
    return-void
.end method

.method public whitelist setVar(IZ)V
    .registers 6

    .line 430
    iget-object v0, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Script;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Script;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarI(JII)V

    .line 431
    return-void
.end method
