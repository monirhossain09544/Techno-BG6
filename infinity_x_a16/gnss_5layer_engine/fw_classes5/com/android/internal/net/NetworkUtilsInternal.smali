.class public Lcom/android/internal/net/NetworkUtilsInternal;
.super Ljava/lang/Object;
.source "NetworkUtilsInternal.java"


# static fields
.field private static final blacklist ADDRESS_FAMILIES:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 30
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/NetworkUtilsInternal;->ADDRESS_FAMILIES:[I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isWeaklyValidatedHostname(Ljava/lang/String;)Z
    .registers 6

    .line 65
    const-string v0, "^[a-zA-Z0-9_.-]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 66
    return v1

    .line 69
    :cond_a
    sget-object v0, Lcom/android/internal/net/NetworkUtilsInternal;->ADDRESS_FAMILIES:[I

    array-length v2, v0

    move v3, v1

    :goto_e
    if-ge v3, v2, :cond_1c

    aget v4, v0, v3

    .line 70
    invoke-static {v4, p0}, Landroid/system/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 71
    return v1

    .line 69
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 75
    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public static native blacklist protectFromVpn(I)Z
.end method

.method public static native blacklist protectFromVpn(Ljava/io/FileDescriptor;)Z
.end method

.method public static native blacklist setAllowNetworkingForProcess(Z)V
.end method
