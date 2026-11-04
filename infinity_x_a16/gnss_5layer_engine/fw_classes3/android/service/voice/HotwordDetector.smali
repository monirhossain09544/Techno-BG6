.class public interface abstract Landroid/service/voice/HotwordDetector;
.super Ljava/lang/Object;
.source "HotwordDetector.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/HotwordDetector$Callback;
    }
.end annotation


# static fields
.field public static final blacklist DETECTOR_TYPE_NORMAL:I = 0x0

.field public static final blacklist DETECTOR_TYPE_TRUSTED_HOTWORD_DSP:I = 0x1

.field public static final blacklist DETECTOR_TYPE_TRUSTED_HOTWORD_SOFTWARE:I = 0x2

.field public static final blacklist DETECTOR_TYPE_VISUAL_QUERY_DETECTOR:I = 0x3


# direct methods
.method public static blacklist detectorTypeToString(I)Ljava/lang/String;
    .registers 1

    .line 157
    packed-switch p0, :pswitch_data_18

    .line 167
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 165
    :pswitch_8
    const-string/jumbo p0, "visual_query_detector"

    return-object p0

    .line 163
    :pswitch_c
    const-string/jumbo p0, "trusted_hotword_software"

    return-object p0

    .line 161
    :pswitch_10
    const-string/jumbo p0, "trusted_hotword_dsp"

    return-object p0

    .line 159
    :pswitch_14
    const-string/jumbo p0, "normal"

    return-object p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist destroy()V
    .registers 3

    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    .line 173
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented. Must override in a subclass."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist isUsingSandboxedDetectionService()Z
    .registers 3

    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist startRecognition()Z
.end method

.method public abstract whitelist startRecognition(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;)Z
.end method

.method public abstract whitelist stopRecognition()Z
.end method

.method public abstract whitelist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
.end method
