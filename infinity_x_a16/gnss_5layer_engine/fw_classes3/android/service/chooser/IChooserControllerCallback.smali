.class public interface abstract Landroid/service/chooser/IChooserControllerCallback;
.super Ljava/lang/Object;
.source "IChooserControllerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/chooser/IChooserControllerCallback$Stub;,
        Landroid/service/chooser/IChooserControllerCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.chooser.IChooserControllerCallback"


# virtual methods
.method public abstract blacklist onBoundsChanged(Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onClosed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerChooserController(Landroid/service/chooser/IChooserController;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
