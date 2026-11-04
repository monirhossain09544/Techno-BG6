.class public Landroid/os/image/DynamicSystemManager;
.super Ljava/lang/Object;
.source "DynamicSystemManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/image/DynamicSystemManager$Session;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DynamicSystemManager"


# instance fields
.field private final blacklist mService:Landroid/os/image/IDynamicSystemService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/os/image/DynamicSystemManager;)Landroid/os/image/IDynamicSystemService;
    .registers 1

    iget-object p0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/os/image/IDynamicSystemService;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    .line 55
    return-void
.end method


# virtual methods
.method public blacklist abort()Z
    .registers 3

    .line 214
    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->abort()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 215
    :catch_7
    move-exception v0

    .line 216
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist closePartition()Z
    .registers 3

    .line 169
    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->closePartition()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 170
    :catch_7
    move-exception v0

    .line 171
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist createPartition(Ljava/lang/String;JZ)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/os/image/DynamicSystemManager$Session;",
            ">;"
        }
    .end annotation

    .line 151
    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/image/IDynamicSystemService;->createPartition(Ljava/lang/String;JZ)I

    move-result p1

    .line 152
    const/4 p2, 0x0

    if-nez p1, :cond_18

    .line 153
    new-instance p3, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p4, Landroid/os/image/DynamicSystemManager$Session;

    invoke-direct {p4, p0, p2}, Landroid/os/image/DynamicSystemManager$Session;-><init>(Landroid/os/image/DynamicSystemManager;Landroid/os/image/DynamicSystemManager-IA;)V

    invoke-direct {p3, p1, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3

    .line 155
    :cond_18
    new-instance p3, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    return-object p3

    .line 157
    :catch_22
    move-exception p1

    .line 158
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public blacklist finishInstallation()Z
    .registers 3

    .line 181
    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->finishInstallation()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 182
    :catch_7
    move-exception v0

    .line 183
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getActiveDsuSlot()Ljava/lang/String;
    .registers 3

    .line 295
    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->getActiveDsuSlot()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 296
    :catch_7
    move-exception v0

    .line 297
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getInstallationProgress()Landroid/gsi/GsiProgress;
    .registers 3

    .line 197
    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->getInstallationProgress()Landroid/gsi/GsiProgress;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 198
    :catch_7
    move-exception v0

    .line 199
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist isEnabled()Z
    .registers 3

    .line 244
    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->isEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 245
    :catch_7
    move-exception v0

    .line 246
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist isInUse()Z
    .registers 3

    .line 224
    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->isInUse()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 225
    :catch_7
    move-exception v0

    .line 226
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist isInstalled()Z
    .registers 3

    .line 234
    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->isInstalled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 235
    :catch_7
    move-exception v0

    .line 236
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist remove()Z
    .registers 3

    .line 258
    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->remove()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 259
    :catch_7
    move-exception v0

    .line 260
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setEnable(ZZ)Z
    .registers 4

    .line 271
    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0, p1, p2}, Landroid/os/image/IDynamicSystemService;->setEnable(ZZ)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 272
    :catch_7
    move-exception p1

    .line 273
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public blacklist startInstallation(Ljava/lang/String;)Z
    .registers 3

    .line 132
    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0, p1}, Landroid/os/image/IDynamicSystemService;->startInstallation(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 133
    :catch_7
    move-exception p1

    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist suggestScratchSize()J
    .registers 3

    .line 283
    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->suggestScratchSize()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 284
    :catch_7
    move-exception v0

    .line 285
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
