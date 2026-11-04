.class public interface abstract Lcom/android/internal/util/infinity/OmniJawsClient$OmniJawsObserver;
.super Ljava/lang/Object;
.source "OmniJawsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/infinity/OmniJawsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OmniJawsObserver"
.end annotation


# virtual methods
.method public blacklist updateSettings()V
    .registers 1

    .line 108
    return-void
.end method

.method public abstract blacklist weatherError(I)V
.end method

.method public abstract blacklist weatherUpdated()V
.end method
