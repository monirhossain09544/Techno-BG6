.class public Landroid/renderscript/FileA3D;
.super Landroid/renderscript/BaseObj;
.source "FileA3D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/FileA3D$IndexEntry;,
        Landroid/renderscript/FileA3D$EntryType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

.field greylist-max-o mInputStream:Ljava/io/InputStream;


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;Ljava/io/InputStream;)V
    .registers 5

    .line 176
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 177
    iput-object p4, p0, Landroid/renderscript/FileA3D;->mInputStream:Ljava/io/InputStream;

    .line 178
    iget-object p1, p0, Landroid/renderscript/FileA3D;->guard:Ldalvik/system/CloseGuard;

    const-string p2, "destroy"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public static greylist-max-o createFromAsset(Landroid/renderscript/RenderScript;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/renderscript/FileA3D;
    .registers 7

    .line 239
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 240
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/RenderScript;->nFileA3DCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)J

    move-result-wide v0

    .line 242
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_17

    .line 245
    new-instance p1, Landroid/renderscript/FileA3D;

    const/4 p2, 0x0

    invoke-direct {p1, v0, v1, p0, p2}, Landroid/renderscript/FileA3D;-><init>(JLandroid/renderscript/RenderScript;Ljava/io/InputStream;)V

    .line 246
    invoke-direct {p1}, Landroid/renderscript/FileA3D;->initEntries()V

    .line 247
    return-object p1

    .line 243
    :cond_17
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create a3d file from asset "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o createFromFile(Landroid/renderscript/RenderScript;Ljava/io/File;)Landroid/renderscript/FileA3D;
    .registers 2

    .line 280
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/renderscript/FileA3D;->createFromFile(Landroid/renderscript/RenderScript;Ljava/lang/String;)Landroid/renderscript/FileA3D;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o createFromFile(Landroid/renderscript/RenderScript;Ljava/lang/String;)Landroid/renderscript/FileA3D;
    .registers 6

    .line 260
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->nFileA3DCreateFromFile(Ljava/lang/String;)J

    move-result-wide v0

    .line 262
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_14

    .line 265
    new-instance p1, Landroid/renderscript/FileA3D;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, p0, v2}, Landroid/renderscript/FileA3D;-><init>(JLandroid/renderscript/RenderScript;Ljava/io/InputStream;)V

    .line 266
    invoke-direct {p1}, Landroid/renderscript/FileA3D;->initEntries()V

    .line 267
    return-object p1

    .line 263
    :cond_14
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create a3d file from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist createFromResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/FileA3D;
    .registers 7

    .line 296
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 297
    nop

    .line 299
    :try_start_4
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_4a

    .line 302
    nop

    .line 304
    nop

    .line 305
    instance-of v0, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_42

    .line 306
    move-object v0, p1

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v0

    .line 307
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->nFileA3DCreateFromAssetStream(J)J

    move-result-wide v0

    .line 308
    nop

    .line 312
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_29

    .line 315
    new-instance p2, Landroid/renderscript/FileA3D;

    invoke-direct {p2, v0, v1, p0, p1}, Landroid/renderscript/FileA3D;-><init>(JLandroid/renderscript/RenderScript;Ljava/io/InputStream;)V

    .line 316
    invoke-direct {p2}, Landroid/renderscript/FileA3D;->initEntries()V

    .line 317
    return-object p2

    .line 313
    :cond_29
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create a3d file from resource "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 309
    :cond_42
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    const-string p1, "Unsupported asset stream"

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 300
    :catch_4a
    move-exception p0

    .line 301
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to open resource "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o initEntries()V
    .registers 18

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v2}, Landroid/renderscript/FileA3D;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nFileA3DGetNumIndexEntries(J)I

    move-result v7

    .line 183
    if-gtz v7, :cond_11

    .line 184
    return-void

    .line 187
    :cond_11
    new-array v1, v7, [Landroid/renderscript/FileA3D$IndexEntry;

    iput-object v1, v0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    .line 188
    new-array v8, v7, [I

    .line 189
    new-array v9, v7, [Ljava/lang/String;

    .line 191
    iget-object v4, v0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/FileA3D;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    invoke-virtual/range {v4 .. v9}, Landroid/renderscript/RenderScript;->nFileA3DGetIndexEntries(JI[I[Ljava/lang/String;)V

    .line 193
    const/4 v1, 0x0

    move v12, v1

    :goto_26
    if-ge v12, v7, :cond_44

    .line 194
    iget-object v1, v0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    new-instance v10, Landroid/renderscript/FileA3D$IndexEntry;

    iget-object v11, v0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v2}, Landroid/renderscript/FileA3D;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v13

    aget-object v15, v9, v12

    aget v2, v8, v12

    invoke-static {v2}, Landroid/renderscript/FileA3D$EntryType;->toEntryType(I)Landroid/renderscript/FileA3D$EntryType;

    move-result-object v16

    invoke-direct/range {v10 .. v16}, Landroid/renderscript/FileA3D$IndexEntry;-><init>(Landroid/renderscript/RenderScript;IJLjava/lang/String;Landroid/renderscript/FileA3D$EntryType;)V

    aput-object v10, v1, v12

    .line 193
    add-int/lit8 v12, v12, 0x1

    goto :goto_26

    .line 196
    :cond_44
    return-void
.end method


# virtual methods
.method public greylist getIndexEntry(I)Landroid/renderscript/FileA3D$IndexEntry;
    .registers 3

    .line 222
    invoke-virtual {p0}, Landroid/renderscript/FileA3D;->getIndexEntryCount()I

    move-result v0

    if-eqz v0, :cond_13

    if-ltz p1, :cond_13

    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    array-length v0, v0

    if-lt p1, v0, :cond_e

    goto :goto_13

    .line 225
    :cond_e
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    aget-object p1, v0, p1

    return-object p1

    .line 223
    :cond_13
    :goto_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o getIndexEntryCount()I
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    if-nez v0, :cond_6

    .line 206
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_6
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    array-length v0, v0

    return v0
.end method
