.class public Lcom/android/internal/os/NativeBinderStats$PropertiesWrapper;
.super Ljava/lang/Object;
.source "NativeBinderStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/NativeBinderStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertiesWrapper"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist setCallSharding(I)V
    .registers 2

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Landroid/sysprop/NativeBinderStatsProperties;->call_sharding(Ljava/lang/Integer;)V

    .line 125
    return-void
.end method

.method public blacklist setEnabled(Z)V
    .registers 2

    .line 105
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroid/sysprop/NativeBinderStatsProperties;->enabled(Ljava/lang/Boolean;)V

    .line 106
    return-void
.end method

.method public blacklist setProcessSharding(I)V
    .registers 2

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Landroid/sysprop/NativeBinderStatsProperties;->process_sharding(Ljava/lang/Integer;)V

    .line 111
    return-void
.end method

.method public blacklist setSpamSharding(I)V
    .registers 2

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Landroid/sysprop/NativeBinderStatsProperties;->spam_sharding(Ljava/lang/Integer;)V

    .line 118
    return-void
.end method

.method public blacklist setSystemCallSharding(I)V
    .registers 2

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Landroid/sysprop/NativeBinderStatsProperties;->system_call_sharding(Ljava/lang/Integer;)V

    .line 140
    return-void
.end method

.method public blacklist setSystemProcessSharding(I)V
    .registers 2

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Landroid/sysprop/NativeBinderStatsProperties;->system_process_sharding(Ljava/lang/Integer;)V

    .line 130
    return-void
.end method

.method public blacklist setSystemSpamSharding(I)V
    .registers 2

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Landroid/sysprop/NativeBinderStatsProperties;->system_spam_sharding(Ljava/lang/Integer;)V

    .line 135
    return-void
.end method
