.class Landroid/service/autofill/FillResponse$1;
.super Ljava/lang/Object;
.source "FillResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/FillResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillResponse;
    .registers 10

    .line 1296
    new-instance v0, Landroid/service/autofill/FillResponse$Builder;

    invoke-direct {v0}, Landroid/service/autofill/FillResponse$Builder;-><init>()V

    .line 1297
    const-class v1, Landroid/content/pm/ParceledListSlice;

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 1298
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    goto :goto_16

    :cond_15
    move-object v1, v7

    .line 1299
    :goto_16
    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1f

    :cond_1e
    move v3, v2

    .line 1300
    :goto_1f
    nop

    :goto_20
    if-ge v2, v3, :cond_2e

    .line 1301
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/Dataset;

    invoke-virtual {v0, v4}, Landroid/service/autofill/FillResponse$Builder;->addDataset(Landroid/service/autofill/Dataset;)Landroid/service/autofill/FillResponse$Builder;

    .line 1300
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1303
    :cond_2e
    const-class v1, Landroid/service/autofill/SaveInfo;

    invoke-virtual {p1, v7, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/SaveInfo;

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse$Builder;->setSaveInfo(Landroid/service/autofill/SaveInfo;)Landroid/service/autofill/FillResponse$Builder;

    .line 1304
    const-class v1, Landroid/os/Bundle;

    invoke-virtual {p1, v7, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse$Builder;->setClientState(Landroid/os/Bundle;)Landroid/service/autofill/FillResponse$Builder;

    .line 1307
    const-class v1, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v7, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/autofill/AutofillId;

    .line 1309
    const-class v2, Landroid/content/IntentSender;

    invoke-virtual {p1, v7, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    .line 1310
    const-class v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1, v7, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 1311
    const-class v4, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p1, v7, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/InlinePresentation;

    .line 1312
    const-class v5, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p1, v7, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/InlinePresentation;

    .line 1313
    const-class v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1, v7, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RemoteViews;

    .line 1314
    if-eqz v1, :cond_79

    .line 1315
    invoke-static/range {v0 .. v6}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$msetAuthentication(Landroid/service/autofill/FillResponse$Builder;[Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 1318
    :cond_79
    const-class v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1, v7, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 1319
    if-eqz v1, :cond_86

    .line 1320
    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse$Builder;->setDialogHeader(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 1322
    :cond_86
    const-class v1, Landroid/app/PendingIntent;

    invoke-virtual {p1, v7, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 1324
    if-eqz v1, :cond_93

    .line 1325
    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse$Builder;->setDialogPendingIntent(Landroid/app/PendingIntent;)Landroid/service/autofill/FillResponse$Builder;

    .line 1327
    :cond_93
    const-class v1, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v7, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/autofill/AutofillId;

    .line 1328
    if-eqz v1, :cond_a0

    .line 1329
    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse$Builder;->setFillDialogTriggerIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;

    .line 1331
    :cond_a0
    const-class v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1, v7, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 1332
    if-eqz v1, :cond_ad

    .line 1333
    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse$Builder;->setHeader(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 1335
    :cond_ad
    const-class v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1, v7, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 1336
    if-eqz v1, :cond_ba

    .line 1337
    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse$Builder;->setFooter(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 1339
    :cond_ba
    const-class v1, Landroid/service/autofill/UserData;

    invoke-virtual {p1, v7, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/UserData;

    .line 1340
    if-eqz v1, :cond_c7

    .line 1341
    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse$Builder;->setUserData(Landroid/service/autofill/UserData;)Landroid/service/autofill/FillResponse$Builder;

    .line 1344
    :cond_c7
    const-class v1, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v7, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse$Builder;->setIgnoredIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;

    .line 1345
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1346
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_df

    .line 1347
    invoke-virtual {v0, v1, v2}, Landroid/service/autofill/FillResponse$Builder;->disableAutofill(J)Landroid/service/autofill/FillResponse$Builder;

    .line 1349
    :cond_df
    const-class v1, Landroid/view/autofill/AutofillId;

    .line 1350
    invoke-virtual {p1, v7, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/autofill/AutofillId;

    .line 1351
    if-eqz v1, :cond_ec

    .line 1352
    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse$Builder;->setFieldClassificationIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;

    .line 1355
    :cond_ec
    const-class v1, Landroid/service/assist/classification/FieldClassification;

    .line 1356
    invoke-virtual {p1, v7, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/service/assist/classification/FieldClassification;

    .line 1357
    if-eqz v1, :cond_fd

    .line 1358
    invoke-static {v1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse$Builder;->setDetectedFieldClassifications(Ljava/util/Set;)Landroid/service/autofill/FillResponse$Builder;

    .line 1361
    :cond_fd
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse$Builder;->setIconResourceId(I)Landroid/service/autofill/FillResponse$Builder;

    .line 1362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse$Builder;->setServiceDisplayNameResourceId(I)Landroid/service/autofill/FillResponse$Builder;

    .line 1363
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse$Builder;->setShowFillDialogIcon(Z)Landroid/service/autofill/FillResponse$Builder;

    .line 1364
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse$Builder;->setShowSaveDialogIcon(Z)Landroid/service/autofill/FillResponse$Builder;

    .line 1365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse$Builder;->setFlags(I)Landroid/service/autofill/FillResponse$Builder;

    .line 1366
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1367
    invoke-virtual {v0, v1}, Landroid/service/autofill/FillResponse$Builder;->setPresentationCancelIds([I)Landroid/service/autofill/FillResponse$Builder;

    .line 1369
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse$Builder;->build()Landroid/service/autofill/FillResponse;

    move-result-object v0

    .line 1370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    .line 1372
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

    .line 1290
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillResponse;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/FillResponse;
    .registers 2

    .line 1377
    new-array p1, p1, [Landroid/service/autofill/FillResponse;

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

    .line 1290
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillResponse$1;->newArray(I)[Landroid/service/autofill/FillResponse;

    move-result-object p1

    return-object p1
.end method
