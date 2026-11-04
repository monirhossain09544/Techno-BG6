.class public interface abstract Lcom/android/internal/app/IGameSpaceService;
.super Ljava/lang/Object;
.source "IGameSpaceService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IGameSpaceService$Stub;,
        Lcom/android/internal/app/IGameSpaceService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IGameSpaceService"


# virtual methods
.method public abstract blacklist registerCallback(Lcom/android/internal/app/IGameSpaceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterCallback(Lcom/android/internal/app/IGameSpaceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
