.class public Landroid/os/SELinux;
.super Ljava/lang/Object;
.source "SELinux.java"


# static fields
.field private static final blacklist SELINUX_ANDROID_RESTORECON_CROSS_FILESYSTEMS:I = 0x40

.field private static final greylist-max-o SELINUX_ANDROID_RESTORECON_DATADATA:I = 0x10

.field private static final greylist-max-o SELINUX_ANDROID_RESTORECON_FORCE:I = 0x8

.field private static final greylist-max-o SELINUX_ANDROID_RESTORECON_NOCHANGE:I = 0x1

.field private static final greylist-max-o SELINUX_ANDROID_RESTORECON_RECURSE:I = 0x4

.field private static final blacklist SELINUX_ANDROID_RESTORECON_SKIPCE:I = 0x20

.field private static final blacklist SELINUX_ANDROID_RESTORECON_SKIP_SEHASH:I = 0x80

.field private static final greylist-max-o SELINUX_ANDROID_RESTORECON_VERBOSE:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SELinux"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native greylist checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native blacklist fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native greylist getContext()Ljava/lang/String;
.end method

.method public static final native blacklist getFileContext(Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method public static final native greylist getFileContext(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static final native blacklist getGenfsLabelsVersion()I
.end method

.method public static final native greylist-max-o getPeerContext(Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method public static final native greylist getPidContext(I)Ljava/lang/String;
.end method

.method public static final native greylist isSELinuxEnabled()Z
.end method

.method public static final native greylist isSELinuxEnforced()Z
.end method

.method private static native greylist-max-o native_restorecon(Ljava/lang/String;I)Z
.end method

.method public static greylist-max-o restorecon(Ljava/io/File;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/SELinux;->native_restorecon(Ljava/lang/String;I)Z

    move-result p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_a

    return p0

    .line 170
    :catch_a
    move-exception v1

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting canonical path. Restorecon failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 172
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 171
    const-string v2, "SELinux"

    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    return v0
.end method

.method public static greylist-max-o restorecon(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 140
    if-eqz p0, :cond_8

    .line 141
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SELinux;->native_restorecon(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 140
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static greylist restoreconRecursive(Ljava/io/File;)Z
    .registers 4

    .line 188
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x84

    invoke-static {v0, v1}, Landroid/os/SELinux;->native_restorecon(Ljava/lang/String;I)Z

    move-result p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    .line 190
    :catch_b
    move-exception v0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting canonical path. Restorecon failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 191
    const-string v1, "SELinux"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    const/4 p0, 0x0

    return p0
.end method

.method public static final native greylist-max-o setFSCreateContext(Ljava/lang/String;)Z
.end method

.method public static final native greylist-max-o setFileContext(Ljava/lang/String;Ljava/lang/String;)Z
.end method
