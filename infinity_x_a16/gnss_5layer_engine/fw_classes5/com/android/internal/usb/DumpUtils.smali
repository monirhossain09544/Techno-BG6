.class public Lcom/android/internal/usb/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeAccessory(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbAccessory;)V
    .registers 8

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p1

    .line 56
    const-wide v0, 0x10900000001L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object p3

    const-string v2, "manufacturer"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 57
    const-wide v0, 0x10900000002L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object p3

    const-string v2, "model"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 58
    nop

    .line 59
    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object p3

    .line 58
    const-string v0, "description"

    const-wide v1, 0x10900000003L

    invoke-static {p0, v0, v1, v2, p3}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 60
    const-wide v0, 0x10900000004L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object p3

    const-string v2, "version"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 61
    const-wide v0, 0x10900000005L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object p3

    const-string v2, "uri"

    invoke-static {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 62
    const-wide v0, 0x10900000006L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object p3

    const-string p4, "serial"

    invoke-virtual {p0, p4, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 65
    return-void
.end method

.method private static blacklist writeConfiguration(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbConfiguration;)V
    .registers 10

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p1

    .line 95
    const-wide v0, 0x10500000001L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getId()I

    move-result p3

    const-string v2, "id"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 96
    const-wide v0, 0x10900000002L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v2, "name"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 97
    const-wide v0, 0x10d00000003L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getAttributes()I

    move-result p3

    const-string v2, "attributes"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 98
    const-wide v0, 0x10500000004L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getMaxPower()I

    move-result p3

    const-string v2, "max_power"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 100
    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result p3

    .line 101
    const/4 v0, 0x0

    :goto_41
    if-ge v0, p3, :cond_55

    .line 102
    nop

    .line 103
    invoke-virtual {p4, v0}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    .line 102
    const-string v2, "interfaces"

    const-wide v3, 0x20b00000005L

    invoke-static {p0, v2, v3, v4, v1}, Lcom/android/internal/usb/DumpUtils;->writeInterface(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbInterface;)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 105
    :cond_55
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 106
    return-void
.end method

.method private static blacklist writeContaminantPresenceStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V
    .registers 6

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 211
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_12

    .line 213
    :cond_a
    nop

    .line 214
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->contaminantPresenceStatusToString(I)Ljava/lang/String;

    move-result-object p4

    .line 213
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 216
    :goto_12
    return-void
.end method

.method private static blacklist writeDataRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V
    .registers 6

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 202
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_11

    .line 204
    :cond_a
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 206
    :goto_11
    return-void
.end method

.method public static blacklist writeDevice(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbDevice;)V
    .registers 10

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p1

    .line 71
    const-wide v0, 0x10900000001L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p3

    const-string v2, "name"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 72
    const-wide v0, 0x10500000002L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p3

    const-string v2, "vendor_id"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 73
    const-wide v0, 0x10500000003L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p3

    const-string v2, "product_id"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 74
    const-wide v0, 0x10500000004L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result p3

    const-string v2, "class"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 75
    const-wide v0, 0x10500000005L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result p3

    const-string v2, "subclass"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 76
    const-wide v0, 0x10500000006L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result p3

    const-string v2, "protocol"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 77
    nop

    .line 78
    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object p3

    .line 77
    const-string v0, "manufacturer_name"

    const-wide v1, 0x10900000007L

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 79
    const-wide v0, 0x10900000008L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object p3

    const-string v2, "product_name"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 80
    const-wide v0, 0x10900000009L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object p3

    const-string v2, "version"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 81
    const-wide v0, 0x1090000000aL

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object p3

    const-string v2, "serial_number"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 83
    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result p3

    .line 84
    const/4 v0, 0x0

    :goto_96
    if-ge v0, p3, :cond_aa

    .line 85
    nop

    .line 86
    invoke-virtual {p4, v0}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v1

    .line 85
    const-string v2, "configurations"

    const-wide v3, 0x20b0000000bL

    invoke-static {p0, v2, v3, v4, v1}, Lcom/android/internal/usb/DumpUtils;->writeConfiguration(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbConfiguration;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    .line 89
    :cond_aa
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 90
    return-void
.end method

.method private static blacklist writeEndpoint(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbEndpoint;)V
    .registers 8

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p1

    .line 131
    nop

    .line 132
    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result p3

    .line 131
    const-string v0, "endpoint_number"

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 133
    const-wide v0, 0x10e00000002L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result p3

    const-string v2, "direction"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 134
    const-wide v0, 0x10500000003L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result p3

    const-string v2, "address"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 135
    const-wide v0, 0x10e00000004L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result p3

    const-string v2, "type"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 136
    nop

    .line 137
    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result p3

    .line 136
    const-string v0, "attributes"

    const-wide v1, 0x10d00000005L

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 138
    nop

    .line 139
    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result p3

    .line 138
    const-string v0, "max_packet_size"

    const-wide v1, 0x10500000006L

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 140
    const-wide v0, 0x10500000007L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result p3

    const-string p4, "interval"

    invoke-virtual {p0, p4, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 143
    return-void
.end method

.method private static blacklist writeInterface(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbInterface;)V
    .registers 10

    .line 110
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p1

    .line 112
    const-wide v0, 0x10500000001L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result p3

    const-string v2, "id"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 113
    nop

    .line 114
    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result p3

    .line 113
    const-string v0, "alternate_settings"

    const-wide v1, 0x10500000002L

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 115
    const-wide v0, 0x10900000003L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v2, "name"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 116
    const-wide v0, 0x10500000004L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result p3

    const-string v2, "class"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 117
    const-wide v0, 0x10500000005L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result p3

    const-string v2, "subclass"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 118
    const-wide v0, 0x10500000006L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result p3

    const-string v2, "protocol"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 120
    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result p3

    .line 121
    const/4 v0, 0x0

    :goto_5e
    if-ge v0, p3, :cond_71

    .line 122
    const-wide v1, 0x20b00000007L

    invoke-virtual {p4, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    const-string v4, "endpoints"

    invoke-static {p0, v4, v1, v2, v3}, Lcom/android/internal/usb/DumpUtils;->writeEndpoint(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbEndpoint;)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 124
    :cond_71
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 125
    return-void
.end method

.method public static blacklist writePort(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPort;)V
    .registers 11

    .line 147
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p1

    .line 149
    const-wide v0, 0x10900000001L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object p3

    const-string v2, "id"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 151
    invoke-virtual {p4}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result p3

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, 0x20e00000002L

    const-string v4, "supported_modes"

    if-eqz v0, :cond_55

    .line 153
    if-nez p3, :cond_2b

    .line 154
    const/4 p3, 0x0

    invoke-virtual {p0, v4, v2, v3, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_5c

    .line 156
    :cond_2b
    and-int/lit8 v0, p3, 0x3

    const/4 v5, 0x3

    if-ne v0, v5, :cond_34

    .line 157
    invoke-virtual {p0, v4, v2, v3, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_44

    .line 159
    :cond_34
    and-int/lit8 v0, p3, 0x2

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3d

    .line 160
    invoke-virtual {p0, v4, v2, v3, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_44

    .line 161
    :cond_3d
    and-int/lit8 v0, p3, 0x1

    if-ne v0, v1, :cond_44

    .line 162
    invoke-virtual {p0, v4, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 166
    :cond_44
    :goto_44
    and-int/lit8 v0, p3, 0x4

    const/4 v5, 0x4

    if-ne v0, v5, :cond_4c

    .line 167
    invoke-virtual {p0, v4, v2, v3, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 171
    :cond_4c
    const/16 v0, 0x8

    and-int/2addr p3, v0

    if-ne p3, v0, :cond_5c

    .line 172
    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_5c

    .line 177
    :cond_55
    invoke-static {p3}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v4, v2, v3, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 179
    :cond_5c
    :goto_5c
    nop

    .line 181
    invoke-virtual {p4}, Landroid/hardware/usb/UsbPort;->supportsComplianceWarnings()Z

    move-result p3

    .line 179
    const-string v0, "supports_compliance_warnings"

    const-wide v2, 0x10800000003L

    invoke-virtual {p0, v0, v2, v3, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 182
    invoke-virtual {p4, v1}, Landroid/hardware/usb/UsbPort;->isAltModeSupported(I)Z

    move-result p3

    if-eqz p3, :cond_7b

    .line 183
    const-string p3, "supported_alt_modes"

    const-wide v2, 0x20e00000004L

    invoke-virtual {p0, p3, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 187
    :cond_7b
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 188
    return-void
.end method

.method public static blacklist writePortStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPortStatus;)V
    .registers 15

    .line 220
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p1

    .line 222
    const-wide v0, 0x10800000001L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result p3

    const-string v2, "connected"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result p3

    const-string v0, "current_mode"

    const-wide v1, 0x10e00000002L

    if-eqz p3, :cond_27

    .line 225
    invoke-virtual {p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result p3

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_33

    .line 227
    :cond_27
    nop

    .line 228
    invoke-virtual {p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result p3

    invoke-static {p3}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object p3

    .line 227
    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 231
    :goto_33
    nop

    .line 232
    invoke-virtual {p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result p3

    .line 231
    const-string v0, "power_role"

    const-wide v3, 0x10e00000003L

    invoke-static {p0, v0, v3, v4, p3}, Lcom/android/internal/usb/DumpUtils;->writePowerRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 233
    const-wide v3, 0x10e00000004L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result p3

    const-string v5, "data_role"

    invoke-static {p0, v5, v3, v4, p3}, Lcom/android/internal/usb/DumpUtils;->writeDataRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 235
    invoke-virtual {p4}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result p3

    .line 236
    :goto_54
    if-eqz p3, :cond_7e

    .line 237
    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    .line 238
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    not-int v4, v4

    and-int/2addr p3, v4

    .line 240
    div-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x0

    .line 242
    rem-int/lit8 v3, v3, 0x3

    .line 244
    const-string v6, "role_combinations"

    const-wide v7, 0x20b00000005L

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 246
    const-wide v8, 0x10e00000001L

    invoke-static {p0, v0, v8, v9, v4}, Lcom/android/internal/usb/DumpUtils;->writePowerRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 248
    invoke-static {p0, v5, v1, v2, v3}, Lcom/android/internal/usb/DumpUtils;->writeDataRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 250
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 251
    goto :goto_54

    .line 253
    :cond_7e
    nop

    .line 255
    invoke-virtual {p4}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result p3

    .line 253
    const-string v0, "contaminant_presence_status"

    const-wide v1, 0x10e00000006L

    invoke-static {p0, v0, v1, v2, p3}, Lcom/android/internal/usb/DumpUtils;->writeContaminantPresenceStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    .line 256
    nop

    .line 257
    invoke-virtual {p4}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result p3

    invoke-static {p3}, Landroid/hardware/usb/UsbPort;->usbDataStatusToString(I)Ljava/lang/String;

    move-result-object p3

    .line 256
    const-string v0, "usb_data_status"

    const-wide v1, 0x10900000007L

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 258
    nop

    .line 259
    invoke-virtual {p4}, Landroid/hardware/usb/UsbPortStatus;->isPowerTransferLimited()Z

    move-result p3

    .line 258
    const-string v0, "is_power_transfer_limited"

    const-wide v1, 0x10800000008L

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 260
    nop

    .line 261
    invoke-virtual {p4}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    move-result p3

    invoke-static {p3}, Landroid/hardware/usb/UsbPort;->powerBrickConnectionStatusToString(I)Ljava/lang/String;

    move-result-object p3

    .line 260
    const-string v0, "usb_power_brick_status"

    const-wide v1, 0x10900000009L

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 262
    nop

    .line 263
    invoke-virtual {p4}, Landroid/hardware/usb/UsbPortStatus;->getComplianceWarnings()[I

    move-result-object p3

    invoke-static {p3}, Landroid/hardware/usb/UsbPort;->complianceWarningsToString([I)Ljava/lang/String;

    move-result-object p3

    .line 262
    const-string v0, "compliance_warning_status"

    const-wide v1, 0x1090000000aL

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 264
    invoke-virtual {p4}, Landroid/hardware/usb/UsbPortStatus;->getDisplayPortAltModeInfo()Landroid/hardware/usb/DisplayPortAltModeInfo;

    move-result-object p3

    .line 265
    if-eqz p3, :cond_ee

    .line 266
    nop

    .line 268
    invoke-virtual {p4}, Landroid/hardware/usb/UsbPortStatus;->getDisplayPortAltModeInfo()Landroid/hardware/usb/DisplayPortAltModeInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/hardware/usb/DisplayPortAltModeInfo;->toString()Ljava/lang/String;

    move-result-object p3

    .line 266
    const-string p4, "displayport_alt_mode_status"

    const-wide v0, 0x1090000000bL

    invoke-virtual {p0, p4, v0, v1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 270
    :cond_ee
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 271
    return-void
.end method

.method private static blacklist writePowerRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V
    .registers 6

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 193
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_11

    .line 195
    :cond_a
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 197
    :goto_11
    return-void
.end method
