.class public Landroid/provider/CallLog$CallComposerLoggingException;
.super Ljava/lang/Throwable;
.source "CallLog.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallComposerLoggingException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$CallComposerLoggingException$CallComposerLoggingError;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_INPUT_CLOSED:I = 0x3

.field public static final whitelist ERROR_REMOTE_END_CLOSED:I = 0x1

.field public static final whitelist ERROR_STORAGE_FULL:I = 0x2

.field public static final whitelist ERROR_UNKNOWN:I


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 2

    .line 333
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 334
    iput p1, p0, Landroid/provider/CallLog$CallComposerLoggingException;->mErrorCode:I

    .line 335
    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .registers 2

    .line 341
    iget v0, p0, Landroid/provider/CallLog$CallComposerLoggingException;->mErrorCode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 347
    iget v0, p0, Landroid/provider/CallLog$CallComposerLoggingException;->mErrorCode:I

    packed-switch v0, :pswitch_data_44

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/provider/CallLog$CallComposerLoggingException;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 358
    :pswitch_21
    nop

    .line 359
    const-string v0, "INPUT_CLOSED"

    goto :goto_30

    .line 355
    :pswitch_25
    nop

    .line 356
    const-string v0, "STORAGE_FULL"

    goto :goto_30

    .line 352
    :pswitch_29
    nop

    .line 353
    const-string v0, "REMOTE_END_CLOSED"

    goto :goto_30

    .line 349
    :pswitch_2d
    nop

    .line 350
    const-string v0, "UNKNOWN"

    .line 364
    :goto_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallComposerLoggingException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
    .end packed-switch
.end method
