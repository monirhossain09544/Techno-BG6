.class public final Lcom/android/internal/ravenwood/RavenwoodHelperBridge;
.super Ljava/lang/Object;
.source "RavenwoodHelperBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/ravenwood/RavenwoodHelperBridge$CompatIdsForTest;
    }
.end annotation


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "RavenwoodHelperBridge"

.field private static blacklist sInstance:Lcom/android/internal/ravenwood/RavenwoodHelperBridge;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;

    invoke-direct {v0}, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;-><init>()V

    sput-object v0, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;->sInstance:Lcom/android/internal/ravenwood/RavenwoodHelperBridge;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist forExperimentalApiTest()I
    .registers 1

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist getInstance()Lcom/android/internal/ravenwood/RavenwoodHelperBridge;
    .registers 1

    .line 51
    sget-object v0, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;->sInstance:Lcom/android/internal/ravenwood/RavenwoodHelperBridge;

    return-object v0
.end method

.method private blacklist isRunningOnRavenwood$ravenwood()Z
    .registers 2

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist notSupportedOnDevice()Ljava/lang/RuntimeException;
    .registers 2

    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method can only be used on Ravenwood"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public blacklist fromAddress(J)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)TT;"
        }
    .end annotation

    .line 85
    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;->notSupportedOnDevice()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getRavenwoodRuntimePath()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;->notSupportedOnDevice()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist isRunningOnRavenwood()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    const/4 v0, 0x0

    return v0
.end method
