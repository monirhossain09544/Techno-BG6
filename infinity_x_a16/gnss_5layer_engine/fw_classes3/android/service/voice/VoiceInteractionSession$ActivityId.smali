.class public Landroid/service/voice/VoiceInteractionSession$ActivityId;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityId"
.end annotation


# instance fields
.field private final blacklist mAssistToken:Landroid/os/IBinder;

.field private final blacklist mTaskId:I


# direct methods
.method constructor blacklist <init>(ILandroid/os/IBinder;)V
    .registers 3

    .line 2392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2393
    iput p1, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mTaskId:I

    .line 2394
    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mAssistToken:Landroid/os/IBinder;

    .line 2395
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 2411
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2412
    return v0

    .line 2414
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2f

    .line 2418
    :cond_12
    check-cast p1, Landroid/service/voice/VoiceInteractionSession$ActivityId;

    .line 2420
    iget v2, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mTaskId:I

    iget v3, p1, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mTaskId:I

    if-eq v2, v3, :cond_1b

    .line 2421
    return v1

    .line 2423
    :cond_1b
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mAssistToken:Landroid/os/IBinder;

    if-eqz v2, :cond_28

    .line 2424
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mAssistToken:Landroid/os/IBinder;

    iget-object p1, p1, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mAssistToken:Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2e

    .line 2425
    :cond_28
    iget-object p1, p1, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mAssistToken:Landroid/os/IBinder;

    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v1

    .line 2423
    :goto_2e
    return v0

    .line 2415
    :cond_2f
    :goto_2f
    return v1
.end method

.method public blacklist getAssistToken()Landroid/os/IBinder;
    .registers 2

    .line 2406
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mAssistToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getTaskId()I
    .registers 2

    .line 2400
    iget v0, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mTaskId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 2430
    iget v0, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mTaskId:I

    .line 2431
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mAssistToken:Landroid/os/IBinder;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mAssistToken:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    add-int/2addr v0, v1

    .line 2432
    return v0
.end method
