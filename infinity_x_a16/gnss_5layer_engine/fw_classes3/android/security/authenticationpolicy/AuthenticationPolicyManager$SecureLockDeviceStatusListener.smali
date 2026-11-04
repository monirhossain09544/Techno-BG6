.class public interface abstract Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;
.super Ljava/lang/Object;
.source "AuthenticationPolicyManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/authenticationpolicy/AuthenticationPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SecureLockDeviceStatusListener"
.end annotation


# virtual methods
.method public abstract whitelist onSecureLockDeviceAvailableStatusChanged(I)V
.end method

.method public abstract whitelist onSecureLockDeviceEnabledStatusChanged(Z)V
.end method
