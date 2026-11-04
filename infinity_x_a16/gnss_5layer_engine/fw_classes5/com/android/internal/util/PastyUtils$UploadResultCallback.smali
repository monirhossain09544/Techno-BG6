.class public interface abstract Lcom/android/internal/util/PastyUtils$UploadResultCallback;
.super Ljava/lang/Object;
.source "PastyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/PastyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadResultCallback"
.end annotation


# virtual methods
.method public abstract blacklist onFail(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract blacklist onSuccess(Ljava/lang/String;)V
.end method
