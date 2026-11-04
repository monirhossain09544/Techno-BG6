.class Landroid/service/autofill/Dataset$1;
.super Ljava/lang/Object;
.source "Dataset.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Dataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/Dataset;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/Dataset;
    .registers 29

    .line 1416
    move-object/from16 v0, p1

    const-class v1, Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 1418
    const-class v3, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 1420
    const-class v4, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {v0, v2, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/InlinePresentation;

    .line 1422
    const-class v5, Landroid/service/autofill/InlinePresentation;

    .line 1423
    invoke-virtual {v0, v2, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/InlinePresentation;

    .line 1424
    sget-object v6, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1425
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1426
    sget-object v7, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1427
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1428
    sget-object v8, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1429
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1430
    sget-object v9, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1431
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1432
    sget-object v10, Landroid/service/autofill/InlinePresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1433
    invoke-virtual {v0, v10}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1434
    sget-object v11, Landroid/service/autofill/InlinePresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1435
    invoke-virtual {v0, v11}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1436
    sget-object v12, Landroid/service/autofill/Dataset$DatasetFieldFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1437
    invoke-virtual {v0, v12}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1438
    nop

    .line 1439
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 1440
    const-class v14, Landroid/content/ClipData;

    invoke-virtual {v0, v2, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ClipData;

    .line 1442
    const-class v15, Landroid/content/IntentSender;

    invoke-virtual {v0, v2, v15}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/IntentSender;

    .line 1444
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1445
    move-object/from16 v16, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1446
    move/from16 v17, v2

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1452
    if-nez v1, :cond_83

    if-nez v4, :cond_83

    if-eqz v3, :cond_7d

    goto :goto_83

    .line 1468
    :cond_7d
    new-instance v1, Landroid/service/autofill/Dataset$Builder;

    invoke-direct {v1}, Landroid/service/autofill/Dataset$Builder;-><init>()V

    goto :goto_a6

    .line 1453
    :cond_83
    :goto_83
    new-instance v2, Landroid/service/autofill/Presentations$Builder;

    invoke-direct {v2}, Landroid/service/autofill/Presentations$Builder;-><init>()V

    .line 1454
    if-eqz v1, :cond_8d

    .line 1455
    invoke-virtual {v2, v1}, Landroid/service/autofill/Presentations$Builder;->setMenuPresentation(Landroid/widget/RemoteViews;)Landroid/service/autofill/Presentations$Builder;

    .line 1457
    :cond_8d
    if-eqz v4, :cond_92

    .line 1458
    invoke-virtual {v2, v4}, Landroid/service/autofill/Presentations$Builder;->setInlinePresentation(Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Presentations$Builder;

    .line 1460
    :cond_92
    if-eqz v5, :cond_97

    .line 1461
    invoke-virtual {v2, v5}, Landroid/service/autofill/Presentations$Builder;->setInlineTooltipPresentation(Landroid/service/autofill/InlinePresentation;)Landroid/service/autofill/Presentations$Builder;

    .line 1463
    :cond_97
    if-eqz v3, :cond_9c

    .line 1464
    invoke-virtual {v2, v3}, Landroid/service/autofill/Presentations$Builder;->setDialogPresentation(Landroid/widget/RemoteViews;)Landroid/service/autofill/Presentations$Builder;

    .line 1466
    :cond_9c
    new-instance v1, Landroid/service/autofill/Dataset$Builder;

    invoke-virtual {v2}, Landroid/service/autofill/Presentations$Builder;->build()Landroid/service/autofill/Presentations;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/service/autofill/Dataset$Builder;-><init>(Landroid/service/autofill/Presentations;)V

    .line 1467
    nop

    .line 1471
    :goto_a6
    const/4 v2, 0x0

    if-eqz v14, :cond_b2

    .line 1472
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v3, v14}, Landroid/service/autofill/Dataset$Builder;->setContent(Landroid/view/autofill/AutofillId;Landroid/content/ClipData;)Landroid/service/autofill/Dataset$Builder;

    .line 1474
    :cond_b2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1475
    nop

    :goto_b7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_10f

    .line 1476
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Landroid/view/autofill/AutofillId;

    .line 1477
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Ljava/lang/String;

    .line 1478
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v21, v4

    check-cast v21, Landroid/view/autofill/AutofillValue;

    .line 1479
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v22, v4

    check-cast v22, Landroid/widget/RemoteViews;

    .line 1480
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v26, v4

    check-cast v26, Landroid/widget/RemoteViews;

    .line 1482
    if-ge v2, v3, :cond_f0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/InlinePresentation;

    move-object/from16 v23, v4

    goto :goto_f2

    :cond_f0
    const/16 v23, 0x0

    .line 1484
    :goto_f2
    if-ge v2, v3, :cond_fd

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/InlinePresentation;

    move-object/from16 v24, v4

    goto :goto_ff

    :cond_fd
    const/16 v24, 0x0

    .line 1485
    :goto_ff
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v25, v4

    check-cast v25, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    .line 1486
    move-object/from16 v18, v1

    invoke-static/range {v18 .. v26}, Landroid/service/autofill/Dataset$Builder;->-$$Nest$mcreateFromParcel(Landroid/service/autofill/Dataset$Builder;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/widget/RemoteViews;)V

    .line 1475
    add-int/lit8 v2, v2, 0x1

    goto :goto_b7

    .line 1490
    :cond_10f
    invoke-virtual {v1, v15}, Landroid/service/autofill/Dataset$Builder;->setAuthentication(Landroid/content/IntentSender;)Landroid/service/autofill/Dataset$Builder;

    .line 1491
    invoke-virtual {v1, v0}, Landroid/service/autofill/Dataset$Builder;->setCredentialFillInIntent(Landroid/content/Intent;)Landroid/service/autofill/Dataset$Builder;

    .line 1492
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/service/autofill/Dataset$Builder;->setId(Ljava/lang/String;)Landroid/service/autofill/Dataset$Builder;

    .line 1493
    invoke-virtual {v1}, Landroid/service/autofill/Dataset$Builder;->build()Landroid/service/autofill/Dataset;

    move-result-object v0

    .line 1494
    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/service/autofill/Dataset;->-$$Nest$fputmEligibleReason(Landroid/service/autofill/Dataset;I)V

    .line 1495
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1413
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/Dataset;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/Dataset;
    .registers 2

    .line 1500
    new-array p1, p1, [Landroid/service/autofill/Dataset;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1413
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$1;->newArray(I)[Landroid/service/autofill/Dataset;

    move-result-object p1

    return-object p1
.end method
