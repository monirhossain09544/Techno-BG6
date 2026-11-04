.class Landroid/sax/RootElement$Handler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RootElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sax/RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Handler"
.end annotation


# instance fields
.field greylist-max-o bodyBuilder:Ljava/lang/StringBuilder;

.field greylist-max-o current:Landroid/sax/Element;

.field greylist-max-o depth:I

.field greylist-max-o locator:Lorg/xml/sax/Locator;

.field final synthetic blacklist this$0:Landroid/sax/RootElement;


# direct methods
.method constructor blacklist <init>(Landroid/sax/RootElement;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 97
    iput-object p1, p0, Landroid/sax/RootElement$Handler;->this$0:Landroid/sax/RootElement;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 100
    const/4 p1, -0x1

    iput p1, p0, Landroid/sax/RootElement$Handler;->depth:I

    .line 101
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    .line 102
    iput-object p1, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public whitelist test-api characters([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_9

    .line 173
    iget-object v0, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 175
    :cond_9
    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 180
    iget-object p1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    .line 183
    iget p2, p0, Landroid/sax/RootElement$Handler;->depth:I

    iget p3, p1, Landroid/sax/Element;->depth:I

    if-ne p2, p3, :cond_2c

    .line 184
    iget-object p2, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    invoke-virtual {p1, p2}, Landroid/sax/Element;->checkRequiredChildren(Lorg/xml/sax/Locator;)V

    .line 187
    iget-object p2, p1, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    if-eqz p2, :cond_16

    .line 188
    iget-object p2, p1, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    invoke-interface {p2}, Landroid/sax/EndElementListener;->end()V

    .line 192
    :cond_16
    iget-object p2, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    if-eqz p2, :cond_28

    .line 193
    iget-object p2, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 194
    const/4 p3, 0x0

    iput-object p3, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    .line 197
    iget-object p3, p1, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    invoke-interface {p3, p2}, Landroid/sax/EndTextElementListener;->end(Ljava/lang/String;)V

    .line 201
    :cond_28
    iget-object p1, p1, Landroid/sax/Element;->parent:Landroid/sax/Element;

    iput-object p1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    .line 204
    :cond_2c
    iget p1, p0, Landroid/sax/RootElement$Handler;->depth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/sax/RootElement$Handler;->depth:I

    .line 205
    return-void
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2

    .line 106
    iput-object p1, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    .line 107
    return-void
.end method

.method greylist-max-o start(Landroid/sax/Element;Lorg/xml/sax/Attributes;)V
    .registers 4

    .line 155
    iput-object p1, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    .line 157
    iget-object v0, p1, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    if-eqz v0, :cond_b

    .line 158
    iget-object v0, p1, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    invoke-interface {v0, p2}, Landroid/sax/StartElementListener;->start(Lorg/xml/sax/Attributes;)V

    .line 161
    :cond_b
    iget-object p2, p1, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    if-eqz p2, :cond_16

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p2, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    .line 165
    :cond_16
    invoke-virtual {p1}, Landroid/sax/Element;->resetRequiredChildren()V

    .line 166
    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/sax/Element;->visited:Z

    .line 167
    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 112
    iget p3, p0, Landroid/sax/RootElement$Handler;->depth:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Landroid/sax/RootElement$Handler;->depth:I

    .line 114
    if-nez p3, :cond_c

    .line 116
    invoke-virtual {p0, p1, p2, p4}, Landroid/sax/RootElement$Handler;->startRoot(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 117
    return-void

    .line 121
    :cond_c
    iget-object v0, p0, Landroid/sax/RootElement$Handler;->bodyBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_28

    .line 128
    iget-object v0, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    iget v0, v0, Landroid/sax/Element;->depth:I

    add-int/lit8 v0, v0, 0x1

    if-ne p3, v0, :cond_27

    .line 130
    iget-object p3, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    iget-object p3, p3, Landroid/sax/Element;->children:Landroid/sax/Children;

    .line 131
    if-eqz p3, :cond_27

    .line 132
    invoke-virtual {p3, p1, p2}, Landroid/sax/Children;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object p1

    .line 133
    if-eqz p1, :cond_27

    .line 134
    invoke-virtual {p0, p1, p4}, Landroid/sax/RootElement$Handler;->start(Landroid/sax/Element;Lorg/xml/sax/Attributes;)V

    .line 138
    :cond_27
    return-void

    .line 122
    :cond_28
    new-instance p1, Landroid/sax/BadXmlException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Encountered mixed content within text element named "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/sax/RootElement$Handler;->current:Landroid/sax/Element;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    invoke-direct {p1, p2, p3}, Landroid/sax/BadXmlException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p1
.end method

.method greylist-max-o startRoot(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Landroid/sax/RootElement$Handler;->this$0:Landroid/sax/RootElement;

    .line 143
    iget-object v1, v0, Landroid/sax/Element;->uri:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, v0, Landroid/sax/Element;->localName:Ljava/lang/String;

    .line 144
    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_16

    .line 150
    invoke-virtual {p0, v0, p3}, Landroid/sax/RootElement$Handler;->start(Landroid/sax/Element;Lorg/xml/sax/Attributes;)V

    .line 151
    return-void

    .line 145
    :cond_16
    new-instance p3, Landroid/sax/BadXmlException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root element name does not match. Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    invoke-static {p1, p2}, Landroid/sax/Element;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroid/sax/RootElement$Handler;->locator:Lorg/xml/sax/Locator;

    invoke-direct {p3, p1, p2}, Landroid/sax/BadXmlException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p3
.end method
