.class Landroid/sax/Children;
.super Ljava/lang/Object;
.source "Children.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sax/Children$Child;
    }
.end annotation


# instance fields
.field greylist-max-o children:[Landroid/sax/Children$Child;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/sax/Children$Child;

    iput-object v0, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    return-void
.end method


# virtual methods
.method greylist-max-o get(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .registers 7

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    and-int/lit8 v1, v0, 0xf

    .line 69
    iget-object v2, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aget-object v1, v2, v1

    .line 70
    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 71
    return-object v2

    .line 74
    :cond_15
    iget v3, v1, Landroid/sax/Children$Child;->hash:I

    if-ne v3, v0, :cond_2a

    iget-object v3, v1, Landroid/sax/Children$Child;->uri:Ljava/lang/String;

    .line 75
    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2a

    iget-object v3, v1, Landroid/sax/Children$Child;->localName:Ljava/lang/String;

    .line 76
    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2a

    .line 77
    return-object v1

    .line 79
    :cond_2a
    iget-object v1, v1, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    .line 80
    if-nez v1, :cond_15

    .line 82
    return-object v2
.end method

.method greylist-max-o getOrCreate(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .registers 12

    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v7, v0, v1

    .line 32
    and-int/lit8 v0, v7, 0xf

    .line 34
    iget-object v1, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aget-object v1, v1, v0

    .line 35
    if-nez v1, :cond_25

    .line 37
    new-instance v2, Landroid/sax/Children$Child;

    iget v1, p1, Landroid/sax/Element;->depth:I

    add-int/lit8 v6, v1, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Landroid/sax/Children$Child;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V

    .line 38
    iget-object p1, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aput-object v2, p1, v0

    .line 39
    return-object v2

    .line 35
    :cond_25
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 44
    :goto_28
    iget p1, v1, Landroid/sax/Children$Child;->hash:I

    if-ne p1, v7, :cond_3d

    iget-object p1, v1, Landroid/sax/Children$Child;->uri:Ljava/lang/String;

    .line 45
    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3d

    iget-object p1, v1, Landroid/sax/Children$Child;->localName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3d

    .line 48
    return-object v1

    .line 51
    :cond_3d
    nop

    .line 52
    iget-object p1, v1, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    .line 53
    if-nez p1, :cond_4e

    .line 56
    new-instance v2, Landroid/sax/Children$Child;

    iget p1, v3, Landroid/sax/Element;->depth:I

    add-int/lit8 v6, p1, 0x1

    invoke-direct/range {v2 .. v7}, Landroid/sax/Children$Child;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V

    .line 57
    iput-object v2, v1, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    .line 58
    return-object v2

    .line 53
    :cond_4e
    move-object v1, p1

    goto :goto_28
.end method
