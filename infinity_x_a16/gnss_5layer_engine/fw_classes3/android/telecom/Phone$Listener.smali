.class public abstract Landroid/telecom/Phone$Listener;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/AudioState;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    return-void
.end method

.method public whitelist onBringToForeground(Landroid/telecom/Phone;Z)V
    .registers 3

    .line 76
    return-void
.end method

.method public whitelist onCallAdded(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .registers 3

    .line 88
    return-void
.end method

.method public whitelist onCallAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/CallAudioState;)V
    .registers 3

    .line 66
    return-void
.end method

.method public whitelist onCallRemoved(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .registers 3

    .line 99
    return-void
.end method

.method public whitelist onCanAddCallChanged(Landroid/telecom/Phone;Z)V
    .registers 3

    .line 109
    return-void
.end method

.method public whitelist onSilenceRinger(Landroid/telecom/Phone;)V
    .registers 2

    .line 116
    return-void
.end method
