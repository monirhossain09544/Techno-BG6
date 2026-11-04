.class public abstract Landroid/service/autofill/augmented/AugmentedAutofillService;
.super Landroid/app/Service;
.source "AugmentedAutofillService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;,
        Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.autofill.augmented.AugmentedAutofillService"

.field private static final blacklist TAG:Ljava/lang/String;

.field static blacklist sDebug:Z

.field static blacklist sVerbose:Z


# instance fields
.field private blacklist mAutofillProxies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAutofillProxyForLastRequest:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mServiceComponentName:Landroid/content/ComponentName;


# direct methods
.method public static synthetic blacklist $r8$lambda$rvhM6BWL3I3-IxUfQJTTK_Dnd7g(Landroid/service/autofill/augmented/AugmentedAutofillService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->handleOnUnbind()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/autofill/augmented/AugmentedAutofillService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnConnected(Landroid/service/autofill/augmented/AugmentedAutofillService;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/autofill/augmented/AugmentedAutofillService;->handleOnConnected(ZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnDestroyAllFillWindowsRequest(Landroid/service/autofill/augmented/AugmentedAutofillService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->handleOnDestroyAllFillWindowsRequest()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnDisconnected(Landroid/service/autofill/augmented/AugmentedAutofillService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->handleOnDisconnected()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleOnFillRequest(Landroid/service/autofill/augmented/AugmentedAutofillService;ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Landroid/service/autofill/augmented/AugmentedAutofillService;->handleOnFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    const-class v0, Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    .line 78
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sVerbose:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private blacklist handleOnConnected(ZZ)V
    .registers 6

    .line 243
    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-nez v0, :cond_6

    if-eqz p1, :cond_28

    .line 244
    :cond_6
    sget-object v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnConnected(): debug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", verbose="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_28
    sput-boolean p1, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    .line 247
    sput-boolean p2, Landroid/service/autofill/augmented/AugmentedAutofillService;->sVerbose:Z

    .line 248
    invoke-virtual {p0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->onConnected()V

    .line 249
    return-void
.end method

.method private blacklist handleOnDestroyAllFillWindowsRequest()V
    .registers 7

    .line 289
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    if-eqz v0, :cond_64

    .line 290
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 291
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_5c

    .line 292
    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 293
    iget-object v3, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    .line 294
    if-nez v3, :cond_36

    .line 296
    sget-object v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No proxy for session "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void

    .line 299
    :cond_36
    invoke-static {v3}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->-$$Nest$fgetmCallback(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)Landroid/service/autofill/augmented/IFillCallback;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 301
    :try_start_3c
    invoke-static {v3}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->-$$Nest$fgetmCallback(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)Landroid/service/autofill/augmented/IFillCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/autofill/augmented/IFillCallback;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 302
    invoke-static {v3}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->-$$Nest$fgetmCallback(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)Landroid/service/autofill/augmented/IFillCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/autofill/augmented/IFillCallback;->cancel()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4d} :catch_4e

    .line 306
    :cond_4d
    goto :goto_56

    .line 304
    :catch_4e
    move-exception v2

    .line 305
    sget-object v4, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    const-string v5, "failed to check current pending request status"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    :cond_56
    :goto_56
    invoke-static {v3}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->-$$Nest$mdestroy(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)V

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 310
    :cond_5c
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxyForLastRequest:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    .line 313
    :cond_64
    return-void
.end method

.method private blacklist handleOnDisconnected()V
    .registers 1

    .line 252
    invoke-virtual {p0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->onDisconnected()V

    .line 253
    return-void
.end method

.method private blacklist handleOnFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V
    .registers 25

    .line 260
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 261
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    .line 264
    :cond_b
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v13

    .line 265
    invoke-static {v13}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v11

    .line 266
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    .line 267
    if-nez v0, :cond_3b

    .line 268
    new-instance v0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    iget-object v4, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mServiceComponentName:Landroid/content/ComponentName;

    const/4 v12, 0x0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v12}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;-><init>(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/service/autofill/augmented/IFillCallback;Landroid/os/CancellationSignal;Landroid/service/autofill/augmented/AugmentedAutofillService-IA;)V

    .line 271
    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object p1, v0

    goto :goto_61

    .line 274
    :cond_3b
    move-object/from16 v10, p10

    sget-boolean v2, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v2, :cond_59

    sget-object v2, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reusing proxy for session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_59
    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static {v0, v6, v7, v10, v11}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->-$$Nest$mupdate(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/service/autofill/augmented/IFillCallback;Landroid/os/CancellationSignal;)V

    move-object p1, v0

    .line 279
    :goto_61
    :try_start_61
    invoke-interface {v10, v13}, Landroid/service/autofill/augmented/IFillCallback;->onCancellable(Landroid/os/ICancellationSignal;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_64} :catch_65

    .line 282
    goto :goto_69

    .line 280
    :catch_65
    move-exception v0

    .line 281
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 283
    :goto_69
    iput-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxyForLastRequest:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    .line 284
    new-instance v0, Landroid/service/autofill/augmented/FillRequest;

    move-object/from16 v1, p9

    invoke-direct {v0, p1, v1}, Landroid/service/autofill/augmented/FillRequest;-><init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;Landroid/view/inputmethod/InlineSuggestionsRequest;)V

    new-instance v1, Landroid/service/autofill/augmented/FillController;

    invoke-direct {v1, p1}, Landroid/service/autofill/augmented/FillController;-><init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)V

    new-instance v2, Landroid/service/autofill/augmented/FillCallback;

    invoke-direct {v2, p1}, Landroid/service/autofill/augmented/FillCallback;-><init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)V

    invoke-virtual {p0, v0, v11, v1, v2}, Landroid/service/autofill/augmented/AugmentedAutofillService;->onFillRequest(Landroid/service/autofill/augmented/FillRequest;Landroid/os/CancellationSignal;Landroid/service/autofill/augmented/FillController;Landroid/service/autofill/augmented/FillCallback;)V

    .line 286
    return-void
.end method

.method private blacklist handleOnUnbind()V
    .registers 7

    .line 316
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    if-nez v0, :cond_11

    .line 317
    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_10

    sget-object v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnbind(): no proxy to destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_10
    return-void

    .line 320
    :cond_11
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 321
    sget-boolean v1, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v1, :cond_3a

    sget-object v1, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUnbind(): destroying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " proxies"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    if-ge v1, v0, :cond_65

    .line 323
    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    .line 325
    :try_start_45
    invoke-static {v2}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->-$$Nest$mdestroy(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    .line 328
    goto :goto_62

    .line 326
    :catch_49
    move-exception v3

    .line 327
    sget-object v3, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error destroying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 330
    :cond_65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    .line 331
    iput-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxyForLastRequest:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    .line 332
    return-void
.end method


# virtual methods
.method protected final whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 336
    const-string p1, "Service component: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mServiceComponentName:Landroid/content/ComponentName;

    .line 337
    invoke-static {p1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    .line 336
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    iget-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    if-eqz p1, :cond_49

    .line 339
    iget-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 340
    const-string v0, "Number proxies: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 341
    const/4 v0, 0x0

    :goto_21
    if-ge v0, p1, :cond_49

    .line 342
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 343
    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    .line 344
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ") SessionId="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    const-string v1, "  "

    invoke-virtual {v2, v1, p2}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 348
    :cond_49
    invoke-virtual {p0, p2, p3}, Landroid/service/autofill/augmented/AugmentedAutofillService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method protected whitelist dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 3

    .line 361
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ": nothing to dump"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public final whitelist getFillEventHistory()Landroid/service/autofill/FillEventHistory;
    .registers 2

    .line 380
    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 382
    if-nez v0, :cond_c

    .line 383
    const/4 v0, 0x0

    return-object v0

    .line 385
    :cond_c
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->getFillEventHistory()Landroid/service/autofill/FillEventHistory;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 6

    .line 142
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mServiceComponentName:Landroid/content/ComponentName;

    .line 143
    const-string v0, "android.service.autofill.augmented.AugmentedAutofillService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 144
    new-instance p1, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;

    invoke-direct {p1, p0, v1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;-><init>(Landroid/service/autofill/augmented/AugmentedAutofillService;Landroid/service/autofill/augmented/AugmentedAutofillService-IA;)V

    return-object p1

    .line 146
    :cond_19
    sget-object v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to bind to wrong intent (should be android.service.autofill.augmented.AugmentedAutofillService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object v1
.end method

.method public whitelist onConnected()V
    .registers 1

    .line 163
    return-void
.end method

.method public whitelist onCreate()V
    .registers 5

    .line 134
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mHandler:Landroid/os/Handler;

    .line 136
    invoke-static {v3}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 137
    return-void
.end method

.method public whitelist onDisconnected()V
    .registers 1

    .line 240
    return-void
.end method

.method public whitelist onFillRequest(Landroid/service/autofill/augmented/FillRequest;Landroid/os/CancellationSignal;Landroid/service/autofill/augmented/FillController;Landroid/service/autofill/augmented/FillCallback;)V
    .registers 5

    .line 230
    return-void
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .registers 3

    .line 152
    iget-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/service/autofill/augmented/AugmentedAutofillService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    const/4 p1, 0x0

    return p1
.end method

.method public final whitelist requestAutofill(Landroid/content/ComponentName;Landroid/view/autofill/AutofillId;)Z
    .registers 6

    .line 186
    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxyForLastRequest:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    .line 187
    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-object v2, v0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-static {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->-$$Nest$fgetmFocusedId(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)Landroid/view/autofill/AutofillId;

    move-result-object p1

    .line 188
    invoke-virtual {p1, p2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_22

    .line 192
    :cond_18
    :try_start_18
    invoke-static {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->-$$Nest$mrequestAutofill(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)Z

    move-result p1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1c} :catch_1d

    return p1

    .line 193
    :catch_1d
    move-exception p1

    .line 194
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 196
    return v1

    .line 189
    :cond_22
    :goto_22
    return v1
.end method
