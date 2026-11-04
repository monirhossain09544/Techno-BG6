.class public interface abstract Lcom/android/internal/app/IAppLockStateListener;
.super Ljava/lang/Object;
.source "IAppLockStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppLockStateListener$Stub;,
        Lcom/android/internal/app/IAppLockStateListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IAppLockStateListener"


# virtual methods
.method public abstract blacklist onAppLockStateChanged(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
