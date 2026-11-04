.class public Landroid/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScript$RSMessageHandler;,
        Landroid/renderscript/RenderScript$RSErrorHandler;,
        Landroid/renderscript/RenderScript$Priority;,
        Landroid/renderscript/RenderScript$ContextType;,
        Landroid/renderscript/RenderScript$MessageThread;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATE_FLAG_LOW_LATENCY:I = 0x2

.field public static final whitelist CREATE_FLAG_LOW_POWER:I = 0x4

.field public static final whitelist CREATE_FLAG_NONE:I = 0x0

.field public static final greylist-max-o CREATE_FLAG_WAIT_FOR_ATTACH:I = 0x8

.field static final greylist-max-o DEBUG:Z = false

.field static final greylist-max-o LOG_ENABLED:Z = false

.field static final greylist-max-o LOG_TAG:Ljava/lang/String; = "RenderScript_jni"

.field static final greylist-max-o TRACE_TAG:J = 0x8000L

.field private static greylist-max-o mCachePath:Ljava/lang/String; = null

.field private static greylist-max-o mProcessContextList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/renderscript/RenderScript;",
            ">;"
        }
    .end annotation
.end field

.field static greylist-max-o registerNativeAllocation:Ljava/lang/reflect/Method; = null

.field static greylist-max-o registerNativeFree:Ljava/lang/reflect/Method; = null

.field static greylist-max-o sInitialized:Z = false

.field static final greylist-max-o sMinorVersion:J = 0x1L

.field static greylist sPointerSize:I

.field static greylist-max-o sRuntime:Ljava/lang/Object;


# instance fields
.field private greylist-max-o mApplicationContext:Landroid/content/Context;

.field greylist-max-o mContext:J

.field private greylist-max-o mContextFlags:I

.field private greylist-max-o mContextSdkVersion:I

.field greylist-max-o mContextType:Landroid/renderscript/RenderScript$ContextType;

.field private greylist-max-o mDestroyed:Z

.field volatile greylist-max-o mElement_ALLOCATION:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_A_8:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_BOOLEAN:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_CHAR_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_CHAR_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_CHAR_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_DOUBLE_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_DOUBLE_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_DOUBLE_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_ELEMENT:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_F16:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_F32:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_F64:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_FLOAT_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_FLOAT_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_FLOAT_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_FONT:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_HALF_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_HALF_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_HALF_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_I16:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_I32:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_I64:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_I8:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_INT_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_INT_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_INT_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_LONG_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_LONG_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_LONG_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_MATRIX_2X2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_MATRIX_3X3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_MATRIX_4X4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_MESH:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_PROGRAM_STORE:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_RGBA_4444:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_RGBA_5551:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_RGBA_8888:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_RGB_565:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_RGB_888:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_SAMPLER:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_SCRIPT:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_SHORT_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_SHORT_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_SHORT_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_TYPE:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_U16:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_U32:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_U64:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_U8:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_UCHAR_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_UCHAR_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_UCHAR_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_UINT_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_UINT_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_UINT_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_ULONG_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_ULONG_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_ULONG_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_USHORT_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_USHORT_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_USHORT_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_YUV:Landroid/renderscript/Element;

.field greylist-max-o mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

.field private greylist-max-o mIsProcessContext:Z

.field greylist mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

.field greylist-max-o mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

.field greylist-max-o mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

.field greylist-max-o mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

.field greylist-max-o mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

.field greylist-max-o mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field greylist-max-o mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field greylist-max-o mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field greylist-max-o mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field greylist-max-o mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field volatile greylist-max-o mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 61
    const-string v0, "RenderScript_jni"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 116
    const/4 v1, 0x0

    sput-boolean v1, Landroid/renderscript/RenderScript;->sInitialized:Z

    .line 117
    const-string v2, "config.disable_renderscript"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_b9

    .line 119
    :try_start_14
    const-string v2, "dalvik.system.VMRuntime"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 120
    const-string v3, "getRuntime"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 121
    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    .line 122
    const-string/jumbo v3, "registerNativeAllocation"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    .line 123
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    .line 124
    const-string/jumbo v3, "registerNativeFree"

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4a} :catch_8b

    .line 128
    nop

    .line 130
    :try_start_4b
    const-string/jumbo v1, "rs_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Landroid/renderscript/RenderScript;->_nInit()V

    .line 132
    sput-boolean v4, Landroid/renderscript/RenderScript;->sInitialized:Z

    .line 133
    invoke-static {}, Landroid/renderscript/RenderScript;->rsnSystemGetPointerSize()I

    move-result v1

    sput v1, Landroid/renderscript/RenderScript;->sPointerSize:I
    :try_end_5c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4b .. :try_end_5c} :catch_5d

    .line 137
    goto :goto_b9

    .line 134
    :catch_5d
    move-exception v1

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading RS jni library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :catch_8b
    move-exception v1

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading GC methods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_b9
    :goto_b9
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3

    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    .line 63
    iput v0, p0, Landroid/renderscript/RenderScript;->mContextFlags:I

    .line 64
    iput v0, p0, Landroid/renderscript/RenderScript;->mContextSdkVersion:I

    .line 1034
    iput-boolean v0, p0, Landroid/renderscript/RenderScript;->mDestroyed:Z

    .line 1168
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    .line 1209
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    .line 1366
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    .line 1367
    if-eqz p1, :cond_1d

    .line 1368
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    .line 1370
    :cond_1d
    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object p1, p0, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 1371
    return-void
.end method

.method static native greylist-max-o _nInit()V
.end method

.method public static whitelist create(Landroid/content/Context;)Landroid/renderscript/RenderScript;
    .registers 2

    .line 1448
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    invoke-static {p0, v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static greylist create(Landroid/content/Context;I)Landroid/renderscript/RenderScript;
    .registers 4

    .line 1502
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method private static greylist create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;
    .registers 8

    .line 1516
    const/16 v0, 0x17

    if-ge p1, v0, :cond_9

    .line 1517
    invoke-static {p0, p1, p2, p3}, Landroid/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object p0

    return-object p0

    .line 1520
    :cond_9
    sget-object v0, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1521
    :try_start_c
    sget-object v1, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/RenderScript;

    .line 1522
    iget-object v3, v2, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    if-ne v3, p2, :cond_2c

    iget v3, v2, Landroid/renderscript/RenderScript;->mContextFlags:I

    if-ne v3, p3, :cond_2c

    iget v3, v2, Landroid/renderscript/RenderScript;->mContextSdkVersion:I

    if-ne v3, p1, :cond_2c

    .line 1526
    monitor-exit v0

    return-object v2

    .line 1528
    :cond_2c
    goto :goto_12

    .line 1530
    :cond_2d
    invoke-static {p0, p1, p2, p3}, Landroid/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object p0

    .line 1531
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    .line 1532
    sget-object p1, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1533
    monitor-exit v0

    return-object p0

    .line 1534
    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_c .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public static whitelist create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;
    .registers 3

    .line 1461
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;
    .registers 4

    .line 1486
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1487
    invoke-static {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createMultiContext(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;II)Landroid/renderscript/RenderScript;
    .registers 4

    .line 1578
    invoke-static {p0, p3, p1, p2}, Landroid/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object p0

    return-object p0
.end method

.method static declared-synchronized greylist-max-o getCachePath()Ljava/lang/String;
    .registers 4

    const-class v0, Landroid/renderscript/RenderScript;

    monitor-enter v0

    .line 1391
    :try_start_3
    sget-object v1, Landroid/renderscript/RenderScript;->mCachePath:Ljava/lang/String;

    if-nez v1, :cond_26

    .line 1393
    sget-object v1, Landroid/renderscript/RenderScriptCacheDir;->mCacheDir:Ljava/io/File;

    if-eqz v1, :cond_1e

    .line 1396
    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/renderscript/RenderScriptCacheDir;->mCacheDir:Ljava/io/File;

    const-string v3, "com.android.renderscript.cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1397
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/renderscript/RenderScript;->mCachePath:Ljava/lang/String;

    .line 1398
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_26

    .line 1394
    :cond_1e
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "RenderScript code cache directory uninitialized."

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1400
    :cond_26
    :goto_26
    sget-object v1, Landroid/renderscript/RenderScript;->mCachePath:Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2a

    monitor-exit v0

    return-object v1

    .line 1390
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public static greylist getMinorID()J
    .registers 2

    .line 166
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public static whitelist getMinorVersion()J
    .registers 2

    .line 178
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method private greylist-max-o helpDestroy()V
    .registers 6

    .line 1602
    nop

    .line 1603
    monitor-enter p0

    .line 1604
    :try_start_2
    iget-boolean v0, p0, Landroid/renderscript/RenderScript;->mDestroyed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 1605
    nop

    .line 1606
    iput-boolean v1, p0, Landroid/renderscript/RenderScript;->mDestroyed:Z

    move v0, v1

    goto :goto_e

    .line 1604
    :cond_d
    move v0, v2

    .line 1608
    :goto_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_45

    .line 1610
    if-eqz v0, :cond_44

    .line 1611
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextFinish()V

    .line 1613
    iget-wide v3, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v3, v4}, Landroid/renderscript/RenderScript;->nContextDeinitToClient(J)V

    .line 1614
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    iput-boolean v2, v0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 1617
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript$MessageThread;->interrupt()V

    .line 1621
    move v0, v2

    .line 1622
    :goto_23
    if-nez v2, :cond_31

    .line 1624
    :try_start_25
    iget-object v3, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript$MessageThread;->join()V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2a} :catch_2d

    .line 1625
    nop

    .line 1628
    move v2, v1

    goto :goto_23

    .line 1626
    :catch_2d
    move-exception v0

    .line 1627
    nop

    .line 1628
    move v0, v1

    goto :goto_23

    .line 1630
    :cond_31
    if-eqz v0, :cond_41

    .line 1631
    const-string v0, "RenderScript_jni"

    const-string v1, "Interrupted during wait for MessageThread to join"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1635
    :cond_41
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextDestroy()V

    .line 1637
    :cond_44
    return-void

    .line 1608
    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v0
.end method

.method private static greylist-max-o internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;
    .registers 11

    .line 1410
    sget-boolean v0, Landroid/renderscript/RenderScript;->sInitialized:Z

    if-nez v0, :cond_d

    .line 1411
    const-string p0, "RenderScript_jni"

    const-string p1, "RenderScript.create() called when disabled; someone is likely to crash"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    const/4 p0, 0x0

    return-object p0

    .line 1415
    :cond_d
    and-int/lit8 v0, p3, -0xf

    if-nez v0, :cond_4e

    .line 1420
    new-instance v1, Landroid/renderscript/RenderScript;

    invoke-direct {v1, p0}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 1422
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->nDeviceCreate()J

    move-result-wide v2

    .line 1423
    iget v6, p2, Landroid/renderscript/RenderScript$ContextType;->mID:I

    move v5, p1

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nContextCreate(JIII)J

    move-result-wide p0

    iput-wide p0, v1, Landroid/renderscript/RenderScript;->mContext:J

    .line 1424
    iput-object p2, v1, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    .line 1425
    iput v4, v1, Landroid/renderscript/RenderScript;->mContextFlags:I

    .line 1426
    iput v5, v1, Landroid/renderscript/RenderScript;->mContextSdkVersion:I

    .line 1427
    iget-wide p0, v1, Landroid/renderscript/RenderScript;->mContext:J

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-eqz p0, :cond_46

    .line 1432
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/renderscript/RenderScript;->nContextSetCacheDir(Ljava/lang/String;)V

    .line 1434
    new-instance p0, Landroid/renderscript/RenderScript$MessageThread;

    invoke-direct {p0, v1}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object p0, v1, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    .line 1435
    iget-object p0, v1, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {p0}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    .line 1436
    return-object v1

    .line 1428
    :cond_46
    new-instance p0, Landroid/renderscript/RSDriverException;

    const-string p1, "Failed to create RS context."

    invoke-direct {p0, p1}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1417
    :cond_4e
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Invalid flags passed."

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist releaseAllContexts()V
    .registers 4

    .line 1551
    sget-object v0, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1552
    :try_start_3
    sget-object v1, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 1553
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    .line 1554
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_28

    .line 1556
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/RenderScript;

    .line 1557
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    .line 1558
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->destroy()V

    .line 1559
    goto :goto_11

    .line 1560
    :cond_24
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1561
    return-void

    .line 1554
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method static native greylist-max-o rsnSystemGetPointerSize()I
.end method


# virtual methods
.method public whitelist contextDump()V
    .registers 2

    .line 1588
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1589
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextDump(I)V

    .line 1590
    return-void
.end method

.method public whitelist destroy()V
    .registers 2

    .line 1656
    iget-boolean v0, p0, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    if-eqz v0, :cond_5

    .line 1658
    return-void

    .line 1660
    :cond_5
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1661
    invoke-direct {p0}, Landroid/renderscript/RenderScript;->helpDestroy()V

    .line 1662
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1640
    invoke-direct {p0}, Landroid/renderscript/RenderScript;->helpDestroy()V

    .line 1641
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1642
    return-void
.end method

.method public whitelist finish()V
    .registers 1

    .line 1598
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextFinish()V

    .line 1599
    return-void
.end method

.method public final whitelist getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 1379
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getErrorHandler()Landroid/renderscript/RenderScript$RSErrorHandler;
    .registers 2

    .line 1215
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    return-object v0
.end method

.method public whitelist getMessageHandler()Landroid/renderscript/RenderScript$RSMessageHandler;
    .registers 2

    .line 1175
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    return-object v0
.end method

.method greylist-max-o isAlive()Z
    .registers 5

    .line 1665
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method declared-synchronized greylist-max-o nAllocationAdapterCreate(JJ)J
    .registers 13

    monitor-enter p0

    .line 676
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 677
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationAdapterCreate(JJJ)J

    move-result-wide p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    monitor-exit p0

    return-wide p1

    .line 675
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nAllocationAdapterOffset(JIIIIIIIII)V
    .registers 27

    monitor-enter p0

    .line 684
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 685
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-virtual/range {v1 .. v14}, Landroid/renderscript/RenderScript;->rsnAllocationAdapterOffset(JJIIIIIIIII)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 686
    monitor-exit p0

    return-void

    .line 683
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V
    .registers 11

    monitor-enter p0

    .line 536
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 537
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 538
    monitor-exit p0

    return-void

    .line 535
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V
    .registers 11

    monitor-enter p0

    .line 480
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 481
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 482
    monitor-exit p0

    return-void

    .line 479
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J
    .registers 15

    monitor-enter p0

    .line 467
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 468
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move v8, p5

    :try_start_b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J

    move-result-wide p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    monitor-exit p0

    return-wide p1

    .line 466
    :catchall_11
    move-exception v0

    move-object v1, p0

    :goto_13
    move-object p1, v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    throw p1

    :catchall_16
    move-exception v0

    goto :goto_13
.end method

.method declared-synchronized greylist-max-o nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .registers 15

    monitor-enter p0

    .line 459
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 460
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move v8, p5

    :try_start_b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J

    move-result-wide p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    monitor-exit p0

    return-wide p1

    .line 458
    :catchall_11
    move-exception v0

    move-object v1, p0

    :goto_13
    move-object p1, v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    throw p1

    :catchall_16
    move-exception v0

    goto :goto_13
.end method

.method declared-synchronized greylist-max-o nAllocationCreateTyped(JIIJ)J
    .registers 17

    monitor-enter p0

    .line 452
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 453
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move-wide v8, p5

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnAllocationCreateTyped(JJIIJ)J

    move-result-wide p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-wide p1

    .line 451
    :catchall_11
    move-exception v0

    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_11

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .registers 15

    monitor-enter p0

    .line 474
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 475
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move v8, p5

    :try_start_b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J

    move-result-wide p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    monitor-exit p0

    return-wide p1

    .line 473
    :catchall_11
    move-exception v0

    move-object v1, p0

    :goto_13
    move-object p1, v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    throw p1

    :catchall_16
    move-exception v0

    goto :goto_13
.end method

.method declared-synchronized greylist-max-o nAllocationData1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .registers 25

    monitor-enter p0

    .line 545
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 546
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p8

    iget v11, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v1 .. v13}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 547
    monitor-exit p0

    return-void

    .line 544
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationData2D(JIIIIIIJIIII)V
    .registers 33

    move-object/from16 v1, p0

    monitor-enter p0

    .line 566
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 567
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-virtual/range {v1 .. v17}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(JJIIIIIIJIIII)V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    .line 573
    monitor-exit p0

    return-void

    .line 565
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .registers 31

    move-object/from16 v1, p0

    monitor-enter p0

    .line 581
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 582
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p11

    iget v14, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v15, p12

    move/from16 v16, p13

    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    .line 583
    monitor-exit p0

    return-void

    .line 580
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V
    .registers 19

    monitor-enter p0

    .line 587
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 588
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 589
    monitor-exit p0

    return-void

    .line 586
    :catchall_15
    move-exception v0

    move-object p1, v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_15

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationData3D(JIIIIIIIJIIII)V
    .registers 35

    move-object/from16 v1, p0

    monitor-enter p0

    .line 602
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 603
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-wide/from16 v13, p10

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    invoke-virtual/range {v1 .. v18}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(JJIIIIIIIJIIII)V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    .line 607
    monitor-exit p0

    return-void

    .line 601
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .registers 33

    move-object/from16 v1, p0

    monitor-enter p0

    .line 615
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 616
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p12

    iget v15, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-virtual/range {v1 .. v17}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    .line 618
    monitor-exit p0

    return-void

    .line 614
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationElementData(JIIIII[BI)V
    .registers 23

    monitor-enter p0

    .line 551
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 552
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnAllocationElementData(JJIIIII[BI)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 553
    monitor-exit p0

    return-void

    .line 550
    :catchall_1b
    move-exception v0

    move-object p1, v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1b

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationElementRead(JIIIII[BI)V
    .registers 23

    monitor-enter p0

    .line 638
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 639
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnAllocationElementRead(JJIIIII[BI)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 640
    monitor-exit p0

    return-void

    .line 637
    :catchall_1b
    move-exception v0

    move-object p1, v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1b

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationGenerateMipmaps(J)V
    .registers 5

    monitor-enter p0

    .line 531
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 532
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationGenerateMipmaps(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 533
    monitor-exit p0

    return-void

    .line 530
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationGetByteBuffer(J[JIII)Ljava/nio/ByteBuffer;
    .registers 17

    monitor-enter p0

    .line 494
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 495
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnAllocationGetByteBuffer(JJ[JIII)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object p1

    .line 493
    :catchall_13
    move-exception v0

    move-object p1, v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_13

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationGetSurface(J)Landroid/view/Surface;
    .registers 5

    monitor-enter p0

    .line 510
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 511
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationGetSurface(JJ)Landroid/view/Surface;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object p1

    .line 509
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationGetType(J)J
    .registers 5

    monitor-enter p0

    .line 664
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 665
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationGetType(JJ)J

    move-result-wide p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-wide p1

    .line 663
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationIoReceive(J)J
    .registers 5

    monitor-enter p0

    .line 525
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 526
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationIoReceive(JJ)J

    move-result-wide p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-wide p1

    .line 524
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationIoSend(J)V
    .registers 5

    monitor-enter p0

    .line 520
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 521
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationIoSend(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 522
    monitor-exit p0

    return-void

    .line 519
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationRead(JLjava/lang/Object;Landroid/renderscript/Element$DataType;IZ)V
    .registers 17

    monitor-enter p0

    .line 622
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 623
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    iget v7, p4, Landroid/renderscript/Element$DataType;->mID:I

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnAllocationRead(JJLjava/lang/Object;IIZ)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 624
    monitor-exit p0

    return-void

    .line 621
    :catchall_13
    move-exception v0

    move-object p1, v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_13

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationRead1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .registers 25

    monitor-enter p0

    .line 630
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 631
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p8

    iget v11, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v1 .. v13}, Landroid/renderscript/RenderScript;->rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 632
    monitor-exit p0

    return-void

    .line 629
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .registers 31

    move-object/from16 v1, p0

    monitor-enter p0

    .line 648
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 649
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p11

    iget v14, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v15, p12

    move/from16 v16, p13

    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScript;->rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    .line 650
    monitor-exit p0

    return-void

    .line 647
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationRead3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .registers 33

    move-object/from16 v1, p0

    monitor-enter p0

    .line 658
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 659
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p12

    iget v15, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-virtual/range {v1 .. v17}, Landroid/renderscript/RenderScript;->rsnAllocationRead3D(JJIIIIIIILjava/lang/Object;IIIZ)V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    .line 660
    monitor-exit p0

    return-void

    .line 657
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationResize1D(JI)V
    .registers 11

    monitor-enter p0

    .line 670
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 671
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationResize1D(JJI)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 672
    monitor-exit p0

    return-void

    .line 669
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nAllocationSetSurface(JLandroid/view/Surface;)V
    .registers 11

    monitor-enter p0

    .line 515
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 516
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationSetSurface(JJLandroid/view/Surface;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 517
    monitor-exit p0

    return-void

    .line 514
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nAllocationSetupBufferQueue(JI)V
    .registers 11

    monitor-enter p0

    .line 500
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 501
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationSetupBufferQueue(JJI)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 502
    monitor-exit p0

    return-void

    .line 499
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nAllocationShareBufferQueue(JJ)V
    .registers 13

    monitor-enter p0

    .line 505
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 506
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationShareBufferQueue(JJJ)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 507
    monitor-exit p0

    return-void

    .line 504
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nAllocationSyncAll(JI)V
    .registers 11

    monitor-enter p0

    .line 486
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 487
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationSyncAll(JJI)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 488
    monitor-exit p0

    return-void

    .line 485
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nAssignName(J[B)V
    .registers 11

    monitor-enter p0

    .line 397
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 398
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnAssignName(JJ[B)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 399
    monitor-exit p0

    return-void

    .line 396
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nClosureCreate(JJ[J[J[I[J[J)J
    .registers 23

    monitor-enter p0

    .line 338
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 339
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnClosureCreate(JJJ[J[J[I[J[J)J

    move-result-wide p1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_28

    .line 341
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_20

    .line 344
    monitor-exit p0

    return-wide p1

    .line 342
    :cond_20
    :try_start_20
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Failed creating closure."

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 337
    :catchall_28
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_28

    throw p1
.end method

.method declared-synchronized greylist-max-o nClosureSetArg(JIJI)V
    .registers 17

    monitor-enter p0

    .line 364
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 365
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnClosureSetArg(JJIJI)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 366
    monitor-exit p0

    return-void

    .line 363
    :catchall_11
    move-exception v0

    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_11

    throw p1
.end method

.method declared-synchronized greylist-max-o nClosureSetGlobal(JJJI)V
    .registers 19

    monitor-enter p0

    .line 373
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 374
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnClosureSetGlobal(JJJJI)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 375
    monitor-exit p0

    return-void

    .line 372
    :catchall_12
    move-exception v0

    move-object p1, v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_12

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextBindProgramFragment(J)V
    .registers 5

    monitor-enter p0

    .line 308
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 309
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramFragment(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 310
    monitor-exit p0

    return-void

    .line 307
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextBindProgramRaster(J)V
    .registers 5

    monitor-enter p0

    .line 318
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 319
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramRaster(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 320
    monitor-exit p0

    return-void

    .line 317
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextBindProgramStore(J)V
    .registers 5

    monitor-enter p0

    .line 303
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 304
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramStore(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 305
    monitor-exit p0

    return-void

    .line 302
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextBindProgramVertex(J)V
    .registers 5

    monitor-enter p0

    .line 313
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 314
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramVertex(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 315
    monitor-exit p0

    return-void

    .line 312
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextBindRootScript(J)V
    .registers 5

    monitor-enter p0

    .line 293
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 294
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindRootScript(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 295
    monitor-exit p0

    return-void

    .line 292
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextBindSampler(II)V
    .registers 5

    monitor-enter p0

    .line 298
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 299
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindSampler(JII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 300
    monitor-exit p0

    return-void

    .line 297
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextCreate(JIII)J
    .registers 7

    monitor-enter p0

    .line 236
    :try_start_1
    invoke-virtual/range {p0 .. p5}, Landroid/renderscript/RenderScript;->rsnContextCreate(JIII)J

    move-result-wide p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    move-object p3, p0

    monitor-exit p0

    return-wide p1

    .line 236
    :catchall_8
    move-exception v0

    move-object p3, p0

    :goto_a
    move-object p1, v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_d

    throw p1

    :catchall_d
    move-exception v0

    goto :goto_a
.end method

.method declared-synchronized greylist-max-o nContextCreateGL(JIIIIIIIIIIIIFI)J
    .registers 18

    monitor-enter p0

    .line 229
    :try_start_1
    invoke-virtual/range {p0 .. p16}, Landroid/renderscript/RenderScript;->rsnContextCreateGL(JIIIIIIIIIIIIFI)J

    move-result-wide p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-wide p1

    .line 229
    :catchall_7
    move-exception v0

    move-object p1, v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_7

    throw p1
.end method

.method native greylist-max-o nContextDeinitToClient(J)V
.end method

.method declared-synchronized greylist-max-o nContextDestroy()V
    .registers 6

    monitor-enter p0

    .line 240
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 244
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 247
    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 249
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/renderscript/RenderScript;->mContext:J

    .line 251
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 252
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/RenderScript;->rsnContextDestroy(J)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 253
    monitor-exit p0

    return-void

    .line 239
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method declared-synchronized greylist-max-o nContextDump(I)V
    .registers 4

    monitor-enter p0

    .line 276
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 277
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnContextDump(JI)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 278
    monitor-exit p0

    return-void

    .line 275
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextFinish()V
    .registers 3

    monitor-enter p0

    .line 281
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 282
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->rsnContextFinish(J)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 283
    monitor-exit p0

    return-void

    .line 280
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method native greylist-max-o nContextGetErrorMessage(J)Ljava/lang/String;
.end method

.method native greylist-max-o nContextGetUserMessage(J[I)I
.end method

.method native greylist-max-o nContextInitToClient(J)V
.end method

.method declared-synchronized greylist-max-o nContextPause()V
    .registers 3

    monitor-enter p0

    .line 323
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 324
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->rsnContextPause(J)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 325
    monitor-exit p0

    return-void

    .line 322
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method native greylist-max-o nContextPeekMessage(J[I)I
.end method

.method declared-synchronized greylist-max-o nContextResume()V
    .registers 3

    monitor-enter p0

    .line 328
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 329
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->rsnContextResume(J)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 330
    monitor-exit p0

    return-void

    .line 327
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method declared-synchronized greylist-max-o nContextSendMessage(I[I)V
    .registers 5

    monitor-enter p0

    .line 287
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 288
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextSendMessage(JI[I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 289
    monitor-exit p0

    return-void

    .line 286
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextSetCacheDir(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 271
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 272
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnContextSetCacheDir(JLjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 273
    monitor-exit p0

    return-void

    .line 270
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextSetPriority(I)V
    .registers 4

    monitor-enter p0

    .line 266
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 267
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnContextSetPriority(JI)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 268
    monitor-exit p0

    return-void

    .line 265
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextSetSurface(IILandroid/view/Surface;)V
    .registers 11

    monitor-enter p0

    .line 256
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 257
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnContextSetSurface(JIILandroid/view/Surface;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 258
    monitor-exit p0

    return-void

    .line 255
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nContextSetSurfaceTexture(IILandroid/graphics/SurfaceTexture;)V
    .registers 11

    monitor-enter p0

    .line 261
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 262
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnContextSetSurfaceTexture(JIILandroid/graphics/SurfaceTexture;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 263
    monitor-exit p0

    return-void

    .line 260
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method native greylist-max-o nDeviceCreate()J
.end method

.method native greylist-max-o nDeviceDestroy(J)V
.end method

.method native greylist-max-o nDeviceSetConfig(JII)V
.end method

.method declared-synchronized greylist-max-o nElementCreate(JIZI)J
    .registers 15

    monitor-enter p0

    .line 419
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 420
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    :try_start_b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnElementCreate(JJIZI)J

    move-result-wide p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    monitor-exit p0

    return-wide p1

    .line 418
    :catchall_11
    move-exception v0

    move-object v1, p0

    :goto_13
    move-object p1, v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    throw p1

    :catchall_16
    move-exception v0

    goto :goto_13
.end method

.method declared-synchronized greylist-max-o nElementCreate2([J[Ljava/lang/String;[I)J
    .registers 11

    monitor-enter p0

    .line 424
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 425
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnElementCreate2(J[J[Ljava/lang/String;[I)J

    move-result-wide p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    monitor-exit p0

    return-wide p1

    .line 423
    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    goto :goto_12
.end method

.method declared-synchronized greylist-max-o nElementGetNativeData(J[I)V
    .registers 11

    monitor-enter p0

    .line 429
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 430
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnElementGetNativeData(JJ[I)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 431
    monitor-exit p0

    return-void

    .line 428
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nElementGetSubElements(J[J[Ljava/lang/String;[I)V
    .registers 15

    monitor-enter p0

    .line 435
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 436
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    :try_start_b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_15

    .line 437
    monitor-exit p0

    return-void

    .line 434
    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    goto :goto_12
.end method

.method declared-synchronized greylist-max-o nFileA3DCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)J
    .registers 5

    monitor-enter p0

    .line 700
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 701
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)J

    move-result-wide p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-wide p1

    .line 699
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nFileA3DCreateFromAssetStream(J)J
    .registers 5

    monitor-enter p0

    .line 690
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 691
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAssetStream(JJ)J

    move-result-wide p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-wide p1

    .line 689
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nFileA3DCreateFromFile(Ljava/lang/String;)J
    .registers 4

    monitor-enter p0

    .line 695
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 696
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromFile(JLjava/lang/String;)J

    move-result-wide v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-wide v0

    .line 694
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nFileA3DGetEntryByIndex(JI)J
    .registers 11

    monitor-enter p0

    .line 715
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 716
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnFileA3DGetEntryByIndex(JJI)J

    move-result-wide p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    monitor-exit p0

    return-wide p1

    .line 714
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nFileA3DGetIndexEntries(JI[I[Ljava/lang/String;)V
    .registers 15

    monitor-enter p0

    .line 710
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 711
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    :try_start_b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnFileA3DGetIndexEntries(JJI[I[Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_15

    .line 712
    monitor-exit p0

    return-void

    .line 709
    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    goto :goto_12
.end method

.method declared-synchronized greylist-max-o nFileA3DGetNumIndexEntries(J)I
    .registers 5

    monitor-enter p0

    .line 705
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 706
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DGetNumIndexEntries(JJ)I

    move-result p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return p1

    .line 704
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)J
    .registers 13

    monitor-enter p0

    .line 731
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 732
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    :try_start_b
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;FI)J

    move-result-wide p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    monitor-exit p0

    return-wide p1

    .line 730
    :catchall_11
    move-exception v0

    move-object v1, p0

    :goto_13
    move-object p1, v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    throw p1

    :catchall_16
    move-exception v0

    goto :goto_13
.end method

.method declared-synchronized greylist-max-o nFontCreateFromAssetStream(Ljava/lang/String;FIJ)J
    .registers 15

    monitor-enter p0

    .line 726
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 727
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    :try_start_b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAssetStream(JLjava/lang/String;FIJ)J

    move-result-wide p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    monitor-exit p0

    return-wide p1

    .line 725
    :catchall_11
    move-exception v0

    move-object v1, p0

    :goto_13
    move-object p1, v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    throw p1

    :catchall_16
    move-exception v0

    goto :goto_13
.end method

.method declared-synchronized greylist-max-o nFontCreateFromFile(Ljava/lang/String;FI)J
    .registers 11

    monitor-enter p0

    .line 721
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 722
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnFontCreateFromFile(JLjava/lang/String;FI)J

    move-result-wide p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    monitor-exit p0

    return-wide p1

    .line 720
    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    goto :goto_12
.end method

.method declared-synchronized greylist-max-o nGetName(J)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 402
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 403
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnGetName(JJ)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object p1

    .line 401
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nInvokeClosureCreate(J[B[J[J[I)J
    .registers 17

    monitor-enter p0

    .line 351
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 352
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnInvokeClosureCreate(JJ[B[J[J[I)J

    move-result-wide p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_21

    .line 354
    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-eqz p3, :cond_19

    .line 357
    monitor-exit p0

    return-wide p1

    .line 355
    :cond_19
    :try_start_19
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Failed creating closure."

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 350
    :catchall_21
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_21

    throw p1
.end method

.method declared-synchronized greylist-max-o nMeshCreate([J[J[I)J
    .registers 11

    monitor-enter p0

    .line 949
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 950
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnMeshCreate(J[J[J[I)J

    move-result-wide p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    monitor-exit p0

    return-wide p1

    .line 948
    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    goto :goto_12
.end method

.method declared-synchronized greylist-max-o nMeshGetIndexCount(J)I
    .registers 5

    monitor-enter p0

    .line 959
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 960
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnMeshGetIndexCount(JJ)I

    move-result p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return p1

    .line 958
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nMeshGetIndices(J[J[II)V
    .registers 15

    monitor-enter p0

    .line 969
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 970
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    :try_start_b
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnMeshGetIndices(JJ[J[II)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_15

    .line 971
    monitor-exit p0

    return-void

    .line 968
    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    goto :goto_12
.end method

.method declared-synchronized greylist-max-o nMeshGetVertexBufferCount(J)I
    .registers 5

    monitor-enter p0

    .line 954
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 955
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnMeshGetVertexBufferCount(JJ)I

    move-result p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return p1

    .line 953
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nMeshGetVertices(J[JI)V
    .registers 13

    monitor-enter p0

    .line 964
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 965
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    :try_start_a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnMeshGetVertices(JJ[JI)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 966
    monitor-exit p0

    return-void

    .line 963
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method greylist-max-o nObjDestroy(J)V
    .registers 7

    .line 412
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 413
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnObjDestroy(JJ)V

    .line 415
    :cond_d
    return-void
.end method

.method declared-synchronized greylist-max-o nProgramBindConstants(JIJ)V
    .registers 15

    monitor-enter p0

    .line 923
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 924
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    :try_start_a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnProgramBindConstants(JJIJ)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 925
    monitor-exit p0

    return-void

    .line 922
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nProgramBindSampler(JIJ)V
    .registers 15

    monitor-enter p0

    .line 933
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 934
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    :try_start_a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnProgramBindSampler(JJIJ)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 935
    monitor-exit p0

    return-void

    .line 932
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nProgramBindTexture(JIJ)V
    .registers 15

    monitor-enter p0

    .line 928
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 929
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    :try_start_a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnProgramBindTexture(JJIJ)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 930
    monitor-exit p0

    return-void

    .line 927
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nProgramFragmentCreate(Ljava/lang/String;[Ljava/lang/String;[J)J
    .registers 11

    monitor-enter p0

    .line 938
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 939
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnProgramFragmentCreate(JLjava/lang/String;[Ljava/lang/String;[J)J

    move-result-wide p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    monitor-exit p0

    return-wide p1

    .line 937
    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    goto :goto_12
.end method

.method declared-synchronized greylist-max-o nProgramRasterCreate(ZI)J
    .registers 5

    monitor-enter p0

    .line 917
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 918
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnProgramRasterCreate(JZI)J

    move-result-wide p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-wide p1

    .line 916
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method declared-synchronized greylist-max-o nProgramStoreCreate(ZZZZZZIII)J
    .registers 23

    monitor-enter p0

    .line 910
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 911
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnProgramStoreCreate(JZZZZZZIII)J

    move-result-wide p1
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-wide p1

    .line 909
    :catchall_1d
    move-exception v0

    move-object p1, v0

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1d

    throw p1
.end method

.method declared-synchronized greylist-max-o nProgramVertexCreate(Ljava/lang/String;[Ljava/lang/String;[J)J
    .registers 11

    monitor-enter p0

    .line 943
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 944
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnProgramVertexCreate(JLjava/lang/String;[Ljava/lang/String;[J)J

    move-result-wide p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    monitor-exit p0

    return-wide p1

    .line 942
    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    goto :goto_12
.end method

.method declared-synchronized greylist-max-o nSamplerCreate(IIIIIF)J
    .registers 17

    monitor-enter p0

    .line 900
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 901
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnSamplerCreate(JIIIIIF)J

    move-result-wide p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-wide p1

    .line 899
    :catchall_14
    move-exception v0

    move-object p1, v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_14

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptBindAllocation(JJI)V
    .registers 15

    monitor-enter p0

    .line 738
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 739
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    :try_start_a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptBindAllocation(JJJI)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 740
    monitor-exit p0

    return-void

    .line 737
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    .registers 13

    monitor-enter p0

    .line 844
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 845
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    :try_start_b
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    monitor-exit p0

    return-wide p1

    .line 843
    :catchall_11
    move-exception v0

    move-object v1, p0

    :goto_13
    move-object p1, v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    throw p1

    :catchall_16
    move-exception v0

    goto :goto_13
.end method

.method declared-synchronized greylist-max-o nScriptFieldIDCreate(JI)J
    .registers 11

    monitor-enter p0

    .line 868
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 869
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptFieldIDCreate(JJI)J

    move-result-wide p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    monitor-exit p0

    return-wide p1

    .line 867
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptForEach(JI[JJ[B[I)V
    .registers 21

    monitor-enter p0

    .line 757
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 758
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->rsnScriptForEach(JJI[JJ[B[I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 759
    monitor-exit p0

    return-void

    .line 756
    :catchall_16
    move-exception v0

    move-object p1, v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_16

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptGetVarD(JI)D
    .registers 11

    monitor-enter p0

    .line 814
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 815
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGetVarD(JJI)D

    move-result-wide p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    monitor-exit p0

    return-wide p1

    .line 813
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptGetVarF(JI)F
    .registers 11

    monitor-enter p0

    .line 804
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 805
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGetVarF(JJI)F

    move-result p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    monitor-exit p0

    return p1

    .line 803
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptGetVarI(JI)I
    .registers 11

    monitor-enter p0

    .line 782
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 783
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGetVarI(JJI)I

    move-result p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    monitor-exit p0

    return p1

    .line 781
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptGetVarJ(JI)J
    .registers 11

    monitor-enter p0

    .line 793
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 794
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGetVarJ(JJI)J

    move-result-wide p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    monitor-exit p0

    return-wide p1

    .line 792
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptGetVarV(JI[B)V
    .registers 13

    monitor-enter p0

    .line 824
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 825
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    :try_start_a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptGetVarV(JJI[B)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 826
    monitor-exit p0

    return-void

    .line 823
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptGroup2Create(Ljava/lang/String;Ljava/lang/String;[J)J
    .registers 11

    monitor-enter p0

    .line 381
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 382
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J

    move-result-wide p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_23

    .line 383
    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-eqz p3, :cond_16

    .line 386
    monitor-exit p0

    return-wide p1

    .line 384
    :cond_16
    :try_start_16
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Failed creating script group."

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 380
    :catchall_1e
    move-exception v0

    move-object v1, p0

    :goto_20
    move-object p1, v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_23

    throw p1

    :catchall_23
    move-exception v0

    goto :goto_20
.end method

.method declared-synchronized greylist-max-o nScriptGroup2Execute(J)V
    .registers 5

    monitor-enter p0

    .line 391
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 392
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGroup2Execute(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 393
    monitor-exit p0

    return-void

    .line 390
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptGroupCreate([J[J[J[J[J)J
    .registers 15

    monitor-enter p0

    .line 874
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 875
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    :try_start_c
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptGroupCreate(J[J[J[J[J[J)J

    move-result-wide p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_17

    monitor-exit p0

    return-wide p1

    .line 873
    :catchall_12
    move-exception v0

    move-object v1, p0

    :goto_14
    move-object p1, v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_17

    throw p1

    :catchall_17
    move-exception v0

    goto :goto_14
.end method

.method declared-synchronized greylist-max-o nScriptGroupExecute(J)V
    .registers 5

    monitor-enter p0

    .line 892
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 893
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGroupExecute(JJ)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 894
    monitor-exit p0

    return-void

    .line 891
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptGroupSetInput(JJJ)V
    .registers 17

    monitor-enter p0

    .line 880
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 881
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide v8, p5

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnScriptGroupSetInput(JJJJ)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 882
    monitor-exit p0

    return-void

    .line 879
    :catchall_f
    move-exception v0

    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_f

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptGroupSetOutput(JJJ)V
    .registers 17

    monitor-enter p0

    .line 886
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 887
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide v8, p5

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->rsnScriptGroupSetOutput(JJJJ)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 888
    monitor-exit p0

    return-void

    .line 885
    :catchall_f
    move-exception v0

    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_f

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptIntrinsicBLAS_BNNM(JIIIJIJIJII)V
    .registers 35

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1027
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1028
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move/from16 v17, p14

    move/from16 v18, p15

    invoke-virtual/range {v1 .. v18}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_BNNM(JJIIIJIJIJII)V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    .line 1029
    monitor-exit p0

    return-void

    .line 1026
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method declared-synchronized greylist-max-o nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V
    .registers 55

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1005
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1006
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move/from16 v21, p18

    move/from16 v22, p19

    move-wide/from16 v23, p20

    move/from16 v25, p22

    move/from16 v26, p23

    move/from16 v27, p24

    move/from16 v28, p25

    invoke-virtual/range {v1 .. v28}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Complex(JJIIIIIIIIIFFJJFFJIIII)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_37

    .line 1007
    monitor-exit p0

    return-void

    .line 1004
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method declared-synchronized greylist-max-o nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V
    .registers 55

    move-object/from16 v1, p0

    monitor-enter p0

    .line 993
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 994
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move-wide/from16 v21, p18

    move-wide/from16 v23, p20

    move/from16 v25, p22

    move/from16 v26, p23

    move/from16 v27, p24

    move/from16 v28, p25

    invoke-virtual/range {v1 .. v28}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Double(JJIIIIIIIIIDJJDJIIII)V
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_33

    .line 995
    monitor-exit p0

    return-void

    .line 992
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method declared-synchronized greylist-max-o nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V
    .registers 51

    move-object/from16 v1, p0

    monitor-enter p0

    .line 981
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 982
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    move/from16 v20, p17

    move-wide/from16 v21, p18

    move/from16 v23, p20

    move/from16 v24, p21

    move/from16 v25, p22

    move/from16 v26, p23

    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Single(JJIIIIIIIIIFJJFJIIII)V
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_33

    .line 983
    monitor-exit p0

    return-void

    .line 980
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method declared-synchronized greylist-max-o nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V
    .registers 63

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1017
    :try_start_3
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1018
    iget-wide v2, v1, Landroid/renderscript/RenderScript;->mContext:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move-wide/from16 v21, p18

    move-wide/from16 v23, p20

    move-wide/from16 v25, p22

    move-wide/from16 v27, p24

    move/from16 v29, p26

    move/from16 v30, p27

    move/from16 v31, p28

    move/from16 v32, p29

    invoke-virtual/range {v1 .. v32}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Z(JJIIIIIIIIIDDJJDDJIIII)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_37

    .line 1019
    monitor-exit p0

    return-void

    .line 1016
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method declared-synchronized greylist-max-o nScriptIntrinsicCreate(IJ)J
    .registers 11

    monitor-enter p0

    .line 850
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 851
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicCreate(JIJ)J

    move-result-wide p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    monitor-exit p0

    return-wide p1

    .line 849
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptInvoke(JI)V
    .registers 11

    monitor-enter p0

    .line 748
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 749
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptInvoke(JJI)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 750
    monitor-exit p0

    return-void

    .line 747
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nScriptInvokeIDCreate(JI)J
    .registers 11

    monitor-enter p0

    .line 862
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 863
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptInvokeIDCreate(JJI)J

    move-result-wide p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    monitor-exit p0

    return-wide p1

    .line 861
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptInvokeV(JI[B)V
    .registers 13

    monitor-enter p0

    .line 771
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 772
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    :try_start_a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptInvokeV(JJI[B)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 773
    monitor-exit p0

    return-void

    .line 770
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptKernelIDCreate(JII)J
    .registers 13

    monitor-enter p0

    .line 856
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 857
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    :try_start_a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptKernelIDCreate(JJII)J

    move-result-wide p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_15

    monitor-exit p0

    return-wide p1

    .line 855
    :catchall_10
    move-exception v0

    move-object v1, p0

    :goto_12
    move-object p1, v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    goto :goto_12
.end method

.method declared-synchronized greylist-max-o nScriptReduce(JI[JJ[I)V
    .registers 19

    monitor-enter p0

    .line 765
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 766
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnScriptReduce(JJI[JJ[I)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 767
    monitor-exit p0

    return-void

    .line 764
    :catchall_13
    move-exception v0

    move-object p1, v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_13

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptSetTimeZone(J[B)V
    .registers 11

    monitor-enter p0

    .line 743
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 744
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptSetTimeZone(JJ[B)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 745
    monitor-exit p0

    return-void

    .line 742
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method declared-synchronized greylist-max-o nScriptSetVarD(JID)V
    .registers 15

    monitor-enter p0

    .line 809
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 810
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    :try_start_a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptSetVarD(JJID)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 811
    monitor-exit p0

    return-void

    .line 808
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptSetVarF(JIF)V
    .registers 13

    monitor-enter p0

    .line 799
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 800
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    :try_start_a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptSetVarF(JJIF)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 801
    monitor-exit p0

    return-void

    .line 798
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptSetVarI(JII)V
    .registers 13

    monitor-enter p0

    .line 777
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 778
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    :try_start_a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptSetVarI(JJII)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 779
    monitor-exit p0

    return-void

    .line 776
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptSetVarJ(JIJ)V
    .registers 15

    monitor-enter p0

    .line 788
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 789
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    :try_start_a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptSetVarJ(JJIJ)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 790
    monitor-exit p0

    return-void

    .line 787
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptSetVarObj(JIJ)V
    .registers 15

    monitor-enter p0

    .line 836
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 837
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-wide v7, p4

    :try_start_a
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptSetVarObj(JJIJ)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 838
    monitor-exit p0

    return-void

    .line 835
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptSetVarV(JI[B)V
    .registers 13

    monitor-enter p0

    .line 819
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 820
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    :try_start_a
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptSetVarV(JJI[B)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 821
    monitor-exit p0

    return-void

    .line 818
    :catchall_f
    move-exception v0

    move-object v1, p0

    :goto_11
    move-object p1, v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    throw p1

    :catchall_14
    move-exception v0

    goto :goto_11
.end method

.method declared-synchronized greylist-max-o nScriptSetVarVE(JI[BJ[I)V
    .registers 19

    monitor-enter p0

    .line 831
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 832
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnScriptSetVarVE(JJI[BJ[I)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 833
    monitor-exit p0

    return-void

    .line 830
    :catchall_13
    move-exception v0

    move-object p1, v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_13

    throw p1
.end method

.method declared-synchronized greylist-max-o nTypeCreate(JIIIZZI)J
    .registers 21

    monitor-enter p0

    .line 441
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 442
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->rsnTypeCreate(JJIIIZZI)J

    move-result-wide p1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-wide p1

    .line 440
    :catchall_19
    move-exception v0

    move-object p1, v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_19

    throw p1
.end method

.method declared-synchronized greylist-max-o nTypeGetNativeData(J[J)V
    .registers 11

    monitor-enter p0

    .line 446
    :try_start_1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 447
    iget-wide v2, p0, Landroid/renderscript/RenderScript;->mContext:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->rsnTypeGetNativeData(JJ[J)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_13

    .line 448
    monitor-exit p0

    return-void

    .line 445
    :catchall_e
    move-exception v0

    move-object v1, p0

    :goto_10
    move-object p1, v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    throw p1

    :catchall_13
    move-exception v0

    goto :goto_10
.end method

.method native greylist-max-o rsnAllocationAdapterCreate(JJJ)J
.end method

.method native greylist-max-o rsnAllocationAdapterOffset(JJIIIIIIIII)V
.end method

.method native greylist-max-o rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method native greylist-max-o rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method native greylist-max-o rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J
.end method

.method native greylist-max-o rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method native greylist-max-o rsnAllocationCreateTyped(JJIIJ)J
.end method

.method native greylist-max-o rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method native greylist-max-o rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method native greylist-max-o rsnAllocationData2D(JJIIIIIIJIIII)V
.end method

.method native greylist-max-o rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native greylist-max-o rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
.end method

.method native greylist-max-o rsnAllocationData3D(JJIIIIIIIJIIII)V
.end method

.method native greylist-max-o rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native greylist-max-o rsnAllocationElementData(JJIIIII[BI)V
.end method

.method native greylist-max-o rsnAllocationElementRead(JJIIIII[BI)V
.end method

.method native greylist-max-o rsnAllocationGenerateMipmaps(JJ)V
.end method

.method native greylist-max-o rsnAllocationGetByteBuffer(JJ[JIII)Ljava/nio/ByteBuffer;
.end method

.method native greylist-max-o rsnAllocationGetSurface(JJ)Landroid/view/Surface;
.end method

.method native greylist-max-o rsnAllocationGetType(JJ)J
.end method

.method native greylist-max-o rsnAllocationIoReceive(JJ)J
.end method

.method native greylist-max-o rsnAllocationIoSend(JJ)V
.end method

.method native greylist-max-o rsnAllocationRead(JJLjava/lang/Object;IIZ)V
.end method

.method native greylist-max-o rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method native greylist-max-o rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native greylist-max-o rsnAllocationRead3D(JJIIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native greylist-max-o rsnAllocationResize1D(JJI)V
.end method

.method native greylist-max-o rsnAllocationSetSurface(JJLandroid/view/Surface;)V
.end method

.method native greylist-max-o rsnAllocationSetupBufferQueue(JJI)V
.end method

.method native greylist-max-o rsnAllocationShareBufferQueue(JJJ)V
.end method

.method native greylist-max-o rsnAllocationSyncAll(JJI)V
.end method

.method native greylist-max-o rsnAssignName(JJ[B)V
.end method

.method native greylist-max-o rsnClosureCreate(JJJ[J[J[I[J[J)J
.end method

.method native greylist-max-o rsnClosureSetArg(JJIJI)V
.end method

.method native greylist-max-o rsnClosureSetGlobal(JJJJI)V
.end method

.method native greylist-max-o rsnContextBindProgramFragment(JJ)V
.end method

.method native greylist-max-o rsnContextBindProgramRaster(JJ)V
.end method

.method native greylist-max-o rsnContextBindProgramStore(JJ)V
.end method

.method native greylist-max-o rsnContextBindProgramVertex(JJ)V
.end method

.method native greylist-max-o rsnContextBindRootScript(JJ)V
.end method

.method native greylist-max-o rsnContextBindSampler(JII)V
.end method

.method native greylist-max-o rsnContextCreate(JIII)J
.end method

.method native greylist-max-o rsnContextCreateGL(JIIIIIIIIIIIIFI)J
.end method

.method native greylist-max-o rsnContextDestroy(J)V
.end method

.method native greylist-max-o rsnContextDump(JI)V
.end method

.method native greylist-max-o rsnContextFinish(J)V
.end method

.method native greylist-max-o rsnContextPause(J)V
.end method

.method native greylist-max-o rsnContextResume(J)V
.end method

.method native greylist-max-o rsnContextSendMessage(JI[I)V
.end method

.method native greylist-max-o rsnContextSetCacheDir(JLjava/lang/String;)V
.end method

.method native greylist-max-o rsnContextSetPriority(JI)V
.end method

.method native greylist-max-o rsnContextSetSurface(JIILandroid/view/Surface;)V
.end method

.method native greylist-max-o rsnContextSetSurfaceTexture(JIILandroid/graphics/SurfaceTexture;)V
.end method

.method native greylist-max-o rsnElementCreate(JJIZI)J
.end method

.method native greylist-max-o rsnElementCreate2(J[J[Ljava/lang/String;[I)J
.end method

.method native greylist-max-o rsnElementGetNativeData(JJ[I)V
.end method

.method native greylist-max-o rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
.end method

.method native greylist-max-o rsnFileA3DCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)J
.end method

.method native greylist-max-o rsnFileA3DCreateFromAssetStream(JJ)J
.end method

.method native greylist-max-o rsnFileA3DCreateFromFile(JLjava/lang/String;)J
.end method

.method native greylist-max-o rsnFileA3DGetEntryByIndex(JJI)J
.end method

.method native greylist-max-o rsnFileA3DGetIndexEntries(JJI[I[Ljava/lang/String;)V
.end method

.method native greylist-max-o rsnFileA3DGetNumIndexEntries(JJ)I
.end method

.method native greylist-max-o rsnFontCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;FI)J
.end method

.method native greylist-max-o rsnFontCreateFromAssetStream(JLjava/lang/String;FIJ)J
.end method

.method native greylist-max-o rsnFontCreateFromFile(JLjava/lang/String;FI)J
.end method

.method native greylist-max-o rsnGetName(JJ)Ljava/lang/String;
.end method

.method native greylist-max-o rsnInvokeClosureCreate(JJ[B[J[J[I)J
.end method

.method native greylist-max-o rsnMeshCreate(J[J[J[I)J
.end method

.method native greylist-max-o rsnMeshGetIndexCount(JJ)I
.end method

.method native greylist-max-o rsnMeshGetIndices(JJ[J[II)V
.end method

.method native greylist-max-o rsnMeshGetVertexBufferCount(JJ)I
.end method

.method native greylist-max-o rsnMeshGetVertices(JJ[JI)V
.end method

.method native greylist-max-o rsnObjDestroy(JJ)V
.end method

.method native greylist-max-o rsnProgramBindConstants(JJIJ)V
.end method

.method native greylist-max-o rsnProgramBindSampler(JJIJ)V
.end method

.method native greylist-max-o rsnProgramBindTexture(JJIJ)V
.end method

.method native greylist-max-o rsnProgramFragmentCreate(JLjava/lang/String;[Ljava/lang/String;[J)J
.end method

.method native greylist-max-o rsnProgramRasterCreate(JZI)J
.end method

.method native greylist-max-o rsnProgramStoreCreate(JZZZZZZIII)J
.end method

.method native greylist-max-o rsnProgramVertexCreate(JLjava/lang/String;[Ljava/lang/String;[J)J
.end method

.method native greylist-max-o rsnSamplerCreate(JIIIIIF)J
.end method

.method native greylist-max-o rsnScriptBindAllocation(JJJI)V
.end method

.method native greylist-max-o rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J
.end method

.method native greylist-max-o rsnScriptFieldIDCreate(JJI)J
.end method

.method native greylist-max-o rsnScriptForEach(JJI[JJ[B[I)V
.end method

.method native greylist-max-o rsnScriptGetVarD(JJI)D
.end method

.method native greylist-max-o rsnScriptGetVarF(JJI)F
.end method

.method native greylist-max-o rsnScriptGetVarI(JJI)I
.end method

.method native greylist-max-o rsnScriptGetVarJ(JJI)J
.end method

.method native greylist-max-o rsnScriptGetVarV(JJI[B)V
.end method

.method native greylist-max-o rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J
.end method

.method native greylist-max-o rsnScriptGroup2Execute(JJ)V
.end method

.method native greylist-max-o rsnScriptGroupCreate(J[J[J[J[J[J)J
.end method

.method native greylist-max-o rsnScriptGroupExecute(JJ)V
.end method

.method native greylist-max-o rsnScriptGroupSetInput(JJJJ)V
.end method

.method native greylist-max-o rsnScriptGroupSetOutput(JJJJ)V
.end method

.method native greylist-max-o rsnScriptIntrinsicBLAS_BNNM(JJIIIJIJIJII)V
.end method

.method native greylist-max-o rsnScriptIntrinsicBLAS_Complex(JJIIIIIIIIIFFJJFFJIIII)V
.end method

.method native greylist-max-o rsnScriptIntrinsicBLAS_Double(JJIIIIIIIIIDJJDJIIII)V
.end method

.method native greylist-max-o rsnScriptIntrinsicBLAS_Single(JJIIIIIIIIIFJJFJIIII)V
.end method

.method native greylist-max-o rsnScriptIntrinsicBLAS_Z(JJIIIIIIIIIDDJJDDJIIII)V
.end method

.method native greylist-max-o rsnScriptIntrinsicCreate(JIJ)J
.end method

.method native greylist-max-o rsnScriptInvoke(JJI)V
.end method

.method native greylist-max-o rsnScriptInvokeIDCreate(JJI)J
.end method

.method native greylist-max-o rsnScriptInvokeV(JJI[B)V
.end method

.method native greylist-max-o rsnScriptKernelIDCreate(JJII)J
.end method

.method native greylist-max-o rsnScriptReduce(JJI[JJ[I)V
.end method

.method native greylist-max-o rsnScriptSetTimeZone(JJ[B)V
.end method

.method native greylist-max-o rsnScriptSetVarD(JJID)V
.end method

.method native greylist-max-o rsnScriptSetVarF(JJIF)V
.end method

.method native greylist-max-o rsnScriptSetVarI(JJII)V
.end method

.method native greylist-max-o rsnScriptSetVarJ(JJIJ)V
.end method

.method native greylist-max-o rsnScriptSetVarObj(JJIJ)V
.end method

.method native greylist-max-o rsnScriptSetVarV(JJI[B)V
.end method

.method native greylist-max-o rsnScriptSetVarVE(JJI[BJ[I)V
.end method

.method native greylist-max-o rsnTypeCreate(JJIIIZZI)J
.end method

.method native greylist-max-o rsnTypeGetNativeData(JJ[J)V
.end method

.method greylist-max-o safeID(Landroid/renderscript/BaseObj;)J
    .registers 4

    .line 1669
    if-eqz p1, :cond_7

    .line 1670
    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    return-wide v0

    .line 1672
    :cond_7
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist sendMessage(I[I)V
    .registers 3

    .line 1186
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/RenderScript;->nContextSendMessage(I[I)V

    .line 1187
    return-void
.end method

.method public whitelist setErrorHandler(Landroid/renderscript/RenderScript$RSErrorHandler;)V
    .registers 2

    .line 1212
    iput-object p1, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    .line 1213
    return-void
.end method

.method public whitelist setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V
    .registers 2

    .line 1172
    iput-object p1, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    .line 1173
    return-void
.end method

.method public whitelist setPriority(Landroid/renderscript/RenderScript$Priority;)V
    .registers 2

    .line 1257
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1258
    iget p1, p1, Landroid/renderscript/RenderScript$Priority;->mID:I

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->nContextSetPriority(I)V

    .line 1259
    return-void
.end method

.method greylist validate()V
    .registers 5

    .line 1245
    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 1248
    return-void

    .line 1246
    :cond_9
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o validateObject(Landroid/renderscript/BaseObj;)V
    .registers 3

    .line 1236
    if-eqz p1, :cond_f

    .line 1237
    iget-object p1, p1, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    if-ne p1, p0, :cond_7

    goto :goto_f

    .line 1238
    :cond_7
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Attempting to use an object across contexts."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1241
    :cond_f
    :goto_f
    return-void
.end method
