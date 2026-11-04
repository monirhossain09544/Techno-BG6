.class public final Landroid/os/vibrator/persistence/ParsedVibration;
.super Ljava/lang/Object;
.source "ParsedVibration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/os/VibrationEffect;)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/ArrayList;

    .line 51
    iget-object v0, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/VibrationEffect;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/ArrayList;

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 84
    if-ne p0, p1, :cond_4

    .line 85
    const/4 p1, 0x1

    return p1

    .line 87
    :cond_4
    instance-of v0, p1, Landroid/os/vibrator/persistence/ParsedVibration;

    if-nez v0, :cond_a

    .line 88
    const/4 p1, 0x0

    return p1

    .line 90
    :cond_a
    check-cast p1, Landroid/os/vibrator/persistence/ParsedVibration;

    .line 91
    iget-object v0, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist resolve(Landroid/os/Vibrator;)Landroid/os/VibrationEffect;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 63
    invoke-virtual {p1}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/vibrator/persistence/ParsedVibration;->resolve(Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist resolve(Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;
    .registers 5

    .line 73
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 74
    iget-object v1, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    .line 75
    invoke-virtual {p1, v1}, Landroid/os/VibratorInfo;->areVibrationFeaturesSupported(Landroid/os/VibrationEffect;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 76
    return-object v1

    .line 73
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParsedVibration{effects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
