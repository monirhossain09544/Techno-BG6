.class public Landroid/security/talisman/ITalismanManager$Default;
.super Ljava/lang/Object;
.source "ITalismanManager.java"

# interfaces
.implements Landroid/security/talisman/ITalismanManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/talisman/ITalismanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist acquirePreparedIdentitySet()Landroid/security/talisman/TalismanIdentitySet;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist acquireVerifiedDeviceTalisman()Landroid/security/talisman/Talisman;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist updatePreparedIdentities(Ljava/util/List;)V
    .registers 2
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

    .line 37
    return-void
.end method

.method public blacklist verifyIdentityTalismans(Landroid/security/talisman/Talisman;[Landroid/security/talisman/Talisman;)[I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist verifyTalismanAndChallenge(Landroid/security/talisman/Talisman;[B[B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 p1, 0x0

    return p1
.end method
