.class public Landroid/renderscript/Allocation;
.super Landroid/renderscript/BaseObj;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Allocation$MipmapControl;,
        Landroid/renderscript/Allocation$OnBufferAvailableListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o MAX_NUMBER_IO_INPUT_ALLOC:I = 0x10

.field public static final whitelist USAGE_GRAPHICS_CONSTANTS:I = 0x8

.field public static final whitelist USAGE_GRAPHICS_RENDER_TARGET:I = 0x10

.field public static final whitelist USAGE_GRAPHICS_TEXTURE:I = 0x2

.field public static final whitelist USAGE_GRAPHICS_VERTEX:I = 0x4

.field public static final whitelist USAGE_IO_INPUT:I = 0x20

.field public static final whitelist USAGE_IO_OUTPUT:I = 0x40

.field public static final whitelist USAGE_SCRIPT:I = 0x1

.field public static final whitelist USAGE_SHARED:I = 0x80

.field static greylist-max-o mAllocationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/renderscript/Allocation;",
            ">;"
        }
    .end annotation
.end field

.field static greylist-max-o mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field greylist-max-o mAdaptedAllocation:Landroid/renderscript/Allocation;

.field greylist-max-o mAutoPadding:Z

.field greylist-max-o mBitmap:Landroid/graphics/Bitmap;

.field greylist-max-o mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

.field private greylist-max-o mByteBuffer:Ljava/nio/ByteBuffer;

.field private greylist-max-o mByteBufferStride:J

.field greylist-max-o mCurrentCount:I

.field greylist-max-o mCurrentDimX:I

.field greylist-max-o mCurrentDimY:I

.field greylist-max-o mCurrentDimZ:I

.field private greylist-max-o mGetSurfaceSurface:Landroid/view/Surface;

.field greylist-max-o mMipmapControl:Landroid/renderscript/Allocation$MipmapControl;

.field greylist-max-o mOwningType:Z

.field greylist-max-o mReadAllowed:Z

.field greylist-max-o mSelectedArray:[I

.field greylist-max-o mSelectedFace:Landroid/renderscript/Type$CubemapFace;

.field greylist-max-o mSelectedLOD:I

.field greylist-max-o mSelectedX:I

.field greylist-max-o mSelectedY:I

.field greylist-max-o mSelectedZ:I

.field greylist-max-o mSize:I

.field greylist-max-o mTimeStamp:J

.field greylist-max-o mType:Landroid/renderscript/Type;

.field greylist-max-o mUsage:I

.field greylist-max-o mWriteAllowed:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    .line 2653
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 2655
    sget-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 2656
    return-void
.end method

.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V
    .registers 7

    .line 387
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 65
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/renderscript/Allocation;->mOwningType:Z

    .line 72
    const-wide/16 p2, -0x1

    iput-wide p2, p0, Landroid/renderscript/Allocation;->mTimeStamp:J

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/renderscript/Allocation;->mReadAllowed:Z

    .line 74
    iput-boolean v0, p0, Landroid/renderscript/Allocation;->mWriteAllowed:Z

    .line 75
    iput-boolean p1, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    .line 81
    sget-object v0, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    iput-object v0, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    .line 92
    iput-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 93
    iput-wide p2, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    .line 388
    and-int/lit16 p2, p5, -0x100

    if-nez p2, :cond_99

    .line 399
    and-int/lit8 p2, p5, 0x20

    if-eqz p2, :cond_33

    .line 400
    iput-boolean p1, p0, Landroid/renderscript/Allocation;->mWriteAllowed:Z

    .line 402
    and-int/lit8 p1, p5, -0x24

    if-nez p1, :cond_2b

    goto :goto_33

    .line 405
    :cond_2b
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Invalid usage combination."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 409
    :cond_33
    :goto_33
    iput-object p4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 410
    iput p5, p0, Landroid/renderscript/Allocation;->mUsage:I

    .line 412
    if-eqz p4, :cond_4f

    .line 416
    iget-object p1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {p1}, Landroid/renderscript/Type;->getCount()I

    move-result p1

    iget-object p2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {p2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object p2

    invoke-virtual {p2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result p2

    mul-int/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Allocation;->mSize:I

    .line 417
    invoke-direct {p0, p4}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V

    .line 420
    :cond_4f
    :try_start_4f
    sget-object p1, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    sget-object p2, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    iget p3, p0, Landroid/renderscript/Allocation;->mSize:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_60} :catch_69

    .line 424
    nop

    .line 425
    iget-object p1, p0, Landroid/renderscript/Allocation;->guard:Ldalvik/system/CloseGuard;

    const-string p2, "destroy"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 426
    return-void

    .line 421
    :catch_69
    move-exception p1

    .line 422
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "RenderScript_jni"

    invoke-static {p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance p2, Landroid/renderscript/RSRuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 396
    :cond_99
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Unknown usage specified."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    .registers 14

    .line 429
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    .line 430
    iput-boolean p5, v0, Landroid/renderscript/Allocation;->mOwningType:Z

    .line 431
    iput-object p7, v0, Landroid/renderscript/Allocation;->mMipmapControl:Landroid/renderscript/Allocation$MipmapControl;

    .line 432
    return-void
.end method

.method private greylist-max-o copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .registers 25

    .line 1144
    move-object/from16 v0, p0

    const-wide/32 v6, 0x8000

    :try_start_5
    const-string v1, "copy1DRangeFromUnchecked"

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1145
    iget-object v1, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int v15, v1, p2

    .line 1147
    nop

    .line 1148
    iget-boolean v1, v0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v1, :cond_2a

    iget-object v1, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2a

    .line 1149
    const/4 v1, 0x1

    move/from16 v18, v1

    goto :goto_2d

    .line 1151
    :cond_2a
    const/4 v1, 0x0

    move/from16 v18, v1

    :goto_2d
    move-object/from16 v8, p4

    iget v1, v8, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v3, p5, v1

    move/from16 v1, p1

    move/from16 v2, p2

    move v4, v15

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->data1DChecks(IIIIZ)V

    .line 1152
    iget-object v8, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v9

    iget v12, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v0, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v0, v0, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v11, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v16, p4

    move/from16 v17, v0

    invoke-virtual/range {v8 .. v18}, Landroid/renderscript/RenderScript;->nAllocationData1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_5a
    .catchall {:try_start_5 .. :try_end_5a} :catchall_5f

    .line 1155
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1156
    nop

    .line 1157
    return-void

    .line 1155
    :catchall_5f
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1156
    throw v0
.end method

.method private greylist-max-o copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .registers 25

    .line 2098
    move-object/from16 v0, p0

    const-wide/32 v6, 0x8000

    :try_start_5
    const-string v1, "copy1DRangeToUnchecked"

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2099
    iget-object v1, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int v15, v1, p2

    .line 2101
    nop

    .line 2102
    iget-boolean v1, v0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v1, :cond_2a

    iget-object v1, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2a

    .line 2103
    const/4 v1, 0x1

    move/from16 v18, v1

    goto :goto_2d

    .line 2105
    :cond_2a
    const/4 v1, 0x0

    move/from16 v18, v1

    :goto_2d
    move-object/from16 v8, p4

    iget v1, v8, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v3, p5, v1

    move/from16 v1, p1

    move/from16 v2, p2

    move v4, v15

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->data1DChecks(IIIIZ)V

    .line 2106
    iget-object v8, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v9

    iget v12, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v0, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v0, v0, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v11, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v16, p4

    move/from16 v17, v0

    invoke-virtual/range {v8 .. v18}, Landroid/renderscript/RenderScript;->nAllocationRead1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_5a
    .catchall {:try_start_5 .. :try_end_5a} :catchall_5f

    .line 2109
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2110
    nop

    .line 2111
    return-void

    .line 2109
    :catchall_5f
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 2110
    throw v0
.end method

.method private greylist-max-o copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .registers 29

    .line 1753
    move-object/from16 v0, p0

    const-wide/32 v1, 0x8000

    :try_start_5
    const-string v3, "copy3DRangeFromUnchecked"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1754
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 1755
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1756
    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v3, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    mul-int v3, v3, p4

    mul-int v3, v3, p5

    mul-int v3, v3, p6

    .line 1758
    nop

    .line 1759
    move-object/from16 v4, p8

    iget v5, v4, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v5, v5, p9

    .line 1760
    iget-boolean v6, v0, Landroid/renderscript/Allocation;->mAutoPadding:Z
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_81

    const-string v7, "Array too small for allocation type."

    if-eqz v6, :cond_4b

    :try_start_2d
    iget-object v6, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_4b

    .line 1761
    div-int/lit8 v6, v3, 0x4

    mul-int/2addr v6, v8

    if-gt v6, v5, :cond_45

    .line 1764
    nop

    .line 1765
    const/4 v5, 0x1

    move v15, v3

    move/from16 v18, v5

    goto :goto_51

    .line 1762
    :cond_45
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v0, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1767
    :cond_4b
    if-gt v3, v5, :cond_7b

    const/4 v3, 0x0

    move/from16 v18, v3

    move v15, v5

    .line 1771
    :goto_51
    iget-object v4, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v5

    iget v10, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v0, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v0, v0, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v16, p8

    move/from16 v17, v0

    invoke-virtual/range {v4 .. v18}, Landroid/renderscript/RenderScript;->nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_76
    .catchall {:try_start_2d .. :try_end_76} :catchall_81

    .line 1775
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1776
    nop

    .line 1777
    return-void

    .line 1768
    :cond_7b
    :try_start_7b
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v0, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_81

    .line 1775
    :catchall_81
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1776
    throw v0
.end method

.method private greylist-max-o copy3DRangeToUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .registers 29

    .line 2592
    move-object/from16 v0, p0

    const-wide/32 v1, 0x8000

    :try_start_5
    const-string v3, "copy3DRangeToUnchecked"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2593
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 2594
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 2595
    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v3, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    mul-int v3, v3, p4

    mul-int v3, v3, p5

    mul-int v3, v3, p6

    .line 2597
    nop

    .line 2598
    move-object/from16 v4, p8

    iget v5, v4, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v5, v5, p9

    .line 2599
    iget-boolean v6, v0, Landroid/renderscript/Allocation;->mAutoPadding:Z
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_81

    const-string v7, "Array too small for allocation type."

    if-eqz v6, :cond_4b

    :try_start_2d
    iget-object v6, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_4b

    .line 2600
    div-int/lit8 v6, v3, 0x4

    mul-int/2addr v6, v8

    if-gt v6, v5, :cond_45

    .line 2603
    nop

    .line 2604
    const/4 v5, 0x1

    move v15, v3

    move/from16 v18, v5

    goto :goto_51

    .line 2601
    :cond_45
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v0, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2606
    :cond_4b
    if-gt v3, v5, :cond_7b

    const/4 v3, 0x0

    move/from16 v18, v3

    move v15, v5

    .line 2610
    :goto_51
    iget-object v4, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v5

    iget v10, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v0, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v0, v0, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v16, p8

    move/from16 v17, v0

    invoke-virtual/range {v4 .. v18}, Landroid/renderscript/RenderScript;->nAllocationRead3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_76
    .catchall {:try_start_2d .. :try_end_76} :catchall_81

    .line 2613
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2614
    nop

    .line 2615
    return-void

    .line 2607
    :cond_7b
    :try_start_7b
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v0, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_81

    .line 2613
    :catchall_81
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2614
    throw v0
.end method

.method private greylist-max-o copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .registers 16

    .line 693
    const-wide/32 v10, 0x8000

    :try_start_3
    const-string v1, "copyFromUnchecked"

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 694
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 695
    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v1, :cond_22

    .line 696
    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v0 .. v9}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    goto :goto_3e

    .line 697
    :cond_22
    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-lez v1, :cond_34

    .line 698
    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    goto :goto_3e

    .line 700
    :cond_34
    iget v2, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_43

    .line 703
    :goto_3e
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 704
    nop

    .line 705
    return-void

    .line 703
    :catchall_43
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 704
    throw v0
.end method

.method private greylist-max-o copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .registers 15

    .line 1863
    const-wide/32 v1, 0x8000

    :try_start_3
    const-string v0, "copyTo"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1864
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1865
    nop

    .line 1866
    iget-boolean v0, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    const/4 v3, 0x3

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_60

    if-ne v0, v3, :cond_22

    .line 1867
    const/4 v0, 0x1

    move v10, v0

    goto :goto_24

    .line 1869
    :cond_22
    const/4 v0, 0x0

    move v10, v0

    :goto_24
    const-string v0, "Size of output array cannot be smaller than size of allocation."

    if-eqz v10, :cond_39

    .line 1870
    :try_start_28
    iget v4, p2, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v4, p3

    iget p3, p0, Landroid/renderscript/Allocation;->mSize:I

    div-int/lit8 p3, p3, 0x4

    mul-int/2addr p3, v3

    if-lt v4, p3, :cond_33

    goto :goto_40

    .line 1871
    :cond_33
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1875
    :cond_39
    iget v3, p2, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v3, p3

    iget p3, p0, Landroid/renderscript/Allocation;->mSize:I

    if-lt v3, p3, :cond_5a

    .line 1880
    :goto_40
    iget-object v4, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object p3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, p3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget-object p3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object p3, p3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object p3, p3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v9, p3, Landroid/renderscript/Element$DataType;->mSize:I

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v4 .. v10}, Landroid/renderscript/RenderScript;->nAllocationRead(JLjava/lang/Object;Landroid/renderscript/Element$DataType;IZ)V
    :try_end_55
    .catchall {:try_start_28 .. :try_end_55} :catchall_60

    .line 1882
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1883
    nop

    .line 1884
    return-void

    .line 1876
    :cond_5a
    :try_start_5a
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_60

    .line 1882
    :catchall_60
    move-exception v0

    move-object p1, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1883
    throw p1
.end method

.method public static whitelist createAllocations(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;II)[Landroid/renderscript/Allocation;
    .registers 10

    .line 2892
    const-wide/32 v0, 0x8000

    :try_start_3
    const-string v2, "createAllocations"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2893
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2894
    invoke-virtual {p1, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4c

    .line 2898
    new-array v2, p3, [Landroid/renderscript/Allocation;

    .line 2899
    invoke-static {p0, p1, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 2900
    and-int/lit8 p1, p2, 0x20

    if-eqz p1, :cond_39

    .line 2901
    const/16 p1, 0x10

    if-gt p3, p1, :cond_2c

    .line 2906
    aget-object p1, v2, v3

    invoke-virtual {p1, p3}, Landroid/renderscript/Allocation;->setupBufferQueue(I)V

    goto :goto_39

    .line 2902
    :cond_2c
    aget-object p0, v2, v3

    invoke-virtual {p0}, Landroid/renderscript/Allocation;->destroy()V

    .line 2903
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Exceeds the max number of Allocations allowed: 16"

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2909
    :cond_39
    :goto_39
    const/4 p1, 0x1

    :goto_3a
    if-ge p1, p3, :cond_47

    .line 2910
    aget-object p2, v2, v3

    invoke-static {p0, p2}, Landroid/renderscript/Allocation;->createFromAllocation(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;

    move-result-object p2

    aput-object p2, v2, p1
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_54

    .line 2909
    add-int/lit8 p1, p1, 0x1

    goto :goto_3a

    .line 2912
    :cond_47
    nop

    .line 2914
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2912
    return-object v2

    .line 2895
    :cond_4c
    :try_start_4c
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Bad Type"

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_54

    .line 2914
    :catchall_54
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2915
    throw p0
.end method

.method public static whitelist createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .registers 4

    .line 3138
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .registers 13

    .line 3092
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3094
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3095
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 3097
    rem-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_8e

    .line 3100
    div-int/lit8 v2, v2, 0x6

    if-ne v2, v1, :cond_86

    .line 3103
    add-int/lit8 v2, v1, -0x1

    and-int/2addr v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1c

    move v2, v4

    goto :goto_1d

    :cond_1c
    move v2, v3

    .line 3104
    :goto_1d
    if-eqz v2, :cond_7e

    .line 3108
    invoke-static/range {p0 .. p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v6

    .line 3109
    new-instance v2, Landroid/renderscript/Type$Builder;

    invoke-direct {v2, p0, v6}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 3110
    invoke-virtual {v2, v1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 3111
    invoke-virtual {v2, v1}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 3112
    invoke-virtual {v2, v4}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    .line 3113
    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    if-ne p2, v1, :cond_36

    move v3, v4

    :cond_36
    invoke-virtual {v2, v3}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 3114
    invoke-virtual {v2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v8

    .line 3116
    invoke-virtual {v8, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget v3, p2, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object v0, p0

    move-object v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v1

    .line 3117
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_5b

    .line 3120
    new-instance v0, Landroid/renderscript/Allocation;

    const/4 v5, 0x1

    move-object v3, p0

    move-object v7, p2

    move v6, p3

    move-object v4, v8

    invoke-direct/range {v0 .. v7}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V

    return-object v0

    .line 3118
    :cond_5b
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load failed for bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3105
    :cond_7e
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Only power of 2 cube faces supported"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3101
    :cond_86
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Only square cube map faces supported"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3098
    :cond_8e
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Cubemap height must be multiple of 6"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .registers 16

    .line 3233
    sget-object v7, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v8}, Landroid/renderscript/Allocation;->createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .registers 14

    .line 3169
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 3170
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v0, :cond_b1

    .line 3171
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v0, :cond_b1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_b1

    .line 3172
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v0, :cond_b1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_b1

    .line 3173
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v0, :cond_b1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_b1

    .line 3174
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v0, :cond_b1

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_b1

    .line 3175
    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v0, :cond_b1

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_b1

    .line 3178
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4f

    move v1, v3

    goto :goto_50

    :cond_4f
    move v1, v2

    .line 3179
    :goto_50
    if-eqz v1, :cond_a9

    .line 3183
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v1

    .line 3184
    new-instance v4, Landroid/renderscript/Type$Builder;

    invoke-direct {v4, p0, v1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 3185
    invoke-virtual {v4, v0}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 3186
    invoke-virtual {v4, v0}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 3187
    invoke-virtual {v4, v3}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    .line 3188
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    if-ne p7, v0, :cond_69

    move v2, v3

    :cond_69
    invoke-virtual {v4, v2}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 3189
    invoke-virtual {v4}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v0

    .line 3190
    invoke-static {p0, v0, p7, p8}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p7

    .line 3192
    invoke-static {p0, p7}, Landroid/renderscript/AllocationAdapter;->create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;

    move-result-object p0

    .line 3193
    sget-object p8, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {p0, p8}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 3194
    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 3195
    sget-object p1, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 3196
    invoke-virtual {p0, p2}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 3197
    sget-object p1, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 3198
    invoke-virtual {p0, p3}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 3199
    sget-object p1, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 3200
    invoke-virtual {p0, p4}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 3201
    sget-object p1, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 3202
    invoke-virtual {p0, p5}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 3203
    sget-object p1, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 3204
    invoke-virtual {p0, p6}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 3206
    return-object p7

    .line 3180
    :cond_a9
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Only power of 2 cube faces supported"

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3176
    :cond_b1
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Only square cube map faces supported"

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static greylist-max-o createFromAllocation(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;
    .registers 15

    .line 2931
    const-wide/32 v8, 0x8000

    :try_start_3
    const-string v1, "createFromAllcation"

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2932
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2933
    invoke-virtual {p1, p0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    const-wide/16 v10, 0x0

    cmp-long v1, v1, v10

    if-eqz v1, :cond_51

    .line 2937
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    .line 2938
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v4

    .line 2939
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getMipmap()Landroid/renderscript/Allocation$MipmapControl;

    move-result-object v12

    .line 2940
    invoke-virtual {v7, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget v3, v12, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v1

    .line 2941
    cmp-long v0, v1, v10

    if-eqz v0, :cond_49

    .line 2944
    new-instance v0, Landroid/renderscript/Allocation;

    const/4 v5, 0x0

    move-object v3, p0

    move v6, v4

    move-object v4, v7

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V

    move v4, v6

    .line 2945
    and-int/lit8 v1, v4, 0x20

    if-eqz v1, :cond_44

    .line 2946
    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->shareBufferQueue(Landroid/renderscript/Allocation;)V
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_59

    .line 2948
    :cond_44
    nop

    .line 2950
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2948
    return-object v0

    .line 2942
    :cond_49
    :try_start_49
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Allocation creation failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2934
    :cond_51
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Bad input Allocation"

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_59

    .line 2950
    :catchall_59
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2951
    throw v0
.end method

.method public static whitelist createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .registers 4

    .line 3066
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_17

    .line 3067
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/16 v1, 0x83

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0

    .line 3070
    :cond_17
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .registers 17

    .line 2801
    move/from16 v5, p3

    const-wide/32 v8, 0x8000

    :try_start_5
    const-string v0, "createFromBitmap"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2802
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2805
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_3f

    .line 2806
    and-int/lit16 v0, v5, 0x80

    if-nez v0, :cond_37

    .line 2809
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2810
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2811
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2812
    invoke-static {p0, v0, p2, v5}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_b1

    .line 2839
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2812
    return-object p0

    .line 2807
    :cond_37
    :try_start_37
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "USAGE_SHARED cannot be used with a Bitmap that has a null config."

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2815
    :cond_3f
    invoke-static/range {p0 .. p2}, Landroid/renderscript/Allocation;->typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;

    move-result-object v6

    .line 2818
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_b1

    const-string v7, "Load failed."

    const-wide/16 v10, 0x0

    if-ne p2, v0, :cond_89

    .line 2819
    :try_start_4b
    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_86

    const/16 v0, 0x83

    if-ne v5, v0, :cond_86

    .line 2821
    invoke-virtual {v6, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget v3, p2, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J

    move-result-wide v1

    .line 2822
    cmp-long v0, v1, v10

    if-eqz v0, :cond_80

    .line 2827
    new-instance v0, Landroid/renderscript/Allocation;

    const/4 v5, 0x1

    move-object v3, p0

    move-object v7, p2

    move-object v4, v6

    move/from16 v6, p3

    invoke-direct/range {v0 .. v7}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V

    .line 2828
    invoke-direct {v0, p1}, Landroid/renderscript/Allocation;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_7b
    .catchall {:try_start_4b .. :try_end_7b} :catchall_b1

    .line 2829
    nop

    .line 2839
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2829
    return-object v0

    .line 2823
    :cond_80
    :try_start_80
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    invoke-direct {p0, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2819
    :cond_86
    move-object v12, v7

    move-object v7, p2

    goto :goto_8b

    .line 2818
    :cond_89
    move-object v12, v7

    move-object v7, p2

    .line 2833
    :goto_8b
    invoke-virtual {v6, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget v3, v7, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object v0, p0

    move-object v4, p1

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v1

    .line 2834
    cmp-long p1, v1, v10

    if-eqz p1, :cond_ab

    .line 2837
    new-instance v0, Landroid/renderscript/Allocation;

    const/4 v5, 0x1

    move-object v3, p0

    move-object v4, v6

    move/from16 v6, p3

    invoke-direct/range {v0 .. v7}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    :try_end_a7
    .catchall {:try_start_80 .. :try_end_a7} :catchall_b1

    .line 2839
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2837
    return-object v0

    .line 2835
    :cond_ab
    :try_start_ab
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    invoke-direct {p0, v12}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_b1
    .catchall {:try_start_ab .. :try_end_b1} :catchall_b1

    .line 2839
    :catchall_b1
    move-exception v0

    move-object p0, v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2840
    throw p0
.end method

.method public static whitelist createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;
    .registers 5

    .line 3288
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_16

    .line 3289
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x3

    invoke-static {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0

    .line 3293
    :cond_16
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .registers 6

    .line 3259
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3260
    and-int/lit16 v0, p4, 0xe0

    if-nez v0, :cond_13

    .line 3263
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3264
    invoke-static {p0, p1, p3, p4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    .line 3265
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3266
    return-object p0

    .line 3261
    :cond_13
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Unsupported usage specified."

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist createFromString(Landroid/renderscript/RenderScript;Ljava/lang/String;I)Landroid/renderscript/Allocation;
    .registers 5

    .line 3310
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3311
    nop

    .line 3313
    :try_start_4
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 3314
    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    array-length v1, p1

    invoke-static {p0, v0, v1, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object p0

    .line 3315
    invoke-virtual {p0, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_17

    .line 3316
    return-object p0

    .line 3318
    :catch_17
    move-exception p0

    .line 3319
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    const-string p1, "Could not convert string to utf-8."

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;
    .registers 4

    .line 2754
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;
    .registers 14

    .line 2728
    const-wide/32 v8, 0x8000

    :try_start_3
    const-string v1, "createSized"

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2729
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2730
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 2731
    invoke-virtual {v1, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 2732
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v7

    .line 2734
    invoke-virtual {v7, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    sget-object v3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    iget v3, v3, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v1

    .line 2735
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_3c

    .line 2738
    new-instance v0, Landroid/renderscript/Allocation;

    move-object v4, v7

    sget-object v7, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v5, 0x1

    move-object v3, p0

    move v6, p3

    invoke-direct/range {v0 .. v7}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_44

    .line 2740
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2738
    return-object v0

    .line 2736
    :cond_3c
    :try_start_3c
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Allocation creation failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_44

    .line 2740
    :catchall_44
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2741
    throw v0
.end method

.method public static whitelist createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;
    .registers 4

    .line 2711
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;
    .registers 4

    .line 2698
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {p0, p1, v0, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .registers 16

    .line 2670
    const-wide/32 v8, 0x8000

    :try_start_3
    const-string v1, "createTyped"

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2671
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2672
    invoke-virtual {p1, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    const-wide/16 v10, 0x0

    cmp-long v1, v1, v10

    if-eqz v1, :cond_3d

    .line 2676
    invoke-virtual {p1, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget v3, p2, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v1

    .line 2677
    cmp-long v0, v1, v10

    if-eqz v0, :cond_35

    .line 2680
    new-instance v0, Landroid/renderscript/Allocation;

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_45

    .line 2682
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2680
    return-object v0

    .line 2678
    :cond_35
    :try_start_35
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Allocation creation failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2673
    :cond_3d
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Bad Type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_45

    .line 2682
    :catchall_45
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2683
    throw v0
.end method

.method private greylist-max-o data1DChecks(IIIIZ)V
    .registers 8

    .line 1105
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1106
    if-ltz p1, :cond_67

    .line 1109
    const/4 v0, 0x1

    if-lt p2, v0, :cond_5f

    .line 1112
    add-int v0, p1, p2

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    if-gt v0, v1, :cond_2a

    .line 1116
    const-string p1, "Array too small for allocation type."

    if-eqz p5, :cond_21

    .line 1117
    div-int/lit8 p4, p4, 0x4

    mul-int/lit8 p4, p4, 0x3

    if-lt p3, p4, :cond_1b

    goto :goto_23

    .line 1118
    :cond_1b
    new-instance p2, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {p2, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1121
    :cond_21
    if-lt p3, p4, :cond_24

    .line 1125
    :goto_23
    return-void

    .line 1122
    :cond_24
    new-instance p2, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {p2, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1113
    :cond_2a
    new-instance p3, Landroid/renderscript/RSIllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Overflow, Available count "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget p5, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ", got "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " at offset "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1110
    :cond_5f
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Count must be >= 1."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1107
    :cond_67
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Offset must be >= 0."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static greylist-max-o elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;
    .registers 4

    .line 2758
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    .line 2759
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_d

    .line 2760
    invoke-static {p0}, Landroid/renderscript/Element;->A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p0

    return-object p0

    .line 2762
    :cond_d
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_16

    .line 2763
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p0

    return-object p0

    .line 2765
    :cond_16
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_1f

    .line 2766
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p0

    return-object p0

    .line 2768
    :cond_1f
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_28

    .line 2769
    invoke-static {p0}, Landroid/renderscript/Element;->RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p0

    return-object p0

    .line 2771
    :cond_28
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad bitmap type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o getIDSafe()J
    .registers 3

    .line 264
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_d

    .line 265
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    return-wide v0

    .line 267
    :cond_d
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    return-wide v0
.end method

.method static greylist-max-o sendBufferNotification(J)V
    .registers 5

    .line 3347
    sget-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3348
    :try_start_3
    sget-object v1, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/renderscript/Allocation;

    .line 3350
    if-eqz p0, :cond_1b

    iget-object p1, p0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    if-eqz p1, :cond_1b

    .line 3351
    iget-object p1, p0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    invoke-interface {p1, p0}, Landroid/renderscript/Allocation$OnBufferAvailableListener;->onBufferAvailable(Landroid/renderscript/Allocation;)V

    .line 3353
    :cond_1b
    monitor-exit v0

    .line 3354
    return-void

    .line 3353
    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method private greylist-max-o setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 383
    iput-object p1, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    .line 384
    return-void
.end method

.method static greylist-max-o typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;
    .registers 5

    .line 2776
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v0

    .line 2777
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 2778
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 2779
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 2780
    sget-object p0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    if-ne p2, p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    invoke-virtual {v1, p0}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 2781
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o updateCacheInfo(Landroid/renderscript/Type;)V
    .registers 4

    .line 370
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    .line 371
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    move-result v0

    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    .line 372
    invoke-virtual {p1}, Landroid/renderscript/Type;->getZ()I

    move-result p1

    iput p1, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    .line 373
    iget p1, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iput p1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 374
    iget p1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_22

    .line 375
    iget p1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    mul-int/2addr p1, v1

    iput p1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 377
    :cond_22
    iget p1, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-le p1, v0, :cond_2d

    .line 378
    iget p1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    mul-int/2addr p1, v0

    iput p1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 380
    :cond_2d
    return-void
.end method

.method private greylist-max-o validate2DRange(IIII)V
    .registers 6

    .line 1457
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_5

    goto :goto_17

    .line 1461
    :cond_5
    if-ltz p1, :cond_28

    if-ltz p2, :cond_28

    .line 1464
    if-ltz p4, :cond_20

    if-ltz p3, :cond_20

    .line 1467
    add-int/2addr p1, p3

    iget p3, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    if-gt p1, p3, :cond_18

    add-int/2addr p2, p4

    iget p1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-gt p2, p1, :cond_18

    .line 1471
    :goto_17
    return-void

    .line 1468
    :cond_18
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Updated region larger than allocation."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1465
    :cond_20
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Height or width cannot be negative."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1462
    :cond_28
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Offset cannot be negative."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o validate3DRange(IIIIII)V
    .registers 8

    .line 1727
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_5

    goto :goto_20

    .line 1731
    :cond_5
    if-ltz p1, :cond_31

    if-ltz p2, :cond_31

    if-ltz p3, :cond_31

    .line 1734
    if-ltz p5, :cond_29

    if-ltz p4, :cond_29

    if-ltz p6, :cond_29

    .line 1737
    add-int/2addr p1, p4

    iget p4, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    if-gt p1, p4, :cond_21

    add-int/2addr p2, p5

    iget p1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-gt p2, p1, :cond_21

    add-int/2addr p3, p6

    iget p1, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-gt p3, p1, :cond_21

    .line 1741
    :goto_20
    return-void

    .line 1738
    :cond_21
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Updated region larger than allocation."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1735
    :cond_29
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Height or width cannot be negative."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1732
    :cond_31
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Offset cannot be negative."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o validateBitmapFormat(Landroid/graphics/Bitmap;)V
    .registers 9

    .line 637
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    .line 638
    if-eqz p1, :cond_19d

    .line 641
    sget-object v0, Landroid/renderscript/Allocation$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const-string v2, " bytes, passed bitmap was "

    const-string v3, " of "

    const-string v4, ", type "

    const-string v5, "Allocation kind is "

    packed-switch v0, :pswitch_data_1a6

    goto/16 :goto_19c

    .line 672
    :pswitch_1c
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v0, v0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v6, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne v0, v6, :cond_36

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 673
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    if-ne v0, v1, :cond_36

    goto/16 :goto_19c

    .line 674
    :cond_36
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 675
    invoke-virtual {v5}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v5

    iget-object v5, v5, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 676
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    iget-object v4, v4, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 677
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :pswitch_7f
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v0, v0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v6, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-ne v0, v6, :cond_99

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 663
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    if-ne v0, v1, :cond_99

    goto/16 :goto_19c

    .line 664
    :cond_99
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 665
    invoke-virtual {v5}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v5

    iget-object v5, v5, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 666
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    iget-object v4, v4, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 667
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :pswitch_e2
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v0, v0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne v0, v1, :cond_fd

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 653
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_fd

    goto/16 :goto_19c

    .line 654
    :cond_fd
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 655
    invoke-virtual {v5}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v5

    iget-object v5, v5, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 656
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    iget-object v4, v4, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 657
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :pswitch_146
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v0, v0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    if-ne v0, v1, :cond_153

    goto :goto_19c

    .line 644
    :cond_153
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 645
    invoke-virtual {v5}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v5

    iget-object v5, v5, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 646
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    iget-object v4, v4, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 647
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :goto_19c
    return-void

    .line 639
    :cond_19d
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Bitmap has an unsupported format for this operation"

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_1a6
    .packed-switch 0x1
        :pswitch_146
        :pswitch_e2
        :pswitch_7f
        :pswitch_1c
    .end packed-switch
.end method

.method private greylist-max-o validateBitmapSize(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 686
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_11

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne v0, p1, :cond_11

    .line 689
    return-void

    .line 687
    :cond_11
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Cannot update allocation from bitmap, sizes mismatch"

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o validateIsFloat32()V
    .registers 4

    .line 477
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_b

    .line 478
    return-void

    .line 480
    :cond_b
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "32 bit float source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o validateIsFloat64()V
    .registers 4

    .line 485
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_b

    .line 486
    return-void

    .line 488
    :cond_b
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "64 bit float source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o validateIsInt16OrFloat16()V
    .registers 4

    .line 458
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_3e

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_3e

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1f

    goto :goto_3e

    .line 463
    :cond_1f
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "16 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_3e
    :goto_3e
    return-void
.end method

.method private greylist-max-o validateIsInt32()V
    .registers 4

    .line 449
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_34

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_15

    goto :goto_34

    .line 453
    :cond_15
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "32 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_34
    :goto_34
    return-void
.end method

.method private greylist-max-o validateIsInt64()V
    .registers 4

    .line 440
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_34

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_15

    goto :goto_34

    .line 444
    :cond_15
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "64 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_34
    :goto_34
    return-void
.end method

.method private greylist-max-o validateIsInt8()V
    .registers 4

    .line 468
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_34

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_15

    goto :goto_34

    .line 472
    :cond_15
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "8 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_34
    :goto_34
    return-void
.end method

.method private greylist-max-o validateIsObject()V
    .registers 4

    .line 493
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_84

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_84

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_84

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_84

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_84

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_84

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_84

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_84

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_84

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_65

    goto :goto_84

    .line 505
    :cond_65
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_84
    :goto_84
    return-void
.end method

.method private greylist-max-o validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;
    .registers 5

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 100
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 105
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_27

    .line 106
    if-eqz p2, :cond_24

    .line 107
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt64()V

    .line 108
    iget-object p1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object p1, p1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object p1, p1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object p1

    .line 110
    :cond_24
    sget-object p1, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    return-object p1

    .line 113
    :cond_27
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3a

    .line 114
    if-eqz p2, :cond_37

    .line 115
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 116
    iget-object p1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object p1, p1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object p1, p1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object p1

    .line 118
    :cond_37
    sget-object p1, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    return-object p1

    .line 121
    :cond_3a
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4d

    .line 122
    if-eqz p2, :cond_4a

    .line 123
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 124
    iget-object p1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object p1, p1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object p1, p1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object p1

    .line 126
    :cond_4a
    sget-object p1, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    return-object p1

    .line 129
    :cond_4d
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_60

    .line 130
    if-eqz p2, :cond_5d

    .line 131
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 132
    iget-object p1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object p1, p1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object p1, p1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object p1

    .line 134
    :cond_5d
    sget-object p1, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    return-object p1

    .line 137
    :cond_60
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6c

    .line 138
    if-eqz p2, :cond_69

    .line 139
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 141
    :cond_69
    sget-object p1, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    return-object p1

    .line 144
    :cond_6c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_78

    .line 145
    if-eqz p2, :cond_75

    .line 146
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat64()V

    .line 148
    :cond_75
    sget-object p1, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    return-object p1

    .line 151
    :cond_78
    new-instance p2, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parameter of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "[] is not compatible with data type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 152
    invoke-virtual {v0}, Landroid/renderscript/Element$DataType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " of allocation"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 102
    :cond_af
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Object passed is not an Array of primitives."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_b7
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Object passed is not an array of primitives."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist copy1DRangeFrom(IILandroid/renderscript/Allocation;I)V
    .registers 25

    .line 1448
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "copy1DRangeFrom"

    const-wide/32 v3, 0x8000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1449
    iget-object v5, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v6

    iget v10, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v11, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    iget-object v0, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    .line 1451
    invoke-virtual {v1, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v14

    iget v0, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v1, v1, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v1, v1, Landroid/renderscript/Type$CubemapFace;->mID:I

    .line 1449
    const/4 v9, 0x0

    const/4 v13, 0x1

    const/16 v17, 0x0

    move/from16 v8, p1

    move/from16 v12, p2

    move/from16 v16, p4

    move/from16 v18, v0

    move/from16 v19, v1

    invoke-virtual/range {v5 .. v19}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V

    .line 1453
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1454
    return-void
.end method

.method public whitelist copy1DRangeFrom(IILjava/lang/Object;)V
    .registers 11

    .line 1317
    nop

    .line 1318
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v5

    .line 1319
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    .line 1317
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1320
    return-void
.end method

.method public whitelist copy1DRangeFrom(II[B)V
    .registers 10

    .line 1405
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 1406
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1407
    return-void
.end method

.method public whitelist copy1DRangeFrom(II[F)V
    .registers 10

    .line 1434
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 1435
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1436
    return-void
.end method

.method public whitelist copy1DRangeFrom(II[I)V
    .registers 10

    .line 1347
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 1348
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1349
    return-void
.end method

.method public whitelist copy1DRangeFrom(II[S)V
    .registers 10

    .line 1376
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 1377
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1378
    return-void
.end method

.method public whitelist copy1DRangeFromUnchecked(IILjava/lang/Object;)V
    .registers 11

    .line 1183
    nop

    .line 1184
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v5

    .line 1185
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    .line 1183
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1186
    return-void
.end method

.method public whitelist copy1DRangeFromUnchecked(II[B)V
    .registers 10

    .line 1263
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1264
    return-void
.end method

.method public whitelist copy1DRangeFromUnchecked(II[F)V
    .registers 10

    .line 1289
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1290
    return-void
.end method

.method public whitelist copy1DRangeFromUnchecked(II[I)V
    .registers 10

    .line 1211
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1212
    return-void
.end method

.method public whitelist copy1DRangeFromUnchecked(II[S)V
    .registers 10

    .line 1237
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1238
    return-void
.end method

.method public whitelist copy1DRangeTo(IILjava/lang/Object;)V
    .registers 11

    .line 2270
    nop

    .line 2271
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v5

    .line 2272
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    .line 2270
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2273
    return-void
.end method

.method public whitelist copy1DRangeTo(II[B)V
    .registers 10

    .line 2358
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 2359
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2360
    return-void
.end method

.method public whitelist copy1DRangeTo(II[F)V
    .registers 10

    .line 2387
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 2388
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2389
    return-void
.end method

.method public whitelist copy1DRangeTo(II[I)V
    .registers 10

    .line 2300
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 2301
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2302
    return-void
.end method

.method public whitelist copy1DRangeTo(II[S)V
    .registers 10

    .line 2329
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 2330
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2331
    return-void
.end method

.method public whitelist copy1DRangeToUnchecked(IILjava/lang/Object;)V
    .registers 11

    .line 2136
    nop

    .line 2137
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v5

    .line 2138
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    .line 2136
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2139
    return-void
.end method

.method public whitelist copy1DRangeToUnchecked(II[B)V
    .registers 10

    .line 2216
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2217
    return-void
.end method

.method public whitelist copy1DRangeToUnchecked(II[F)V
    .registers 10

    .line 2242
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2243
    return-void
.end method

.method public whitelist copy1DRangeToUnchecked(II[I)V
    .registers 10

    .line 2164
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2165
    return-void
.end method

.method public whitelist copy1DRangeToUnchecked(II[S)V
    .registers 10

    .line 2190
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2191
    return-void
.end method

.method public whitelist copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
    .registers 28

    .line 1686
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    const-wide/32 v2, 0x8000

    :try_start_7
    const-string v4, "copy2DRangeFrom"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1687
    iget-object v4, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->validate()V

    .line 1688
    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 1689
    iget-object v5, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v6

    iget v10, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v4, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v11, v4, Landroid/renderscript/Type$CubemapFace;->mID:I

    iget-object v0, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    .line 1691
    invoke-virtual {v1, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v14

    iget v0, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v1, v1, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v1, v1, Landroid/renderscript/Type$CubemapFace;->mID:I

    .line 1689
    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, v0

    move/from16 v19, v1

    invoke-virtual/range {v5 .. v19}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_44

    .line 1694
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1695
    nop

    .line 1696
    return-void

    .line 1694
    :catchall_44
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1695
    throw v0
.end method

.method public whitelist copy2DRangeFrom(IIIILjava/lang/Object;)V
    .registers 17

    .line 1530
    const-wide/32 v1, 0x8000

    :try_start_3
    const-string v0, "copy2DRangeFrom"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1531
    nop

    .line 1532
    const/4 v0, 0x1

    move-object/from16 v8, p5

    invoke-direct {p0, v8, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v9

    .line 1533
    invoke-static {v8}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    .line 1531
    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v10}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_21

    .line 1535
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1536
    nop

    .line 1537
    return-void

    .line 1535
    :catchall_21
    move-exception v0

    move-object p1, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1536
    throw p1
.end method

.method public whitelist copy2DRangeFrom(IIII[B)V
    .registers 14

    .line 1567
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 1568
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1570
    return-void
.end method

.method public whitelist copy2DRangeFrom(IIII[F)V
    .registers 14

    .line 1666
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 1667
    sget-object v6, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1669
    return-void
.end method

.method public whitelist copy2DRangeFrom(IIII[I)V
    .registers 14

    .line 1633
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 1634
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1636
    return-void
.end method

.method public whitelist copy2DRangeFrom(IIII[S)V
    .registers 14

    .line 1600
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 1601
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1603
    return-void
.end method

.method public whitelist copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    .registers 16

    .line 1709
    const-wide/32 v1, 0x8000

    :try_start_3
    const-string v0, "copy2DRangeFrom"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1710
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1711
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_32

    .line 1712
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1713
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1714
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1715
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_57

    .line 1722
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1716
    return-void

    .line 1718
    :cond_32
    :try_start_32
    invoke-direct {p0, p3}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 1719
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, p1, p2, v0, v3}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 1720
    iget-object v4, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v5

    iget v9, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v0, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v10, v0, Landroid/renderscript/Type$CubemapFace;->mID:I

    move v7, p1

    move v8, p2

    move-object v11, p3

    invoke-virtual/range {v4 .. v11}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V
    :try_end_52
    .catchall {:try_start_32 .. :try_end_52} :catchall_57

    .line 1722
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1723
    nop

    .line 1724
    return-void

    .line 1722
    :catchall_57
    move-exception v0

    move-object p1, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1723
    throw p1
.end method

.method greylist-max-o copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .registers 26

    .line 1476
    move-object/from16 v0, p0

    const-wide/32 v1, 0x8000

    :try_start_5
    const-string v3, "copy2DRangeFromUnchecked"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1477
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 1478
    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 1479
    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v3, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    mul-int v3, v3, p3

    mul-int v3, v3, p4

    .line 1481
    nop

    .line 1482
    move-object/from16 v15, p6

    iget v4, v15, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v4, v4, p7

    .line 1483
    iget-boolean v5, v0, Landroid/renderscript/Allocation;->mAutoPadding:Z
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_7d

    const-string v6, "Array too small for allocation type."

    if-eqz v5, :cond_49

    :try_start_2b
    iget-object v5, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v5}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_49

    .line 1484
    div-int/lit8 v5, v3, 0x4

    mul-int/2addr v5, v7

    if-gt v5, v4, :cond_43

    .line 1487
    nop

    .line 1488
    const/4 v4, 0x1

    move v14, v3

    move/from16 v17, v4

    goto :goto_4f

    .line 1485
    :cond_43
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v0, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1490
    :cond_49
    if-gt v3, v4, :cond_77

    const/4 v3, 0x0

    move/from16 v17, v3

    move v14, v4

    .line 1494
    :goto_4f
    iget-object v4, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v5

    iget v9, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v3, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v10, v3, Landroid/renderscript/Type$CubemapFace;->mID:I

    iget-object v0, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v0, v0, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v16, v0

    invoke-virtual/range {v4 .. v17}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_72
    .catchall {:try_start_2b .. :try_end_72} :catchall_7d

    .line 1498
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1499
    nop

    .line 1500
    return-void

    .line 1491
    :cond_77
    :try_start_77
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v0, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_7d

    .line 1498
    :catchall_7d
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1499
    throw v0
.end method

.method public whitelist copy2DRangeTo(IIIILjava/lang/Object;)V
    .registers 15

    .line 2447
    nop

    .line 2448
    const/4 v0, 0x1

    invoke-direct {p0, p5, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v7

    .line 2449
    invoke-static {p5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    .line 2447
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2450
    return-void
.end method

.method public whitelist copy2DRangeTo(IIII[B)V
    .registers 14

    .line 2479
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 2480
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2482
    return-void
.end method

.method public whitelist copy2DRangeTo(IIII[F)V
    .registers 14

    .line 2575
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 2576
    sget-object v6, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2578
    return-void
.end method

.method public whitelist copy2DRangeTo(IIII[I)V
    .registers 14

    .line 2543
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 2544
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2546
    return-void
.end method

.method public whitelist copy2DRangeTo(IIII[S)V
    .registers 14

    .line 2511
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 2512
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2514
    return-void
.end method

.method greylist-max-o copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .registers 26

    .line 2395
    move-object/from16 v0, p0

    const-wide/32 v1, 0x8000

    :try_start_5
    const-string v3, "copy2DRangeToUnchecked"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2396
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 2397
    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 2398
    iget-object v3, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v3, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    mul-int v3, v3, p3

    mul-int v3, v3, p4

    .line 2400
    nop

    .line 2401
    move-object/from16 v15, p6

    iget v4, v15, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v4, v4, p7

    .line 2402
    iget-boolean v5, v0, Landroid/renderscript/Allocation;->mAutoPadding:Z
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_7d

    const-string v6, "Array too small for allocation type."

    if-eqz v5, :cond_49

    :try_start_2b
    iget-object v5, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v5}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_49

    .line 2403
    div-int/lit8 v5, v3, 0x4

    mul-int/2addr v5, v7

    if-gt v5, v4, :cond_43

    .line 2406
    nop

    .line 2407
    const/4 v4, 0x1

    move v14, v3

    move/from16 v17, v4

    goto :goto_4f

    .line 2404
    :cond_43
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v0, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2409
    :cond_49
    if-gt v3, v4, :cond_77

    const/4 v3, 0x0

    move/from16 v17, v3

    move v14, v4

    .line 2413
    :goto_4f
    iget-object v4, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v5

    iget v9, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v3, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v10, v3, Landroid/renderscript/Type$CubemapFace;->mID:I

    iget-object v0, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v0, v0, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v16, v0

    invoke-virtual/range {v4 .. v17}, Landroid/renderscript/RenderScript;->nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_72
    .catchall {:try_start_2b .. :try_end_72} :catchall_7d

    .line 2416
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2417
    nop

    .line 2418
    return-void

    .line 2410
    :cond_77
    :try_start_77
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v0, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_7d

    .line 2416
    :catchall_7d
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2417
    throw v0
.end method

.method public whitelist copy3DRangeFrom(IIIIIILandroid/renderscript/Allocation;III)V
    .registers 30

    .line 1835
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    iget-object v2, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 1836
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1837
    iget-object v3, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    iget v9, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v0, v0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    .line 1838
    invoke-virtual {v1, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v13

    iget v0, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    .line 1837
    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v18, v0

    invoke-virtual/range {v3 .. v18}, Landroid/renderscript/RenderScript;->nAllocationData3D(JIIIIIIIJIIII)V

    .line 1840
    return-void
.end method

.method public whitelist copy3DRangeFrom(IIIIIILjava/lang/Object;)V
    .registers 21

    .line 1809
    const-wide/32 v1, 0x8000

    :try_start_3
    const-string v0, "copy3DRangeFrom"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1810
    nop

    .line 1811
    const/4 v0, 0x1

    move-object/from16 v10, p7

    invoke-direct {p0, v10, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v11

    .line 1812
    invoke-static {v10}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v12

    .line 1810
    move-object v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v3 .. v12}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_27

    .line 1814
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1815
    nop

    .line 1816
    return-void

    .line 1814
    :catchall_27
    move-exception v0

    move-object p1, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1815
    throw p1
.end method

.method public whitelist copy3DRangeTo(IIIIIILjava/lang/Object;)V
    .registers 19

    .line 2646
    nop

    .line 2647
    const/4 v0, 0x1

    move-object/from16 v8, p7

    invoke-direct {p0, v8, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v9

    .line 2648
    invoke-static {v8}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    .line 2646
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v10}, Landroid/renderscript/Allocation;->copy3DRangeToUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2649
    return-void
.end method

.method public whitelist copyFrom(Landroid/graphics/Bitmap;)V
    .registers 8

    .line 995
    const-wide/32 v0, 0x8000

    :try_start_3
    const-string v2, "copyFrom"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 996
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 997
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_32

    .line 998
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 999
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1000
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1001
    invoke-virtual {p0, v2}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_48

    .line 1008
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1002
    return-void

    .line 1004
    :cond_32
    :try_start_32
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 1005
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 1006
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_48

    .line 1008
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1009
    nop

    .line 1010
    return-void

    .line 1008
    :catchall_48
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1009
    throw p1
.end method

.method public whitelist copyFrom(Landroid/renderscript/Allocation;)V
    .registers 13

    .line 1020
    const-wide/32 v1, 0x8000

    :try_start_3
    const-string v0, "copyFrom"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1021
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1022
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/renderscript/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1025
    iget v6, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v7, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v3 .. v10}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_33

    .line 1027
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1028
    nop

    .line 1029
    return-void

    .line 1023
    :cond_2b
    :try_start_2b
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Types of allocations must match."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 1027
    :catchall_33
    move-exception v0

    move-object p1, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1028
    throw p1
.end method

.method public whitelist copyFrom(Ljava/lang/Object;)V
    .registers 6

    .line 864
    const-wide/32 v0, 0x8000

    :try_start_3
    const-string v2, "copyFrom"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 865
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v2

    .line 866
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 865
    invoke-direct {p0, p1, v2, v3}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_19

    .line 868
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 869
    nop

    .line 870
    return-void

    .line 868
    :catchall_19
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 869
    throw p1
.end method

.method public whitelist copyFrom([B)V
    .registers 4

    .line 949
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 950
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 951
    return-void
.end method

.method public whitelist copyFrom([F)V
    .registers 4

    .line 976
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 977
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 978
    return-void
.end method

.method public whitelist copyFrom([I)V
    .registers 4

    .line 895
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 896
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 897
    return-void
.end method

.method public whitelist copyFrom([Landroid/renderscript/BaseObj;)V
    .registers 10

    .line 610
    const-wide/32 v0, 0x8000

    :try_start_3
    const-string v2, "copyFrom"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 611
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 612
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsObject()V

    .line 613
    array-length v2, p1

    iget v3, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    if-ne v2, v3, :cond_59

    .line 618
    sget v2, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3a

    .line 619
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [J

    .line 620
    move v3, v4

    :goto_22
    array-length v5, p1

    if-ge v3, v5, :cond_34

    .line 621
    mul-int/lit8 v5, v3, 0x4

    aget-object v6, p1, v3

    iget-object v7, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v2, v5

    .line 620
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 623
    :cond_34
    iget p1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v4, p1, v2}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;)V

    .line 624
    goto :goto_54

    .line 625
    :cond_3a
    array-length v2, p1

    new-array v2, v2, [I

    .line 626
    move v3, v4

    :goto_3e
    array-length v5, p1

    if-ge v3, v5, :cond_4f

    .line 627
    aget-object v5, p1, v3

    iget-object v6, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5, v6}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    long-to-int v5, v5

    aput v5, v2, v3

    .line 626
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 629
    :cond_4f
    iget p1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v4, p1, v2}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_7f

    .line 632
    :goto_54
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 633
    nop

    .line 634
    return-void

    .line 614
    :cond_59
    :try_start_59
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array size mismatch, allocation sizeX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", array length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7f
    .catchall {:try_start_59 .. :try_end_7f} :catchall_7f

    .line 632
    :catchall_7f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 633
    throw p1
.end method

.method public whitelist copyFrom([S)V
    .registers 4

    .line 922
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 923
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 924
    return-void
.end method

.method public whitelist copyFromUnchecked(Ljava/lang/Object;)V
    .registers 6

    .line 731
    const-wide/32 v0, 0x8000

    :try_start_3
    const-string v2, "copyFromUnchecked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 732
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v2

    .line 733
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 732
    invoke-direct {p0, p1, v2, v3}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_19

    .line 735
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 736
    nop

    .line 737
    return-void

    .line 735
    :catchall_19
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 736
    throw p1
.end method

.method public whitelist copyFromUnchecked([B)V
    .registers 4

    .line 811
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 812
    return-void
.end method

.method public whitelist copyFromUnchecked([F)V
    .registers 4

    .line 836
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 837
    return-void
.end method

.method public whitelist copyFromUnchecked([I)V
    .registers 4

    .line 761
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 762
    return-void
.end method

.method public whitelist copyFromUnchecked([S)V
    .registers 4

    .line 786
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 787
    return-void
.end method

.method public whitelist copyTo(Landroid/graphics/Bitmap;)V
    .registers 7

    .line 1851
    const-wide/32 v0, 0x8000

    :try_start_3
    const-string v2, "copyTo"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1852
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 1853
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 1854
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 1855
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_23

    .line 1857
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1858
    nop

    .line 1859
    return-void

    .line 1857
    :catchall_23
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1858
    throw p1
.end method

.method public whitelist copyTo(Ljava/lang/Object;)V
    .registers 4

    .line 1908
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v0

    .line 1909
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 1908
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1910
    return-void
.end method

.method public whitelist copyTo([B)V
    .registers 4

    .line 1935
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 1936
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1937
    return-void
.end method

.method public whitelist copyTo([F)V
    .registers 4

    .line 2016
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 2017
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 2018
    return-void
.end method

.method public whitelist copyTo([I)V
    .registers 4

    .line 1989
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 1990
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1991
    return-void
.end method

.method public whitelist copyTo([S)V
    .registers 4

    .line 1962
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 1963
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1964
    return-void
.end method

.method public greylist-max-o copyToFieldPacker(IIIILandroid/renderscript/FieldPacker;)V
    .registers 16

    .line 2033
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 2034
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-ge p4, v1, :cond_83

    .line 2037
    if-ltz p1, :cond_7b

    .line 2040
    if-ltz p2, :cond_73

    .line 2043
    if-ltz p3, :cond_6b

    .line 2047
    invoke-virtual {p5}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v8

    .line 2048
    array-length v9, v8

    .line 2049
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v1, v1, p4

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    .line 2050
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mArraySizes:[I

    aget v2, v2, p4

    mul-int/2addr v1, v2

    .line 2052
    if-ne v9, v1, :cond_42

    .line 2057
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    move-object v3, v1

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v1

    iget v6, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move v4, p2

    move v5, p3

    move v7, p4

    move-object v0, v3

    move v3, p1

    invoke-virtual/range {v0 .. v9}, Landroid/renderscript/RenderScript;->nAllocationElementRead(JIIIII[BI)V

    .line 2059
    return-void

    .line 2053
    :cond_42
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field packer sizelength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match component size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2044
    :cond_6b
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset z must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2041
    :cond_73
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset y must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2038
    :cond_7b
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset x must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2035
    :cond_83
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component_number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist destroy()V
    .registers 2

    .line 3362
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    .line 3363
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    .line 3366
    :cond_a
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/renderscript/Allocation;->mOwningType:Z

    if-eqz v0, :cond_17

    .line 3367
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    .line 3370
    :cond_17
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    .line 3371
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 435
    sget-object v0, Landroid/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    iget v2, p0, Landroid/renderscript/Allocation;->mSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-super {p0}, Landroid/renderscript/BaseObj;->finalize()V

    .line 437
    return-void
.end method

.method public whitelist generateMipmaps()V
    .registers 4

    .line 1138
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nAllocationGenerateMipmaps(J)V

    .line 1139
    return-void
.end method

.method public whitelist getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 10

    .line 2857
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 2860
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_75

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 2861
    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    move-result v0

    const v1, 0x32315659

    if-eq v0, v1, :cond_75

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 2862
    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_75

    .line 2865
    iget-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_31

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_65

    .line 2866
    :cond_31
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int v6, v0, v1

    .line 2867
    const/4 v0, 0x1

    new-array v5, v0, [J

    .line 2868
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v7

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/renderscript/RenderScript;->nAllocationGetByteBuffer(J[JIII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 2869
    const/4 v0, 0x0

    aget-wide v0, v5, v0

    iput-wide v0, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    .line 2871
    :cond_65
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_72

    .line 2872
    iget-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 2874
    :cond_72
    iget-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0

    .line 2863
    :cond_75
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "YUV format is not supported for getByteBuffer()."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2858
    :cond_7d
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cubemap is not supported for getByteBuffer()."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBytesSize()I
    .registers 5

    .line 363
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget v0, v0, Landroid/renderscript/Type;->mDimYuv:I

    if-eqz v0, :cond_21

    .line 364
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 366
    :cond_21
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public whitelist getElement()Landroid/renderscript/Element;
    .registers 2

    .line 279
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getMipmap()Landroid/renderscript/Allocation$MipmapControl;
    .registers 2

    .line 300
    iget-object v0, p0, Landroid/renderscript/Allocation;->mMipmapControl:Landroid/renderscript/Allocation$MipmapControl;

    return-object v0
.end method

.method public whitelist getStride()J
    .registers 5

    .line 2990
    iget-wide v0, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 2991
    invoke-virtual {p0}, Landroid/renderscript/Allocation;->getByteBuffer()Ljava/nio/ByteBuffer;

    .line 2993
    :cond_b
    iget-wide v0, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    return-wide v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .registers 4

    .line 3025
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1b

    .line 3029
    iget-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    if-nez v0, :cond_18

    .line 3030
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nAllocationGetSurface(J)Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    .line 3033
    :cond_18
    iget-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    return-object v0

    .line 3026
    :cond_1b
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Allocation is not a surface texture."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTimeStamp()J
    .registers 3

    .line 3013
    iget-wide v0, p0, Landroid/renderscript/Allocation;->mTimeStamp:J

    return-wide v0
.end method

.method public whitelist getType()Landroid/renderscript/Type;
    .registers 2

    .line 527
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    return-object v0
.end method

.method public whitelist getUsage()I
    .registers 2

    .line 289
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    return v0
.end method

.method public whitelist ioReceive()V
    .registers 6

    .line 591
    const-wide/32 v0, 0x8000

    :try_start_3
    const-string v2, "ioReceive"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 592
    iget v2, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_26

    .line 596
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 597
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/RenderScript;->nAllocationIoReceive(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/renderscript/Allocation;->mTimeStamp:J
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_2e

    .line 599
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 600
    nop

    .line 601
    return-void

    .line 593
    :cond_26
    :try_start_26
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Can only receive if IO_INPUT usage specified."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    .line 599
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 600
    throw v2
.end method

.method public whitelist ioSend()V
    .registers 6

    .line 572
    const-wide/32 v0, 0x8000

    :try_start_3
    const-string v2, "ioSend"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 573
    iget v2, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_23

    .line 577
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 578
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/renderscript/RenderScript;->nAllocationIoSend(J)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2b

    .line 580
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 581
    nop

    .line 582
    return-void

    .line 574
    :cond_23
    :try_start_23
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Can only send buffer if IO_OUTPUT usage specified."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2b

    .line 580
    :catchall_2b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 581
    throw v2
.end method

.method public declared-synchronized whitelist resize(I)V
    .registers 6

    monitor-enter p0

    .line 2077
    :try_start_1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_71

    .line 2080
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-gtz v0, :cond_69

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    if-gtz v0, :cond_69

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-nez v0, :cond_69

    .line 2083
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nAllocationResize1D(JI)V

    .line 2084
    iget-object p1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->finish()V

    .line 2086
    iget-object p1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/renderscript/RenderScript;->nAllocationGetType(J)J

    move-result-wide v0

    .line 2089
    iget-object p1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/renderscript/Type;->setID(J)V

    .line 2090
    new-instance p1, Landroid/renderscript/Type;

    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p1, v0, v1, v2}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object p1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 2091
    iget-object p1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {p1}, Landroid/renderscript/Type;->updateFromNative()V

    .line 2092
    iget-object p1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_79

    .line 2093
    monitor-exit p0

    return-void

    .line 2081
    :cond_69
    :try_start_69
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string v0, "Resize only support for 1D allocations at this time."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2078
    :cond_71
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string v0, "Resize is not allowed in API 21+."

    invoke-direct {p1, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2076
    :catchall_79
    move-exception p1

    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_69 .. :try_end_7b} :catchall_79

    throw p1
.end method

.method public whitelist setAutoPadding(Z)V
    .registers 2

    .line 353
    iput-boolean p1, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    .line 354
    return-void
.end method

.method public whitelist setFromFieldPacker(IIIILandroid/renderscript/FieldPacker;)V
    .registers 16

    .line 1076
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1077
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-ge p4, v1, :cond_86

    .line 1080
    if-ltz p1, :cond_7e

    .line 1083
    if-ltz p2, :cond_76

    .line 1086
    if-ltz p3, :cond_6e

    .line 1090
    invoke-virtual {p5}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v8

    .line 1091
    invoke-virtual {p5}, Landroid/renderscript/FieldPacker;->getPos()I

    move-result v9

    .line 1092
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v1, v1, p4

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    .line 1093
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mArraySizes:[I

    aget v2, v2, p4

    mul-int/2addr v1, v2

    .line 1095
    if-ne v9, v1, :cond_45

    .line 1100
    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    move-object v3, v1

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v1

    iget v6, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move v4, p2

    move v5, p3

    move v7, p4

    move-object v0, v3

    move v3, p1

    invoke-virtual/range {v0 .. v9}, Landroid/renderscript/RenderScript;->nAllocationElementData(JIIIII[BI)V

    .line 1102
    return-void

    .line 1096
    :cond_45
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field packer sizelength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match component size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_6e
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset z must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1084
    :cond_76
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset y must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1081
    :cond_7e
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset x must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1078
    :cond_86
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component_number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    .registers 10

    .line 1062
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->setFromFieldPacker(IIIILandroid/renderscript/FieldPacker;)V

    .line 1063
    return-void
.end method

.method public whitelist setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    .registers 7

    .line 1039
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1040
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    .line 1041
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    .line 1042
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getPos()I

    move-result p2

    .line 1044
    div-int v2, p2, v0

    .line 1045
    mul-int v3, v0, v2

    if-ne v3, p2, :cond_1f

    .line 1049
    invoke-virtual {p0, p1, v2, v1}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    .line 1050
    return-void

    .line 1046
    :cond_1f
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field packer length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " not divisible by element size "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V
    .registers 7

    .line 3340
    sget-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3341
    :try_start_3
    sget-object v1, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Long;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3342
    iput-object p1, p0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    .line 3343
    monitor-exit v0

    .line 3344
    return-void

    .line 3343
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public whitelist setSurface(Landroid/view/Surface;)V
    .registers 5

    .line 3043
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3044
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_17

    .line 3048
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nAllocationSetSurface(JLandroid/view/Surface;)V

    .line 3049
    return-void

    .line 3045
    :cond_17
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string v0, "Allocation is not USAGE_IO_OUTPUT."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method greylist-max-o setupBufferQueue(I)V
    .registers 5

    .line 2958
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2959
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_17

    .line 2962
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nAllocationSetupBufferQueue(JI)V

    .line 2963
    return-void

    .line 2960
    :cond_17
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string v0, "Allocation is not USAGE_IO_INPUT."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method greylist-max-o shareBufferQueue(Landroid/renderscript/Allocation;)V
    .registers 7

    .line 2971
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2972
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_23

    .line 2975
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    .line 2976
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/renderscript/RenderScript;->nAllocationShareBufferQueue(JJ)V

    .line 2977
    return-void

    .line 2973
    :cond_23
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string v0, "Allocation is not USAGE_IO_INPUT."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist syncAll(I)V
    .registers 7

    .line 537
    const-wide/32 v0, 0x8000

    :try_start_3
    const-string/jumbo v2, "syncAll"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 538
    sparse-switch p1, :sswitch_data_46

    .line 554
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    goto :goto_3a

    .line 549
    :sswitch_f
    iget v2, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_27

    .line 550
    iget-object v2, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_27

    .line 547
    :sswitch_1b
    goto :goto_27

    .line 541
    :sswitch_1c
    iget v2, p0, Landroid/renderscript/Allocation;->mUsage:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_27

    .line 542
    iget-object v2, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 556
    :cond_27
    :goto_27
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 557
    iget-object v2, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Landroid/renderscript/RenderScript;->nAllocationSyncAll(JI)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_40

    .line 559
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 560
    nop

    .line 561
    return-void

    .line 554
    :goto_3a
    :try_start_3a
    const-string v2, "Source must be exactly one usage type."

    invoke-direct {p1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    .line 559
    :catchall_40
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 560
    throw p1

    nop

    :sswitch_data_46
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_1c
        0x4 -> :sswitch_1b
        0x8 -> :sswitch_1b
        0x80 -> :sswitch_f
    .end sparse-switch
.end method

.method greylist-max-o updateFromNative()V
    .registers 5

    .line 511
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 512
    iget-object v0, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nAllocationGetType(J)J

    move-result-wide v0

    .line 513
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_28

    .line 514
    new-instance v2, Landroid/renderscript/Type;

    iget-object v3, p0, Landroid/renderscript/Allocation;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 515
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->updateFromNative()V

    .line 516
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-direct {p0, v0}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V

    .line 518
    :cond_28
    return-void
.end method
