.class public final Landroid/media/voice/KeyphraseModelManager;
.super Ljava/lang/Object;
.source "KeyphraseModelManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "KeyphraseModelManager"


# instance fields
.field private final blacklist mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/IVoiceInteractionManagerService;)V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/media/voice/KeyphraseModelManager;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 62
    return-void
.end method


# virtual methods
.method public whitelist deleteKeyphraseSoundModel(ILjava/util/Locale;)V
    .registers 4

    .line 148
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :try_start_3
    iget-object v0, p0, Landroid/media/voice/KeyphraseModelManager;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 151
    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p2

    .line 150
    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->deleteKeyphraseSoundModel(ILjava/lang/String;)I

    move-result p1

    .line 152
    if-nez p1, :cond_11

    .line 157
    nop

    .line 158
    return-void

    .line 153
    :cond_11
    new-instance p2, Landroid/os/ServiceSpecificException;

    invoke-direct {p2, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_17} :catch_17

    .line 155
    :catch_17
    move-exception p1

    .line 156
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getKeyphraseSoundModel(ILjava/util/Locale;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .registers 4

    .line 87
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :try_start_3
    iget-object v0, p0, Landroid/media/voice/KeyphraseModelManager;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 90
    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p2

    .line 89
    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_e

    return-object p1

    .line 91
    :catch_e
    move-exception p1

    .line 92
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setModelDatabaseForTestEnabled(Z)V
    .registers 4

    .line 173
    :try_start_0
    iget-object v0, p0, Landroid/media/voice/KeyphraseModelManager;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setModelDatabaseForTestEnabled(ZLandroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 176
    nop

    .line 177
    return-void

    .line 174
    :catch_c
    move-exception p1

    .line 175
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)V
    .registers 3

    .line 116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :try_start_3
    iget-object v0, p0, Landroid/media/voice/KeyphraseModelManager;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I

    move-result p1

    .line 119
    if-nez p1, :cond_d

    .line 124
    nop

    .line 125
    return-void

    .line 120
    :cond_d
    new-instance v0, Landroid/os/ServiceSpecificException;

    invoke-direct {v0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_13} :catch_13

    .line 122
    :catch_13
    move-exception p1

    .line 123
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
