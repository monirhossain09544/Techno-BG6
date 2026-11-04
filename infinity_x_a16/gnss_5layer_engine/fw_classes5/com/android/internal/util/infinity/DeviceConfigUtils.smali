.class public Lcom/android/internal/util/infinity/DeviceConfigUtils;
.super Ljava/lang/Object;
.source "DeviceConfigUtils.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lcom/android/internal/util/infinity/DeviceConfigUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/infinity/DeviceConfigUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDeviceConfigsOverride()[Ljava/lang/String;
    .registers 5

    .line 37
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 40
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 41
    array-length v0, v0

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    return-object v2
.end method

.method public static blacklist setDefaultProperties(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 62
    invoke-static {}, Lcom/android/internal/util/infinity/DeviceConfigUtils;->getDeviceConfigsOverride()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_37

    aget-object v4, v0, v3

    .line 63
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 64
    aget-object v5, v4, v2

    .line 65
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 67
    aget-object v6, v5, v2

    .line 68
    const/4 v7, 0x1

    aget-object v5, v5, v7

    .line 70
    if-eqz p0, :cond_23

    if-ne p0, v6, :cond_23

    .line 71
    goto :goto_34

    .line 74
    :cond_23
    if-eqz p1, :cond_28

    if-ne p1, v5, :cond_28

    .line 75
    goto :goto_34

    .line 78
    :cond_28
    nop

    .line 79
    array-length v8, v4

    if-le v8, v7, :cond_2f

    .line 80
    aget-object v4, v4, v7

    goto :goto_31

    .line 79
    :cond_2f
    const-string v4, ""

    .line 82
    :goto_31
    invoke-static {v6, v5, v4, v2}, Landroid/provider/Settings$Config;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 62
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 84
    :cond_37
    return-void
.end method

.method public static blacklist shouldDenyDeviceConfigControl(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 47
    invoke-static {}, Lcom/android/internal/util/infinity/DeviceConfigUtils;->getDeviceConfigsOverride()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_26

    aget-object v4, v0, v3

    .line 48
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 49
    aget-object v4, v4, v2

    .line 50
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 51
    aget-object v5, v4, v2

    if-ne v5, p0, :cond_23

    const/4 v5, 0x1

    aget-object v4, v4, v5

    if-ne v4, p1, :cond_23

    .line 53
    return v5

    .line 47
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 57
    :cond_26
    return v2
.end method
