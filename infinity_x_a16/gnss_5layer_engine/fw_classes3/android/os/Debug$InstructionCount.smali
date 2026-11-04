.class public Landroid/os/Debug$InstructionCount;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstructionCount"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 2403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2404
    return-void
.end method


# virtual methods
.method public whitelist collect()Z
    .registers 2

    .line 2421
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist globalMethodInvocations()I
    .registers 2

    .line 2437
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist globalTotal()I
    .registers 2

    .line 2429
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist resetAndStart()Z
    .registers 2

    .line 2413
    const/4 v0, 0x0

    return v0
.end method
