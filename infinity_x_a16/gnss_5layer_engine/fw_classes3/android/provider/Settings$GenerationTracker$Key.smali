.class final Landroid/provider/Settings$GenerationTracker$Key;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings$GenerationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Key"
.end annotation


# instance fields
.field private final blacklist mDeviceId:I

.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3

    .line 3515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3516
    iput-object p1, p0, Landroid/provider/Settings$GenerationTracker$Key;->mName:Ljava/lang/String;

    .line 3517
    iput p2, p0, Landroid/provider/Settings$GenerationTracker$Key;->mDeviceId:I

    .line 3518
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 3522
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 3523
    :cond_4
    instance-of v1, p1, Landroid/provider/Settings$GenerationTracker$Key;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    check-cast p1, Landroid/provider/Settings$GenerationTracker$Key;

    .line 3524
    iget v1, p0, Landroid/provider/Settings$GenerationTracker$Key;->mDeviceId:I

    iget v3, p1, Landroid/provider/Settings$GenerationTracker$Key;->mDeviceId:I

    if-ne v1, v3, :cond_1c

    iget-object v1, p0, Landroid/provider/Settings$GenerationTracker$Key;->mName:Ljava/lang/String;

    iget-object p1, p1, Landroid/provider/Settings$GenerationTracker$Key;->mName:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    return v0

    .line 3523
    :cond_1e
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 3529
    iget-object v0, p0, Landroid/provider/Settings$GenerationTracker$Key;->mName:Ljava/lang/String;

    iget v1, p0, Landroid/provider/Settings$GenerationTracker$Key;->mDeviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
