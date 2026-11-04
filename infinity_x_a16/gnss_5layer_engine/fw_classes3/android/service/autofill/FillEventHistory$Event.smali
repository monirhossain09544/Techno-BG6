.class public final Landroid/service/autofill/FillEventHistory$Event;
.super Ljava/lang/Object;
.source "FillEventHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillEventHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/FillEventHistory$Event$UiType;,
        Landroid/service/autofill/FillEventHistory$Event$NoSaveReason;,
        Landroid/service/autofill/FillEventHistory$Event$EventIds;
    }
.end annotation


# static fields
.field public static final whitelist NO_SAVE_UI_REASON_DATASET_MATCH:I = 0x6

.field public static final whitelist NO_SAVE_UI_REASON_FIELD_VALIDATION_FAILED:I = 0x5

.field public static final whitelist NO_SAVE_UI_REASON_HAS_EMPTY_REQUIRED:I = 0x3

.field public static final whitelist NO_SAVE_UI_REASON_NONE:I = 0x0

.field public static final whitelist NO_SAVE_UI_REASON_NO_SAVE_INFO:I = 0x1

.field public static final whitelist NO_SAVE_UI_REASON_NO_VALUE_CHANGED:I = 0x4

.field public static final whitelist NO_SAVE_UI_REASON_USING_CREDMAN:I = 0x7

.field public static final whitelist NO_SAVE_UI_REASON_WITH_DELAY_SAVE_FLAG:I = 0x2

.field public static final whitelist TYPE_AUTHENTICATION_SELECTED:I = 0x2

.field public static final whitelist TYPE_CONTEXT_COMMITTED:I = 0x4

.field public static final whitelist TYPE_DATASETS_SHOWN:I = 0x5

.field public static final whitelist TYPE_DATASET_AUTHENTICATION_SELECTED:I = 0x1

.field public static final whitelist TYPE_DATASET_SELECTED:I = 0x0

.field public static final whitelist TYPE_SAVE_SHOWN:I = 0x3

.field public static final whitelist TYPE_VIEW_REQUESTED_AUTOFILL:I = 0x6

.field public static final whitelist UI_TYPE_CREDENTIAL_MANAGER:I = 0x4

.field public static final blacklist UI_TYPE_CREDMAN_BOTTOM_SHEET:I = 0x4

.field public static final whitelist UI_TYPE_DIALOG:I = 0x3

.field public static final whitelist UI_TYPE_INLINE:I = 0x2

.field public static final whitelist UI_TYPE_MENU:I = 0x1

.field public static final whitelist UI_TYPE_UNKNOWN:I


# instance fields
.field private final greylist-max-o mChangedDatasetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mChangedFieldIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mClientState:Landroid/os/Bundle;

.field private final greylist-max-o mDatasetId:Ljava/lang/String;

.field private final greylist-max-o mDetectedFieldClassifications:[Landroid/service/autofill/FieldClassification;

.field private final greylist-max-o mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

.field private final greylist-max-o mEventType:I

.field private final blacklist mFocusedId:Landroid/view/autofill/AutofillId;

.field private final greylist-max-o mIgnoredDatasetIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mManuallyFilledDatasetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mManuallyFilledFieldIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSaveDialogNotShowReason:I

.field private final greylist-max-o mSelectedDatasetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUiType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChangedDatasetIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedDatasetIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChangedFieldIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedFieldIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientState(Landroid/service/autofill/FillEventHistory$Event;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mClientState:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDatasetId(Landroid/service/autofill/FillEventHistory$Event;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mDatasetId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDetectedFieldClassifications(Landroid/service/autofill/FillEventHistory$Event;)[Landroid/service/autofill/FieldClassification;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldClassifications:[Landroid/service/autofill/FieldClassification;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDetectedFieldIds(Landroid/service/autofill/FillEventHistory$Event;)[Landroid/view/autofill/AutofillId;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventType(Landroid/service/autofill/FillEventHistory$Event;)I
    .registers 1

    iget p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mEventType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusedId(Landroid/service/autofill/FillEventHistory$Event;)Landroid/view/autofill/AutofillId;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mFocusedId:Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIgnoredDatasetIds(Landroid/service/autofill/FillEventHistory$Event;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mIgnoredDatasetIds:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmManuallyFilledDatasetIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledDatasetIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmManuallyFilledFieldIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledFieldIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSaveDialogNotShowReason(Landroid/service/autofill/FillEventHistory$Event;)I
    .registers 1

    iget p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mSaveDialogNotShowReason:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectedDatasetIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mSelectedDatasetIds:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUiType(Landroid/service/autofill/FillEventHistory$Event;)I
    .registers 1

    iget p0, p0, Landroid/service/autofill/FillEventHistory$Event;->mUiType:I

    return p0
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;IILandroid/view/autofill/AutofillId;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;[",
            "Landroid/view/autofill/AutofillId;",
            "[",
            "Landroid/service/autofill/FieldClassification;",
            "II",
            "Landroid/view/autofill/AutofillId;",
            ")V"
        }
    .end annotation

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    const-string v0, "eventType"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/service/autofill/FillEventHistory$Event;->mEventType:I

    .line 741
    iput-object p2, p0, Landroid/service/autofill/FillEventHistory$Event;->mDatasetId:Ljava/lang/String;

    .line 742
    iput-object p3, p0, Landroid/service/autofill/FillEventHistory$Event;->mClientState:Landroid/os/Bundle;

    .line 743
    iput-object p4, p0, Landroid/service/autofill/FillEventHistory$Event;->mSelectedDatasetIds:Ljava/util/List;

    .line 744
    iput-object p5, p0, Landroid/service/autofill/FillEventHistory$Event;->mIgnoredDatasetIds:Landroid/util/ArraySet;

    .line 745
    const/4 p1, 0x1

    if-eqz p6, :cond_32

    .line 746
    invoke-static {p6}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_2c

    if-eqz p7, :cond_2c

    .line 748
    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p2, p3, :cond_2c

    move p2, p1

    goto :goto_2d

    :cond_2c
    move p2, v1

    .line 746
    :goto_2d
    const-string p3, "changed ids must have same length and not be empty"

    invoke-static {p2, p3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 751
    :cond_32
    iput-object p6, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedFieldIds:Ljava/util/ArrayList;

    .line 752
    iput-object p7, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedDatasetIds:Ljava/util/ArrayList;

    .line 753
    if-eqz p8, :cond_51

    .line 754
    invoke-static {p8}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_4b

    if-eqz p9, :cond_4b

    .line 756
    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p9}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p2, p3, :cond_4b

    goto :goto_4c

    :cond_4b
    move p1, v1

    .line 754
    :goto_4c
    const-string p2, "manually filled ids must have same length and not be empty"

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 759
    :cond_51
    iput-object p8, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledFieldIds:Ljava/util/ArrayList;

    .line 760
    iput-object p9, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledDatasetIds:Ljava/util/ArrayList;

    .line 762
    move-object p1, p10

    iput-object p1, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

    .line 763
    move-object p1, p11

    iput-object p1, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldClassifications:[Landroid/service/autofill/FieldClassification;

    .line 765
    const-string/jumbo p1, "saveDialogNotShowReason"

    move p2, p12

    invoke-static {p12, v1, v2, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/service/autofill/FillEventHistory$Event;->mSaveDialogNotShowReason:I

    .line 768
    move/from16 p1, p13

    iput p1, p0, Landroid/service/autofill/FillEventHistory$Event;->mUiType:I

    .line 769
    move-object/from16 p1, p14

    iput-object p1, p0, Landroid/service/autofill/FillEventHistory$Event;->mFocusedId:Landroid/view/autofill/AutofillId;

    .line 770
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;ILandroid/view/autofill/AutofillId;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;[",
            "Landroid/view/autofill/AutofillId;",
            "[",
            "Landroid/service/autofill/FieldClassification;",
            "I",
            "Landroid/view/autofill/AutofillId;",
            ")V"
        }
    .end annotation

    .line 695
    const/4 v13, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;IILandroid/view/autofill/AutofillId;)V

    .line 699
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;Landroid/view/autofill/AutofillId;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;[",
            "Landroid/view/autofill/AutofillId;",
            "[",
            "Landroid/service/autofill/FieldClassification;",
            "Landroid/view/autofill/AutofillId;",
            ")V"
        }
    .end annotation

    .line 651
    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;ILandroid/view/autofill/AutofillId;)V

    .line 655
    return-void
.end method

.method private static blacklist eventToString(I)Ljava/lang/String;
    .registers 1

    .line 791
    packed-switch p0, :pswitch_data_1c

    .line 807
    const-string p0, "TYPE_UNKNOWN"

    return-object p0

    .line 805
    :pswitch_6
    const-string p0, "TYPE_VIEW_REQUESTED_AUTOFILL"

    return-object p0

    .line 803
    :pswitch_9
    const-string p0, "TYPE_DATASETS_SHOWN"

    return-object p0

    .line 801
    :pswitch_c
    const-string p0, "TYPE_CONTEXT_COMMITTED"

    return-object p0

    .line 799
    :pswitch_f
    const-string p0, "TYPE_SAVE_SHOWN"

    return-object p0

    .line 797
    :pswitch_12
    const-string p0, "TYPE_AUTHENTICATION_SELECTED"

    return-object p0

    .line 795
    :pswitch_15
    const-string p0, "TYPE_DATASET_AUTHENTICATION_SELECTED"

    return-object p0

    .line 793
    :pswitch_18
    const-string p0, "TYPE_DATASET_SELECTED"

    return-object p0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist uiTypeToString(I)Ljava/lang/String;
    .registers 1

    .line 812
    packed-switch p0, :pswitch_data_12

    .line 822
    const-string p0, "UI_TYPE_UNKNOWN"

    return-object p0

    .line 820
    :pswitch_6
    const-string p0, "UI_TYPE_CREDMAN_BOTTOM_SHEET"

    return-object p0

    .line 818
    :pswitch_9
    const-string p0, "UI_TYPE_FILL_DIALOG"

    return-object p0

    .line 816
    :pswitch_c
    const-string p0, "UI_TYPE_INLINE"

    return-object p0

    .line 814
    :pswitch_f
    const-string p0, "UI_TYPE_MENU"

    return-object p0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist getChangedFields()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedFieldIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedDatasetIds:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    goto :goto_2e

    .line 494
    :cond_9
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 495
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 496
    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_2d

    .line 497
    iget-object v3, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    iget-object v4, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 499
    :cond_2d
    return-object v1

    .line 491
    :cond_2e
    :goto_2e
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getClientState()Landroid/os/Bundle;
    .registers 2

    .line 417
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getDatasetId()Ljava/lang/String;
    .registers 2

    .line 405
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mDatasetId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFieldsClassification()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/service/autofill/FieldClassification;",
            ">;"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

    if-nez v0, :cond_9

    .line 512
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 514
    :cond_9
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

    array-length v0, v0

    .line 515
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 516
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_52

    .line 517
    iget-object v3, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

    aget-object v3, v3, v2

    .line 518
    iget-object v4, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldClassifications:[Landroid/service/autofill/FieldClassification;

    aget-object v4, v4, v2

    .line 519
    sget-boolean v5, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_4c

    .line 520
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFieldsClassification["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FillEventHistory"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_4c
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 524
    :cond_52
    return-object v1
.end method

.method public whitelist getFocusedId()Landroid/view/autofill/AutofillId;
    .registers 2

    .line 396
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mFocusedId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public whitelist getIgnoredDatasetIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mIgnoredDatasetIds:Landroid/util/ArraySet;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mIgnoredDatasetIds:Landroid/util/ArraySet;

    :goto_b
    return-object v0
.end method

.method public whitelist getManuallyEnteredField()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledFieldIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledDatasetIds:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    goto :goto_33

    .line 577
    :cond_9
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 578
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 579
    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_32

    .line 580
    iget-object v3, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 581
    iget-object v4, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 582
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 584
    :cond_32
    return-object v1

    .line 574
    :cond_33
    :goto_33
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNoSaveUiReason()I
    .registers 2

    .line 597
    iget v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mSaveDialogNotShowReason:I

    return v0
.end method

.method public whitelist getSelectedDatasetIds()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mSelectedDatasetIds:Ljava/util/List;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_10

    .line 427
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mSelectedDatasetIds:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 426
    :goto_10
    return-object v0
.end method

.method public whitelist getShownDatasetIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 438
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 389
    iget v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mEventType:I

    return v0
.end method

.method public whitelist getUiType()I
    .registers 2

    .line 612
    iget v0, p0, Landroid/service/autofill/FillEventHistory$Event;->mUiType:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FillEvent [datasetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mDatasetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mEventType:I

    .line 775
    invoke-static {v1}, Landroid/service/autofill/FillEventHistory$Event;->eventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uiType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mUiType:I

    .line 776
    invoke-static {v1}, Landroid/service/autofill/FillEventHistory$Event;->uiTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectedDatasets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mSelectedDatasetIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ignoredDatasetIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mIgnoredDatasetIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", changedFieldIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", changedDatasetsIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mChangedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manuallyFilledFieldIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledFieldIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manuallyFilledDatasetIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mManuallyFilledDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detectedFieldIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldIds:[Landroid/view/autofill/AutofillId;

    .line 783
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detectedFieldClassifications ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mDetectedFieldClassifications:[Landroid/service/autofill/FieldClassification;

    .line 785
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", saveDialogNotShowReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/FillEventHistory$Event;->mSaveDialogNotShowReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    return-object v0
.end method
