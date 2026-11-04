.class final Landroid/os/PerfettoTrackEventExtra$ArgDouble;
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
    name = "ArgDouble"
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

    .line 1010
    nop

    .line 1012
    const-class v0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->native_delete()J

    move-result-wide v1

    .line 1011
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 1010
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4

    .line 1022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    invoke-static {p1}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->native_init(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mPtr:J

    .line 1024
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mExtraPtr:J

    .line 1025
    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mName:Ljava/lang/String;

    .line 1026
    sget-object p1, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mPtr:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 1027
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

.method private static native blacklist native_set_value(JD)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 1035
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPtr()J
    .registers 3

    .line 1031
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mExtraPtr:J

    return-wide v0
.end method

.method public blacklist setValue(D)V
    .registers 5

    .line 1039
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/PerfettoTrackEventExtra$ArgDouble;->native_set_value(JD)V

    .line 1040
    return-void
.end method
