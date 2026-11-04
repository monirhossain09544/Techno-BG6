.class public abstract Lcom/android/dialer/binary/common/DialerApplication;
.super Lcom/smartcaller/base/BaseApplication;
.source "PG"

# interfaces
.implements Ln11;
.implements Landroidx/work/Configuration$Provider;


# static fields
.field public static volatile t:Z = false

.field public static u:Lcom/android/dialer/binary/common/DialerApplication; = null

.field public static v:Z = false

.field public static w:Landroid/content/Context;


# instance fields
.field public volatile p:Ljava/lang/Object;

.field public q:Z

.field public r:Lcom/android/contacts/ContactsApplication;

.field public final s:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/smartcaller/base/BaseApplication;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/dialer/binary/common/DialerApplication;->q:Z

    .line 6
    .line 7
    const-string v0, "DialerApplication"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/dialer/binary/common/DialerApplication;->s:Ljava/lang/String;

    .line 10
    .line 11
    return-void
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static synthetic g(Lcom/android/dialer/binary/common/DialerApplication;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/dialer/binary/common/DialerApplication;->n()V

    return-void
.end method

.method public static bridge synthetic h(Lcom/android/dialer/binary/common/DialerApplication;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/dialer/binary/common/DialerApplication;->k()V

    return-void
.end method

.method public static i()Landroid/content/Context;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/dialer/binary/common/DialerApplication;->w:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/core/content/ContextCompat;->isDeviceProtectedStorage(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_b

    .line 8
    .line 9
    sget-object v0, Lcom/android/dialer/binary/common/DialerApplication;->w:Landroid/content/Context;

    .line 10
    .line 11
    goto :goto_11

    .line 12
    :cond_b
    sget-object v0, Lcom/android/dialer/binary/common/DialerApplication;->w:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v0}, Landroidx/core/content/ContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_11
    return-object v0
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static l()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/android/dialer/binary/common/DialerApplication;->v:Z

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private synthetic n()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/smartcaller/base/BaseApplication;->e()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lgo3;->b()Lgo3;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/smartcaller/base/BaseApplication;->e:Lcom/smartcaller/base/BaseApplication;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string/jumbo v1, "user_experience"

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_19

    .line 23
    .line 24
    move v0, v1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v0, v2

    .line 27
    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lmp3$a;->a:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-static {}, Lgo3;->b()Lgo3;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v3, "agreed_privacy"

    .line 38
    .line 39
    invoke-virtual {v0, v3, v2}, Lgo3;->a(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sput-boolean v0, Lmp3$a;->b:Z

    .line 44
    .line 45
    invoke-static {}, Lcom/smartcaller/ULife/OS/UnencryptedSPUtils;->getInstance()Lcom/smartcaller/ULife/OS/UnencryptedSPUtils;

    .line 46
    .line 47
    .line 48
    new-instance v0, Lbw0$a;

    .line 49
    .line 50
    invoke-direct {v0}, Lbw0$a;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lv90;->e()V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/transsion/transsion_gdpr/b;->a(Llw0;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v3, "os_reboot_to_repair_mode"

    .line 64
    .line 65
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-ne v0, v1, :cond_47

    .line 70
    .line 71
    move v2, v1

    .line 72
    :cond_47
    sput-boolean v2, Ldc;->i:Z

    .line 73
    .line 74
    sget-object v0, Lcom/smartcaller/base/BaseApplication;->e:Lcom/smartcaller/base/BaseApplication;

    .line 75
    .line 76
    invoke-static {v0, v1}, Ly8;->p(Landroid/content/Context;Z)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-static {p0}, Lr13;->i(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    sget-boolean v0, Lxp0;->f:Z

    .line 83
    .line 84
    if-eqz v0, :cond_5d

    .line 85
    .line 86
    sget-object v0, Lcom/android/dialer/binary/common/DialerApplication;->u:Lcom/android/dialer/binary/common/DialerApplication;

    .line 87
    .line 88
    sget-object v1, Lj21;->k:[Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v0, v1}, Lj21;->h(Landroid/content/Context;[Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_64

    .line 94
    :cond_5d
    sget-object v0, Lcom/android/dialer/binary/common/DialerApplication;->u:Lcom/android/dialer/binary/common/DialerApplication;

    .line 95
    .line 96
    sget-object v1, Lj21;->l:[Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v0, v1}, Lj21;->h(Landroid/content/Context;[Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_64
    invoke-static {}, Lcom/transsion/hubsdk/TranHubSdkManager;->getInstance()Lcom/transsion/hubsdk/TranHubSdkManager;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/TranHubSdkManager;->init(Landroid/content/Context;)V

    .line 106
    .line 107
    .line 108
    return-void
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/dialer/binary/common/DialerApplication;->p:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_14

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_5
    iget-object v0, p0, Lcom/android/dialer/binary/common/DialerApplication;->p:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_f

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/dialer/binary/common/DialerApplication;->j()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/dialer/binary/common/DialerApplication;->p:Ljava/lang/Object;

    .line 15
    .line 16
    :cond_f
    monitor-exit p0

    .line 17
    goto :goto_14

    .line 18
    :catchall_11
    move-exception v0

    .line 19
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    .line 20
    throw v0

    .line 21
    :cond_14
    :goto_14
    return-object v0
    .line 22
.end method

.method public getWorkManagerConfiguration()Landroidx/work/Configuration;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/Configuration$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/work/Configuration$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.sh.smart.caller"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/work/Configuration$Builder;->setDefaultProcessName(Ljava/lang/String;)Landroidx/work/Configuration$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-virtual {v0, v1}, Landroidx/work/Configuration$Builder;->setMinimumLoggingLevel(I)Landroidx/work/Configuration$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/work/Configuration$Builder;->build()Landroidx/work/Configuration;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
    .line 22
.end method

.method public abstract j()Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public final k()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "hand_license.lic"

    .line 6
    .line 7
    invoke-static {v0, v1}, Ldr0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "DialerApplication"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_16

    .line 15
    .line 16
    new-array v3, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v4, "Check license is null"

    .line 19
    .line 20
    invoke-static {v1, v4, v3}, Lvg1;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_16
    invoke-static {v0}, Lp40;->a(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_20

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    sput-boolean v0, Lcom/android/dialer/binary/common/DialerApplication;->v:Z

    .line 31
    .line 32
    goto :goto_38

    .line 33
    :cond_20
    sput-boolean v2, Lcom/android/dialer/binary/common/DialerApplication;->v:Z

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v4, "Check license result: "

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-array v2, v2, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-static {v1, v0, v2}, Lvg1;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :goto_38
    return-void
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
.end method

.method public final m()V
    .registers 2

    .line 1
    new-instance v0, Lcom/android/contacts/ContactsApplication;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/contacts/ContactsApplication;-><init>(Landroid/app/Application;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/dialer/binary/common/DialerApplication;->r:Lcom/android/contacts/ContactsApplication;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/contacts/ContactsApplication;->onCreate()V

    .line 9
    .line 10
    .line 11
    return-void
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public o(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/dialer/binary/common/DialerApplication;->q:Z

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
.end method

.method public onCreate()V
    .registers 5

    invoke-static {p0}, Lcom/transsion/contacts/SimAutoSyncHelper;->syncAsync(Landroid/content/Context;)V

    .line 1
    invoke-static {}, Lqg1;->a()V

    .line 2
    .line 3
    .line 4
    sput-object p0, Lcom/android/dialer/binary/common/DialerApplication;->u:Lcom/android/dialer/binary/common/DialerApplication;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    const-string v2, "DialerApplication"

    .line 10
    .line 11
    const-string v3, "onCreate-start"

    .line 12
    .line 13
    invoke-static {v2, v3, v1}, Lvg1;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/android/dialer/binary/common/DialerApplication;->u:Lcom/android/dialer/binary/common/DialerApplication;

    .line 17
    .line 18
    invoke-static {v1, v0}, Ldx1;->k(Landroid/content/Context;Z)V

    .line 19
    .line 20
    .line 21
    sput-object p0, Lcom/smartcaller/base/BaseApplication;->e:Lcom/smartcaller/base/BaseApplication;

    .line 22
    .line 23
    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initClient(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Liw2;->a()Landroidx/window/embedding/SplitController;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/trans/phone/extuitls/util/ThreadUtils;->h()Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v3, Lxc0;

    .line 34
    .line 35
    invoke-direct {v3, p0}, Lxc0;-><init>(Lcom/android/dialer/binary/common/DialerApplication;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/trans/phone/extuitls/util/ThreadUtils;->h()Ljava/util/concurrent/ExecutorService;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v3, Lcom/android/dialer/binary/common/DialerApplication$a;

    .line 46
    .line 47
    invoke-direct {v3, p0}, Lcom/android/dialer/binary/common/DialerApplication$a;-><init>(Lcom/android/dialer/binary/common/DialerApplication;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    sget-object v1, Li3;->b:Landroid/content/Context;

    .line 54
    .line 55
    if-nez v1, :cond_3a

    .line 56
    .line 57
    sput-object p0, Li3;->b:Landroid/content/Context;

    .line 58
    .line 59
    :cond_3a
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v3, "com.trassion.aegis"

    .line 64
    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_51

    .line 70
    .line 71
    sget-object v0, Lcom/trassion/identifynum/Aegis;->a:Lcom/trassion/identifynum/Aegis;

    .line 72
    .line 73
    const-string v1, ""

    .line 74
    .line 75
    invoke-virtual {v0, p0, v1}, Lcom/trassion/identifynum/Aegis;->j(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-super {p0}, Lcom/smartcaller/base/BaseApplication;->onCreate()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_51
    invoke-virtual {p0}, Lcom/android/dialer/binary/common/DialerApplication;->m()V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/transsion/common/SMCPublicApiHelper;->getInstance()Lcom/transsion/common/SMCPublicApiHelper;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-instance v3, Lam2;

    .line 90
    .line 91
    invoke-direct {v3}, Lam2;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3}, Lcom/transsion/common/SMCPublicApiHelper;->init(Lcom/transsion/common/SMCModuleApi;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p0}, Lcom/trans/phone/extuitls/util/d;->d(Landroid/app/Application;)V

    .line 98
    .line 99
    .line 100
    invoke-super {p0}, Lcom/smartcaller/base/BaseApplication;->onCreate()V

    .line 101
    .line 102
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v3, "ostype :  "

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-static {}, Loy1;->b()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v3, "    platform :  "

    .line 121
    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-static {}, Loy1;->a()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v3, " version:"

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v3, "V6.0.1.123"

    .line 138
    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    new-array v3, v0, [Ljava/lang/Object;

    .line 147
    .line 148
    invoke-static {v2, v1, v3}, Lvg1;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    sget-object v1, Lcom/android/dialer/binary/common/DialerApplication;->u:Lcom/android/dialer/binary/common/DialerApplication;

    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    sput-object v1, Lcom/android/dialer/binary/common/DialerApplication;->w:Landroid/content/Context;

    .line 158
    .line 159
    sget-object v3, Lcom/android/dialer/binary/common/DialerApplication;->u:Lcom/android/dialer/binary/common/DialerApplication;

    .line 160
    .line 161
    invoke-static {v1, v3}, Lkz1;->e(Landroid/content/Context;Lcom/android/dialer/binary/common/DialerApplication;)Ljz1;

    .line 162
    .line 163
    .line 164
    new-array v0, v0, [Ljava/lang/Object;

    .line 165
    .line 166
    const-string v1, "onCreate-end"

    .line 167
    .line 168
    invoke-static {v2, v1, v0}, Lvg1;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    return-void
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
.end method

.method public onTerminate()V
    .registers 3

    .line 1
    const-string v0, "DialerApplication"

    .line 2
    .line 3
    const-string v1, "onTerminate"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lqg1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/smartcaller/base/BaseApplication;->onTerminate()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/dialer/binary/common/DialerApplication;->r:Lcom/android/contacts/ContactsApplication;

    .line 12
    .line 13
    if-eqz v0, :cond_11

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/contacts/ContactsApplication;->onTerminate()V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method
