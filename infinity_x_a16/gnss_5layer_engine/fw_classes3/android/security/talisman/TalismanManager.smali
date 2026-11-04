.class public Landroid/security/talisman/TalismanManager;
.super Ljava/lang/Object;
.source "TalismanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/talisman/TalismanManager$VerificationResult;
    }
.end annotation


# static fields
.field public static final blacklist VERIFICATION_FAILURE_CHALLENGE_INCORRECT:I = 0x2

.field public static final blacklist VERIFICATION_FAILURE_SIGNATURE_INVALID:I = 0x1

.field public static final blacklist VERIFICATION_FAILURE_UNKNOWN:I = -0x1

.field public static final blacklist VERIFICATION_SUCCESS:I


# instance fields
.field private final blacklist mService:Landroid/security/talisman/ITalismanManager;


# direct methods
.method public constructor blacklist <init>(Landroid/security/talisman/ITalismanManager;)V
    .registers 2

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Landroid/security/talisman/TalismanManager;->mService:Landroid/security/talisman/ITalismanManager;

    .line 179
    return-void
.end method


# virtual methods
.method public blacklist acquirePreparedIdentitySet()Landroid/security/talisman/TalismanIdentitySet;
    .registers 2

    .line 207
    :try_start_0
    iget-object v0, p0, Landroid/security/talisman/TalismanManager;->mService:Landroid/security/talisman/ITalismanManager;

    invoke-interface {v0}, Landroid/security/talisman/ITalismanManager;->acquirePreparedIdentitySet()Landroid/security/talisman/TalismanIdentitySet;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 208
    :catch_7
    move-exception v0

    .line 209
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist acquireVerifiedDeviceTalisman()Landroid/security/talisman/Talisman;
    .registers 2

    .line 192
    :try_start_0
    iget-object v0, p0, Landroid/security/talisman/TalismanManager;->mService:Landroid/security/talisman/ITalismanManager;

    invoke-interface {v0}, Landroid/security/talisman/ITalismanManager;->acquireVerifiedDeviceTalisman()Landroid/security/talisman/Talisman;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 193
    :catch_7
    move-exception v0

    .line 194
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist signChallenge(Landroid/security/talisman/Talisman;[B)[B
    .registers 3

    .line 251
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Signing not implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist updatePreparedIdentities(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 231
    :try_start_0
    iget-object v0, p0, Landroid/security/talisman/TalismanManager;->mService:Landroid/security/talisman/ITalismanManager;

    invoke-interface {v0, p1}, Landroid/security/talisman/ITalismanManager;->updatePreparedIdentities(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 234
    nop

    .line 235
    return-void

    .line 232
    :catch_7
    move-exception p1

    .line 233
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public varargs blacklist verifyIdentityTalismans(Landroid/security/talisman/Talisman;[Landroid/security/talisman/Talisman;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/talisman/Talisman;",
            "[",
            "Landroid/security/talisman/Talisman;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 305
    :try_start_0
    iget-object v0, p0, Landroid/security/talisman/TalismanManager;->mService:Landroid/security/talisman/ITalismanManager;

    .line 306
    invoke-interface {v0, p1, p2}, Landroid/security/talisman/ITalismanManager;->verifyIdentityTalismans(Landroid/security/talisman/Talisman;[Landroid/security/talisman/Talisman;)[I

    move-result-object p1

    .line 307
    new-instance p2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 308
    array-length v0, p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1c

    aget v2, p1, v1

    .line 309
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1d

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 311
    :cond_1c
    return-object p2

    .line 312
    :catch_1d
    move-exception p1

    .line 313
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist verifyTalisman(Landroid/security/talisman/Talisman;[B[B)I
    .registers 5

    .line 273
    :try_start_0
    iget-object v0, p0, Landroid/security/talisman/TalismanManager;->mService:Landroid/security/talisman/ITalismanManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/talisman/ITalismanManager;->verifyTalismanAndChallenge(Landroid/security/talisman/Talisman;[B[B)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 274
    :catch_7
    move-exception p1

    .line 275
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
