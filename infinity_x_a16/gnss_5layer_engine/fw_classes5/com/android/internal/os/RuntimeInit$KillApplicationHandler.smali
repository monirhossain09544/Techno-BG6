.class Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KillApplicationHandler"
.end annotation


# instance fields
.field private final blacklist mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/RuntimeInit$LoggingHandler;)V
    .registers 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    iput-object p1, p0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    .line 146
    return-void
.end method

.method private blacklist ensureLogging(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    .line 207
    iget-object v0, p0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    iget-boolean v0, v0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->mTriggered:Z

    if-nez v0, :cond_d

    .line 209
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    .line 212
    goto :goto_d

    .line 210
    :catchall_c
    move-exception p1

    .line 214
    :cond_d
    :goto_d
    return-void
.end method


# virtual methods
.method public whitelist test-api uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7

    .line 151
    const-string v0, "AndroidRuntime"

    const/16 v1, 0xa

    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->ensureLogging(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 154
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfgetmCrashing()Z

    move-result p1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_3c

    if-eqz p1, :cond_18

    .line 184
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 185
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 154
    return-void

    .line 155
    :cond_18
    const/4 p1, 0x1

    :try_start_19
    invoke-static {p1}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfputmCrashing(Z)V

    .line 160
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 161
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityThread;->stopProfiling()V

    .line 165
    :cond_29
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    .line 166
    if-eqz p1, :cond_4e

    .line 167
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    invoke-direct {v3, p2}, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v2, v3}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V
    :try_end_3b
    .catchall {:try_start_19 .. :try_end_3b} :catchall_3c

    goto :goto_4e

    .line 170
    :catchall_3c
    move-exception p1

    .line 171
    :try_start_3d
    instance-of v2, p1, Landroid/os/DeadObjectException;
    :try_end_3f
    .catchall {:try_start_3d .. :try_end_3f} :catchall_5a

    if-eqz v2, :cond_42

    goto :goto_4e

    .line 176
    :cond_42
    :try_start_42
    const-string v2, "Couldn\'t report crash. Here\'s the crash:"

    invoke-static {v0, v2, p2}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$smClog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    const-string p2, "Error reporting crash. Here\'s the error:"

    invoke-static {v0, p2, p1}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$smClog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4d

    .line 180
    goto :goto_4e

    .line 178
    :catchall_4d
    move-exception p1

    .line 184
    :cond_4e
    :goto_4e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 185
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 186
    nop

    .line 187
    return-void

    .line 184
    :catchall_5a
    move-exception p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-static {p2}, Landroid/os/Process;->killProcess(I)V

    .line 185
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 186
    throw p1
.end method
