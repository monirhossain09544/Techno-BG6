.class public final Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgMemorySnapshot;
.super Ljava/lang/Object;
.source "MemcgProcMemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/MemcgProcMemoryUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemcgMemorySnapshot"
.end annotation


# instance fields
.field public blacklist memcgMemoryInBytes:J

.field public blacklist memcgSwapMemoryInBytes:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
