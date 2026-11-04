.class Landroid/renderscript/RenderScript$MessageThread;
.super Ljava/lang/Thread;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageThread"
.end annotation


# static fields
.field static final greylist-max-o RS_ERROR_FATAL_DEBUG:I = 0x800

.field static final greylist-max-o RS_ERROR_FATAL_UNKNOWN:I = 0x1000

.field static final greylist-max-o RS_MESSAGE_TO_CLIENT_ERROR:I = 0x3

.field static final greylist-max-o RS_MESSAGE_TO_CLIENT_EXCEPTION:I = 0x1

.field static final greylist-max-o RS_MESSAGE_TO_CLIENT_NEW_BUFFER:I = 0x5

.field static final greylist-max-o RS_MESSAGE_TO_CLIENT_NONE:I = 0x0

.field static final greylist-max-o RS_MESSAGE_TO_CLIENT_RESIZE:I = 0x2

.field static final greylist-max-o RS_MESSAGE_TO_CLIENT_USER:I = 0x4


# instance fields
.field greylist-max-o mAuxData:[I

.field greylist-max-o mRS:Landroid/renderscript/RenderScript;

.field greylist-max-o mRun:Z


# direct methods
.method constructor greylist-max-o <init>(Landroid/renderscript/RenderScript;)V
    .registers 3

    .line 1277
    const-string v0, "RSMessageThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1263
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 1264
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    .line 1278
    iput-object p1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    .line 1280
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 11

    .line 1285
    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 1286
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v2, v2, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nContextInitToClient(J)V

    .line 1287
    :goto_d
    iget-boolean v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    if-eqz v1, :cond_122

    .line 1288
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 1289
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v3, v3, Landroid/renderscript/RenderScript;->mContext:J

    iget-object v5, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    invoke-virtual {v2, v3, v4, v5}, Landroid/renderscript/RenderScript;->nContextPeekMessage(J[I)I

    move-result v2

    .line 1290
    iget-object v3, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 1291
    iget-object v5, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    aget v5, v5, v1

    .line 1293
    const-string v6, "Error processing message from RenderScript."

    const/4 v7, 0x4

    if-ne v2, v7, :cond_73

    .line 1294
    shr-int/lit8 v1, v3, 0x2

    array-length v2, v0

    if-lt v1, v2, :cond_39

    .line 1295
    add-int/lit8 v0, v3, 0x3

    shr-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 1297
    :cond_39
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v8, v2, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {v1, v8, v9, v0}, Landroid/renderscript/RenderScript;->nContextGetUserMessage(J[I)I

    move-result v1

    if-ne v1, v7, :cond_6d

    .line 1302
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    if-eqz v1, :cond_65

    .line 1303
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    iput-object v0, v1, Landroid/renderscript/RenderScript$RSMessageHandler;->mData:[I

    .line 1304
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    iput v5, v1, Landroid/renderscript/RenderScript$RSMessageHandler;->mID:I

    .line 1305
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    iput v3, v1, Landroid/renderscript/RenderScript$RSMessageHandler;->mLength:I

    .line 1306
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript$RSMessageHandler;->run()V

    goto :goto_d

    .line 1308
    :cond_65
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Received a message from the script with no message handler installed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1299
    :cond_6d
    new-instance v0, Landroid/renderscript/RSDriverException;

    invoke-direct {v0, v6}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1313
    :cond_73
    const/4 v3, 0x3

    if-ne v2, v3, :cond_ef

    .line 1314
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v2, v2, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nContextGetErrorMessage(J)Ljava/lang/String;

    move-result-object v1

    .line 1323
    const/16 v2, 0x1000

    if-ge v5, v2, :cond_cc

    const/16 v2, 0x800

    if-lt v5, v2, :cond_96

    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v2, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    sget-object v3, Landroid/renderscript/RenderScript$ContextType;->DEBUG:Landroid/renderscript/RenderScript$ContextType;

    if-ne v2, v3, :cond_cc

    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v2, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    if-eqz v2, :cond_cc

    .line 1330
    :cond_96
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v2, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    if-eqz v2, :cond_b1

    .line 1331
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v2, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    iput-object v1, v2, Landroid/renderscript/RenderScript$RSErrorHandler;->mErrorMessage:Ljava/lang/String;

    .line 1332
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    iput v5, v1, Landroid/renderscript/RenderScript$RSErrorHandler;->mErrorNum:I

    .line 1333
    iget-object v1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v1, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript$RSErrorHandler;->run()V

    goto/16 :goto_d

    .line 1335
    :cond_b1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "non fatal RS error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RenderScript_jni"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    goto/16 :goto_d

    .line 1327
    :cond_cc
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fatal error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", details: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1342
    :cond_ef
    const/4 v3, 0x5

    if-ne v2, v3, :cond_119

    .line 1343
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v5, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-wide v7, v5, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {v2, v7, v8, v0}, Landroid/renderscript/RenderScript;->nContextGetUserMessage(J[I)I

    move-result v2

    if-ne v2, v3, :cond_113

    .line 1347
    aget v2, v0, v4

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    aget v1, v0, v1

    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 1348
    invoke-static {v2, v3}, Landroid/renderscript/Allocation;->sendBufferNotification(J)V

    .line 1349
    goto/16 :goto_d

    .line 1345
    :cond_113
    new-instance v0, Landroid/renderscript/RSDriverException;

    invoke-direct {v0, v6}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1357
    :cond_119
    const-wide/16 v2, 0x1

    :try_start_11b
    invoke-static {v2, v3, v1}, Landroid/renderscript/RenderScript$MessageThread;->sleep(JI)V
    :try_end_11e
    .catch Ljava/lang/InterruptedException; {:try_start_11b .. :try_end_11e} :catch_11f

    .line 1359
    goto :goto_120

    .line 1358
    :catch_11f
    move-exception v1

    .line 1360
    :goto_120
    goto/16 :goto_d

    .line 1362
    :cond_122
    return-void
.end method
