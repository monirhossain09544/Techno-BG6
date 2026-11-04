.class public Lcom/android/internal/os/RuntimeInit;
.super Ljava/lang/Object;
.source "RuntimeInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/RuntimeInit$LoggingHandler;,
        Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;,
        Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;,
        Lcom/android/internal/os/RuntimeInit$Arguments;,
        Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;
    }
.end annotation


# static fields
.field static final blacklist DEBUG:Z = false

.field private static final blacklist SYSPROP_CRASH_COUNT:Ljava/lang/String; = "sys.system_server.crash_java"

.field static final blacklist TAG:Ljava/lang/String; = "AndroidRuntime"

.field private static greylist initialized:Z

.field private static greylist mApplicationObject:Landroid/os/IBinder;

.field private static blacklist mCrashCount:I

.field private static volatile blacklist mCrashing:Z

.field private static volatile blacklist sDefaultApplicationWtfHandler:Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;
    .registers 1

    sget-object v0, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmCrashCount()I
    .registers 1

    sget v0, Lcom/android/internal/os/RuntimeInit;->mCrashCount:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmCrashing()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/os/RuntimeInit;->mCrashing:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmCrashCount(I)V
    .registers 1

    sput p0, Lcom/android/internal/os/RuntimeInit;->mCrashCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmCrashing(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/internal/os/RuntimeInit;->mCrashing:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smClog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/os/RuntimeInit;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/os/RuntimeInit;->mCrashing:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    .line 79
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1, p2}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method protected static blacklist applicationInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;
    .registers 5

    .line 383
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->nativeSetExitWithoutCleanup(Z)V

    .line 385
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setTargetSdkVersion(I)V

    .line 386
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object p0

    invoke-virtual {p0, p1}, Ldalvik/system/VMRuntime;->setDisabledCompatChanges([J)V

    .line 388
    new-instance p0, Lcom/android/internal/os/RuntimeInit$Arguments;

    invoke-direct {p0, p2}, Lcom/android/internal/os/RuntimeInit$Arguments;-><init>([Ljava/lang/String;)V

    .line 391
    const-wide/16 p1, 0x40

    invoke-static {p1, p2}, Landroid/os/Trace;->traceEnd(J)V

    .line 394
    iget-object p1, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    invoke-static {p1, p0, p3}, Lcom/android/internal/os/RuntimeInit;->findStaticMain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist closeLogStreams()V
    .registers 1

    .line 399
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 400
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 401
    return-void
.end method

.method protected static final greylist commonInit()V
    .registers 2

    .line 243
    new-instance v0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/RuntimeInit$LoggingHandler;-><init>(Lcom/android/internal/os/RuntimeInit-IA;)V

    .line 244
    invoke-static {v0}, Ldalvik/system/RuntimeHooks;->setUncaughtExceptionPreHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 245
    new-instance v1, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;

    invoke-direct {v1, v0}, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;-><init>(Lcom/android/internal/os/RuntimeInit$LoggingHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 247
    invoke-static {}, Landroid/os/Build;->adjustBuildTypeIfNeeded()V

    .line 252
    new-instance v0, Lcom/android/internal/os/RuntimeInit$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/os/RuntimeInit$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ldalvik/system/RuntimeHooks;->setTimeZoneIdSupplier(Ljava/util/function/Supplier;)V

    .line 261
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->reset()V

    .line 262
    new-instance v0, Lcom/android/internal/logging/AndroidConfig;

    invoke-direct {v0}, Lcom/android/internal/logging/AndroidConfig;-><init>()V

    .line 267
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 268
    const-string v1, "http.agent"

    invoke-static {v1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    invoke-static {}, Landroid/net/TrafficStats;->attachSocketTagger()V

    .line 275
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/os/RuntimeInit;->initialized:Z

    .line 276
    return-void
.end method

.method private static blacklist enableDdms()V
    .registers 0

    .line 499
    invoke-static {}, Landroid/ddm/DdmRegister;->registerHandlers()V

    .line 500
    return-void
.end method

.method protected static blacklist findStaticMain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;
    .registers 7

    .line 322
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, v0, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_5} :catch_77

    .line 327
    nop

    .line 331
    :try_start_6
    const-string v1, "main"

    new-array v0, v0, [Ljava/lang/Class;

    const-class v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {p2, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_13} :catch_5d
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_13} :catch_43

    .line 338
    nop

    .line 340
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 341
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 352
    new-instance p0, Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;

    invoke-direct {p0, p2, p1}, Lcom/android/internal/os/RuntimeInit$MethodAndArgsCaller;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V

    return-object p0

    .line 342
    :cond_2a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Main method is not public and static on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 335
    :catch_43
    move-exception p1

    .line 336
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problem getting static main on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 332
    :catch_5d
    move-exception p1

    .line 333
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing static main on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 323
    :catch_77
    move-exception p1

    .line 324
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing class when invoking static main "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static final greylist getApplicationObject()Landroid/os/IBinder;
    .registers 1

    .line 491
    sget-object v0, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    return-object v0
.end method

.method private static blacklist getDefaultUserAgent()Ljava/lang/String;
    .registers 3

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 284
    const-string v1, "Dalvik/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, "java.vm.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v1, " (Linux; U; Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    .line 289
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_23

    goto :goto_25

    :cond_23
    const-string v1, "1.0"

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v1, "REL"

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 293
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 294
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_42

    .line 295
    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_42
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 300
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_52

    .line 301
    const-string v2, " Build/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_52
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$commonInit$0()Ljava/lang/String;
    .registers 1

    .line 252
    const-string v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist logUncaught(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 6

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v1, "FATAL EXCEPTION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    if-eqz p1, :cond_25

    .line 89
    const-string p0, "Process: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_25
    const-string p0, "PID: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string p0, "AndroidRuntime"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/android/internal/os/RuntimeInit;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    return-void
.end method

.method public static final greylist main([Ljava/lang/String;)V
    .registers 3

    .line 357
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->preForkInit()V

    .line 358
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    aget-object p0, p0, v0

    const-string v0, "application"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 360
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->redirectLogStreams()V

    .line 365
    :cond_15
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    .line 371
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->nativeFinishInit()V

    .line 374
    return-void
.end method

.method private static final native blacklist nativeFinishInit()V
.end method

.method private static final native blacklist nativeSetExitWithoutCleanup(Z)V
.end method

.method public static blacklist preForkInit()V
    .registers 1

    .line 223
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->enableDdms()V

    .line 232
    new-instance v0, Lcom/android/internal/os/RuntimeInit$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/os/RuntimeInit$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Llibcore/content/type/MimeMap;->setDefaultSupplier(Ljava/util/function/Supplier;)V

    .line 233
    return-void
.end method

.method public static blacklist redirectLogStreams()V
    .registers 3

    .line 408
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->closeLogStreams()V

    .line 409
    new-instance v0, Lcom/android/internal/os/AndroidPrintStream;

    const/4 v1, 0x4

    const-string v2, "System.out"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/AndroidPrintStream;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 410
    new-instance v0, Lcom/android/internal/os/AndroidPrintStream;

    const/4 v1, 0x5

    const-string v2, "System.err"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/AndroidPrintStream;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 411
    return-void
.end method

.method public static final blacklist setApplicationObject(Landroid/os/IBinder;)V
    .registers 1

    .line 486
    sput-object p0, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    .line 487
    return-void
.end method

.method public static blacklist setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V
    .registers 1

    .line 462
    sput-object p0, Lcom/android/internal/os/RuntimeInit;->sDefaultApplicationWtfHandler:Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;

    .line 463
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 12

    .line 423
    const-string v1, "Original WTF:"

    const-string v2, "AndroidRuntime"

    .line 424
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 425
    if-eqz v3, :cond_1c

    .line 426
    sget-object v4, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    new-instance v7, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    invoke-direct {v7, p1}, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;-><init>(Ljava/lang/Throwable;)V

    .line 429
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    .line 426
    move-object v5, p0

    move v6, p2

    invoke-interface/range {v3 .. v8}, Landroid/app/IActivityManager;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result p0

    goto :goto_36

    .line 432
    :cond_1c
    move-object v5, p0

    move v6, p2

    sget-object v3, Lcom/android/internal/os/RuntimeInit;->sDefaultApplicationWtfHandler:Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;

    .line 433
    if-eqz v3, :cond_32

    .line 434
    sget-object v4, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    new-instance v7, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    invoke-direct {v7, p1}, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;-><init>(Ljava/lang/Throwable;)V

    .line 437
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    .line 434
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result p0

    goto :goto_36

    .line 440
    :cond_32
    invoke-static {v2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 443
    :goto_36
    if-eqz p0, :cond_44

    .line 445
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    .line 446
    const/16 p0, 0xa

    invoke-static {p0}, Ljava/lang/System;->exit(I)V
    :try_end_44
    .catchall {:try_start_4 .. :try_end_44} :catchall_45

    .line 455
    :cond_44
    goto :goto_54

    .line 448
    :catchall_45
    move-exception v0

    move-object p0, v0

    .line 449
    instance-of p2, p0, Landroid/os/DeadObjectException;

    if-eqz p2, :cond_4c

    goto :goto_54

    .line 452
    :cond_4c
    const-string p2, "Error reporting WTF"

    invoke-static {v2, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    invoke-static {v2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    :goto_54
    return-void
.end method
