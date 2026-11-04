.class public Landroid/renderscript/Font;
.super Landroid/renderscript/BaseObj;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Font$FontFamily;,
        Landroid/renderscript/Font$Style;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static greylist-max-o sFontFamilyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/renderscript/Font$FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sMonoNames:[Ljava/lang/String;

.field private static final greylist-max-o sSansNames:[Ljava/lang/String;

.field private static final greylist-max-o sSerifNames:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 52
    const-string/jumbo v0, "tahoma"

    const-string/jumbo v1, "verdana"

    const-string/jumbo v2, "sans-serif"

    const-string v3, "arial"

    const-string v4, "helvetica"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/renderscript/Font;->sSansNames:[Ljava/lang/String;

    .line 56
    const-string v9, "cursive"

    const-string v10, "ITC Stone Serif"

    const-string/jumbo v1, "serif"

    const-string/jumbo v2, "times"

    const-string/jumbo v3, "times new roman"

    const-string/jumbo v4, "palatino"

    const-string v5, "georgia"

    const-string v6, "baskerville"

    const-string v7, "goudy"

    const-string v8, "fantasy"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/renderscript/Font;->sSerifNames:[Ljava/lang/String;

    .line 61
    const-string v0, "courier new"

    const-string v1, "monaco"

    const-string v2, "monospace"

    const-string v3, "courier"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/renderscript/Font;->sMonoNames:[Ljava/lang/String;

    .line 133
    invoke-static {}, Landroid/renderscript/Font;->initFontFamilyMap()V

    .line 134
    return-void
.end method

.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4

    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 156
    iget-object p1, p0, Landroid/renderscript/Font;->guard:Ldalvik/system/CloseGuard;

    const-string p2, "destroy"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private static greylist-max-o addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V
    .registers 4

    .line 99
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 100
    sget-object v1, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    iget-object v2, p0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_12
    return-void
.end method

.method public static greylist-max-r create(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;Landroid/renderscript/Font$Style;F)Landroid/renderscript/Font;
    .registers 6

    .line 244
    invoke-static {p2, p3}, Landroid/renderscript/Font;->getFontFileName(Ljava/lang/String;Landroid/renderscript/Font$Style;)Ljava/lang/String;

    move-result-object p2

    .line 245
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "/fonts/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 247
    invoke-static {p0, p1, p2, p4}, Landroid/renderscript/Font;->createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o createFromAsset(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;
    .registers 8

    .line 187
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 188
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 189
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 191
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/renderscript/RenderScript;->nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)J

    move-result-wide v0

    .line 192
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1d

    .line 195
    new-instance p1, Landroid/renderscript/Font;

    invoke-direct {p1, v0, v1, p0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 196
    return-object p1

    .line 193
    :cond_1d
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to create font from asset "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/io/File;F)Landroid/renderscript/Font;
    .registers 4

    .line 180
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Landroid/renderscript/Font;->createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;
    .registers 8

    .line 164
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 165
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 166
    invoke-virtual {p0, p2, p3, p1}, Landroid/renderscript/RenderScript;->nFontCreateFromFile(Ljava/lang/String;FI)J

    move-result-wide v0

    .line 168
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_19

    .line 171
    new-instance p1, Landroid/renderscript/Font;

    invoke-direct {p1, v0, v1, p0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 173
    return-object p1

    .line 169
    :cond_19
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to create font from file "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o createFromResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;IF)Landroid/renderscript/Font;
    .registers 11

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "R."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 206
    nop

    .line 208
    :try_start_1b
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_65

    .line 211
    nop

    .line 213
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v4, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 215
    nop

    .line 216
    instance-of p1, v0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz p1, :cond_5d

    .line 217
    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v5

    .line 218
    move-object v1, p0

    move v3, p3

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nFontCreateFromAssetStream(Ljava/lang/String;FIJ)J

    move-result-wide p0

    .line 219
    nop

    .line 223
    const-wide/16 v2, 0x0

    cmp-long p3, p0, v2

    if-eqz p3, :cond_44

    .line 226
    new-instance p2, Landroid/renderscript/Font;

    invoke-direct {p2, p0, p1, v1}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 227
    return-object p2

    .line 224
    :cond_44
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to create font from resource "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 220
    :cond_5d
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    const-string p1, "Unsupported asset stream created"

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 209
    :catch_65
    move-exception v0

    .line 210
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to open resource "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static greylist-max-o getFontFileName(Ljava/lang/String;Landroid/renderscript/Font$Style;)Ljava/lang/String;
    .registers 3

    .line 137
    sget-object v0, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/renderscript/Font$FontFamily;

    .line 138
    if-eqz p0, :cond_1e

    .line 139
    invoke-virtual {p1}, Landroid/renderscript/Font$Style;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_22

    goto :goto_1e

    .line 147
    :pswitch_12
    iget-object p0, p0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    return-object p0

    .line 145
    :pswitch_15
    iget-object p0, p0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    return-object p0

    .line 143
    :pswitch_18
    iget-object p0, p0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    return-object p0

    .line 141
    :pswitch_1b
    iget-object p0, p0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    return-object p0

    .line 151
    :cond_1e
    :goto_1e
    const-string p0, "DroidSans.ttf"

    return-object p0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method

.method private static greylist-max-o initFontFamilyMap()V
    .registers 3

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    .line 107
    new-instance v0, Landroid/renderscript/Font$FontFamily;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font-IA;)V

    .line 108
    sget-object v2, Landroid/renderscript/Font;->sSansNames:[Ljava/lang/String;

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 109
    const-string v2, "Roboto-Regular.ttf"

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 110
    const-string v2, "Roboto-Bold.ttf"

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 111
    const-string v2, "Roboto-Italic.ttf"

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 112
    const-string v2, "Roboto-BoldItalic.ttf"

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 113
    invoke-static {v0}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 115
    new-instance v0, Landroid/renderscript/Font$FontFamily;

    invoke-direct {v0, v1}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font-IA;)V

    .line 116
    sget-object v2, Landroid/renderscript/Font;->sSerifNames:[Ljava/lang/String;

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 117
    const-string v2, "NotoSerif-Regular.ttf"

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 118
    const-string v2, "NotoSerif-Bold.ttf"

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 119
    const-string v2, "NotoSerif-Italic.ttf"

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 120
    const-string v2, "NotoSerif-BoldItalic.ttf"

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 121
    invoke-static {v0}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 123
    new-instance v0, Landroid/renderscript/Font$FontFamily;

    invoke-direct {v0, v1}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font-IA;)V

    .line 124
    sget-object v1, Landroid/renderscript/Font;->sMonoNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 125
    const-string v1, "DroidSansMono.ttf"

    iput-object v1, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 126
    iput-object v1, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 127
    iput-object v1, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 128
    iput-object v1, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 129
    invoke-static {v0}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 130
    return-void
.end method
