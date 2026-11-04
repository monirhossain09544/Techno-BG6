.class public final Landroid/service/autofill/Dataset;
.super Ljava/lang/Object;
.source "Dataset.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/Dataset$Builder;,
        Landroid/service/autofill/Dataset$DatasetFieldFilter;,
        Landroid/service/autofill/Dataset$DatasetEligibleReason;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist PICK_REASON_NO_PCC:I = 0x1

.field public static final blacklist PICK_REASON_PCC_DETECTION_ONLY:I = 0x4

.field public static final blacklist PICK_REASON_PCC_DETECTION_PREFERRED_WITH_PROVIDER:I = 0x5

.field public static final blacklist PICK_REASON_PROVIDER_DETECTION_ONLY:I = 0x2

.field public static final blacklist PICK_REASON_PROVIDER_DETECTION_PREFERRED_WITH_PCC:I = 0x3

.field public static final blacklist PICK_REASON_UNKNOWN:I


# instance fields
.field private final greylist-max-o mAuthentication:Landroid/content/IntentSender;

.field private final blacklist mAutofillDatatypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCredentialFillInIntent:Landroid/content/Intent;

.field private final blacklist mDialogPresentation:Landroid/widget/RemoteViews;

.field private blacklist mEligibleReason:I

.field private final blacklist mFieldContent:Landroid/content/ClipData;

.field private final blacklist mFieldDialogPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mFieldFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/Dataset$DatasetFieldFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mFieldIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldInlinePresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFieldInlineTooltipPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mFieldPresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mFieldValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mId:Ljava/lang/String;

.field private final blacklist mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field private final blacklist mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

.field private final greylist-max-o mPresentation:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmEligibleReason(Landroid/service/autofill/Dataset;I)V
    .registers 2

    iput p1, p0, Landroid/service/autofill/Dataset;->mEligibleReason:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1413
    new-instance v0, Landroid/service/autofill/Dataset$1;

    invoke-direct {v0}, Landroid/service/autofill/Dataset$1;-><init>()V

    sput-object v0, Landroid/service/autofill/Dataset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/service/autofill/Dataset$Builder;)V
    .registers 3

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldIds(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    .line 262
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldValues(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    .line 263
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldPresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    .line 264
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldDialogPresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    .line 265
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldInlinePresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    .line 266
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldInlineTooltipPresentations(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    .line 267
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldFilters(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    .line 268
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmFieldContent(Landroid/service/autofill/Dataset$Builder;)Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    .line 269
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmPresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    .line 270
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmDialogPresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    .line 271
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmInlinePresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 272
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmInlineTooltipPresentation(Landroid/service/autofill/Dataset$Builder;)Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    .line 273
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmAuthentication(Landroid/service/autofill/Dataset$Builder;)Landroid/content/IntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    .line 274
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmCredentialFillInIntent(Landroid/service/autofill/Dataset$Builder;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mCredentialFillInIntent:Landroid/content/Intent;

    .line 275
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmId(Landroid/service/autofill/Dataset$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    .line 276
    invoke-static {p1}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$fgetmAutofillDatatypes(Landroid/service/autofill/Dataset$Builder;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    .line 277
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/autofill/Dataset$Builder;Landroid/service/autofill/Dataset-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/Dataset;-><init>(Landroid/service/autofill/Dataset$Builder;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/autofill/Dataset;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/Dataset;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p2, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    .line 243
    iget-object p2, p1, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    .line 244
    iget-object p2, p1, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    .line 245
    iget-object p2, p1, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    .line 246
    iget-object p2, p1, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    .line 247
    iget-object p2, p1, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    .line 248
    iget-object p2, p1, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    .line 249
    iget-object p2, p1, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    iput-object p2, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    .line 250
    iget-object p2, p1, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    iput-object p2, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    .line 251
    iget-object p2, p1, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    iput-object p2, p0, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    .line 252
    iget-object p2, p1, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    iput-object p2, p0, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 253
    iget-object p2, p1, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    iput-object p2, p0, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    .line 254
    iget-object p2, p1, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    iput-object p2, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    .line 255
    iget-object p2, p1, Landroid/service/autofill/Dataset;->mCredentialFillInIntent:Landroid/content/Intent;

    iput-object p2, p0, Landroid/service/autofill/Dataset;->mCredentialFillInIntent:Landroid/content/Intent;

    .line 256
    iget-object p2, p1, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    .line 257
    iget-object p1, p1, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    .line 258
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ClipData;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/InlinePresentation;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/Dataset$DatasetFieldFilter;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ClipData;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "Landroid/service/autofill/InlinePresentation;",
            "Landroid/service/autofill/InlinePresentation;",
            "Ljava/lang/String;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    .line 219
    iput-object p2, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    .line 220
    iput-object p3, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    .line 221
    iput-object p4, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    .line 222
    iput-object p5, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    .line 223
    iput-object p6, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    .line 224
    iput-object p8, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    .line 225
    iput-object p7, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    .line 226
    iput-object p9, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    .line 227
    iput-object p10, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    .line 228
    iput-object p11, p0, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    .line 229
    iput-object p12, p0, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 230
    iput-object p13, p0, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    .line 231
    iput-object p15, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    .line 232
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/service/autofill/Dataset;->mCredentialFillInIntent:Landroid/content/Intent;

    .line 233
    iput-object p14, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    .line 234
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1389
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getAuthentication()Landroid/content/IntentSender;
    .registers 2

    .line 352
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    return-object v0
.end method

.method public blacklist getAutofillDatatypes()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getCredentialFillInIntent()Landroid/content/Intent;
    .registers 2

    .line 358
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mCredentialFillInIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getEligibleReason()I
    .registers 2

    .line 458
    iget v0, p0, Landroid/service/autofill/Dataset;->mEligibleReason:I

    return v0
.end method

.method public blacklist getFieldContent()Landroid/content/ClipData;
    .registers 2

    .line 346
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    return-object v0
.end method

.method public blacklist getFieldDialogPresentation(I)Landroid/widget/RemoteViews;
    .registers 3

    .line 310
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews;

    .line 311
    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    iget-object p1, p0, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    :goto_d
    return-object p1
.end method

.method public greylist-max-o getFieldIds()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;
    .registers 3

    .line 317
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/autofill/InlinePresentation;

    .line 318
    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    iget-object p1, p0, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    :goto_d
    return-object p1
.end method

.method public blacklist getFieldInlineTooltipPresentation(I)Landroid/service/autofill/InlinePresentation;
    .registers 3

    .line 324
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    .line 325
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/autofill/InlinePresentation;

    .line 326
    if-eqz p1, :cond_b

    .line 327
    goto :goto_d

    :cond_b
    iget-object p1, p0, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    .line 326
    :goto_d
    return-object p1
.end method

.method public greylist-max-o getFieldPresentation(I)Landroid/widget/RemoteViews;
    .registers 3

    .line 303
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews;

    .line 304
    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    iget-object p1, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    :goto_d
    return-object p1
.end method

.method public greylist-max-o getFieldValues()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public greylist-max-o getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .registers 3

    .line 333
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    return-object p1
.end method

.method public greylist-max-o getId()Ljava/lang/String;
    .registers 2

    .line 442
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o isEmpty()Z
    .registers 2

    .line 370
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist setCredentialFillInIntent(Landroid/content/Intent;)V
    .registers 2

    .line 364
    iput-object p1, p0, Landroid/service/autofill/Dataset;->mCredentialFillInIntent:Landroid/content/Intent;

    .line 365
    return-void
.end method

.method public blacklist setEligibleReasonReason(I)V
    .registers 2

    .line 450
    iput p1, p0, Landroid/service/autofill/Dataset;->mEligibleReason:I

    .line 451
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 375
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 377
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dataset["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    if-nez v1, :cond_1b

    .line 379
    const-string/jumbo v1, "noId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 382
    :cond_1b
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :goto_30
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_3f

    .line 385
    const-string v1, ", fieldIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    :cond_3f
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_4e

    .line 388
    const-string v1, ", fieldValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    :cond_4e
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    if-eqz v1, :cond_5d

    .line 391
    const-string v1, ", fieldContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    :cond_5d
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    if-eqz v1, :cond_70

    .line 394
    const-string v1, ", fieldPresentations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    :cond_70
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    if-eqz v1, :cond_83

    .line 397
    const-string v1, ", fieldDialogPresentations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    :cond_83
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    if-eqz v1, :cond_96

    .line 400
    const-string v1, ", fieldInlinePresentations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    :cond_96
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    if-eqz v1, :cond_a9

    .line 403
    const-string v1, ", fieldInlineTooltipInlinePresentations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    .line 404
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    :cond_a9
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    if-eqz v1, :cond_bc

    .line 407
    const-string v1, ", fieldFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    :cond_bc
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_c5

    .line 410
    const-string v1, ", hasPresentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_c5
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_ce

    .line 413
    const-string v1, ", hasDialogPresentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_ce
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    if-eqz v1, :cond_d7

    .line 416
    const-string v1, ", hasInlinePresentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_d7
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    if-eqz v1, :cond_e0

    .line 419
    const-string v1, ", hasInlineTooltipPresentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_e0
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    if-eqz v1, :cond_e9

    .line 422
    const-string v1, ", hasAuthentication"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_e9
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mCredentialFillInIntent:Landroid/content/Intent;

    if-eqz v1, :cond_f2

    .line 425
    const-string v1, ", hasAuthenticationExtras"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    :cond_f2
    iget-object v1, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_101

    .line 428
    const-string v1, ", autofillDatatypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    :cond_101
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1394
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mPresentation:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1395
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mDialogPresentation:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1396
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1397
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1398
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1399
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldValues:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1400
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldPresentations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1401
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldDialogPresentations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1402
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlinePresentations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1403
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldInlineTooltipPresentations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1404
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldFilters:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1405
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mAutofillDatatypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1406
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mFieldContent:Landroid/content/ClipData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1407
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mAuthentication:Landroid/content/IntentSender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1408
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1409
    iget v0, p0, Landroid/service/autofill/Dataset;->mEligibleReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1410
    iget-object v0, p0, Landroid/service/autofill/Dataset;->mCredentialFillInIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1411
    return-void
.end method
