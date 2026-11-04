.class final Landroid/os/PerfettoTrackEventExtra$FieldDouble;
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
    name = "FieldDouble"
.end annotation


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mFieldPtr:J

.field private final blacklist mPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1188
    nop

    .line 1190
    const-class v0, Landroid/os/PerfettoTrackEventExtra$FieldDouble;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$FieldDouble;->native_delete()J

    move-result-wide v1

    .line 1189
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrackEventExtra$FieldDouble;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 1188
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 4

    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1199
    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$FieldDouble;->native_init()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldDouble;->mPtr:J

    .line 1200
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldDouble;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrackEventExtra$FieldDouble;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldDouble;->mFieldPtr:J

    .line 1201
    sget-object v0, Landroid/os/PerfettoTrackEventExtra$FieldDouble;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/PerfettoTrackEventExtra$FieldDouble;->mPtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 1202
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

.method private static native blacklist native_init()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_set_value(JJD)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getPtr()J
    .registers 3

    .line 1206
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldDouble;->mFieldPtr:J

    return-wide v0
.end method

.method public blacklist setValue(JD)V
    .registers 11

    .line 1210
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldDouble;->mPtr:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Landroid/os/PerfettoTrackEventExtra$FieldDouble;->native_set_value(JJD)V

    .line 1211
    return-void
.end method
