.class public interface abstract Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;
.super Ljava/lang/Object;
.source "ISecureLockDeviceStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener$Stub;,
        Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.authenticationpolicy.ISecureLockDeviceStatusListener"


# virtual methods
.method public abstract blacklist onSecureLockDeviceAvailableStatusChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSecureLockDeviceEnabledStatusChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
