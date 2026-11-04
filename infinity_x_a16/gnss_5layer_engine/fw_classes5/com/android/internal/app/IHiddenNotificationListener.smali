.class public interface abstract Lcom/android/internal/app/IHiddenNotificationListener;
.super Ljava/lang/Object;
.source "IHiddenNotificationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IHiddenNotificationListener$Stub;,
        Lcom/android/internal/app/IHiddenNotificationListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IHiddenNotificationListener"


# virtual methods
.method public abstract blacklist onHiddenNotificationPosted(Lcom/android/internal/app/HiddenNotificationInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onHiddenNotificationRemoved(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
