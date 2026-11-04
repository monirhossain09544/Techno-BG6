.class public Lcom/android/internal/graphics/palette/Palette$Swatch;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Swatch"
.end annotation


# instance fields
.field private final blacklist mColor:Landroid/graphics/Color;

.field private final blacklist mPopulation:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mColor:Landroid/graphics/Color;

    .line 137
    iput p2, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    .line 138
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 165
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 166
    return v0

    .line 168
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 172
    :cond_12
    check-cast p1, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 173
    iget v2, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    iget v3, p1, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    if-ne v2, v3, :cond_29

    iget-object v2, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mColor:Landroid/graphics/Color;

    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    move-result v2

    iget-object p1, p1, Lcom/android/internal/graphics/palette/Palette$Swatch;->mColor:Landroid/graphics/Color;

    invoke-virtual {p1}, Landroid/graphics/Color;->toArgb()I

    move-result p1

    if-ne v2, p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    .line 169
    :cond_2b
    :goto_2b
    return v1
.end method

.method public blacklist getInt()I
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mColor:Landroid/graphics/Color;

    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    return v0
.end method

.method public blacklist getPopulation()I
    .registers 2

    .line 148
    iget v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mColor:Landroid/graphics/Color;

    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mColor:Landroid/graphics/Color;

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    const-string v2, " [Population: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    return-object v0
.end method
