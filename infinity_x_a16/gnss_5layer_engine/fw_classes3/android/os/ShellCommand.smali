.class public abstract Landroid/os/ShellCommand;
.super Lcom/android/modules/utils/BasicShellCommandHandler;
.source "ShellCommand.java"


# instance fields
.field private greylist-max-o mResultReceiver:Landroid/os/ResultReceiver;

.field private greylist-max-o mShellCallback:Landroid/os/ShellCallback;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o adoptResultReceiver()Landroid/os/ResultReceiver;
    .registers 3

    .line 53
    iget-object v0, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 55
    return-object v0
.end method

.method public greylist-max-o exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    .registers 8

    .line 36
    iput-object p6, p0, Landroid/os/ShellCommand;->mShellCallback:Landroid/os/ShellCallback;

    .line 37
    iput-object p7, p0, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 38
    invoke-super/range {p0 .. p5}, Lcom/android/modules/utils/BasicShellCommandHandler;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p1

    .line 40
    move-object p2, p0

    iget-object p3, p2, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz p3, :cond_13

    .line 41
    iget-object p2, p2, Landroid/os/ShellCommand;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 44
    :cond_13
    return p1
.end method

.method public greylist-max-o getShellCallback()Landroid/os/ShellCallback;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/os/ShellCommand;->mShellCallback:Landroid/os/ShellCallback;

    return-object v0
.end method

.method public greylist-max-o handleDefaultCommands(Ljava/lang/String;)I
    .registers 6

    .line 86
    const-string v0, "dump"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 87
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getAllArgs()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    new-array p1, p1, [Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getAllArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getAllArgs()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v0, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getTarget()Landroid/os/Binder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/os/Binder;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 90
    return v3

    .line 92
    :cond_2f
    invoke-super {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6

    .line 65
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getShellCallback()Landroid/os/ShellCallback;

    move-result-object v0

    const-string/jumbo v1, "u:r:system_server:s0"

    invoke-virtual {v0, p1, v1, p2}, Landroid/os/ShellCallback;->openFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_f

    .line 67
    if-eqz p2, :cond_e

    .line 69
    return-object p2

    .line 74
    :cond_e
    goto :goto_2e

    .line 71
    :catch_f
    move-exception p2

    .line 73
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure opening file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    :goto_2e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unable to open file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    nop

    .line 79
    const-string p2, "/data/local/tmp/"

    if-eqz p1, :cond_53

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6d

    .line 80
    :cond_53
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Consider using a file under "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    :cond_6d
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-r peekNextArg()Ljava/lang/String;
    .registers 2

    .line 97
    invoke-super {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
