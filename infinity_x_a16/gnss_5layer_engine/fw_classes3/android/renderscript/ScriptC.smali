.class public Landroid/renderscript/ScriptC;
.super Landroid/renderscript/Script;
.source "ScriptC.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist RENDERSCRIPT_SCRIPTC_DEPRECATION_CHANGE_ID:J = 0x11b42966L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method protected constructor whitelist <init>(ILandroid/renderscript/RenderScript;)V
    .registers 5

    .line 56
    int-to-long v0, p1

    invoke-direct {p0, v0, v1, p2}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 57
    return-void
.end method

.method protected constructor whitelist <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 67
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .registers 6

    .line 77
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 78
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J

    move-result-wide p1

    .line 79
    cmp-long p3, p1, v0

    if-eqz p3, :cond_11

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/ScriptC;->setID(J)V

    .line 83
    return-void

    .line 80
    :cond_11
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Loading of ScriptC script failed."

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor whitelist <init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V
    .registers 9

    .line 91
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 92
    nop

    .line 93
    sget v2, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_10

    .line 94
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide p1

    goto :goto_14

    .line 96
    :cond_10
    invoke-static {p1, p2, p4}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide p1

    .line 98
    :goto_14
    cmp-long p3, p1, v0

    if-eqz p3, :cond_1c

    .line 101
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/ScriptC;->setID(J)V

    .line 102
    return-void

    .line 99
    :cond_1c
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Loading of ScriptC script failed."

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static declared-synchronized greylist-max-o internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J
    .registers 11

    const-class v0, Landroid/renderscript/ScriptC;

    monitor-enter v0

    .line 128
    :try_start_3
    invoke-static {}, Landroid/renderscript/ScriptC;->throwExceptionIfScriptCUnsupported()V

    .line 131
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_48

    .line 134
    const/16 v2, 0x400

    :try_start_c
    new-array v2, v2, [B

    .line 135
    const/4 v3, 0x0

    move v4, v3

    .line 137
    :goto_10
    array-length v5, v2

    sub-int/2addr v5, v4

    .line 138
    if-nez v5, :cond_20

    .line 139
    array-length v5, v2

    mul-int/lit8 v5, v5, 0x2

    new-array v6, v5, [B

    .line 140
    array-length v7, v2

    invoke-static {v2, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    nop

    .line 142
    sub-int/2addr v5, v4

    move-object v2, v6

    .line 144
    :cond_20
    invoke-virtual {v1, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_3c

    .line 145
    if-gtz v5, :cond_3a

    .line 146
    nop

    .line 151
    :try_start_27
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_41
    .catchall {:try_start_27 .. :try_end_2a} :catchall_48

    .line 152
    nop

    .line 155
    nop

    .line 157
    :try_start_2c
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v2, v4}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide p0
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_48

    monitor-exit v0

    return-wide p0

    .line 148
    :cond_3a
    add-int/2addr v4, v5

    .line 149
    goto :goto_10

    .line 151
    :catchall_3c
    move-exception p0

    :try_start_3d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 152
    throw p0
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_48

    .line 153
    :catch_41
    move-exception p0

    .line 154
    :try_start_42
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw p0

    .line 127
    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method private static declared-synchronized greylist-max-o internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J
    .registers 6

    const-class v0, Landroid/renderscript/ScriptC;

    monitor-enter v0

    .line 165
    :try_start_3
    invoke-static {}, Landroid/renderscript/ScriptC;->throwExceptionIfScriptCUnsupported()V

    .line 166
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {p0, p1, v1, p2, v2}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-wide p0

    .line 164
    :catchall_11
    move-exception p0

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method private static blacklist throwExceptionIfScriptCUnsupported()V
    .registers 4

    .line 110
    :try_start_0
    const-string v0, "RS"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_1e

    .line 114
    nop

    .line 117
    nop

    .line 121
    const-string v0, "ScriptC"

    const-string v1, "ScriptC scripts are not supported when targeting an API Level >= 36. Please refer to https://developer.android.com/guide/topics/renderscript/migration-guide for proposed alternatives."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-wide/32 v2, 0x11b42966

    invoke-static {v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_18

    .line 125
    return-void

    .line 123
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :catch_1e
    move-exception v0

    .line 112
    nop

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This device does not have an ABI that supports ScriptC."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
