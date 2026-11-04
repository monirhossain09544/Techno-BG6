.class final Landroid/os/PerfettoTrackEventExtra$FieldInt64;
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
    name = "FieldInt64"
.end annotation


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mFieldPtr:J

.field private final blacklist mPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1149
    nop

    .line 1151
    const-class v0, Landroid/os/PerfettoTrackEventExtra$FieldInt64;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$FieldInt64;->native_delete()J

    move-result-wide v1

    .line 1150
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/os/PerfettoTrackEventExtra$FieldInt64;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 1149
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 4

    .line 1159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1160
    invoke-static {}, Landroid/os/PerfettoTrackEventExtra$FieldInt64;->native_init()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldInt64;->mPtr:J

    .line 1161
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldInt64;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/PerfettoTrackEventExtra$FieldInt64;->native_get_extra_ptr(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldInt64;->mFieldPtr:J

    .line 1162
    sget-object v0, Landroid/os/PerfettoTrackEventExtra$FieldInt64;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/PerfettoTrackEventExtra$FieldInt64;->mPtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 1163
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

.method private static native blacklist native_set_value(JJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getPtr()J
    .registers 3

    .line 1167
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldInt64;->mFieldPtr:J

    return-wide v0
.end method

.method public blacklist setValue(JJ)V
    .registers 11

    .line 1171
    iget-wide v0, p0, Landroid/os/PerfettoTrackEventExtra$FieldInt64;->mPtr:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Landroid/os/PerfettoTrackEventExtra$FieldInt64;->native_set_value(JJJ)V

    .line 1172
    return-void
.end method
