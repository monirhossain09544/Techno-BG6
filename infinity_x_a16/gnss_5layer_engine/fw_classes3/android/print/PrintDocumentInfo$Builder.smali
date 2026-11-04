.class public final Landroid/print/PrintDocumentInfo$Builder;
.super Ljava/lang/Object;
.source "PrintDocumentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintDocumentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final greylist-max-o mPrototype:Landroid/print/PrintDocumentInfo;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 318
    new-instance v0, Landroid/print/PrintDocumentInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/print/PrintDocumentInfo-IA;)V

    iput-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    .line 319
    iget-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    invoke-static {v0, p1}, Landroid/print/PrintDocumentInfo;->-$$Nest$fputmName(Landroid/print/PrintDocumentInfo;Ljava/lang/String;)V

    .line 320
    return-void

    .line 316
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "name cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist build()Landroid/print/PrintDocumentInfo;
    .registers 4

    .line 368
    iget-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    invoke-static {v0}, Landroid/print/PrintDocumentInfo;->-$$Nest$fgetmPageCount(Landroid/print/PrintDocumentInfo;)I

    move-result v0

    if-nez v0, :cond_e

    .line 369
    iget-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/print/PrintDocumentInfo;->-$$Nest$fputmPageCount(Landroid/print/PrintDocumentInfo;I)V

    .line 371
    :cond_e
    new-instance v0, Landroid/print/PrintDocumentInfo;

    iget-object v1, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo-IA;)V

    return-object v0
.end method

.method public whitelist setContentType(I)Landroid/print/PrintDocumentInfo$Builder;
    .registers 3

    .line 355
    iget-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    invoke-static {v0, p1}, Landroid/print/PrintDocumentInfo;->-$$Nest$fputmContentType(Landroid/print/PrintDocumentInfo;I)V

    .line 356
    return-object p0
.end method

.method public whitelist setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;
    .registers 3

    .line 333
    if-gez p1, :cond_f

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    goto :goto_f

    .line 334
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "pageCount must be greater than or equal to zero or DocumentInfo#PAGE_COUNT_UNKNOWN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 338
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    invoke-static {v0, p1}, Landroid/print/PrintDocumentInfo;->-$$Nest$fputmPageCount(Landroid/print/PrintDocumentInfo;I)V

    .line 339
    return-object p0
.end method
