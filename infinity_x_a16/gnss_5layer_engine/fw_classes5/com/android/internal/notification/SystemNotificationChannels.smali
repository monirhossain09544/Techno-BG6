.class public Lcom/android/internal/notification/SystemNotificationChannels;
.super Ljava/lang/Object;
.source "SystemNotificationChannels.java"


# static fields
.field public static final blacklist ABUSIVE_BACKGROUND_APPS:Ljava/lang/String; = "ABUSIVE_BACKGROUND_APPS"

.field public static final blacklist ACCESSIBILITY_HEARING_DEVICE:Ljava/lang/String; = "ACCESSIBILITY_HEARING_DEVICE"

.field public static final blacklist ACCESSIBILITY_MAGNIFICATION:Ljava/lang/String; = "ACCESSIBILITY_MAGNIFICATION"

.field public static final blacklist ACCESSIBILITY_SECURITY_POLICY:Ljava/lang/String; = "ACCESSIBILITY_SECURITY_POLICY"

.field public static final blacklist ACCOUNT:Ljava/lang/String; = "ACCOUNT"

.field public static final blacklist ALERTS:Ljava/lang/String; = "ALERTS"

.field public static final blacklist CAR_MODE:Ljava/lang/String; = "CAR_MODE"

.field public static final blacklist DEVELOPER:Ljava/lang/String; = "DEVELOPER"

.field public static final blacklist DEVELOPER_IMPORTANT:Ljava/lang/String; = "DEVELOPER_IMPORTANT"

.field public static final blacklist DEVICE_ADMIN:Ljava/lang/String; = "DEVICE_ADMIN_ALERTS"

.field public static final blacklist DEVICE_ADMIN_DEPRECATED:Ljava/lang/String; = "DEVICE_ADMIN"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FOREGROUND_SERVICE:Ljava/lang/String; = "FOREGROUND_SERVICE"

.field public static final blacklist HEAVY_WEIGHT_APP:Ljava/lang/String; = "HEAVY_WEIGHT_APP"

.field public static final blacklist NETWORK_ALERTS:Ljava/lang/String; = "NETWORK_ALERTS"

.field public static final blacklist NETWORK_AVAILABLE:Ljava/lang/String; = "NETWORK_AVAILABLE"

.field public static final blacklist NETWORK_STATUS:Ljava/lang/String; = "NETWORK_STATUS"

.field static final blacklist OBSOLETE_DO_NOT_DISTURB:Ljava/lang/String; = "DO_NOT_DISTURB"

.field public static final blacklist PHYSICAL_KEYBOARD:Ljava/lang/String; = "PHYSICAL_KEYBOARD"

.field public static final blacklist RETAIL_MODE:Ljava/lang/String; = "RETAIL_MODE"

.field public static final blacklist SECURITY:Ljava/lang/String; = "SECURITY"

.field public static blacklist SLEEP:Ljava/lang/String; = null

.field public static final blacklist SYSTEM_CHANGES:Ljava/lang/String; = "SYSTEM_CHANGES_ALERTS"

.field public static final blacklist SYSTEM_CHANGES_DEPRECATED:Ljava/lang/String; = "SYSTEM_CHANGES"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TIME:Ljava/lang/String; = "TIME"

.field public static final blacklist UPDATES:Ljava/lang/String; = "UPDATES"

.field public static final blacklist USB:Ljava/lang/String; = "USB"

.field public static blacklist VIRTUAL_KEYBOARD:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist VPN:Ljava/lang/String; = "VPN"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const-string v0, "VIRTUAL_KEYBOARD"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    .line 74
    const-string v0, "SLEEP"

    sput-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->SLEEP:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createAccountChannelForPackage(Ljava/lang/String;ILandroid/content/Context;)V
    .registers 7

    .line 261
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 263
    :try_start_4
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/app/NotificationChannel;

    .line 264
    invoke-static {p2}, Lcom/android/internal/notification/SystemNotificationChannels;->newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 263
    invoke-interface {v0, p0, p1, v1}, Landroid/app/INotificationManager;->createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1a} :catch_1c

    .line 267
    nop

    .line 268
    return-void

    .line 265
    :catch_1c
    move-exception p0

    .line 266
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist createAll(Landroid/content/Context;)V
    .registers 11

    .line 80
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    new-instance v2, Landroid/app/NotificationChannel;

    .line 84
    const v3, 0x10406ec

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PHYSICAL_KEYBOARD"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 86
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 87
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v2, Landroid/app/NotificationChannel;

    .line 91
    const v4, 0x10406ee

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "SECURITY"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 93
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v2, Landroid/app/NotificationChannel;

    .line 97
    const v4, 0x10406df

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "CAR_MODE"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 99
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 100
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {p0}, Lcom/android/internal/notification/SystemNotificationChannels;->newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v2, Landroid/app/NotificationChannel;

    .line 106
    const v4, 0x10406e0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "DEVELOPER"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 108
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 109
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v4, Landroid/app/NotificationChannel;

    .line 113
    const v6, 0x10406e1

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEVELOPER_IMPORTANT"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v6, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 115
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 116
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v2, Landroid/app/NotificationChannel;

    .line 120
    const v4, 0x10406f5

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "UPDATES"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 122
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v2, Landroid/app/NotificationChannel;

    .line 126
    const v4, 0x10406eb

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "NETWORK_STATUS"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 128
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 129
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v2, Landroid/app/NotificationChannel;

    .line 133
    const v4, 0x10406e9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "NETWORK_ALERTS"

    invoke-direct {v2, v6, v4, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 135
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 136
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v2, Landroid/app/NotificationChannel;

    .line 140
    const v4, 0x10406ea

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "NETWORK_AVAILABLE"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 142
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 143
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v2, Landroid/app/NotificationChannel;

    .line 147
    const v4, 0x10406f8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "VPN"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 149
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 150
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v2, Landroid/app/NotificationChannel;

    .line 154
    const v4, 0x10406f4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "TIME"

    const/4 v7, 0x3

    invoke-direct {v2, v6, v4, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 156
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v2, Landroid/app/NotificationChannel;

    .line 160
    invoke-static {p0}, Lcom/android/internal/notification/SystemNotificationChannels;->getDeviceAdminNotificationChannelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "DEVICE_ADMIN_ALERTS"

    invoke-direct {v2, v6, v4, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 162
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v2, Landroid/app/NotificationChannel;

    .line 166
    const v4, 0x10406dd

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "ALERTS"

    invoke-direct {v2, v6, v4, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 168
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v2, Landroid/app/NotificationChannel;

    .line 172
    const v4, 0x10406ed

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "RETAIL_MODE"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 174
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v2, Landroid/app/NotificationChannel;

    .line 178
    const v4, 0x10406f6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "USB"

    invoke-direct {v2, v6, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 180
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v2, Landroid/app/NotificationChannel;

    .line 184
    const v4, 0x10406e5

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "FOREGROUND_SERVICE"

    invoke-direct {v2, v6, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 186
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 187
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v2, Landroid/app/NotificationChannel;

    .line 191
    const v4, 0x10406e6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "HEAVY_WEIGHT_APP"

    invoke-direct {v2, v6, v4, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 193
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 194
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 195
    invoke-virtual {v4, v8}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 196
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 197
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 194
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 198
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v2, Landroid/app/NotificationChannel;

    .line 201
    const v4, 0x10406f3

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v9, "SYSTEM_CHANGES_ALERTS"

    invoke-direct {v2, v9, v4, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 203
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 204
    invoke-virtual {v4, v8}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 205
    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 206
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 203
    invoke-virtual {v2, v6, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 207
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v2, Landroid/app/NotificationChannel;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->SLEEP:Ljava/lang/String;

    .line 210
    const v6, 0x10406f1

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v6, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 212
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v2, Landroid/app/NotificationChannel;

    .line 216
    const v4, 0x10406da

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "ACCESSIBILITY_MAGNIFICATION"

    invoke-direct {v2, v6, v4, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 218
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 219
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v2, Landroid/app/NotificationChannel;

    .line 223
    const v4, 0x10406d9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "ACCESSIBILITY_HEARING_DEVICE"

    invoke-direct {v2, v6, v4, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 225
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 226
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v2, Landroid/app/NotificationChannel;

    .line 230
    const v3, 0x10406db

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACCESSIBILITY_SECURITY_POLICY"

    invoke-direct {v2, v4, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 232
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v2, Landroid/app/NotificationChannel;

    .line 236
    const v3, 0x10406d8

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "ABUSIVE_BACKGROUND_APPS"

    invoke-direct {v2, v3, p0, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 238
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    .line 243
    const-string p0, "DO_NOT_DISTURB"

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method private static blacklist getDeviceAdminNotificationChannelName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 247
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 248
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/notification/SystemNotificationChannels$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/notification/SystemNotificationChannels$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-string p0, "Core.NOTIFICATION_CHANNEL_DEVICE_ADMIN"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getDeviceAdminNotificationChannelName$0(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 249
    const v0, 0x10406e2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist newAccountChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;
    .registers 4

    .line 271
    new-instance v0, Landroid/app/NotificationChannel;

    .line 273
    const v1, 0x10406dc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    const-string v2, "ACCOUNT"

    invoke-direct {v0, v2, p0, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 271
    return-object v0
.end method

.method public static blacklist removeDeprecated(Landroid/content/Context;)V
    .registers 2

    .line 254
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 255
    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 256
    const-string v0, "DEVICE_ADMIN"

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 257
    const-string v0, "SYSTEM_CHANGES"

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 258
    return-void
.end method
