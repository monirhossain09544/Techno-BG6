.class public final Landroid/os/PerfettoTrace$Category;
.super Ljava/lang/Object;
.source "PerfettoTrace.java"

# interfaces
.implements Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfettoTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Category"
.end annotation


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mExtraPtr:J

.field private blacklist mIsRegistered:Z

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPtr:J

.field private final blacklist mSeverity:Ljava/lang/String;

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 98
    nop

    .line 100
    const-class v0, Landroid/os/PerfettoTrace$Category;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrace$Category;->native_delete()J

    move-result-wide v1

    .line 99
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrace$Category;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 98
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 115
    const-string v0, ""

    invoke-direct {p0, p1, v0, v0}, Landroid/os/PerfettoTrace$Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 125
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Landroid/os/PerfettoTrace$Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroid/os/PerfettoTrace$Category;->mName:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Landroid/os/PerfettoTrace$Category;->mTag:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Landroid/os/PerfettoTrace$Category;->mSeverity:Ljava/lang/String;

    .line 139
    invoke-static {p1, p2, p3}, Landroid/os/PerfettoTrace$Category;->native_init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/os/PerfettoTrace$Category;->mPtr:J

    .line 140
    iget-wide p1, p0, Landroid/os/PerfettoTrace$Category;->mPtr:J

    invoke-static {p1, p2}, Landroid/os/PerfettoTrace$Category;->native_get_extra_ptr(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/os/PerfettoTrace$Category;->mExtraPtr:J

    .line 141
    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;->getInstance()Lcom/android/internal/ravenwood/RavenwoodHelperBridge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;->isRunningOnRavenwood()Z

    move-result p1

    if-nez p1, :cond_28

    .line 142
    sget-object p1, Landroid/os/PerfettoTrace$Category;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide p2, p0, Landroid/os/PerfettoTrace$Category;->mPtr:J

    invoke-virtual {p1, p0, p2, p3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 144
    :cond_28
    return-void
.end method

.method private static native blacklist native_delete()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_get_extra_ptr(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_is_enabled(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_register(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_unregister(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getPtr()J
    .registers 3

    .line 213
    iget-wide v0, p0, Landroid/os/PerfettoTrace$Category;->mExtraPtr:J

    return-wide v0
.end method

.method public blacklist isEnabled()Z
    .registers 3

    .line 193
    invoke-static {}, Landroid/os/PerfettoTrace;->-$$Nest$sfgetIS_FLAG_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-wide v0, p0, Landroid/os/PerfettoTrace$Category;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrace$Category;->native_is_enabled(J)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist isEnabled$ravenwood()Z
    .registers 2

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRegistered()Z
    .registers 2

    .line 205
    iget-boolean v0, p0, Landroid/os/PerfettoTrace$Category;->mIsRegistered:Z

    return v0
.end method

.method public blacklist register()Landroid/os/PerfettoTrace$Category;
    .registers 3

    .line 174
    iget-wide v0, p0, Landroid/os/PerfettoTrace$Category;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrace$Category;->native_register(J)V

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PerfettoTrace$Category;->mIsRegistered:Z

    .line 176
    return-object p0
.end method

.method public blacklist unregister()Landroid/os/PerfettoTrace$Category;
    .registers 3

    .line 183
    iget-wide v0, p0, Landroid/os/PerfettoTrace$Category;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrace$Category;->native_unregister(J)V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/PerfettoTrace$Category;->mIsRegistered:Z

    .line 185
    return-object p0
.end method
