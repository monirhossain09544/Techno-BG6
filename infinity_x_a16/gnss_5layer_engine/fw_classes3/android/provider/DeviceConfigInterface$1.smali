.class Landroid/provider/DeviceConfigInterface$1;
.super Ljava/lang/Object;
.source "DeviceConfigInterface.java"

# interfaces
.implements Landroid/provider/DeviceConfigInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DeviceConfigInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .registers 4

    .line 191
    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 192
    return-void
.end method

.method public blacklist deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 153
    invoke-static {p1, p2}, Landroid/provider/DeviceConfig;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    .line 179
    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public blacklist getFloat(Ljava/lang/String;Ljava/lang/String;F)F
    .registers 4

    .line 185
    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public blacklist getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .line 168
    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public blacklist getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 5

    .line 173
    invoke-static {p1, p2, p3, p4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public varargs blacklist getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;
    .registers 3

    .line 134
    invoke-static {p1, p2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 128
    invoke-static {p1, p2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 163
    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .registers 2

    .line 197
    invoke-static {p1}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 198
    return-void
.end method

.method public blacklist resetToDefaults(ILjava/lang/String;)V
    .registers 3

    .line 158
    invoke-static {p1, p2}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    .line 159
    return-void
.end method

.method public blacklist setProperties(Landroid/provider/DeviceConfig$Properties;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/DeviceConfig$BadConfigException;
        }
    .end annotation

    .line 147
    invoke-static {p1}, Landroid/provider/DeviceConfig;->setProperties(Landroid/provider/DeviceConfig$Properties;)Z

    move-result p1

    return p1
.end method

.method public blacklist setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    .line 141
    invoke-static {p1, p2, p3, p4}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
