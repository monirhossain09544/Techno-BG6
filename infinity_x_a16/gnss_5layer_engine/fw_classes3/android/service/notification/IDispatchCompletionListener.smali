.class public interface abstract Landroid/service/notification/IDispatchCompletionListener;
.super Ljava/lang/Object;
.source "IDispatchCompletionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/IDispatchCompletionListener$Stub;,
        Landroid/service/notification/IDispatchCompletionListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.notification.IDispatchCompletionListener"


# virtual methods
.method public abstract blacklist notifyDispatchComplete(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
