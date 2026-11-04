.class public interface abstract Landroid/security/talisman/ITalismanManager;
.super Ljava/lang/Object;
.source "ITalismanManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/talisman/ITalismanManager$Stub;,
        Landroid/security/talisman/ITalismanManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.talisman.ITalismanManager"


# virtual methods
.method public abstract blacklist acquirePreparedIdentitySet()Landroid/security/talisman/TalismanIdentitySet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist acquireVerifiedDeviceTalisman()Landroid/security/talisman/Talisman;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updatePreparedIdentities(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist verifyIdentityTalismans(Landroid/security/talisman/Talisman;[Landroid/security/talisman/Talisman;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist verifyTalismanAndChallenge(Landroid/security/talisman/Talisman;[B[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
