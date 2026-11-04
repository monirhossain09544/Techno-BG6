.class public Landroid/sax/Element;
.super Ljava/lang/Object;
.source "Element.java"


# instance fields
.field greylist-max-o children:Landroid/sax/Children;

.field final greylist-max-o depth:I

.field greylist-max-o endElementListener:Landroid/sax/EndElementListener;

.field greylist-max-o endTextElementListener:Landroid/sax/EndTextElementListener;

.field final greylist-max-o localName:Ljava/lang/String;

.field final greylist-max-o parent:Landroid/sax/Element;

.field greylist-max-o requiredChilden:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/sax/Element;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o startElementListener:Landroid/sax/StartElementListener;

.field final greylist-max-o uri:Ljava/lang/String;

.field greylist-max-o visited:Z


# direct methods
.method constructor greylist-max-o <init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/sax/Element;->parent:Landroid/sax/Element;

    .line 48
    iput-object p2, p0, Landroid/sax/Element;->uri:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Landroid/sax/Element;->localName:Ljava/lang/String;

    .line 50
    iput p4, p0, Landroid/sax/Element;->depth:I

    .line 51
    return-void
.end method

.method static greylist-max-o toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_2b

    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method greylist-max-o checkRequiredChildren(Lorg/xml/sax/Locator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    .line 190
    if-eqz v0, :cond_42

    .line 191
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_42

    .line 192
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sax/Element;

    .line 193
    iget-boolean v3, v2, Landroid/sax/Element;->visited:Z

    if-eqz v3, :cond_19

    .line 191
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 194
    :cond_19
    new-instance v0, Landroid/sax/BadXmlException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Element named "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is missing required child element named "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/sax/BadXmlException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0

    .line 201
    :cond_42
    return-void
.end method

.method public whitelist getChild(Ljava/lang/String;)Landroid/sax/Element;
    .registers 3

    .line 58
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .registers 4

    .line 65
    iget-object v0, p0, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    if-nez v0, :cond_16

    .line 70
    iget-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    if-nez v0, :cond_f

    .line 71
    new-instance v0, Landroid/sax/Children;

    invoke-direct {v0}, Landroid/sax/Children;-><init>()V

    iput-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    .line 74
    :cond_f
    iget-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    invoke-virtual {v0, p0, p1, p2}, Landroid/sax/Children;->getOrCreate(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object p1

    return-object p1

    .line 66
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This element already has an end text element listener. It cannot have children."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist requireChild(Ljava/lang/String;)Landroid/sax/Element;
    .registers 3

    .line 84
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/sax/Element;->requireChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object p1

    return-object p1
.end method

.method public whitelist requireChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .registers 3

    .line 93
    invoke-virtual {p0, p1, p2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object p1

    .line 95
    iget-object p2, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    if-nez p2, :cond_15

    .line 96
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    .line 97
    iget-object p2, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 99
    :cond_15
    iget-object p2, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_22

    .line 100
    iget-object p2, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_22
    :goto_22
    return-object p1
.end method

.method greylist-max-o resetRequiredChildren()V
    .registers 5

    .line 177
    iget-object v0, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    .line 178
    if-eqz v0, :cond_18

    .line 179
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_18

    .line 180
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sax/Element;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/sax/Element;->visited:Z

    .line 179
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 183
    :cond_18
    return-void
.end method

.method public whitelist setElementListener(Landroid/sax/ElementListener;)V
    .registers 2

    .line 111
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 112
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 113
    return-void
.end method

.method public whitelist setEndElementListener(Landroid/sax/EndElementListener;)V
    .registers 3

    .line 139
    iget-object v0, p0, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    if-nez v0, :cond_7

    .line 143
    iput-object p1, p0, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    .line 144
    return-void

    .line 140
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "End element listener has already been set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
    .registers 3

    .line 151
    iget-object v0, p0, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    if-nez v0, :cond_13

    .line 156
    iget-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    if-nez v0, :cond_b

    .line 161
    iput-object p1, p0, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    .line 162
    return-void

    .line 157
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This element already has children. It cannot have an end text element listener."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "End text element listener has already been set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setStartElementListener(Landroid/sax/StartElementListener;)V
    .registers 3

    .line 128
    iget-object v0, p0, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    if-nez v0, :cond_7

    .line 132
    iput-object p1, p0, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    .line 133
    return-void

    .line 129
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Start element listener has already been set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setTextElementListener(Landroid/sax/TextElementListener;)V
    .registers 2

    .line 119
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 120
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 121
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 166
    iget-object v0, p0, Landroid/sax/Element;->uri:Ljava/lang/String;

    iget-object v1, p0, Landroid/sax/Element;->localName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/sax/Element;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
