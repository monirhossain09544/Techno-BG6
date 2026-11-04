.class public interface abstract Landroid/pocket/IPocketCallback;
.super Ljava/lang/Object;
.source "IPocketCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pocket/IPocketCallback$Stub;,
        Landroid/pocket/IPocketCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.pocket.IPocketCallback"


# virtual methods
.method public abstract blacklist onStateChanged(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
