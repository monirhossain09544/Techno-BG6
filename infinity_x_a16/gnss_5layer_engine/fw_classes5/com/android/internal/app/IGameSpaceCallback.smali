.class public interface abstract Lcom/android/internal/app/IGameSpaceCallback;
.super Ljava/lang/Object;
.source "IGameSpaceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IGameSpaceCallback$Stub;,
        Lcom/android/internal/app/IGameSpaceCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IGameSpaceCallback"


# virtual methods
.method public abstract blacklist onGameLeave()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onGameStart(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
