.class final Landroid/os/PerfettoTrackEventExtra$ArgInt64;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"

# interfaces
.implements Landroid/os/PerfettoTrackEventExtra$PerfettoPointer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfettoTrackEventExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArgInt64"
.end annotation


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mExtraPtr:J

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 918
    nop

    .line 920
    const-class v0, Landroid/os/PerfettoTrackEventExtra$ArgInt64;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->native_delete()J

    move-result-wide v1

    .line 919
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 918
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4

    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 931
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->native_init(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->mPtr:J

    .line 932
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->mExtraPtr:J

    .line 933
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->mName:Ljava/lang/String;

    .line 934
    sget-object p1, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->mPtr:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 935
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

.method private static native blacklist native_init(Ljava/lang/String;)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_set_value(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 943
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPtr()J
    .registers 3

    .line 939
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->mExtraPtr:J

    return-wide v0
.end method

.method public blacklist setValue(J)V
    .registers 5

    .line 947
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/PerfettoTrackEventExtra$ArgInt64;->native_set_value(JJ)V

    .line 948
    return-void
.end method
