.class Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams$1;
.super Landroid/service/autofill/augmented/PresentationParams$Area;
.source "PresentationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;-><init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/service/autofill/augmented/PresentationParams$SystemPopupPresentationParams;Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;Landroid/graphics/Rect;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 100
    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Landroid/service/autofill/augmented/PresentationParams$Area;-><init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;Landroid/graphics/Rect;Landroid/service/autofill/augmented/PresentationParams-IA;)V

    return-void
.end method
