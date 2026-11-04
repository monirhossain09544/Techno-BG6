.class public Landroid/media/tv/tunerresourcemanager/TunerResourceManager;
.super Ljava/lang/Object;
.source "TunerResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;,
        Landroid/media/tv/tunerresourcemanager/TunerResourceManager$TunerResourceType;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final blacklist INVALID_OWNER_ID:I = -0x1

.field public static final blacklist INVALID_RESOURCE_HANDLE:J = -0x1L

.field private static final blacklist TAG:Ljava/lang/String; = "TunerResourceManager"

.field public static final blacklist TUNER_RESOURCE_TYPE_CAS_SESSION:I = 0x4

.field public static final blacklist TUNER_RESOURCE_TYPE_DEMUX:I = 0x1

.field public static final blacklist TUNER_RESOURCE_TYPE_DESCRAMBLER:I = 0x2

.field public static final blacklist TUNER_RESOURCE_TYPE_FRONTEND:I = 0x0

.field public static final blacklist TUNER_RESOURCE_TYPE_FRONTEND_CICAM:I = 0x5

.field public static final blacklist TUNER_RESOURCE_TYPE_LNB:I = 0x3

.field public static final blacklist TUNER_RESOURCE_TYPE_MAX:I = 0x6


# instance fields
.field private final blacklist mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 71
    const-string v0, "TunerResourceManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;I)V
    .registers 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    .line 106
    iput p2, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mUserId:I

    .line 107
    return-void
.end method


# virtual methods
.method public blacklist acquireLock(I)Z
    .registers 5

    .line 382
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->acquireLock(IJ)Z

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return p1

    .line 383
    :catch_f
    move-exception p1

    .line 384
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist clearResourceMap(I)V
    .registers 3

    .line 275
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->clearResourceMap(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 278
    nop

    .line 279
    return-void

    .line 276
    :catch_7
    move-exception p1

    .line 277
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getClientPriority(II)I
    .registers 4

    .line 818
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->getClientPriority(II)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 819
    :catch_7
    move-exception p1

    .line 820
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getConfigPriority(IZ)I
    .registers 4

    .line 841
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->getConfigPriority(IZ)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 842
    :catch_7
    move-exception p1

    .line 843
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getMaxNumberOfFrontends(I)I
    .registers 3

    .line 472
    nop

    .line 474
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->getMaxNumberOfFrontends(I)I

    move-result p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 477
    nop

    .line 478
    return p1

    .line 475
    :catch_9
    move-exception p1

    .line 476
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist hasUnusedFrontend(I)Z
    .registers 3

    .line 194
    nop

    .line 196
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->hasUnusedFrontend(I)Z

    move-result p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 199
    nop

    .line 200
    return p1

    .line 197
    :catch_9
    move-exception p1

    .line 198
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z
    .registers 4

    .line 798
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 799
    :catch_7
    move-exception p1

    .line 800
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isLowestPriority(II)Z
    .registers 4

    .line 217
    nop

    .line 219
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->isLowestPriority(II)Z

    move-result p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 222
    nop

    .line 223
    return p1

    .line 220
    :catch_9
    move-exception p1

    .line 221
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;[I)V
    .registers 7

    .line 130
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;

    invoke-direct {v1, p0, p2, p3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;-><init>(Landroid/media/tv/tunerresourcemanager/TunerResourceManager;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;)V

    invoke-interface {v0, p1, v1, p4}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 144
    nop

    .line 145
    return-void

    .line 142
    :catch_c
    move-exception p1

    .line 143
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist releaseCasSession(JI)V
    .registers 5

    .line 744
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseCasSession(JI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 747
    nop

    .line 748
    return-void

    .line 745
    :catch_7
    move-exception p1

    .line 746
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist releaseCiCam(JI)V
    .registers 5

    .line 763
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseCiCam(JI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 766
    nop

    .line 767
    return-void

    .line 764
    :catch_7
    move-exception p1

    .line 765
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist releaseDemux(JI)V
    .registers 5

    .line 709
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseDemux(JI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 712
    nop

    .line 713
    return-void

    .line 710
    :catch_7
    move-exception p1

    .line 711
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist releaseDescrambler(JI)V
    .registers 5

    .line 725
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseDescrambler(JI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 728
    nop

    .line 729
    return-void

    .line 726
    :catch_7
    move-exception p1

    .line 727
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist releaseFrontend(JI)V
    .registers 5

    .line 693
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseFrontend(JI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 696
    nop

    .line 697
    return-void

    .line 694
    :catch_7
    move-exception p1

    .line 695
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist releaseLnb(JI)V
    .registers 5

    .line 781
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseLnb(JI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 784
    nop

    .line 785
    return-void

    .line 782
    :catch_7
    move-exception p1

    .line 783
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist releaseLock(I)Z
    .registers 3

    .line 402
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->releaseLock(I)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 403
    :catch_7
    move-exception p1

    .line 404
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[J)Z
    .registers 4

    .line 606
    nop

    .line 608
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[J)Z

    move-result p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 611
    nop

    .line 612
    return p1

    .line 609
    :catch_9
    move-exception p1

    .line 610
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist requestCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[J)Z
    .registers 4

    .line 638
    nop

    .line 640
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->requestCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[J)Z

    move-result p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 643
    nop

    .line 644
    return p1

    .line 641
    :catch_9
    move-exception p1

    .line 642
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[J)Z
    .registers 4

    .line 539
    nop

    .line 541
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[J)Z

    move-result p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 544
    nop

    .line 545
    return p1

    .line 542
    :catch_9
    move-exception p1

    .line 543
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[J)Z
    .registers 4

    .line 573
    nop

    .line 575
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[J)Z

    move-result p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 578
    nop

    .line 579
    return p1

    .line 576
    :catch_9
    move-exception p1

    .line 577
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[J)Z
    .registers 4

    .line 435
    nop

    .line 437
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[J)Z

    move-result p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 440
    nop

    .line 441
    return p1

    .line 438
    :catch_9
    move-exception p1

    .line 439
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[J)Z
    .registers 4

    .line 671
    nop

    .line 673
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[J)Z

    move-result p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 676
    nop

    .line 677
    return p1

    .line 674
    :catch_9
    move-exception p1

    .line 675
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist restoreResourceMap(I)V
    .registers 3

    .line 292
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->restoreResourceMap(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 295
    nop

    .line 296
    return-void

    .line 293
    :catch_7
    move-exception p1

    .line 294
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setDemuxInfoList([Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;)V
    .registers 3

    .line 326
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->setDemuxInfoList([Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 329
    nop

    .line 330
    return-void

    .line 327
    :catch_7
    move-exception p1

    .line 328
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setFrontendInfoList([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    .registers 3

    .line 309
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->setFrontendInfoList([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 312
    nop

    .line 313
    return-void

    .line 310
    :catch_7
    move-exception p1

    .line 311
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setLnbInfoList([J)V
    .registers 3

    .line 360
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->setLnbInfoList([J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 363
    nop

    .line 364
    return-void

    .line 361
    :catch_7
    move-exception p1

    .line 362
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setMaxNumberOfFrontends(II)Z
    .registers 4

    .line 454
    nop

    .line 456
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->setMaxNumberOfFrontends(II)Z

    move-result p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 459
    nop

    .line 460
    return p1

    .line 457
    :catch_9
    move-exception p1

    .line 458
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setResourceOwnershipRetention(IZ)V
    .registers 4

    .line 240
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->setResourceOwnershipRetention(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 243
    nop

    .line 244
    return-void

    .line 241
    :catch_7
    move-exception p1

    .line 242
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist shareFrontend(II)V
    .registers 4

    .line 492
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->shareFrontend(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 495
    nop

    .line 496
    return-void

    .line 493
    :catch_7
    move-exception p1

    .line 494
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist storeResourceMap(I)V
    .registers 3

    .line 257
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->storeResourceMap(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 260
    nop

    .line 261
    return-void

    .line 258
    :catch_7
    move-exception p1

    .line 259
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist transferOwner(III)Z
    .registers 5

    .line 511
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->transferOwner(III)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 512
    :catch_7
    move-exception p1

    .line 513
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist unregisterClientProfile(I)V
    .registers 3

    .line 155
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->unregisterClientProfile(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 158
    nop

    .line 159
    return-void

    .line 156
    :catch_7
    move-exception p1

    .line 157
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist updateCasInfo(II)V
    .registers 4

    .line 344
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->updateCasInfo(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 347
    nop

    .line 348
    return-void

    .line 345
    :catch_7
    move-exception p1

    .line 346
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist updateClientPriority(III)Z
    .registers 5

    .line 179
    nop

    .line 181
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->mService:Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;->updateClientPriority(III)Z

    move-result p1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 184
    nop

    .line 185
    return p1

    .line 182
    :catch_9
    move-exception p1

    .line 183
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
