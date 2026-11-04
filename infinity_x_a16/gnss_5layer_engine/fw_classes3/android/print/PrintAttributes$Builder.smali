.class public final Landroid/print/PrintAttributes$Builder;
.super Ljava/lang/Object;
.source "PrintAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final greylist-max-o mAttributes:Landroid/print/PrintAttributes;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1450
    new-instance v0, Landroid/print/PrintAttributes;

    invoke-direct {v0}, Landroid/print/PrintAttributes;-><init>()V

    iput-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/print/PrintAttributes;
    .registers 2

    .line 1521
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    return-object v0
.end method

.method public whitelist setColorMode(I)Landroid/print/PrintAttributes$Builder;
    .registers 3

    .line 1496
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setColorMode(I)V

    .line 1497
    return-object p0
.end method

.method public whitelist setDuplexMode(I)Landroid/print/PrintAttributes$Builder;
    .registers 3

    .line 1511
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setDuplexMode(I)V

    .line 1512
    return-object p0
.end method

.method public whitelist setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;
    .registers 3

    .line 1459
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)V

    .line 1460
    return-object p0
.end method

.method public whitelist setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;
    .registers 3

    .line 1482
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setMinMargins(Landroid/print/PrintAttributes$Margins;)V

    .line 1483
    return-object p0
.end method

.method public whitelist setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;
    .registers 3

    .line 1470
    iget-object v0, p0, Landroid/print/PrintAttributes$Builder;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0, p1}, Landroid/print/PrintAttributes;->setResolution(Landroid/print/PrintAttributes$Resolution;)V

    .line 1471
    return-object p0
.end method
