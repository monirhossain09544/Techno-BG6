.class public interface abstract Landroid/media/tv/watchdogmanager/IResourceOveruseListener;
.super Ljava/lang/Object;
.source "IResourceOveruseListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/watchdogmanager/IResourceOveruseListener$Stub;,
        Landroid/media/tv/watchdogmanager/IResourceOveruseListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.watchdogmanager.IResourceOveruseListener"


# virtual methods
.method public abstract blacklist onOveruse(Landroid/media/tv/watchdogmanager/ResourceOveruseStats;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
